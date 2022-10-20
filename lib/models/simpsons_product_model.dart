class SimpsonsProductModel {
  String? name;
  String? category;
  String? description;
  String? details;
  int? id;

  SimpsonsProductModel(
      {this.name, this.category, this.description, this.details, this.id});

  SimpsonsProductModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    category = json['category'];
    description = json['description'];
    details = json['Details'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['category'] = category;
    data['description'] = description;
    data['Details'] = details;
    data['id'] = id;
    return data;
  }
}