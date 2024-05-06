class Option {
  final String label;
  final String value;

  Option({required this.label, required this.value});


   @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Option && runtimeType == other.runtimeType && value == other.value;

  @override
  int get hashCode => value.hashCode;
}