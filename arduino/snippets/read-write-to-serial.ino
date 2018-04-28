int ledPin = 8;

void setup()
{
  Serial.begin(9600);
}

void loop()
{
  while (Serial.available() == 0);

  int value = Serial.read() - '0';

  switch (value)
  {
    case 1:
      digitalWrite(ledPin, HIGH);
      Serial.println("Led is on");
      break;

    case 2:
      digitalWrite(ledPin, LOW);
      Serial.println("Led is off");
      break;

    default:
      Serial.println("Invalid");
  }
}
