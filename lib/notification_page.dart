import 'package:flutter/material.dart';
import 'package:local_notification/notification_helper.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          NotificationHelper.pushNotification(
              title: 'Local Notification',
              body: 'This is my first notification');
        },
        backgroundColor: const Color(0xFF7286a2),
        child: const Icon(
          Icons.notifications_none_rounded,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        title: const Text(
          'Local Notification',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF7286a2),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/notification.png'),
          const SizedBox(
            height: 80,
          )
        ],
      ),
    );
  }
}
