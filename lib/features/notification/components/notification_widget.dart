import 'package:clubcon/constants/image_constants.dart';
import 'package:clubcon/features/notification/models/notification_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NotificationWidget extends StatelessWidget {
  final NotificationItem item;

  const NotificationWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 5,
            spreadRadius: 1,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              _getIcon(item.type),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  item.title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              if (item.progress != null)
                CircularProgressIndicator(
                  value: item.progress,
                  backgroundColor: Colors.grey.shade300,
                  color: Colors.blue,
                ),
              if (item.isCompleted)
                const Icon(Icons.check_circle, color: Colors.green),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            item.description,
            style: TextStyle(color: Colors.grey.shade600),
          ),
          if (item.downloadUrl != null) ...[
            const SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {
                //TODO: Action Button Dwnload
              },
              icon: const Icon(Icons.download_rounded),
              label: const Text("Download PDF"),
            ),
          ]
        ],
      ),
    );
  }

  Widget _getIcon(String type) {
    switch (type) {
      case 'message':
        return SvgPicture.asset(SvgAssets.message,
            colorFilter: const ColorFilter.mode(Colors.green, BlendMode.srcIn));
      case 'journal':
        return const Icon(Icons.book, color: Colors.purple);
      case 'exercise':
        return SvgPicture.asset(SvgAssets.dumbbell,
            colorFilter: const ColorFilter.mode(Colors.brown, BlendMode.srcIn));
      case 'important':
        return SvgPicture.asset(SvgAssets.warning,
            colorFilter: const ColorFilter.mode(Colors.red, BlendMode.srcIn));
      case 'mood':
        return const Icon(Icons.mood, color: Colors.teal);
      default:
        return SvgPicture.asset(SvgAssets.bell);
    }
  }
}
