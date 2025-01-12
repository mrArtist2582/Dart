import 'dart:io';
import 'dart:async';

Future<void> bookRoom(String roomType) async {
  print("Booking a $roomType...");
  
  await Future.delayed(Duration(seconds: 2));

  
  switch (roomType.toLowerCase()) {
    case 'single':
      print("Your Single Room has been booked successfully!\n");
      break;
    case 'double':
      print("Your Double Room has been booked successfully!\n");
      break;
    case 'delux':
      print("Your Deluxe Room has been booked successfully!\n");
      break;
    case 'queen':
      print("Your Queen Room has been booked successfully!\n");
      break;
    default:
      print("Sorry, we don't have a room of that type.\n");
      break;
  }
}

void main() async {
  
  print("Enter the room type (Single, Double, Delux, Queen): ");
  
  String? roomType = stdin.readLineSync();

  if (roomType != null && roomType.isNotEmpty) {
    
    await bookRoom(roomType);
  } else {
    print("Invalid room type input.\n");
  }
}
