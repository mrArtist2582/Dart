/*  Clouser.
Imagine:
 You go to the bank and open a new account. 
 The bank teller sets up an account for you,
 and you tell the teller how much money you'd like to deposit initially. 
 Then, the teller gives you a special slip (which is a function) 
 that allows you to check your balance whenever you want. 
 This slip "remembers" your balance even though the teller is no longer around.

  In Dart, a closure is like this special slip:
  it "remembers" the environment in which it was created,
  even after that environment is no longer active.
 
 (o) the functionality is that whenever the  user checks the account then the 
    user get to see that when user  deposit 10 . that  displays on screen as
    inceremented balance.
*/

Function createBankAccount(double initialBalanace) {
  double balance = initialBalanace;

  return () {
    print("Current balance is : ${balance}");
    balance = balance + 10;
  };
}
 
  void main(){

     var  myAccount = createBankAccount(200);
     myAccount();
     myAccount();
  }