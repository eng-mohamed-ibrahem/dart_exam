void main(List<String> args) {
  //
  List<num> numbers = [7, 2, 2, 5, 10, 3, 41, 43, 35, 87, 9, 8, 5];
  print(getSLAndSG(numbers));
}

//function
List<num> getSLAndSG(List<num> numbers) {
  // sort the list
  numbers.sort(
    (a, b) => a.compareTo(b),
  );
  //default consider second element
  num secondSmallest = numbers[1];

  for (int i = 2; i < numbers.length; i++) {
    if (secondSmallest != numbers[i]) {
      // check number after
      secondSmallest = numbers[i];
      break;
    }
    // secondSmallest = numbers[i];
  }

  // default consider the before last elment
  num secondgreatest = numbers[numbers.length - 2];
  for (int i = numbers.length - 2; i >= 0; i--) {
    if (secondgreatest != numbers[i - 1]) {
      // check if number before
      secondgreatest = numbers[i];
      break;
    }
    // secondgreatest = numbers[i];
  }

  return [secondSmallest, secondgreatest];
}
