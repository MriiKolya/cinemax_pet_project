import 'package:client/core/di/dependency_provider.dart';
import 'package:client/core/extension/font_weight_extension.dart';
import 'package:client/features/genre_list/cubit/genre_list_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_kit/theme/color_scheme.dart';
import 'package:ui_kit/theme/theme_context_extention.dart';

class GenreList extends StatefulWidget {
  const GenreList({super.key});

  @override
  State<GenreList> createState() => _GenreListState();
}

class _GenreListState extends State<GenreList> {
  int currentGenre = 0;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GenreListCubit>(
      create: (context) =>
          DependencyProvider.get<GenreListCubit>()..loadGenreList(),
      child: BlocBuilder<GenreListCubit, GenreListState>(
        builder: (context, state) {
          if (state.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state.listGenre.isNotEmpty) {
            return SizedBox(
              height: 60,
              child: ListView.builder(
                  itemCount: state.listGenre.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          currentGenre = index;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          decoration: BoxDecoration(
                            color: currentGenre == index
                                ? PrimaryColor.soft.withOpacity(0.7)
                                : Colors.transparent,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 4,
                              horizontal: 8,
                            ),
                            child: Center(
                              child: IntrinsicWidth(
                                stepWidth: 80,
                                child: Text(
                                  state.listGenre[index].name,
                                  textAlign: TextAlign.center,
                                  style: context.textStyle.h5.copyWith(
                                    color: currentGenre == index
                                        ? PrimaryColor.blueAccent
                                        : TextColor.white,
                                    fontWeight:
                                        FontWeightStyle.medium.fontWeight,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
