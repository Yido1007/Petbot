import '../screens/birdAlbum.dart';
import '../screens/catAlbum.dart';
import '../screens/contact.dart';
import '../screens/dogAlbum.dart';
import '../screens/faqScreen.dart';
import '../screens/fishAlbum.dart';
import '../screens/homeScreen.dart';
import '../screens/welcomeScreen.dart';

final routes = {
  '/welcome': (context) => const WelcomeScreen(),
  '/home': (context) => const HomeScreen(),
  '/catAlbum': (context) => const CatAlbum(),
  '/dogAlbum': (context) => const DogAlbum(),
  '/fishAlbum': (context) => const FishAlbum(),
  '/birdAlbum': (context) => const BirdAlbum(),
  '/faq': (context) => const FAQScreen(),
  '/contact': (context) => const ContactUs()
};
