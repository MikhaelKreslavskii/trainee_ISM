extension ConvertInString on DateTime
{
  String convert()
  {
    return this.toString();
  }
}

void main() {
  DateTime time = DateTime(1956,11,4, 13);
  print(time.convert());
  // Implement an extension on [DateTime], returning a [String] in format of
  // `YYYY.MM.DD hh:mm:ss` (e.g. `2023.01.01 00:00:00`).
}
