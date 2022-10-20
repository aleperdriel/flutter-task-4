class RickLocationModel {
  int? id;
  String? name;
  String? type;
  String? dimension;

  RickLocationModel({this.id, this.name, this.type, this.dimension});

  RickLocationModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    type = json['type'];
    dimension = json['dimension'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['type'] = type;
    data['dimension'] = dimension;
    return data;
  }
}
