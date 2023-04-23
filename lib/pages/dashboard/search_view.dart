import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../config/app_asset.dart';
import '../../config/app_constants.dart';
import '../../models/post_model.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        search(context),
        categories(context),
        posts(context),
      ],
    );
  }

  Expanded posts(BuildContext context) {
    return Expanded(
      child: GridView.custom(
        gridDelegate: SliverQuiltedGridDelegate(
          crossAxisCount: 3,
          mainAxisSpacing: 1,
          crossAxisSpacing: 1,
          repeatPattern: QuiltedGridRepeatPattern.inverted,
          pattern: [
            const QuiltedGridTile(1, 1),
            const QuiltedGridTile(2, 2),
            const QuiltedGridTile(1, 1),
            const QuiltedGridTile(1, 1),
            const QuiltedGridTile(1, 1),
            const QuiltedGridTile(1, 1),
          ],
        ),
        childrenDelegate: SliverChildBuilderDelegate(
          (context, index) {
            PostModel item = dummySearchPosts[index];
            return Stack(
              fit: StackFit.expand,
              children: [
                Image.network(
                  item.content[0],
                  fit: BoxFit.cover,
                ),
                if (item.content.length > 1)
                  const Positioned(
                    top: 8,
                    right: 8,
                    child: ImageIcon(
                      AssetImage(AppAsset.galleryIcon),
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
              ],
            );
          },
          childCount: dummySearchPosts.length,
        ),
      ),
    );
  }

  SizedBox categories(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return SizedBox(
      height: 36,
      child: ListView.builder(
        itemCount: AppConstants.searchCategory.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          Map category = AppConstants.searchCategory[index];
          return Padding(
            padding: EdgeInsets.fromLTRB(
              index == 0 ? 12 : 6,
              2,
              index == AppConstants.searchCategory.length - 1 ? 12 : 6,
              6,
            ),
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(4),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.5,
                    color: isDark ? Colors.grey[700]! : Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(4),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                alignment: Alignment.center,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (category['icon'] != '')
                      Padding(
                        padding: const EdgeInsets.only(right: 6),
                        child: ImageIcon(
                          AssetImage(category['icon']),
                          size: 13,
                        ),
                      ),
                    Text(
                      category['title'],
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Row search(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12, 4, 0, 4),
            child: SizedBox(
              child: TextField(
                decoration: InputDecoration(
                  prefixIconConstraints: const BoxConstraints(
                    minWidth: 36,
                    minHeight: 30,
                    maxHeight: 30,
                    maxWidth: 36,
                  ),
                  hintText: 'Search',
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 2),
                    child: IconButton(
                      onPressed: () {},
                      icon: ImageIcon(
                        const AssetImage(AppAsset.navIconSearchInactive),
                        color: isDark ? Colors.grey[500] : Colors.grey[700],
                      ),
                    ),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 8,
                  ),
                  isDense: true,
                  filled: true,
                  fillColor: isDark ? Colors.grey[900] : Colors.grey[200],
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const ImageIcon(
            AssetImage(AppAsset.liveIcon),
          ),
        ),
      ],
    );
  }
}
