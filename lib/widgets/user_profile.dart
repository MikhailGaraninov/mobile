// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Settings'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
    return Text('@First');
  }
}

class _UserNumberWidget extends StatelessWidget {
  const _UserNumberWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('+375 33 836 49 98');
  }
}

class _UserNameWidget extends StatelessWidget {
  const _UserNameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('Mikhail <First> Garaninov', 
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
    return Container(
      width: 100,
      height: 100,
      child: Placeholder());
  }
}
