import 'package:flutter/material.dart';

class OtpBox extends StatelessWidget {
  const OtpBox({
    super.key,
    required this.size,
    required TextEditingController controller,
    required FocusNode nextFocusNode,
    required FocusNode thisFocusNode,
  })  : _controller = controller,
        _nextFocusNode = nextFocusNode,
        _thisFocusNode = thisFocusNode;

  final Size size;
  final TextEditingController _controller;
  final FocusNode _thisFocusNode;
  final FocusNode _nextFocusNode;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.07,
      width: size.width * 0.133,
      child: TextField(
        controller: _controller,
        focusNode: _thisFocusNode,
        textAlign: TextAlign.center,
        onChanged: (value) {
          if (_controller.text.length == 1) {
            _nextFocusNode.requestFocus();
          }
        },
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          color: Colors.black87,
        ),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: const BorderSide(
                color: Colors.white10, width: 0.8),
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.blue, width: 0.8),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
