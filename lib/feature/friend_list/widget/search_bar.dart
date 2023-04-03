import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../constants/hero_tag.dart';
import '../../../utils/route/hero_route.dart';
import '../provider/friend_list_view_provider.dart';
import 'search_bar_input_dialog.dart';

class SearchBar extends ConsumerStatefulWidget {
  final Function(bool isLoading) setLoading;
  const SearchBar({
    Key? key,
    required this.setLoading,
  }) : super(key: key);

  @override
  ConsumerState<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends ConsumerState<SearchBar> {
  String? searchBarText;
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: HeroTag.friendListSearchBarHero.name,
      child: ElevatedButton(
        onPressed: () async {
          final userId = await Navigator.push(
            context,
            HeroRoute(
              builder: (context) => const SearchBarInputDialog(),
            ),
          );
          if (userId != null && userId is String && userId != '') {
            setState(() {
              searchBarText = userId;
            });
            widget.setLoading(true);
            await ref
                .read(friendListViewProvider.notifier)
                .searchFriend(userId);
            widget.setLoading(false);
          } else {
            setState(() {
              searchBarText = null;
            });
            ref.read(friendListViewProvider.notifier).searchReset();
          }
        },
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(
            Colors.white.withOpacity(0.08),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
          padding: const MaterialStatePropertyAll(EdgeInsets.zero),
          minimumSize: const MaterialStatePropertyAll(Size.zero),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            const SizedBox(
              height: 48.0,
              width: double.infinity,
            ),
            const Positioned(
              left: 20,
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            Text(
              searchBarText ?? 'Search',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
