class TransformString {
  static String convertStringToPlural(String wordToPlural) {
    if(wordToPlural.endsWith('L')) {
      wordToPlural = '${wordToPlural.substring(0, wordToPlural.length - 1)}IS';
      wordToPlural = wordToPlural.toLowerCase();
      wordToPlural = wordToPlural[0].toUpperCase() + wordToPlural.substring(1);
    } else {
      wordToPlural = '${wordToPlural}S';
      wordToPlural = wordToPlural.toLowerCase();
      wordToPlural = wordToPlural[0].toUpperCase() + wordToPlural.substring(1);
    }
    return wordToPlural;
  }
}