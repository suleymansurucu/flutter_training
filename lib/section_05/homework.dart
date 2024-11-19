
/*
Question1 : Write a function that takes an integer as a parameter.
This function should return the sum of all even numbers up to the given value.

Questions2 : Write a function that calculates the area of a circle.
The value of PI should be optional, and if not provided, it should default to 3.14.
 */

main(){
  int result = sum_of_all_even_number(5);
  print("sum of all even numbers: $result");

  double result2=area_of_the_circle(10,3.29);
  print("The area of the given circle is: $result2");

}

int sum_of_all_even_number(int number){

  int result=0;
for(int i=1; i< number; i++) {
  //i%2==0 ? result =result+i;
  if (i % 2 == 0) {
    result = result + i;
  }
}
  return result;
}

double area_of_the_circle(int radius, [double PI=3.14]){

  return radius*radius*2*PI;
}