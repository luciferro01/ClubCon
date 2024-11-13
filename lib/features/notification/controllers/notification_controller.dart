import 'package:clubcon/features/notification/models/notification_model.dart';
import 'package:get/get.dart';

class NotificationController extends GetxController {
  var notifications = <NotificationItem>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchNotifications();
  }

  void fetchNotifications() {
    // Simulating fetching data
    notifications.value = [
      NotificationItem(
        title: "Message from Mohil Bansal!",
        description: "52 Total Unread Messages ⚠️",
        type: "message",
        date: DateTime.now(),
        isCompleted: false,
      ),
      NotificationItem(
        title: "Journal Incomplete!",
        description: "It's Reflection Time! ✍️",
        type: "journal",
        date: DateTime.now(),
        progress: 0.6,
      ),
      NotificationItem(
        title: "Exercise Complete!",
        description: "you need to do more. 🧘",
        type: "exercise",
        date: DateTime.now(),
        isCompleted: true,
      ),
      NotificationItem(
        title: "Your attendance is low",
        description:
            "You have to meet respective HOD of your department in the college.",
        type: "important",
        date: DateTime.now(),
        // downloadUrl: "assets/pdf/health_data.pdf",
      ),
      NotificationItem(
        title: "Mood Improved.",
        description: "Neutral ➡️ Happy",
        type: "mood",
        date: DateTime.now(),
        isCompleted: true,
      ),
    ];
  }
}
