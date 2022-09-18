import 'dart:ui';

import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(233,232,236,1),
      appBar: AppBar(
        title: Text('Настройки'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _UserInfo(),
            SizedBox(
              height: 30,
            ),
            _MenuWidget(),

            SizedBox(height: 30,),

            _MenuWidget2()
          ],
        ),
      ),
    );
  }
}

class _MenuWidget extends StatelessWidget {
  const _MenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: [
          _MenuWidgetRow(
            icon: Icons.favorite,
            text: 'Избранное'
          ),
          _MenuWidgetRow(
            icon: Icons.call,
            text: 'Звонки'
          ),
          _MenuWidgetRow(
            icon: Icons.computer,
            text: 'Устройства'
          ),
          _MenuWidgetRow(
            icon: Icons.folder,
            text: 'Папка с чатами'
          ),
          
        ],
      ),
    );
  }
}

class _MenuWidget2 extends StatelessWidget {
  const _MenuWidget2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: [
          
          _MenuWidgetRow(
            icon: Icons.notifications,
            text: 'Уведомления и звуки'
          ),
          _MenuWidgetRow(
            icon: Icons.privacy_tip,
            text: 'Конфиденциальность'
          ),
          _MenuWidgetRow(
            icon: Icons.date_range,
            text: 'Данные и память'
          ),
          _MenuWidgetRow(
            icon: Icons.brush,
            text: 'Оформление'
          ),
          _MenuWidgetRow(
            icon: Icons.language,
            text: 'Язык'
          ),
          
        ],
      ),
    );
  }
}

class _MenuWidgetRow extends StatelessWidget {
  final IconData icon;
  final String text;

  const _MenuWidgetRow({
    Key? key, 
    required this.icon, 
    required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(icon),
          SizedBox(
            width: 15,
          ),
          Expanded(child: Text(text)),
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
        children: [
          SizedBox(
            height: 30,
          ),
          _AvatatWidget(),
          SizedBox(
            height: 30,
          ),
          _UserNameWidget(),
          SizedBox(
            height: 10,
          ),
          _UserPhoneWidget(),
          SizedBox(
            height: 10,
          ),
          _UserLoginWidget(),
        ],
      ),
    );
  }
}

class _UserLoginWidget extends StatelessWidget {
  const _UserLoginWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '@Tim1735',
      style: TextStyle(
        color: Colors.grey,
        fontSize: 17,
      ),
    );
  }
}

class _UserPhoneWidget extends StatelessWidget {
  const _UserPhoneWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '+7(973)457 43 50',
      style: TextStyle(
        color: Colors.grey,
        fontSize: 15,
      ),
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
      'TimMasuda',
      style: TextStyle(
          color: Colors.black, fontSize: 25, fontWeight: FontWeight.w600),
    );
  }
}

class _AvatatWidget extends StatelessWidget {
  const _AvatatWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      child: Placeholder(),
    );
  }
}
