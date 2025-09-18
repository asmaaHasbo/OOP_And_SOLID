// ignore_for_file: avoid_print

abstract class WidgetController {
  void initState();
  void dispose();
}

abstract class HandleNetwork {
  void handleNetwork();
}

abstract class HandleAnimation {
  void handleAnimation();
}

class SimpleButtonController implements WidgetController {
  @override
  void initState() => print('Init button');
  @override
  void dispose() => print('Dispose button');
}
