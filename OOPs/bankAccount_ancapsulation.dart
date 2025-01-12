import 'dart:io';

class BankAccount {
  
  double _balance = 0.0;           // Private balance (hidden from outside)


  double get balance => _balance;          // Getter: Check the balance


  // Setter: Deposit money (only positive amounts)
  void deposit(double amount) {
    if (amount > 0) {
      _balance = _balance + amount;
      print('Deposited: \₹${amount}');
    } else {
      print('Invalid deposit amount');
    }
  }


  // Setter: Withdraw money (only if enough balance)
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
     _balance = _balance -amount;
      print('Withdrew: \₹${amount}');
    } else {
      print('Invalid or insufficient funds');
    }
  }
}


void main() {
  var myAccount = BankAccount();
  bool running = true;

  while (running) {
    print('\n--- Welcome to KD Bank ---');
    print('1. Check Balance');
    print('2. Deposit Money');
    print('3. Withdraw Money');
    print('4. Exit');
    stdout.write('Choose an option: ');
    int? choice = int.tryParse(stdin.readLineSync()!);
    

    switch (choice) {
      case 1:
        print('Current Balance: \₹${myAccount.balance}');
        break;

      case 2:
        stdout.write('Enter amount to deposit: ');
        double? depositAmount = double.tryParse(stdin.readLineSync()!);
        if (depositAmount != null) {
          myAccount.deposit(depositAmount);
        } else {
          print('Invalid input. Please enter a number.');
        }
        break;

      case 3:
        stdout.write('Enter amount to withdraw: ');
        double? withdrawAmount = double.tryParse(stdin.readLineSync()!);
        if (withdrawAmount != null) {
          myAccount.withdraw(withdrawAmount);
        } else {
          print('Invalid input. Please enter a number.');
        }
        break;

      case 4:
        print('Have a great day!!');
        running = false;
        break;

      default:
        print('Invalid choice. Please select 1, 2, 3, or 4.');
    }
  }
}
