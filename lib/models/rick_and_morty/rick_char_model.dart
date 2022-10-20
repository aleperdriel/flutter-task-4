class RickCharModel {
  int? id;
  String? name;
  String? status;
  String? species;
  String? type;
  String? gender;
  String? origin;
  String? image;

  RickCharModel(
      {this.id,
      this.name,
      this.status,
      this.species,
      this.type,
      this.gender,
      this.origin,
      this.image});

  RickCharModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    status = json['status'];
    species = json['species'];
    type = json['type'];
    gender = json['gender'];
    origin = json['origin'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['status'] = status;
    data['species'] = species;
    data['type'] = type;
    data['gender'] = gender;
    data['origin'] = origin;
    data['image'] = image;
    return data;
  }
}
