import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
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

  @override
  Widget build(BuildContext context) {
    Post post = widget.post;
    print(post.profileId);
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
                          Text(
                              post.profile!.username!,
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
                          children: [
                            Icon(
                              MdiIcons.heart,
                              size: 24,
                              color: const Color(0xFF55190E),
                            ),
                            const SizedBox(width: 8),
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
                        Row(
                          children: [
                            const SizedBox(width: 2),
                            Text(
                              "${post.likes} likes",
                              style: const TextStyle(
                                fontSize: 14,
                                color: Color(0xFF55190E),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                      ]),
                ),
                const Divider(
                  color: Color(0xFF55190E),
                  thickness: 0.2,
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: Column(
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
              ],
            ),
          ),
        ),
        if (showInfoCard)
          RestaurantInfoCard(
            restaurant: Restaurant(),
          ),
      ],
    );
  }
}
