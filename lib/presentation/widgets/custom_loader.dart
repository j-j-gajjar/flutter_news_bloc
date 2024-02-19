import 'package:flutter/cupertino.dart';

class CustomLoader extends StatelessWidget {
  const CustomLoader({
    super.key,
    required this.isLoading,
  });
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: isLoading ? const Center(child: CupertinoActivityIndicator()) : null,
    );
  }
}
