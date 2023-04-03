import 'package:flutter/material.dart';

import 'fur_button.dart';

class FurTextfield extends StatefulWidget {
  final String hintText;
  final double height;
  final bool hasConfirmButton;
  final Future<void> Function(Function(bool isLoading) setIsLoading)? onClick;
  final Function(String value) onValueChanged;
  final bool obscureText;
  const FurTextfield({
    this.hintText = '',
    super.key,
    this.height = 74.0,
    this.hasConfirmButton = false,
    required this.onValueChanged,
    this.onClick,
    this.obscureText = false,
  }) : assert(
          (!hasConfirmButton || (hasConfirmButton && onClick != null)),
        );

  @override
  State<FurTextfield> createState() => _FurTextfieldState();
}

class _FurTextfieldState extends State<FurTextfield> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 74.0,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              onChanged: (value) => widget.onValueChanged(value),
              style: TextStyle(
                color: Colors.white.withOpacity(0.7),
                fontSize: 20.0,
                height: 1.0,
              ),
              decoration: InputDecoration(
                fillColor: Colors.white.withOpacity(0.08),
                contentPadding: const EdgeInsets.all(30),
                hintText: widget.hintText,
                hintStyle: TextStyle(
                  color: Colors.white.withOpacity(0.7),
                  fontSize: 20.0,
                  height: 1.0,
                ),
              ),
              obscureText: widget.obscureText,
            ),
          ),
          if (widget.hasConfirmButton)
            SizedBox(
              width: 74.0,
              child: FurButton(
                onClick: () async {
                  if (widget.onClick != null) {
                    await widget.onClick!(
                      (isLoading) {
                        setState(() {
                          this.isLoading = isLoading;
                        });
                      },
                    );
                  }
                },
                child: isLoading
                    ? const SizedBox(
                        width: 40.0,
                        height: 40.0,
                        child: CircularProgressIndicator(),
                      )
                    : const Icon(
                        Icons.check,
                        size: 48.0,
                        color: Colors.white,
                      ),
              ),
            ),
        ],
      ),
    );
  }
}
