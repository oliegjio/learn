int motorPin = 9;

void setup()
{
  pinMode(motorPin, OUTPUT);

  Serial.begin(9600);
}

void loop()
{
  Serial.println(analogRead(motorPin));

  for (int i = 0; i <= 255; i++)
  {
    analogWrite(motorPin, i);
    delay(10);
  }

  delay(1000);

  for (int i = 255; i >= 0; i--)
  {
    analogWrite(motorPin, i);
    delay(10);
  }

  delay(1000);
}
