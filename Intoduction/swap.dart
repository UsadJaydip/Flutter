void main() {
  
  int a = 10;
  int b = 5;

  print("Before Swapping: a = $a, b = $b");

  
  a = a + b; 
  b = a - b; 
  a = a - b; 

  print("After Swapping: a = $a, b = $b");
}
