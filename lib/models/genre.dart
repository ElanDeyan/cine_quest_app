final class Genre {
  Genre(this.id, this.name);

  final int id;
  final String name;

  factory Genre.fromJson(Map<String, dynamic> json) {
    if (json case {"id": final int id, "name": final String name}) {
      return Genre(id, name);
    }
    throw const FormatException('Invalid Genre format');
  }
}
