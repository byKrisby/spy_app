extension TMXListExtensions<T> on List<T> {
  int? indexOfOrNull(T? element) => contains(element) ? indexWhere((e) => e == element) : null;
}
