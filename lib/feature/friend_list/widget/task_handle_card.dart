import 'package:flutter/material.dart';

import '../entity/task_handle_entity.dart';

class TaskHandleCard extends StatelessWidget {
  final TaskHandleEntity requests;
  final VoidCallback onAcceptHandle;
  final VoidCallback onDeniedHandle;
  const TaskHandleCard({
    Key? key,
    required this.requests,
    required this.onAcceptHandle,
    required this.onDeniedHandle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 74.0,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.08),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              clipBehavior: Clip.hardEdge,
              child: Image.network(
                requests.avatar,
                width: 64.0,
                height: 64.0,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(
                    Icons.person,
                    size: 64.0,
                    color: Colors.white,
                  );
                },
              ),
            ),
          ),
          Text(
            requests.username,
            style: const TextStyle(
              fontSize: 18.0,
              color: Colors.white,
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: onAcceptHandle,
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Colors.white.withOpacity(0.1),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  padding: const MaterialStatePropertyAll(EdgeInsets.zero),
                  minimumSize: const MaterialStatePropertyAll(Size.zero),
                  elevation: const MaterialStatePropertyAll(0),
                ),
                child: const SizedBox(
                  height: 74.0,
                  width: 74.0,
                  child: Icon(
                    Icons.done,
                    color: Colors.white,
                    size: 24.0,
                  ),
                ),
              ),
              const SizedBox(width: 10.0),
              ElevatedButton(
                onPressed: onDeniedHandle,
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Colors.white.withOpacity(0.1),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  padding: const MaterialStatePropertyAll(EdgeInsets.zero),
                  minimumSize: const MaterialStatePropertyAll(Size.zero),
                  elevation: const MaterialStatePropertyAll(0),
                ),
                child: const SizedBox(
                  height: 74.0,
                  width: 74.0,
                  child: Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 24.0,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
