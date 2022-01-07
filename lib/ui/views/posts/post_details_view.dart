import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class PostDetailsView extends StatelessWidget {
  const PostDetailsView({
    Key? key,
    @PathParam() required this.id,
  }) : super(key: key);
  final String id;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Text('Posts'),
      ),
    );
  }
}
