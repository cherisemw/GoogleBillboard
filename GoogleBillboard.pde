public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  

public void setup(){            
  for (int i = 2; i < e.length()-10; i++){
    String digits = e.substring(i, i+10);
    double num = Double.parseDouble(digits);
    if (isPrime(num) == true){
      break;
    }
  }
}  

public boolean isPrime(double dNum){   
  boolean prime = true;
  if (dNum < 2){
    prime = false;
  }
  for (int i = 2; i <= Math.sqrt(dNum); i++){
    if (dNum % i == 0){
      prime = false;
    }  
  }
  if (prime == true){
    System.out.println(dNum);
  }
  return prime;
} 
