class NotificationItem {
  final String title;
  final String description;
  final String type;
  final DateTime date;
  final double? progress;
  final bool isCompleted;
  final String? downloadUrl;

  NotificationItem({
    required this.title,
    required this.description,
    required this.type,
    required this.date,
    this.progress,
    this.isCompleted = false,
    this.downloadUrl,
  });
}
