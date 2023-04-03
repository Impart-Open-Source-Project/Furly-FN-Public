import 'package:flutter/material.dart';

import '../../../constants/hero_tag.dart';

class SearchBarInputDialog extends StatefulWidget {
  const SearchBarInputDialog({Key? key}) : super(key: key);

  @override
  State<SearchBarInputDialog> createState() => _SearchBarInputDialogState();
}

class _SearchBarInputDialogState extends State<SearchBarInputDialog> {
  String userId = '';
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: HeroTag.friendListSearchBarHero.name,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          alignment: Alignment.center,
          children: [
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                Navigator.pop(context);
              },
              child: const SizedBox.expand(),
            ),
            Positioned(
              left: 10,
              right: 10,
              child: Container(
                height: 178.0,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: const Color(0xFF1C1B1F),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 10.0),
                    const Text(
                      'User id:',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    TextField(
                      onChanged: (value) => setState(() {
                        userId = value;
                      }),
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      children: [
                        const Spacer(),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              Colors.white.withOpacity(0.1),
                            ),
                            foregroundColor: const MaterialStatePropertyAll(
                              Colors.white,
                            ),
                            elevation: const MaterialStatePropertyAll(0),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Cancel'),
                        ),
                        const SizedBox(width: 10.0),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              Colors.white.withOpacity(0.1),
                            ),
                            foregroundColor: const MaterialStatePropertyAll(
                              Colors.white,
                            ),
                            elevation: const MaterialStatePropertyAll(0),
                          ),
                          onPressed: () {
                            Navigator.pop(context, userId);
                          },
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
