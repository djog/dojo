#include <cstdlib>
#include <iostream>

int main()
{
  int password = rand() % 10000 + 1000;

  std::cout << "Enter password: \n";

  int guess;
  std::cin >> guess;

  if(guess == password)
  {
    return 0;
  }
  else if(guess != password)
  {
    return 1;
  }
}

