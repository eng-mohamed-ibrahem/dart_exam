void main(List<String> args) {
  //
  List<num> numbers = [7, 2, 2, 5, 10, 3, 41, 43, 35, 87, 9, 8, 1, 88, 5];
  print(getSLAndSG(numbers));
}

List<num> getSLAndSG(List<num> numbers) {
  // sort the list
  numbers.sort();

  //default consider second element
  num secondSmallest = numbers[1];

  // what if 2 or 3 elements as the same following
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[0] != numbers[i]) {
      secondSmallest = numbers[i];
      break;
    }
  }
  // default consider the before last elment
  num secondGreatest = numbers[numbers.length - 2];

  // what if 2 or 3 elements as the same following
  int length = numbers.length;
  for (int i = numbers.length - 2; i >= 0; i--) {
    if (numbers[length - 1] != numbers[i]) {
      secondGreatest = numbers[i];
      break;
    }
  }
  return [secondSmallest, secondGreatest];
}
