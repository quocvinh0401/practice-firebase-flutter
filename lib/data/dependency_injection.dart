class Injector {
  static final Injector _singleton = Injector._internal();
  factory Injector() {
    return _singleton;
  }
  Injector._internal();


}