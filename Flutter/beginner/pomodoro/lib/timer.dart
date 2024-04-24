import 'dart:async';

class CountDownTimer {
  double _radius = 1;
  bool _isActive = true; // Initialize isActive to false
  Timer timer;
  Duration _time;
  Duration _fullTime;

  CountDownTimer();

  String formatTime(Duration t) {
    String minutes = (t.inMinutes < 10) ? '0${t.inMinutes}' : '${t.inMinutes}';

    int remainingSeconds = t.inSeconds - (t.inMinutes * 60);
    String seconds =
        (remainingSeconds < 10) ? '0$remainingSeconds' : '$remainingSeconds';

    String formattedTime = '$minutes:$seconds';

    return formattedTime;
  }
}
