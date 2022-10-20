import 'models/details_model.dart';
import 'screens/simpsons/simpsons_char_screen.dart';
import 'screens/simpsons/simpsons_episode_screen.dart';
import 'screens/simpsons/simpsons_product_screen.dart';

final List<DetailsModel> simpsonsLinks = [
  DetailsModel(title: "The Characters", 
  link: "https://api.sampleapis.com/simpsons/characters", 
  screen: const SimpsonsCharScreen(
          title: "The Simpsons Characters", apiLink: "https://api.sampleapis.com/simpsons/characters")
  ),
  DetailsModel(title: "Shop", 
  link: "https://api.sampleapis.com/simpsons/products", 
  screen: const SimpsonsProductScreen(
          title: "The Simpsons products", apiLink: "https://api.sampleapis.com/simpsons/products")
  ),
  DetailsModel(title: "All the episodes", 
  link: "https://api.sampleapis.com/simpsons/episodes?limit=5", 
  screen: const SimpsonsEpisodeScreen(
          title: "Find information about any episode", apiLink: "https://api.sampleapis.com/simpsons/episodes")
  ),
];

