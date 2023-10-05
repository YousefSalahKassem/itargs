enum ThemeFlavor {
  light,
  dark,
  system;

  static const defaultValue = ThemeFlavor.system;

  factory ThemeFlavor.fromString(String? name) {
    if (name == null || name == '') return defaultValue;

    return ThemeFlavor.values.firstWhere(
          (flavor) => flavor.name == name,
      orElse: () => defaultValue,
    );
  }
}