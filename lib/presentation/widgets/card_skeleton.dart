import 'package:flutter/material.dart';
import 'package:skeletons/skeletons.dart';

class CardSkeleton extends StatelessWidget {
  const CardSkeleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 180,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => _buildSkeleton(context, index),
        separatorBuilder: (context, index) => const SizedBox(width: 16),
        itemCount: 5,
      ),
    );
  }

  Widget _buildSkeleton(BuildContext context, int index) {
    if (index == 0) {
      return Row(
        children: const [
          SizedBox(width: 16),
          SkeletonAvatar(
            style: SkeletonAvatarStyle(
              height: 180,
              width: 120,
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
          ),
        ],
      );
    }
    if (index == 4) {
      return Row(
        children: const [
          SkeletonAvatar(
            style: SkeletonAvatarStyle(
              height: 180,
              width: 120,
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
          ),
          SizedBox(width: 16),
        ],
      );
    }
    return const SkeletonAvatar(
      style: SkeletonAvatarStyle(
        height: 180,
        width: 120,
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
    );
  }
}
