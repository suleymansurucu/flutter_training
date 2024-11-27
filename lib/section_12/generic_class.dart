import 'package:flutter_training/section_12/mystack_class.dart';

main(){
MyStack myList=MyStack();
myList.push(5);
myList.push("Suleyman");
myList.push(true);
print(myList.pop());
print(myList.pop());
print(myList.pop());

IntMyStack intMyStack=IntMyStack();
intMyStack.push(4);
intMyStack.push(3);
intMyStack.push(5);
print(myList.pop());
print(myList.pop());


GenericStack<String> genericStack=GenericStack();
genericStack.push("12");
genericStack.push("Suleyman");
genericStack.push("3");
print(genericStack.pop());
print(genericStack.pop());

}


