import UIKit

/*
When you open this file  in Xcode, it is normal that you see errors in the source code.
 */
//**************** QUESTION 1 ****************
// 1.a) Declare a variable called  distance of type Double, using type annotation
var distance:Double
// 1.b) Declare a constant called  maxWeight of type an Int, with a value of 130, using type annotation
let maxWeight:Int = 130
// 1.c) Print  "Your max weight is xxxx pounds", replacing the xxxx with the value of maxWeight. Use String interpolation
print("Your max weight is \(maxWeight) pounds")
// 1.d) Write Swift source code to print the below in one single print statement
            /*
                Hello, All
                Welcome to Swift Programming..!
            */

print ("Hello, All \rWelcome to Swift programming..!")


//**************** END OF QUESTION 1 ****************



//**************** QUESTION 2 ****************
// 2.a) Predict what will happen when you try and execute below three statements when you uncomment the third line?

var x = 15
var y = 25.0
//y = x

/*Error will be thrown saying we cannot assign an Integer value to variable of type Double, to fix this error we will typeCast Integer variable
 to Double.*/

// 2.b) Fix the error in the question 2.a

y = Double(x)


//**************** END OF QUESTION 2 ****************



//**************** QUESTION 3 ****************
//3.a) Declare three constants x, y, z and assign the values 2, 7, 5. Write a swift code to find the largest number among the three integers.
let x1 = 2
let y1 = 7
let z1 = 5
 if (x1>y1 && x1>z1)
{
    print("x1 is greater")
}
else if (y1>z1)
{
   print("y is greater")
}
else{
    print("z1 is greater")
}
//3.b) Declare 2 variables a,b and assign values 13, 103. Write a swift code to check whether the last digit of the two given  integer values are same or not.
var a = 13
var b = 103
if(a%10 == b%10)
{
    print("last digit of both a and b are same")
}
else{
    print("No the last digits of integer are not same")
}

//**************** END OF QUESTION 3 ****************



//**************** QUESTION 4 ****************
//using loops
//4.a) Print the numbers 1 to N in alternative order, one number from the left side (starting with one) and one number from the right side (starting from N down to 1)
//Decalare var N = 10
//expected output is 1 10 2 9 3 8 4 7 5 6


//4.b) If a number C is given, then print the following rhombus
//declare C = 5
//output
// Hint : use terminator in print statements and loops
//    *
//   ***
//  *****
// *******
//*********
// *******
//  *****
//   ***
//    *


//**************** END OF QUESTION 4 ****************



//**************** QUESTION 5 ****************
// Using Strings
//5.a) Declare a String and assign the value of your own, Write a Swift code to add "A" in front of the string and print it. If the string already begins with "A", then simply print it.

//5.b) Declare a String str1 and and assign the value of your own. Write a swift code to add the last character at the front and back of the given string and print it.

//5.c) Declare a String Swift and print them in the reverse order.

//5.d) Write a Swift code  to check if the first or last characters are 'a' of a given string, return the given string without those 'a' characters in the first and last, otherwise return the given string.
 //declare var myString1 = "ababa"
 //expected output bab
//**************** END OF QUESTION 5 ****************

 



