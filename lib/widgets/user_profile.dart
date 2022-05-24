// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class UserProfile extends StatelessWidget {
  List<MenuRowData> firstmenuRow = [
    MenuRowData(Icons.favorite, 'Избранное'),
    MenuRowData(Icons.call, 'Звонки'),
    MenuRowData(Icons.computer, 'Устройства'),
    MenuRowData(Icons.folder, 'Папки с чатами'),
  ];
  List<MenuRowData> secondmenuRow = [
    MenuRowData(Icons.notifications, 'Уведомления и звуки'),
    MenuRowData(Icons.privacy_tip, 'Конфиденциальность'),
    MenuRowData(Icons.date_range, 'Данные и память'),
    MenuRowData(Icons.brush, 'Оформление'),
    MenuRowData(Icons.language, 'Язык'),
    MenuRowData(Icons.sticky_note_2, 'Стикеры'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Settings'),
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _UserInfo(),
              SizedBox(height: 30),
              _MenuWidget(
                menuRow: firstmenuRow,
              ),
              SizedBox(height: 30),
              _MenuWidget(menuRow: secondmenuRow),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuRowData {
  final IconData icon;
  final String text;

  MenuRowData(this.icon, this.text);
}

class _MenuWidget extends StatelessWidget {
  final List<MenuRowData> menuRow;
  const _MenuWidget({
    Key? key,
    required this.menuRow
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      // ignore: prefer_const_literals_to_create_immutables
      child: Column(
        children: menuRow.map((data) => _MenuWidgetRow(data: data)).toList(),
      ),
    );
  }
}

class _MenuWidgetRow extends StatelessWidget {
  final MenuRowData data;
  const _MenuWidgetRow({Key? key, required this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Icon(data.icon),
          SizedBox(width: 15),
          Expanded(child: Text(data.text)),
          Icon(Icons.chevron_right)
        ],
      ),
    );
  }
}

class _UserInfo extends StatelessWidget {
  const _UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          SizedBox(height: 20),
          _AvatarWidget(),
          SizedBox(height: 30),
          _UserNameWidget(),
          SizedBox(height: 10),
          _UserNumberWidget(),
          SizedBox(height: 10),
          _UserNickNameWidget(),
        ],
      ),
    );
  }
}

class _UserNickNameWidget extends StatelessWidget {
  const _UserNickNameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '@First',
      style: TextStyle(color: Colors.grey, fontSize: 17),
    );
  }
}

class _UserNumberWidget extends StatelessWidget {
  const _UserNumberWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '+375 33 836 49 98',
      style: TextStyle(color: Colors.grey, fontSize: 18),
    );
  }
}

class _UserNameWidget extends StatelessWidget {
  const _UserNameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Mikhail <First> Garaninov',
      style: TextStyle(
        color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class _AvatarWidget extends StatelessWidget {
  const _AvatarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(width: 100, height: 100, child: Placeholder());
  }
}
