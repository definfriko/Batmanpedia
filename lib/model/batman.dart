class Batman {
  String uuid;
  String type;
  String title;
  String poster;
  String date;
  String description;
  String rating;

  Batman(
      {this.date,
      this.description,
      this.poster,
      this.title,
      this.type,
      this.uuid,
      this.rating});

  Batman.fromJson(json) {
    uuid = json['uuid'];
    type = json['type'];
    title = json['title'];
    poster = json['poster'];
    date = json['date'];
    description = json['description'];
    rating = json['rating'];
  }
}
