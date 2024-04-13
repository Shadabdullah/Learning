class Glitch {
  String message;

  Glitch({this.message});

  @override
  String toString() => 'Glitch(message: $message)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is Glitch && o.message == message;
  }

  int get hashCode => message.hashCode;
}

class NoInterNetGlitch extends Glitch {
  NoInterNetGlitch() : super(message: "Unable to conntect to internet");
}
