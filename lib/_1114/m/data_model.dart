class DataModel {
  final List<String> greetingMessage = [
    "MVVM 예제입니다.1",
    "MVVM 예제입니다.2",
    "MVVM 예제입니다.3",
    "MVVM 예제입니다.4"
  ];

  Future<String> fetchGreeting(int index) async {
    if (greetingMessage.isEmpty && index < greetingMessage.length) {
      return greetingMessage[index];
    } else {
      throw Exception("Fail Load to data");
    }
  }
}
