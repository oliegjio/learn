int switchPin = 8;
int ledPin = 13;
bool ledOn = false;

void setup()
{
  pinMode(switchPin, INPUT);
  pinMode(ledPin, OUTPUT);
}

void loop()
{
  if (digitalRead(switchPin) == HIGH && ledOn == false)
  {
    digitalWrite(ledPin, HIGH);
    ledOn = true;
  }
  else if (digitalRead(switchPin) == LOW && ledOn == true)
  {
    digitalWrite(ledPin, LOW);
    ledOn = false;
  }
}
