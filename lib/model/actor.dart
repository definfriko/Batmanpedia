class Actor {
  String name;
  String birthname;
  String birth;
  String placebirth;
  String height;
  String cast;
  String photo;
  String minibio;

  Actor(
      {this.name,
      this.birthname,
      this.birth,
      this.placebirth,
      this.height,
      this.cast,
      this.photo,
      this.minibio,
      });

  Actor.fromJson(json){
    name = json['name'];
    birthname = json['birthname'];
    birth = json['birth'];
    placebirth = json['placebirth'];
    height = json['height'];
    cast = json['cast'];
    photo = json['photo'];
    minibio = json['minibio'];
  }
}