#include <OneWire.h>
#include <DallasTemperature.h>

const int oneWireBus = 2;

OneWire oneWire(oneWireBus);

DallasTemperature sensors(&oneWire);

void setup()
{
  Serial.begin(9600);

  sensors.begin();
}

void loop()
{
  sensors.requestTemperatures();

  Serial.println(sensors.getTempCByIndex(2));

  delay(100);
}
