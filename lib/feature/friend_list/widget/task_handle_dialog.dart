import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../constants/hero_tag.dart';
import '../provider/task_handle_view_provider.dart';
import 'task_handle_card.dart';

class TaskHandleDialog extends ConsumerWidget {
  const TaskHandleDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final taskHandleViewEntities = ref.watch(taskHandleViewProvider);
    return Hero(
      tag: HeroTag.friendListTaskHandleHero.name,
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
              left: 20,
              right: 20,
              child: Container(
                height: size.height * 0.6,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: const Color(0xFF1C1B1F),
                ),
                child: ListView.builder(
                  itemCount: taskHandleViewEntities.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: TaskHandleCard(
                        requests: taskHandleViewEntities[index],
                        onAcceptHandle: () async {
                          await ref
                              .read(taskHandleViewProvider.notifier)
                              .taskHandle(
                                  taskHandleViewEntities[index].requestId,
                                  true);
                          ref
                              .read(taskHandleViewProvider.notifier)
                              .getFriendRequestList();
                        },
                        onDeniedHandle: () async {
                          await ref
                              .read(taskHandleViewProvider.notifier)
                              .taskHandle(
                                  taskHandleViewEntities[index].requestId,
                                  false);
                          ref
                              .read(taskHandleViewProvider.notifier)
                              .getFriendRequestList();
                        },
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
