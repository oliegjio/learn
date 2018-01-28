int switchPin = 8;
int ledPin = 11;
int ledLevel = 0;
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
    ledLevel += 51;
  }
  if (ledLevel > 255) ledLevel = 0;
  lastButton = currentButton;
  analogWrite(ledPin, ledLevel);
}
