int sensePin = 0;
int ledPin = 9;

void setup()
{
  analogReference(DEFAULT); // Optional, it's on by default.

  pinMode(ledPin, OUTPUT);

  Serial.begin(9600);
}

void loop()
{
  int senseValue = analogRead(sensePin);

  if (senseValue <= 400)
  {
    digitalWrite(ledPin, HIGH);
  }
  else
  {
    digitalWrite(ledPin, LOW);
  }

  Serial.println(senseValue);
}
