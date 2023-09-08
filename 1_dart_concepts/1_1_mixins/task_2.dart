extension ParserLinks on String {
  List<String> parseLink() {
    List<String> tokens = this.split(' ');

    

    RegExp links = RegExp(r'([\w-]{1,32}\.[\w-]{1,32})');


    

    String str = this;
    Iterable<RegExpMatch> matchesLinks = links.allMatches(str);

    List<String> result=[];
    for (final m in matchesLinks)
    {
      String match = m[0]!;
      String test= "";
      int startLinkIndex = str.indexOf(match);
      int endLinkIndex = startLinkIndex+ match.length;
      for(int i=0;i<startLinkIndex;i++)
      {
        test+=str[i];
      }
      result.add("Text ($test)");
      result.add("Link ($match)");
     str = str.replaceRange(0, endLinkIndex, '');
    }
    

    return result;
  }
}

void main() {
  // Implement an extension on [String], parsing links from a text.

  // Extension should return a [List] of texts and links, e.g.:
  // - `Hello, google.com, yay` ->
  //   [Text('Hello, '), Link('google.com'), Text(', yay')].

  
  String text = "Hello, google.com, yandex.ru, yay lfsdlfjd, rtrtr gogle.com";
  print(text.parseLink());
}
