import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:peliculas_app/models/models.dart';

class CardSwiper extends StatelessWidget {
  //const CardSwiper({super.key});

  final List<Movie> movies;

  const CardSwiper({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    if(movies.isEmpty){
      return Container(
        color: Colors.grey,
        width: double.infinity,
        height: size.height * 0.5,
        child: Center(
          child: CircularProgressIndicator(color: Colors.red.shade200,),
        ),
      );
    }

    return Container(
      width: double.infinity,
      height: size.height * 0.5,
      //color: Colors.grey,
      child: Swiper(
        indicatorLayout: PageIndicatorLayout.SLIDE,
        itemCount: movies.length,
        layout: SwiperLayout.STACK,
        itemWidth: size.width * 0.75,
        itemHeight: size.height * 0.46,
        itemBuilder: ( _ , int index){

          final movie = movies[index];
          //print(movie.fullPosterImg);

          return GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'details', arguments: movie),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: FadeInImage(
                placeholder: const AssetImage('assets/no-image.jpg'),
                image: NetworkImage(movie.fullPosterImg),
                fit: BoxFit.cover,
              ),
            ),
          );

        },
        ),
    );
  }
}