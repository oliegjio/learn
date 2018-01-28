#include <LiquidCrystal.h>

LiquidCrystal lcd(4, 5, 10, 11, 12, 13);

char temp[16];

void setup()
{
  lcd.begin(16, 2); // Columns, Rows
}

void loop()
{
  for (int i = 0; i <= 255; i++)
  {
    char* value = itoa(i, temp, 10);
    
    lcd.clear();

    lcd.setCursor(0, 0);
    lcd.write("Values:");
    
    lcd.setCursor(0, 1);
    lcd.write(value);

    delay(100);
  }
}

