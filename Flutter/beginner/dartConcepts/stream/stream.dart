//Future demostraion
// void main() async {
//   print('Started at ${DateTime.now()}');
//
//   final time = await Future.delayed(Duration(minutes: 2))
//       .then((value) => DateTime.now());
//   print('Delayed time was $time');

// }

// import 'dart:async';
//
// void main() async {
//   final streamController = StreamController<int>();
//
//   int st = 0;
//   Timer.periodic(Duration(seconds: 2), (timer) {
//     streamController.add(st += 1);
//   });
//
//   streamController.stream.listen((event) {
//     print(event);
//   });
// }

import 'dart:async';

void main() async {
  final streamController = StreamController<DateTime>();
  final unsubscribeAt = DateTime.now().add(Duration(seconds: 10));

  StreamSubscription<DateTime>? subscription;

  Timer.periodic(Duration(seconds: 2), (timer) {
    streamController.add(DateTime.now());
  });

  subscription = streamController.stream.listen((event) async {
    print(event);
    if (event.isAfter(unsubscribeAt)) {
      print('Its after ${unsubscribeAt} , cleaning up stream');
      print(subscription);
      await subscription?.cancel();
    }
  });
}
