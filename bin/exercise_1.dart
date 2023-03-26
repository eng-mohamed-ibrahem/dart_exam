import 'dart:io';

void main(List<String> args) {
  try {
    stdout.write('Enter A Positive Number: ');
    String strNumber = stdin.readLineSync()!;
    StringBuffer reversedString = StringBuffer();
    (strNumber.split('').reversed).forEach((element) {
      reversedString.write(element);
    });
    int number = int.parse(reversedString.toString());
    print('The reversed Number: $number');
  } catch (e) {
    print('Enter a valid number');
  }
}
