import 'package:flutter/material.dart';
import 'package:ui_kit/assets/icons/cinemax_icons.dart';

void main() {
  runApp(const Cinemax());
}

class Cinemax extends StatelessWidget {
  const Cinemax({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyIcons(),
    );
  }
}

class MyIcons extends StatelessWidget {
  const MyIcons({super.key});

  @override
  Widget build(BuildContext context) {
    List<IconData> list = [
      CinemaxIcons.alert,
      CinemaxIcons.arrowBack,
      CinemaxIcons.arrowIosDownward,
      CinemaxIcons.audio,
      CinemaxIcons.calendar,
      CinemaxIcons.clock,
      CinemaxIcons.closedCaption,
      CinemaxIcons.devices,
      CinemaxIcons.download,
      CinemaxIcons.downloadForOfflineBlack24dp,
      CinemaxIcons.edit,
      CinemaxIcons.eyeOff,
      CinemaxIcons.film,
      CinemaxIcons.finish,
      CinemaxIcons.fullscreen,
      CinemaxIcons.globe,
      CinemaxIcons.hd,
      CinemaxIcons.heart,
      CinemaxIcons.home,
      CinemaxIcons.layer_2,
      CinemaxIcons.notification,
      CinemaxIcons.padlock_1,
      CinemaxIcons.pause,
      CinemaxIcons.person,
      CinemaxIcons.profile,
      CinemaxIcons.question,
      CinemaxIcons.remove,
      CinemaxIcons.search,
      CinemaxIcons.settings,
      CinemaxIcons.share,
      CinemaxIcons.shield,
      CinemaxIcons.star,
      CinemaxIcons.trashBin,
      CinemaxIcons.workspacePremiumBlack24dp
    ];
    return Scaffold(
        body: SafeArea(
      child: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) => Icon(list[index])),
    ));
  }
}
