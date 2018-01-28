int sensePin = 0;

void setup()
{
  analogReference(DEFAULT); // Optional, it's on by default.

  Serial.begin(9600);
}

void loop()
{
  Serial.println(analogRead(sensePin));
  delay(500);
}
