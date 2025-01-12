void main(){
  List<int> numbers = [1, 2, 3, 4];


numbers.addAll([6, 7]);
print(numbers); // [1, 2, 3, 4, 5, 6, 7]

numbers.removeWhere((n) => n < 5);
print(numbers); // [8, 9]

Map<String, int> marks = {'Math': 95, 'Science': 90};
marks['English'] = 85;
print(marks); // {'Math': 95, 'Science': 90, 'English': 85}

marks['English'] = 85;
print(marks); // {'Math': 95, 'Science': 90, 'English': 85}
print(marks.values); //   (90, 85)

print(marks.containsKey('Math')); // false
print(marks.containsKey('Math')); // false

marks.forEach((key, value) {
  print('$key: $value');
});


}