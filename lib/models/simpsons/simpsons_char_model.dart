class SimpsonsCharModel {
  int? id;
  String? name;
  String? normalizedName;
  String? gender;

  SimpsonsCharModel({this.id, this.name, this.normalizedName, this.gender});

  SimpsonsCharModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    normalizedName = json['normalized_name'];
    gender = json['gender'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['normalized_name'] = normalizedName;
    data['gender'] = gender;
    return data;
  }
}