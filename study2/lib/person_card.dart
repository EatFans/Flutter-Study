
import 'package:flutter/material.dart';

class PersonCard extends StatelessWidget {

  final String avatar;
  final String name;
  final String job;
  final String phoneNumber;
  final String email;

  const PersonCard({
    super.key,
    required this.avatar,
    required this.name,
    required this.job,
    required this.phoneNumber,
    required this.email
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
      ),
      margin: const EdgeInsets.all(16),
      color: Colors.white60,
      child: SizedBox(
        width: 350,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 20),
            // 头像
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(
                avatar
              ),
            ),
            const SizedBox(height: 12),
            // 名称
            Text(
                name,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                )
            ),
            const SizedBox(height: 8),
            // 职位
            Text(
              job,
              style:  TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500
              ),
            ),
            // 分割线
            const Divider(height: 30, thickness: 1),
            // 联系方式
            ListTile(
              minTileHeight: 12,
              leading: const Icon(Icons.phone, color: Colors.blue),
              title: Text(
                  phoneNumber,
                  style: TextStyle(
                      fontWeight: FontWeight.w400
                  )
              ),
            ),
            const Divider(height: 5, thickness: 1),
            ListTile(
                minTileHeight: 12,
                leading: const Icon(Icons.email, color: Colors.blue),
                title: Text(
                  email,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}