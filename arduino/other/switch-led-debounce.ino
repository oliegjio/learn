int switchPin = 8;
int ledPin = 13;
bool ledOn = false;
bool lastButton = LOW;
bool currentButton = LOW;

bool debounce(bool last)
{
  bool current = digitalRead(switchPin);
  if (current != last)
  {
    delay(5);
    current = digitalRead(switchPin);
  }
  return current;
}

void setup()
{
  pinMode(switchPin, INPUT);
  pinMode(ledPin, OUTPUT);
}

void loop()
{
  currentButton = debounce(lastButton);
  if (lastButton == LOW && currentButton == HIGH)
  {
    ledOn = !ledOn;
  }
  lastButton = currentButton;
  digitalWrite(ledPin, ledOn);
}
