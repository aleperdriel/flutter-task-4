class RickEpisodeModel {
  int? id;
  String? name;
  String? airDate;
  int? episode;
  int? season;

  RickEpisodeModel(
      {this.id, this.name, this.airDate, this.episode, this.season});

  RickEpisodeModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    airDate = json['air_date'];
    episode = json['episode'];
    season = json['season'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['air_date'] = airDate;
    data['episode'] = episode;
    data['season'] = season;
    return data;
  }
}
