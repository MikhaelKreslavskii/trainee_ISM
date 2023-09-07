extension ConvertInString on DateTime
{
  String convert()
  {
    String result = "";
    result+= this.year.toString()+ "-"+this.month.toString()+"-"+this.day.toString()+" "
    +this.hour.toString().padLeft(2,'0')+":"+this.minute.toString().padLeft(2,'0')+":"
    +this.second.toString().padLeft(2,'0');

    return result;
  }
}

void main() {
  DateTime time = DateTime(1956,11,4, 13,7);
  print(time.convert());
  // Implement an extension on [DateTime], returning a [String] in format of
  // `YYYY.MM.DD hh:mm:ss` (e.g. `2023.01.01 00:00:00`).
}
