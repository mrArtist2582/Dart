void main() {
  String? name;  
  print(name);  

  String greeting = name ?? "Kashish";  
  
  print(greeting);  
  
  
  String? nickname = "KD";      
 
  String nonNullNickname = nickname;  // Forces nickname to be non-nullable
  
  print(nonNullNickname);  
  
}
