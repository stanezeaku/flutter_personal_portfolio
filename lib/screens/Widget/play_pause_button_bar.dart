import 'package:flutter/material.dart';

import 'package:youtube_player_iframe/youtube_player_iframe.dart';

///
class PlayPauseButtonBar extends StatelessWidget {
  const PlayPauseButtonBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: YoutubeValueBuilder(
        builder: (context, value) {
          return IconButton(
            iconSize: 48,
            icon: Icon(
              value.playerState == PlayerState.playing
                  ? Icons.pause
                  : Icons.play_arrow,
              size: 48,
            ),
            onPressed: value.isReady
                ? () {
                    value.playerState == PlayerState.unStarted ||
                            value.playerState == PlayerState.unknown ||
                            value.playerState == PlayerState.paused ||
                            value.playerState == PlayerState.ended
                        ? {
                            context.ytController.mute(),
                            context.ytController.play(),
                          }
                        : context.ytController.pause();
                  }
                : null,
          );
        },
      ),
    );
  }
}
