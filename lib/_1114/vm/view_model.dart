import 'package:pro1022/_1114/m/data_model.dart';

class ViewModel {
  final DataModel _dataModel;

  ViewModel(this._dataModel);

  Future<String> getGreetingMessage(int index) async {
    try {
      return await _dataModel.fetchGreeting(index);
    } catch (e) {
      return "Fail Load to data";
    }
  }
}
