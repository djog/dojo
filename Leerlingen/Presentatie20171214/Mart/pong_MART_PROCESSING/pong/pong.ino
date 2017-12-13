void setup() 
{
  pinMode(A0, INPUT);
  pinMode(A1, INPUT);
  Serial.begin(9600);
}

void loop()
{
Serial.write(0);
Serial.write(map(analogRead(A0), 0, 1023, 1,255));
Serial.write(map(analogRead(A1), 0, 1023, 1,255));
  delay(20);
}
