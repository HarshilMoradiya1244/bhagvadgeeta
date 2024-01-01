class HomeModel {
  final int id;
  final String title, name, hindi, meaning, english;

  HomeModel(
      {required this.id,
        required this.title,
        required this.name,
        required this.hindi,
        required this.meaning,
        required this.english,
        });

  factory HomeModel.mapToModel(Map m1) {
    return HomeModel(
      id: m1['id'],
      title: m1['title'],
      name: m1['name'],
      hindi: m1['hindi'],
      meaning: m1['meaning'],
      english: m1['english'],
    );
  }
}