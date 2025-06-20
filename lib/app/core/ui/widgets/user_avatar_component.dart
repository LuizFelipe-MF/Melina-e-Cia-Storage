import 'package:melina/app/core/ui/widgets/skeleton_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class UserAvatarComponent extends StatelessWidget {
  bool? isLoading;
  String imageUrl;

  UserAvatarComponent({
    super.key,
    this.isLoading,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return isLoading ?? false
        ? SkeletonComponent(width: 54, height: 54)
        : ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Image.network(
              '${dotenv.env["URL_BASE"] ?? ""}$imageUrl',
              fit: BoxFit.cover,
              width: 54,
              height: 54,
            ),
          );
  }
}
