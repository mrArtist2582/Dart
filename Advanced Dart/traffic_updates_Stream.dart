import 'dart:io';
import 'dart:async';

Stream<String> getTrafficUpdates(String location) async* {
  await Future.delayed(Duration(seconds: 1));

  // Directly match the location entered by the user
  switch (location.toLowerCase()) {
    case 's g road':
      yield "Traffic is clear at S G Road.";
      break;
    case 'sardar patel road':
      yield "Traffic jam reported at Sardar Patel Road.";
      break;
    case 'nh 14':
      yield "Accident cleared at NH 14.";
      break;
    case 'nh 16':
      yield "Traffic is flowing smoothly at NH 16.";
      break;
    default:
      yield "Location not found, please provide a valid location.";
      break;
  }
}

void main() async {
  
  print("Enter the location (S G Road, Sardar Patel Road, NH 14, NH 16): ");
  
  String? location = stdin.readLineSync();

  if (location != null && location.isNotEmpty) {
    
    print("\nReal-time traffic updates for $location:\n");
    await for (String update in getTrafficUpdates(location)) {
      print(update);
    }
  } else {
    print("Invalid location input.\n");
  }
}
