extension ConvertInString on DateTime
{
  String convert()
  {
  final String result="${year.toString()}-${month.toString()}-${day.toString()} ${hour.toString().padLeft(2,'0')}:${minute.toString().padLeft(2,'0')}:${second.toString().padLeft(2,'0')}";

   
    return result;
  }
}

void main() {
  DateTime time = DateTime(1956,11,4, 13,7);
  print(time.convert());
  // Implement an extension on [DateTime], returning a [String] in format of
  // `YYYY.MM.DD hh:mm:ss` (e.g. `2023.01.01 00:00:00`).
}
