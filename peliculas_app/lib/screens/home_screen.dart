import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:peliculas_app/providers/movies_provider.dart';
import 'package:peliculas_app/screens/screens.dart';
import 'package:peliculas_app/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _currentIndex = 0;

  final screens = [
    const PeliculasScreen(),
    LoginScreen(),
    const Center(child: Text('InfoScreen', style: TextStyle(fontSize: 45))),
  ];

  @override
  Widget build(BuildContext context) {


   //print(moviesProvider.onDisplayMovies);

    return Scaffold(
      appBar: AppBar(
        title: const Text('TMDB APP', style: TextStyle(color: Colors.white),),
        centerTitle: true,
      backgroundColor: Colors.lightBlue.shade900,
        elevation: 0,
        actions: [IconButton(onPressed: (() {}),
        icon: const Icon(Icons.search_outlined))],
      ),
      body: screens[_currentIndex],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        margin: const EdgeInsets.only(bottom: 10),
        child: GNav(
          color: Colors.lightBlue.shade900,
          tabBackgroundColor: Colors.lightBlue.shade900,
          selectedIndex: _currentIndex,
          tabBorderRadius: 30,
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          onTabChange:((index) => setState((() => _currentIndex = index))),
          tabs: const [
            GButton(
              icon: Icons.movie_filter_outlined,
              text: 'Películas',
              iconActiveColor: Colors.white,
              textColor: Colors.white,
            ),

            GButton(
              icon: Icons.person,
              text: 'Perfil',
              iconActiveColor: Colors.white,
              textColor: Colors.white,
            ),

            GButton(
              icon: Icons.info,
              text: 'Información',
              iconActiveColor: Colors.white,
              textColor: Colors.white,
            ),
          ]
        ),
      )
    );
  }
}

class PeliculasScreen extends StatelessWidget {



  const PeliculasScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final moviesProvider = Provider.of<MoviesProvider>(context, listen: true);

    return SingleChildScrollView(
        child: Column(
          children: [
            //Tarjetas Principales
            CardSwiper(movies: moviesProvider.onDisplayMovies),

            //Slider de Peliculas
            MovieSlider(
              movies: moviesProvider.popularMovies,
              title: 'Populares',
              onNextPage: () => moviesProvider.getPopularMovies(),
            ),


          ],
        ),
      );
  }
}