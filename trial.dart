// 1.Create a class called Product with attributes for name, price, and quantity.
// Implement a method to calculate the total value of the product (price * quantity).
// Create multiple objects of the Product class and calculate their total values.


void main() {
  //QUESTION1
  Product item1 = Product(name: 'Maize', price: 10.00, quantity: 2);

  double totalPrice = item1.getTotalPrice();
  print('Total price of ${item1.name}: $totalPrice');

   // QUESTION2

 Student student1=Student(name:'Rose Kivuva', age:20, grades:[12,23,45,67,78]);


    double avgGrade=student1.averageGrade();
    print('Average grade for ${student1.name} is  $avgGrade');

    bool pass=student1.passed();
    print('Has ${student1.name} passed: $pass');

// QUESTION3
    String word="Rosekivuva";
    String result =reverse(word);
    print(result);


 


}

class Product {
  String name;
  double price;
  int quantity;

  Product({required this.name, required this.price, required this.quantity});

  double getTotalPrice() {
    return price * quantity;
  }
}

// 2.Implement a class called Student with attributes for name, age, and grades (a
// list of integers). Include methods to calculate the average grade, display the
// student information, and determine if the student has passed (average grade >=
// 60). Create objects for the Student class and demonstrate the usage of these
// methods.
class Student{
    String name;
    int age;
    List<int> grades=[];

    Student({required this.name, required this.age, required this.grades});

    double averageGrade(){
        int total=grades.reduce((a,b)=> a+b);
        double average=total/grades.length;
        return average;
    }

    bool passed(){
        int total=grades.reduce((a,b)=> a+b);
        double average=total/grades.length;
        return average >=60;
    }

}

// Reversing a string
String reverse(String word){
    // String word="Rosekivuva";
    // String rev=word.split(' ').reversed.join('');
    // return rev;

    String reversedWord='';
    for(int i= word.length-1; i>=0; i--){
        reversedWord+=word[i];
    }
    return reversedWord;

}