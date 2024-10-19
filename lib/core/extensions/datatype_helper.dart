extension StringExtension on String? {
  bool get isNullOrEmpty => this == null || this == "";
  bool get isNotNullAndNotEmpty => this != null && this != "";
}

extension ListExtension<T> on List<T>? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;
  bool get isNotNullAndNotEmpty => this != null && this!.isNotEmpty;
}

extension MapExtension<K, V> on Map<K, V>? {
  bool isNullOrEmpty() => this == null || this!.isEmpty;
}
