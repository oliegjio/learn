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

  senseValue = constrain(senseValue, 200, 600);
  int ledLevel = map(senseValue, 200, 600, 255, 0);

  analogWrite(ledPin, ledLevel);

  Serial.println(senseValue);
}
