import 'models/details_model.dart';
import 'screens/simpsons/simpsons_main_screen.dart';
import 'screens/rick_and_morty/rick_main_screen.dart';

final List<DetailsModel> categoriesLinks = [
  DetailsModel(title: "The Simpsons", 
  link: "https://api.sampleapis.com/simpsons/", 
  screen: const SimpsonsMainScreen(
          title: "The Simpsons")
  ),
  DetailsModel(title: "Rick and Morty", 
  link: "https://api.sampleapis.com/rickandmorty/", 
  screen: const RickMainScreen(
          title: "Rick and Morty")
  ),
];

