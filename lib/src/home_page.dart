import 'package:flutter/material.dart';
import 'package:spotify_ui_app/src/models/song.dart';

import 'widgets/playlist_album_cover.dart';
import 'widgets/playlist_header.dart';
import 'widgets/search_bar.dart';
import 'widgets/track_list_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: const Icon(Icons.arrow_back),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const SizedBox(height: 16),
                _buildSearchBar(),
                const SizedBox(height: 32),
                const Center(child: PlaylistAlbumCover()),
                const SizedBox(height: 16),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: PlaylistHeader(),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final song = mockSongs[index];
                return TrackListTile(song);
              },
              childCount: mockSongs.length,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SearchBar(),
    );
  }
}
