class Titan {
  int _powerPoint = 0;

  set powerPoint(int value) {
    _powerPoint = value < 5 ? 5 : value;//untuk memvalidasi bahwa nilai dari powerpoint 5 
  }

  int get powerPoint => _powerPoint;
}
