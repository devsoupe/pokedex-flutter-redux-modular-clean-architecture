enum Flavor {
  debug,
  release,
}

class F {
  static late final Flavor appFlavor;

  static String get name => appFlavor.name;

  static String get title {
    switch (appFlavor) {
      case Flavor.debug:
        return 'Pokedex Debug';
      case Flavor.release:
        return 'Pokedex';
    }
  }

}
