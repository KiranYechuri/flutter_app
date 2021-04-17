class PhotoModel {
  String title;
  String thumbnailUrl;

  PhotoModel({this.title, this.thumbnailUrl});

  factory PhotoModel.fromJSON(Map<String, dynamic> map) {
    return PhotoModel(title: map['title'], thumbnailUrl: map["thumbnailUrl"]);
  }
}
