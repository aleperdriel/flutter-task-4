class SimpsonsEpisodeModel {
  int? season;
  int? episode;
  String? name;
  num? rating;
  String? description;
  String? airDate;
  String? thumbnailUrl;
  int? id;

  SimpsonsEpisodeModel(
      {this.season,
      this.episode,
      this.name,
      this.rating,
      this.description,
      this.airDate,
      this.thumbnailUrl,
      this.id});

  SimpsonsEpisodeModel.fromJson(Map<String, dynamic> json) {
    season = json['season'];
    episode = json['episode'];
    name = json['name'];
    rating = json['rating'];
    description = json['description'];
    airDate = json['airDate'];
    thumbnailUrl = json['thumbnailUrl'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['season'] = season;
    data['episode'] = episode;
    data['name'] = name;
    data['rating'] = rating;
    data['description'] = description;
    data['airDate'] = airDate;
    data['thumbnailUrl'] = thumbnailUrl;
    data['id'] = id;
    return data;
  }
}
