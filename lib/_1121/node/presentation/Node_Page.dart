import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class NodePage extends StatefulWidget {
  const NodePage({super.key});

  @override
  State<NodePage> createState() => _NodePageState();
}

class _NodePageState extends State<NodePage> {
  String responseMessage = '';

  Future<void> _connectToServer() async {
    print('서버 연결 요청');
    // 실제 서버와 연결되는 것은 GET 요청을 보낼 때 이루어짐
    print('서버에 연결되었습니다.');
  }

  // GET 요청을 보내는 함수
  Future<void> _sendGetRequest() async {
    try {
      final response = await http.get(Uri.parse('http://localhost:3000/items'));

      if (response.statusCode == 200) {
        // 서버에서 받은 응답을 화면에 표시
        // print('서버 응답: ${response.body}');
        setState(() {
          responseMessage = jsonDecode(response.body)['message'];
        });
      } else {
        // print('서버 오류: ${response.statusCode}');
      }
    } catch (e) {
      // print('에러 발생: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter to Node.js 연결'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _connectToServer(),
              child: const Text('서버에 연결'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _sendGetRequest(),
              child: const Text('GET 요청 보내기'),
            ),
            const SizedBox(height: 20),
            Text('서버 응답: $responseMessage'),
          ],
        ),
      ),
    );
  }
}
