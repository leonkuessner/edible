import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:http/http.dart';
import 'package:like_button/like_button.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:testing_flutter/models/model.dart';
import 'package:testing_flutter/widgets/restaurants/restaurant_info_card.dart';

export 'post_display.dart';

class PostDisplay extends StatefulWidget {
  final Post post;

  const PostDisplay(this.post, {required UniqueKey key});

  @override
  _PostDisplayState createState() => _PostDisplayState();
}

class _PostDisplayState extends State<PostDisplay> {
  bool showInfoCard = false;

  var _isLiked = false;
  var _likeCount = 0;

  Future<bool> onLikeButtonTapped(bool isLiked) async {
    /// send your request here
    // final bool success= await sendRequest();
    if (!isLiked) {
      // widget.post.likes!.remove(widget.post.profileId);
      try {
        await post(Uri.parse(
            "http://localhost:8000/likes?postId=${widget.post.id}&userId=${widget.post.profileId}"));
      } catch (e) {
        rethrow;
      }
    } else {
      try {
        await delete(Uri.parse(
            "http://localhost:8000/likes?postId=${widget.post.id}&userId=${widget.post.profileId}"));
      } catch (e) {
        rethrow;
      }
    }

    /// if failed, you can do nothing
    // return success? !isLiked:isLiked;

    _isLiked = !_isLiked;
    return !isLiked;
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _setIsLiked();
      _setLikeCount();
    });
  }

  Future<void> _setIsLiked() async {
    try {
      var res = await get(Uri.parse(
          "http://localhost:8000/likes?postId=${widget.post.id}&userId=${widget.post.profileId}"));
      if (res.statusCode == 200) {
        if (jsonDecode(res.body)['like_count'] > 0) {
          setState(() {
            _isLiked = true;
          });
        }
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> _setLikeCount() async {
    try {
      var res = await get(
          Uri.parse("http://localhost:8000/likes?postId=${widget.post.id}"));
      if (res.statusCode == 200) {
        setState(() {
          _likeCount = jsonDecode(res.body)['like_count'];
        });
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Widget build(BuildContext context) {
    Post post = widget.post;
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              showInfoCard = !showInfoCard;
            });
          },
          child: Container(
            padding: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              color: Colors.orange[100],
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF55190E).withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 12, bottom: 12, left: 12, right: 12),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            MdiIcons.accountCircle,
                            size: 30,
                            color: const Color(0xFF55190E),
                          ),
                          const SizedBox(width: 6),
                          Text(post.profile!.username!,
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF55190E))),
                          const Spacer(),
                          Icon(
                            MdiIcons.dotsHorizontal,
                            size: 30,
                            color: const Color(0xFF55190E),
                          ),
                        ],
                      ),
                      const Divider(
                        color: Color(0xFF55190E),
                        thickness: 0.2,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 4),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.pin_drop_rounded,
                                    size: 18,
                                    color: Color(0xFF55190E),
                                  ),
                                  Text(
                                    " ${post.restaurant!.name!}",
                                    style: const TextStyle(
                                      color: Color(0xFF55190E),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 4),
                              Row(children: [
                                Icon(
                                  MdiIcons.calendar,
                                  size: 18,
                                  color: const Color(0xFF55190E),
                                ),
                                Text(
                                  " ${post.createdAt!.day}/${post.createdAt!.month < 10 ? "0${post.createdAt!.month}" : post.createdAt!.month}/${post.createdAt!.year < 10 ? "0" : ""}${post.createdAt!.year}",
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF55190E),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ])
                            ],
                          ),
                          const Spacer(),
                          Column(
                            children: [
                              const SizedBox(height: 4),
                              Container(
                                padding: const EdgeInsets.only(
                                    top: 4, bottom: 4, left: 8, right: 12),
                                decoration: BoxDecoration(
                                  color: Colors.orange[200],
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      post.meal == MealType.breakfast
                                          ? MdiIcons.egg
                                          : post.meal == MealType.lunch
                                              ? MdiIcons.food
                                              : MdiIcons.foodSteak,
                                      size: 15,
                                      color: const Color(0xFF55190E),
                                    ),
                                    const SizedBox(width: 4),
                                    Text(
                                      post.meal == MealType.breakfast
                                          ? "breakfast"
                                          : post.meal == MealType.lunch
                                              ? "lunch"
                                              : "dinner",
                                      style: const TextStyle(
                                        fontSize: 13,
                                        color: Color(0xFF55190E),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 4),
                              Container(
                                padding: const EdgeInsets.only(
                                    top: 4, bottom: 4, left: 8, right: 12),
                                decoration: BoxDecoration(
                                  color: Colors.orange[200],
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: List.filled(
                                        post.rating!,
                                        Icon(
                                          MdiIcons.star,
                                          size: 17,
                                          color: const Color(0xFF55190E),
                                        ),
                                      ) +
                                      List.filled(
                                          5 - post.rating!,
                                          Icon(
                                            MdiIcons.starOutline,
                                            size: 17,
                                            color: const Color(0xFF55190E),
                                          )),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 2),
                        ],
                      ),
                    ],
                  ),
                ),
                CarouselSlider(
                  items: post.postImages!.isNotEmpty
                      ? post.postImages!.map((postImage) {
                          return Builder(builder: (BuildContext context) {
                            return ClipRect(
                                child: Image.network(
                              postImage.imageUrl!,
                              fit: BoxFit.cover,
                              width: 500,
                              height: 500,
                              loadingBuilder: (BuildContext context,
                                  Widget child,
                                  ImageChunkEvent? loadingProgress) {
                                if (loadingProgress == null) return child;
                                return Center(
                                  child: CircularProgressIndicator(
                                    backgroundColor: Colors.orange[200],
                                    color: const Color(0xFF55190E),
                                    value: loadingProgress.expectedTotalBytes !=
                                            null
                                        ? loadingProgress
                                                .cumulativeBytesLoaded /
                                            loadingProgress.expectedTotalBytes!
                                        : null,
                                  ),
                                );
                              },
                            ));
                          });
                        }).toList()
                      : const [SizedBox.shrink()],
                  options: CarouselOptions(
                    height: 400,
                    enableInfiniteScroll: false,
                    aspectRatio: 16 / 9,
                    viewportFraction: 1,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    autoPlay: false,
                  ),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            LikeButton(
                              size: 26,
                              isLiked: _isLiked,
                              circleColor: CircleColor(
                                  start: Colors.orange[200]!,
                                  end: const Color.fromRGBO(255, 243, 234, 1)),
                              bubblesColor: const BubblesColor(
                                dotPrimaryColor: Color(0xFF55190E),
                                dotSecondaryColor: Color(0xFF55190E),
                              ),
                              likeBuilder: (bool isLiked) {
                                return Icon(
                                  isLiked
                                      ? MdiIcons.heart
                                      : MdiIcons.heartOutline,
                                  color: const Color(0xFF55190E),
                                  size: 26,
                                );
                              },
                              onTap: (isLiked) => onLikeButtonTapped(isLiked),
                              likeCount: _likeCount,
                              countBuilder:
                                  (int? count, bool isLiked, String text) {
                                var color = const Color(0xFF55190E);
                                Widget result;
                                if (count == 0) {
                                  result = Text(
                                    "0",
                                    style: TextStyle(color: color),
                                  );
                                } else {
                                  result = Text(
                                    text,
                                    style: TextStyle(color: color),
                                  );
                                }
                                return result;
                              },
                            ),
                            const SizedBox(width: 4),
                            Icon(
                              MdiIcons.commentOutline,
                              size: 24,
                              color: const Color(0xFF55190E),
                            ),
                            const Spacer(),
                            Icon(
                              MdiIcons.bookmarkOutline,
                              size: 26,
                              color: const Color(0xFF55190E),
                            ),
                            const SizedBox(width: 6),
                          ],
                        ),
                        // Row(
                        //   children: [
                        //     const SizedBox(width: 2),
                        //     Text(
                        //       post.likes != null
                        //           ? "${post.likes!.toList().length} ${post.likes!.toList().length == 1 ? "like" : "likes"}}"
                        //           : "0 likes",
                        //       style: const TextStyle(
                        //         fontSize: 14,
                        //         color: Color(0xFF55190E),
                        //         fontWeight: FontWeight.bold,
                        //       ),
                        //     ),
                        //   ],
                        // )
                      ]),
                ),
                const Divider(
                  color: Color(0xFF55190E),
                  thickness: 0.2,
                ),
                const SizedBox(height: 8),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          post.review!,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Color(0xFF55190E),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        if (showInfoCard)
          RestaurantInfoCard(
            restaurant: const Restaurant(),
          ),
      ],
    );
  }
}
