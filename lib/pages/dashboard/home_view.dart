import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:intl/intl.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../config/app_asset.dart';
import '../../models/live_model.dart';
import '../../models/post_model.dart';
import '../../models/story_model.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Column(
      children: [
        header(context),
        Expanded(
          child: Builder(builder: (context) {
            return ListView(
              children: [
                story(context),
                Divider(
                  height: 1,
                  color: isDark ? Colors.grey[900]! : Colors.grey,
                ),
                ListView.builder(
                  padding: const EdgeInsets.all(0),
                  itemCount: dummyPosts.length,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    PostModel postItem = dummyPosts[index];
                    PageController pageController = PageController();
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(12, 8, 0, 6),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(36),
                                child: Image.network(
                                  postItem.userImage,
                                  width: 36,
                                  height: 36,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          postItem.username,
                                          style: const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            height: 1,
                                          ),
                                        ),
                                        const SizedBox(width: 4),
                                        Image.asset(
                                          AppAsset.officialIcon,
                                          width: 10,
                                        ),
                                      ],
                                    ),
                                    if (postItem.location != null)
                                      Padding(
                                        padding: const EdgeInsets.only(top: 6),
                                        child: Text(
                                          postItem.location!,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 13,
                                            height: 1,
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.more_horiz),
                              ),
                            ],
                          ),
                        ),
                        if (postItem.type == 'photo')
                          Image.network(
                            postItem.content[0],
                            fit: BoxFit.fitWidth,
                          ),
                        if (postItem.type == 'photos')
                          AspectRatio(
                            aspectRatio: 1,
                            child: PageView.builder(
                              controller: pageController,
                              scrollDirection: Axis.horizontal,
                              itemCount: postItem.content.length,
                              physics: const BouncingScrollPhysics(),
                              itemBuilder: (context, index) {
                                return Stack(
                                  fit: StackFit.expand,
                                  children: [
                                    Image.network(
                                      postItem.content[index],
                                      fit: BoxFit.cover,
                                    ),
                                    Positioned(
                                      top: 12,
                                      right: 12,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(0.5),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 6,
                                          vertical: 3,
                                        ),
                                        child: Text(
                                          '${index + 1}/${postItem.content.length}',
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                        SizedBox(
                          height: 46,
                          child: Stack(
                            children: [
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: const ImageIcon(
                                      AssetImage(AppAsset.likeIcon),
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const ImageIcon(
                                      AssetImage(AppAsset.commentIcon),
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const ImageIcon(
                                      AssetImage(AppAsset.messangerIcon),
                                    ),
                                  ),
                                  const Spacer(),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const ImageIcon(
                                      AssetImage(AppAsset.saveIcon),
                                    ),
                                  ),
                                ],
                              ),
                              if (postItem.content.length > 1)
                                Center(
                                  child: SmoothPageIndicator(
                                    controller: pageController,
                                    count: postItem.content.length,
                                    effect: WormEffect(
                                      dotHeight: 8,
                                      dotWidth: 8,
                                      activeDotColor:
                                          Theme.of(context).primaryColor,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.network(
                                  'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600',
                                  fit: BoxFit.cover,
                                  width: 15,
                                  height: 15,
                                ),
                              ),
                              const SizedBox(width: 4),
                              RichText(
                                text: TextSpan(
                                  text: 'Like by ',
                                  style: Theme.of(context).textTheme.labelLarge,
                                  children: [
                                    TextSpan(
                                      text: 'flutterdlux',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge!
                                          .copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    const TextSpan(text: ' and '),
                                    TextSpan(
                                      text: '${NumberFormat.currency(
                                        decimalDigits: 0,
                                        symbol: '',
                                      ).format(postItem.likes - 1)} others',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge!
                                          .copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 6),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: RichText(
                            text: TextSpan(
                              text: '${postItem.username} ',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge!
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                              children: [
                                TextSpan(
                                  text: postItem.caption,
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelLarge!
                                      .copyWith(
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                      ],
                    );
                  },
                ),
              ],
            );
          }),
        ),
      ],
    );
  }

  Widget story(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: yourStory(context),
            ),
            ...dummyLive.map((liveItem) {
              return Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  children: [
                    SizedBox(
                      width: 70,
                      height: 70,
                      child: Stack(
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            decoration: const BoxDecoration(
                              border: GradientBoxBorder(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xffE20337),
                                    Color(0xffC60188),
                                    Color(0xff7700C3),
                                  ],
                                  begin: Alignment(1.4, 0),
                                  end: Alignment.topCenter,
                                ),
                                width: 2,
                              ),
                              shape: BoxShape.circle,
                            ),
                            padding: const EdgeInsets.all(2),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(70),
                              child: Image.network(
                                liveItem.image,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Transform.translate(
                            offset: const Offset(0, 4),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color(0xffC90083),
                                      Color(0xffD22463),
                                      Color(0xffE10038),
                                    ],
                                    begin: Alignment(-1.2, 0.2),
                                    end: Alignment(0, 1.2),
                                  ),
                                  border: Border.all(
                                    color: Theme.of(context)
                                        .scaffoldBackgroundColor,
                                    width: 2,
                                  ),
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4,
                                  vertical: 2,
                                ),
                                child: const Text(
                                  'LIVE',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      liveItem.username,
                      style: TextStyle(
                        fontSize: 13,
                        color: Theme.of(context).textTheme.bodyMedium!.color,
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
            ...List.generate(dummyStory.length, (index) {
              StoryModel storyItem = dummyStory[index];
              return Padding(
                padding: EdgeInsets.only(
                  left: 16,
                  right: index == dummyStory.length - 1 ? 16 : 0,
                ),
                child: Column(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: const BoxDecoration(
                        border: GradientBoxBorder(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xffFBAA47),
                              Color(0xffD91A46),
                              Color(0xffA60F93),
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.centerRight,
                          ),
                          width: 2,
                        ),
                        shape: BoxShape.circle,
                      ),
                      padding: const EdgeInsets.all(2),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(70),
                        child: Image.network(
                          storyItem.image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      storyItem.username,
                      style: TextStyle(
                        fontSize: 13,
                        color: Theme.of(context).textTheme.bodyMedium!.color,
                      ),
                    ),
                  ],
                ),
              );
            }),
          ],
        ),
      ),
    );
  }

  Column yourStory(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: const BoxDecoration(
            border: GradientBoxBorder(
              gradient: LinearGradient(
                colors: [
                  Color(0xffFBAA47),
                  Color(0xffD91A46),
                  Color(0xffA60F93),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.centerRight,
              ),
              width: 2,
            ),
            shape: BoxShape.circle,
          ),
          padding: const EdgeInsets.all(2),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(70),
            child: Image.network(
              AppAsset.authImage,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          'Your Story',
          style: TextStyle(
            fontSize: 13,
            color: Theme.of(context).textTheme.bodyMedium!.color,
          ),
        ),
      ],
    );
  }

  Widget header(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        border: Border(
          bottom: BorderSide(
            color: isDark ? Colors.grey[900]! : Colors.grey,
            width: 0.5,
          ),
        ),
      ),
      height: kToolbarHeight,
      child: Stack(
        children: [
          SizedBox(
            height: kToolbarHeight,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const ImageIcon(
                    AssetImage(AppAsset.cameraIcon),
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const ImageIcon(
                    AssetImage(AppAsset.igtvIcon),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const ImageIcon(
                    AssetImage(AppAsset.messangerIcon),
                  ),
                ),
              ],
            ),
          ),
          Transform.translate(
            offset: const Offset(0, 4),
            child: Center(
              child: Image.asset(
                isDark ? AppAsset.instagramLogoDark : AppAsset.instagramLogo,
                width: 120,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
