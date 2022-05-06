// Copyright 2020 Sarbagya Dhaubanjar. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ifeetech/screens/Widget/play_pause_button_bar.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import '../../constants.dart';
import '../method.dart';

///
class ProjectItem extends StatefulWidget {
  final String title, description, videoId, githubUrl;

  const ProjectItem(
      {Key? key,
      required this.title,
      required this.description,
      required this.videoId,
      required this.githubUrl})
      : super(key: key);

  @override
  _ProjectItemState createState() => _ProjectItemState();
}

class _ProjectItemState extends State<ProjectItem> {
  late YoutubePlayerController _controller;
  Method method = Method();

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.videoId,
      params: const YoutubePlayerParams(
          startAt: Duration(minutes: 1, seconds: 36),
          showControls: false,
          showFullscreenButton: false,
          desktopMode: true,
          autoPlay: false),
    )..listen((value) {
        if (value.isReady) {
          _controller
            ..hidePauseOverlay()
            ..hideTopMenu();
        }
      });
    _controller.onEnterFullscreen = () {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);
      log('Entered Fullscreen');
    };
    _controller.onExitFullscreen = () {
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
      Future.delayed(const Duration(seconds: 1), () {
        _controller.play();
      });
      Future.delayed(const Duration(seconds: 5), () {
        SystemChrome.setPreferredOrientations(DeviceOrientation.values);
      });
      log('Exited Fullscreen');
    };
  }

  @override
  Widget build(BuildContext context) {
    // final player = YoutubePlayerIFrame(
    //   controller: _controller,
    // );
    var player = YoutubePlayerIFrame(
      controller: _controller,
      gestureRecognizers: const <Factory<OneSequenceGestureRecognizer>>{},
      aspectRatio: 16 / 9,
    );
    return YoutubePlayerControllerProvider(
      controller: _controller,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title,
                style: Theme.of(context).textTheme.headline5!.copyWith(
                      fontWeight: FontWeight.bold,
                      backgroundColor: bgColor,
                    ),
              ),
              IconButton(
                  icon: const FaIcon(FontAwesomeIcons.github),
                  color: const Color(0xffA8B2D1),
                  iconSize: 16.0,
                  onPressed: () {
                    method.launchURL(widget.githubUrl);
                  }),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            widget.description,
            style: const TextStyle(
              fontWeight: FontWeight.w300,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 16,
          ),
          Stack(
            children: [
              player,
              // ignore: prefer_const_constructors
              PointerInterceptor(
                child: const AspectRatio(
                  aspectRatio: 16 / 9,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          const PlayPauseButtonBar(),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }
}
