class Song {
  final String id;
  final String title;
  final String artist;
  final String? albumImageUrl;

  const Song({
    required this.id,
    required this.title,
    required this.artist,
    this.albumImageUrl,
  });
}

const mockSongs = [
  Song(
    id: '1',
    title: 'Pigs on the wing',
    artist: 'Pink Floyd',
  ),
  Song(
    id: '2',
    title: 'Dogs',
    artist: 'Pink Floyd',
  ),
  Song(
    id: '3',
    title: 'Pigs',
    artist: 'Pink Floyd',
  ),
  Song(
    id: '4',
    title: 'Sheep',
    artist: 'Pink Floyd',
  ),
  Song(
    id: '5',
    title: 'One of These Days',
    artist: 'Pink Floyd',
  ),
  Song(
    id: '6',
    title: 'A Pillow of Winds',
    artist: 'Pink Floyd',
  ),
  Song(
    id: '7',
    title: 'Fearless',
    artist: 'Pink Floyd',
  ),
  Song(
    id: '8',
    title: 'San Tropez',
    artist: 'Pink Floyd',
  ),
  Song(
    id: '9',
    title: 'Seamus',
    artist: 'Pink Floyd',
  ),
  Song(
    id: '10',
    title: 'Echoes',
    artist: 'Pink Floyd',
  ),
  Song(
    id: '11',
    title: 'Speak to Me',
    artist: 'Pink Floyd',
  ),
  Song(
    id: '12',
    title: 'Breathe',
    artist: 'Pink Floyd',
  ),
];
