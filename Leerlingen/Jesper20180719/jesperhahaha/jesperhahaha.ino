const int led = 13;
const int led1 = 12;
const int led2 = 11;
const int led3 = 10;
int wacht = random(3000);

void setup()
{
  pinMode(led, OUTPUT);
  pinMode(led1, OUTPUT);
  pinMode(led2, OUTPUT);
  pinMode(led3, OUTPUT);
}

void loop()
{
  digitalWrite(led, HIGH);
  delay(wacht);
  wacht = random(random(random(random(random(3000)))));
  digitalWrite(led, LOW);
  delay(wacht);
  wacht = random(random(random(random(random(3000)))));
  digitalWrite(led1, HIGH);
  delay(wacht);
  wacht = random(random(random(random(random(3000)))));
  digitalWrite(led1, LOW);
  delay(wacht);
  wacht = random(random(random(random(random(3000)))));
  digitalWrite(led2, HIGH);
  delay(wacht);
  wacht = random(random(random(random(random(3000)))));
  digitalWrite(led2, LOW);
  delay(wacht);
  wacht = random(random(random(random(random(3000)))));
  digitalWrite(led3, HIGH);
  delay(wacht);
  wacht = random(random(random(random(random(3000)))));
  digitalWrite(led3, LOW);
  delay(wacht);
  wacht = random(random(random(random(random(3000))))); 
}
