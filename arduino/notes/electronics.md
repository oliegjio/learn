### Analog and digital:

**Analog** signal can vary from maximum (maybe 5V) to minimum (0V) voltages.
Analog signal may have interference and can be interpreted wrong.

**Digital** signal can be either on or off. So 5V would be on (1) and 0V would be off (0). Also if we apply 2V it will counts as 1 and if we apply 4V it will counts as 0.
Digital signal is stable, so more reliable than analog.

To speed down the digital motor with a half speed you need to rapidly (with sertain speed) give voltages from 0V to 5V.

### Ohm's Law:

`V = I * R`.

1. V or E - Voltage (Volt).
2. I or i - Current (Ampere).
3. R or Ω - Resistance (Ohm).

mA = A / 1000.

### Other:

5V output is equat to 1024 values (2^10, ten bit resolution).
3.3V / 5V = 0.66 (~675 point of resolution).

Analog output can only transit 2^8 = 256 values.

Most leds runs on around 20 mA.

A **voltage divider circuit** would be used to measure a voltage change.

**Ground** takes voltage and nullify it.

There is analog to digital converter.

Some electronics have a **polarity**.

Current flows.

**NPN** transistors have 3 pins: collector, base, emitter. Base is on the middle, collector and emitter are on the sides. Current flows in through the collector and out through the emitter, but it only allows to flow through based on the state of base pin. More current is allowed to flow through from collector to emitter as the voltage of base pin increases.
On **PNP** transistor it is opposite: when the base goes low current is allowed to flow through collector to emitter.

**Capasitors** is used to "flatten" current. This helps to protect from noise and spikes (that can be created by motors).

1. Solid core wirte / stranded wire.
2. Jumper wire kit.
3. Hookup wire.
4. Wire stripper.
5. Integrated circuits (IC) (chips).
6. Multimeter.
7. Voltage regulators.
8. Shift register.
9. Segmented display.
10. NPN / PNP transistor.

- "NC" is no connection pin.
- "SDA" is a data pin.
- "SCLK" is a clock pin.
- "VDD" is a voltage pin.

### Schematics:

- Circuit for controlling DC motor: ![](README/image1.png)
