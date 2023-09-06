extension ParserLinks on String
{
  List<String> parseLink()
  {
    List<String> tokens = this.split(' ');
    List<String> result =[];

    for( int i=0;i<tokens.length;i++)
    {
      if(tokens[i].contains(RegExp(r'([a-z]+\.[a-z]+)')))
      {
        if(tokens[i].endsWith(','))
        {
        tokens[i] = tokens[i].replaceAll(',', '');
          if(i<tokens.length-1)
          {
            tokens[i+1]= ', '+ tokens[i+1];
          }
        result.add("Link ('${tokens[i]} ')");
        }
      }
      else
      {
        result.add("Text ('${tokens[i]} ')");
      }
    } 

      
    
    return result;
  }
}

void main() {
  // Implement an extension on [String], parsing links from a text.
  
  // Extension should return a [List] of texts and links, e.g.:
  // - `Hello, google.com, yay` ->
  //   [Text('Hello, '), Link('google.com'), Text(', yay')].

  ///не учитывает запятые  
  String text = "Hello, google.com, yay lfsdlfjd, rtrtr gogle.com";
  print(text.parseLink());
}
