import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'listModels.dart';
import 'navigation.dart';

class ListAttempts extends StatelessWidget {

  var arr = [
    listAttempts(1, '0:0:20'),
    listAttempts(2, '0:0:18'),
    listAttempts(3, '0:0:17'),
    listAttempts(4, '0:0:18'),
    listAttempts(5, '0:0:16'),
    listAttempts(6, '0:0:15'),
    listAttempts(7, '0:0:15'),
    listAttempts(8, '0:0:14'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: 80, // Установите желаемую высоту AppBar
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30), // Установите радиус закругления здесь
          ),
        ),
        title: const Text(
          'Прогресс тренировки',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
            fontFamily: 'Nexa',
            shadows: [
              Shadow(
                color: Colors.black,
                blurRadius: 2,
                offset: Offset(2, 2),
              ),
            ],
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0), // Add padding around the list
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: arr.length * 2 - 1, // double the length to include dividers
            itemBuilder: (context, index) {
              if (index.isOdd) {
                return Divider(); // return a divider for odd indices
              }
              final itemIndex = index ~/ 2; // calculate the original item index
              final item = arr[itemIndex];
              return ListTile(
                title: Text('Попытка ${item.counter} - Время: ${item.timer}'),
              );
            },
          ),
        ),
      ),
      bottomNavigationBar: const navigation(),
    );
  }
}
