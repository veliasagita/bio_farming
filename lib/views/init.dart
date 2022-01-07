//Widget _selectWidget

class Init {
  static Future initialize() async {
    await _registerService();
  }

  static _registerService() async {
    await Future.delayed(Duration(seconds: 3));
  }
}
