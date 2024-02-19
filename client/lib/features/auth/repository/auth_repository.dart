import 'package:client/core/validator/auth_failure/auth_failure.dart';
import 'package:client/features/auth/login/model/user_model.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthRepository {
  final firebase_auth.FirebaseAuth _firebaseAuth;

  AuthRepository({firebase_auth.FirebaseAuth? firebaseAuth})
      : _firebaseAuth = firebaseAuth ?? firebase_auth.FirebaseAuth.instance;

  UserModel currentUser = UserModel.empty;

  Stream<UserModel> get user {
    return _firebaseAuth.authStateChanges().map((firebaseUser) {
      final user = firebaseUser == null ? UserModel.empty : firebaseUser.toUser;
      currentUser = user;
      return user;
    });
  }

  Future<Either<AuthFailure, Unit?>> signUp({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(unit);
    } on FirebaseAuthException catch (_) {
      return left(const AuthFailure.invalidValue());
    } catch (e) {
      return left(const AuthFailure.serverError());
    }
  }

  Future<Either<AuthFailure, Unit?>> loginWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return right(unit);
    } on FirebaseAuthException catch (_) {
      return left(const AuthFailure.invalidValue());
    } catch (e) {
      return left(const AuthFailure.serverError());
    }
  }

  Future<void> logOut() async {
    try {
      await Future.wait([_firebaseAuth.signOut()]);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<Either<AuthFailure, Unit?>> resetPassword(
      {required String email}) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
      return right(unit);
    } on FirebaseAuthException catch (_) {
      return left(const AuthFailure.invalidValue());
    } catch (e) {
      return left(const AuthFailure.serverError());
    }
  }

  @Deprecated('If Otp code')
  Future<Either<AuthFailure, Unit?>> confirmCode() async {
    try {
      await _firebaseAuth.confirmPasswordReset(
          code: 'code', newPassword: 'newPassword');
      return right(unit);
    } on FirebaseAuthException catch (_) {
      return left(const AuthFailure.invalidValue());
    } catch (e) {
      return left(const AuthFailure.serverError());
    }
  }
}

extension on firebase_auth.User {
  UserModel get toUser {
    return UserModel(
        id: uid,
        name: displayName ?? 'N/A',
        email: email,
        photoUrl: photoURL ?? '');
  }
}
