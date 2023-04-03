enum Language {
  en,
  zh,
}

extension Name on Language {
  String get getName {
    switch (this) {
      case Language.en:
        return 'English';
      case Language.zh:
        return '中文';
      default:
        throw UnimplementedError();
    }
  }
}
