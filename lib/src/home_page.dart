import 'package:flutter/material.dart';
import 'package:spotify_ui_app/src/models/song.dart';

import 'widgets/playlist_album_cover.dart';
import 'widgets/search_bar.dart';
import 'widgets/track_list_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SearchBar(),
            const SizedBox(height: 16),
            const PlaylistAlbumCover(),
            Expanded(
              child: ListView.builder(
                itemCount: mockSongs.length,
                itemBuilder: (context, index) {
                  final song = mockSongs[index];
                  return TrackListTile(song);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
