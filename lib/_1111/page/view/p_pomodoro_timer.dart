// ignore_for_file: library_private_types_in_public_api

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class PomodoroTimerPage extends StatefulWidget {
  const PomodoroTimerPage({super.key});

  @override
  _PomodoroTimerPageState createState() => _PomodoroTimerPageState();
}

class _PomodoroTimerPageState extends State<PomodoroTimerPage> {
  double _remainingTime = 0;
  int _totalStudyTime = 0;
  bool _isRunning = false;
  // ignore: unused_field
  bool _isStudyTime = false;
  String _statusMessage = "현재 휴식중입니다.";
  int _clockCnt = 0;

  Future<void> _startTimer() async {
    if (_remainingTime > 0) {
      setState(() {
        _isRunning = true;
      });

      while (_remainingTime > 0 && _isRunning) {
        setState(() {
          _remainingTime -= 1;
          _totalStudyTime += 1;
          _isStudyTime = true;
          _statusMessage = "현재 학습중입니다.";
          _clockCnt < 23 ? _clockCnt += 1 : _clockCnt = 0;
        });
        await Future.delayed(const Duration(seconds: 1));
      }

      if (_remainingTime == 0) {
        _isRunning = false;
        _isStudyTime = false;
        _statusMessage = "현재 쉬는 시간입니다.";
        _clockCnt = 0;
        _startTimer();
      }
    } else {
      setState(() {
        _isRunning = false;
      });
    }
  }

  void _pauseTimer() {
    setState(() {
      _isRunning = false;
      _isStudyTime = false;
      _statusMessage = "현재 쉬는 시간입니다.";
    });
  }

  void _setTime(double minutes) {
    setState(() {
      _remainingTime = minutes * 60;
    });
  }

  String _formatTime(double seconds) {
    int minutes = (seconds / 60).floor();
    int remainingSeconds = (seconds % 60).toInt();
    return '$minutes:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pomodoro 타이머'),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              _statusMessage,
              style: GoogleFonts.getFont(
                "Jua",
                fontSize: 30,
              ),
            ),
            const Gap(20),
            Image.asset(
              "lib/core/assets/imgs/clock/clock_$_clockCnt.png",
              errorBuilder: (context, error, stackTrace) => Container(),
            ),
            const Gap(20),
            Text(
              _formatTime(_remainingTime),
              style: GoogleFonts.getFont(
                "Jua",
                fontSize: 40,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              '총 학습 시간: ${_formatTime(_totalStudyTime.toDouble())}',
              style: GoogleFonts.getFont(
                "Jua",
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _isRunning ? _pauseTimer : _startTimer,
                  child: Text(_isRunning ? '일시정지' : '시작'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () => _setTime(0.1),
                  child: const Text('6초'),
                ),
                ElevatedButton(
                  onPressed: () => _setTime(1),
                  child: const Text('1분'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
