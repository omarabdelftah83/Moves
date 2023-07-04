import 'dart:ui';

import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled3/core/servies/servies_locator.dart';
import 'package:untitled3/core/utiles/app_constance.dart';

//import 'package:movies_apps/core/network/api_constance.dart';
// import 'package:movies_apps/movies/presentation/screens/dummy.dart';
// import 'package:shimmer/shimmer.dart';
// import 'package:untitled3/core/utiles/app_constance.dart';
// import 'package:untitled3/core/utiles/dummy.dart';
import 'package:untitled3/movies/pressentaion/components/now_playing_component.dart';
import 'package:untitled3/movies/pressentaion/components/popular_component.dart';
import 'package:untitled3/movies/pressentaion/components/red_top_component.dart';
import 'package:untitled3/movies/pressentaion/controller/movies_block.dart';
import 'package:untitled3/movies/pressentaion/controller/movies_event.dart';
import 'package:untitled3/movies/pressentaion/widgit/Custom_searcha_ppbar_content.dart';
import 'package:untitled3/movies/pressentaion/widgit/custom_position%20_color_pink.dart';
import 'package:untitled3/movies/pressentaion/widgit/custom_position_color_green.dart';

class MainMoviesScreen extends StatelessWidget {
  const MainMoviesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return BlocProvider(
      create: (BuildContext context) => serLoc<MoviesBlock>()
        ..add(GetNowplayingMoviesEvent())
        ..add(GetPopluerMoviesEvent())
        ..add(GetTopRatedMoviesEvent()),
      child: Scaffold(
        backgroundColor: AppConstance.black,

        body: Stack(
          children: <Widget>[
            Container(
              height: screenHight,
              width: screenWidth,
              child: Stack(children: [
                CustomPositionToColorpink(),
                //position2//
             CustomPositionColorGreen(),

               SingleChildScrollView(
                  key: const Key('movieScrollView'),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       SizedBox(height: 30,),
                       CustomSearchAppbarContent(),
                       SizedBox(height: 5,),
                        NowPlayingComponent(),
                        Container(
                          margin: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Popular",
                                style: GoogleFonts.poppins(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.15,
                                  color: Colors.white
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  /// TODO : NAVIGATION TO POPULAR SCREEN
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: const [
                                      Text(''),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        size: 16.0,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        PopularComponent(),
                        Container(
                          margin: const EdgeInsets.fromLTRB(
                            16.0,
                            24.0,
                            16.0,
                            8.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Top Rated",
                                style: GoogleFonts.poppins(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.15,
                                    color: Colors.white
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  /// TODO : NAVIGATION TO Top Rated Movies Screen
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: const [
                                      Text(''),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        size: 16.0,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        TopRatedComponent(),
                        const SizedBox(height: 50.0),
                      ],
                    ),
                  ),
                ),
              ],),

            )

          ],

        ),
      ),
    );
  }
}
