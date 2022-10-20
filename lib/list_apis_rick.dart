import 'models/details_model.dart';
import 'screens/rick_and_morty/rick_char_screen.dart';
import 'screens/rick_and_morty/rick_episode_screen.dart';
import 'screens/rick_and_morty/rick_location_screen.dart';

final List<DetailsModel> rickLinks = [
  DetailsModel(title: "The Characters", 
  link: "https://api.sampleapis.com/rickandmorty/characters", 
  screen: const RickCharScreen(
          title: "The Rick and Morty Characters", apiLink: "https://api.sampleapis.com/rickandmorty/characters")
  ),
  DetailsModel(title: "Episodes", 
  link: "https://api.sampleapis.com/rickandmorty/episodes", 
  screen: const RickEpisodeScreen(
          title: "Every Rick and Morty episode", apiLink: "https://api.sampleapis.com/rickandmorty/episodes")
  ),
  DetailsModel(title: "All the locations", 
  link: "https://api.sampleapis.com/rickandmorty/locations", 
  screen: const RickLocationScreen(
          title: "All the locations", apiLink: "https://api.sampleapis.com/rickandmorty/locations")
  ),
];

