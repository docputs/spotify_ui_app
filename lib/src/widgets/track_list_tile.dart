import 'package:flutter/material.dart';
import '../models/song.dart';

class TrackListTile extends StatelessWidget {
  final Song song;

  const TrackListTile(this.song, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(song.title),
      subtitle: Text(song.artist),
      leading: song.hasAlbumCover
          ? Container(
              height: 40,
              width: 40,
              color: Colors.red,
            )
          : Container(
              height: 40,
              width: 40,
              color: Colors.black,
            ),
    );
  }
}
