class NoReturn {
  static final NoReturn _singleton = NoReturn._internal();
  factory NoReturn(){
    return _singleton;
  }
  NoReturn._internal();
}


