### Устройство регулятора:
1. Управляемая система (то, что мы хотим управлять).
2. Цель управления (то, чего мы хотим достичь, поведение моторов и т. д.).
3. Измеряемые переменные.
4. Управляющие переменные (то, что мы можем менять для воздействия на объект управления).


### Пропорциональный регулятор:

Это устройство, оказывающее управляющее воздействие на объект пропорционально его отклонению от заданного состояния.
 
Формула для удержания значения мотора на фиксированной величине:

`u0(t) = k * e`.

- **k** - Коэффициент усиления регулятора.
- **e** - Ошибка (невязка) или по другому - отклонение, равное `x0 - e1` (`e1` - это текущее значение, `x0` - это нужное значение).
- **x0** - Нужное занчение мотора (уставка).
- **u0(t)** - Новое значение для мотора (управляющее воздействие).

```
task main()
{
    int k = 5, u;
    nMotorEncoder[motorA] = 0;
    while (true)
    {
        u = k * (45 - nMotorEncoder[motorA]);
        motor[motorA] = u;
        wait1Msec(1);
    }
}
```

---

Формула для динамичесокго иземенения значения:

`alpha = k2 * T1`.

`u = k1 * (alpha - e1)`.

- **T1** - Значение таймера, отмеряющего 10 тиков в секунду.
- **k2** - Ускоряющий коэффициент.
- **alpha** - Значение мотора, которое мы хотим.
- **e1** - Текущее значение мотора.
- `err = alpha - e1`.

```
task main()
{
    int k1 = 2, k2 = 36, u, alpha;
    nMotorEncoder[motorA] = 0;
    ClearTimer(T1);
    while (true)
    {
        alpha = timer100[T1] * k2;
        u = k1 * (alpha - nMotorEncoder[motorA]);
        motor[motorA] = u;
        wait1Msec(1);
    }
}
```

---

Формула для синхронизации моторов:

```u = k * (e3 - e2)```.

- **e2** - Показания датчиков с первого мотора.
- **e3** - Показания датчиков со второго мотора.

```
task main()
{
    int k = 5, v = 50, u;
    nMotorEncoder[motorB] = 0;
    nMotorEncoder[motorC] = 0;
    while (true)
    {
        u = k * (nMotorEncoder[motorC] - nMotorEncoder[motorB]);
        motor[motorB] = v + u;
        motor[motorC] = v - u;
        wait1Msec(1);
    }
}
```

---

Формула для движения по компасу:

`u = k * (alpha - S1 - (alpha - S1) / 180 * 360)` или `u = k * (err - err / 180 * 360)`.

```
task main()
{
    float u, k = 3;
    int err, alpha = SensorValue[s1];
    while (true)
    {
        err = alpha - SensorValue[s1];
        u = k * (err - err / 180 * 360);
        motor[motorB] = 50 + u;
        motor[motorC] = 50 - u;
        wait1Msec(1);
    }
}
```

---

Код для движения по черно-белой прямой (один датчик света):

Такой регулятор работает только для малых отклонений.

Работа такого регулятора практически не зависит от колебаний освещения в комнате.

```
task main()
{
    float u, k = 2.5;
    int grey = 48;
    while (true)
    {
        u = k * (SensorValue[s1] - grey);
        motor[motorB] = 50 + u;
        motor[motorC] = 50 - u;
        wait1Msec(1);
    }
}
```

---

Код для движения по черно-белой прямой (два датчика света):

Сдесь мы колибруем регуляторы, сравнивая отклонения их значений. Чтобы отколибровать регулятор, нужно поставить робота на чисто белой поверхности с освещением, которое будет занимать большую часть пути.

Если на левом датчике потемнеет, тогда `u` станет отрицательным, мотор `B` станет медленнее, чем `C`, и робот начнет подруливать влево. И наоборот.

```
task main()
{
    int left = SensorValue[s1];
    int right = SensorValue[s2];
    float k = 2, u;
    while (true)
    {
        u = k * ((SensorValue[s1] - left) - (SensorValue[s2] - right));
    }
}
```

---

Движение робота вдоль стенки.

Левый и правый мотор и датчик расстояния (закреплен несколько впереди корпуса), направленный на стенку.

При этом подходе регулятор будет эффективно работать только при малых углах отклонения и движение будет происходить по волнообразной траектории.

```
task main()
{
    float u, k = 3, v = 50;
    int L = SensorValue[S1];
    while (true)
    {
        u = k * (SensorValue[S1] - L);
        motor[motorB] = v + u;
        motor[motorC] = v - u;
        wait1Msec(1);
    }
}
```

### Пропорционально-дифференциальный регулятор:

В некоторых случаях П-регулятор может вывести систему из устойчивого состояния, например отклонить робота, движущегося вдоль стенки, в результате чего может быть утерян контакт со стенкой.

---

Формула для движения вдоль стенки:

`ud = k * (S1 - Sold) / dt = k2 * (S1 - Sold)` (`k * dt` является константой, потому что измерения проводятся через равные промежутки времени).

`u = up + ud = k1 * (S1 - L) + k2 * (S1 - Sold)`.

```
task main()
{
    float u, k1 = 2, k2 = 10, v = 50;
    int Sold, L;
    Sold = L = SensorValue[S1];
    while (true)
    {
        u = k1 * (SensorValue[S1] - L) + k2 * (SensorValue[S1] - Sold);
        motor[motorB] = v + u;
        motor[motorC] = v - u;
        Sold = SensorValue[S1];
        wait1Msec(1);
    }
}
```

---

Движение по черно-белой линии (один сенсор света):

```
task main()
{
    float u, k1 = 3, k2 = 10, grey = 48, v = 80;
    int Sold = SensorValue[S1];
    while (true)
    {
        u = k1 * (SensorValue[S1] - grey) + k2 * (SensorValue[S1] - Sold);
        Sold = SensorValue[S1];
        motor[motorB] = v + u;
        motor[motorC] = v - u;
        wait1Msec(1);
    }
}
```

---

Движение по черно-белой линии (с двумя датчиками света).

В качестве предыдущего значения можно рассматривать общее отклонение:

`err = (s1 - left) - (s2 - right)`.

`u = k1 * err + k2 * (err - errold)`.

`errold = err`.

### Пропорционально-интегрально-дифференциальный регулятор:

Код для робота, балансирующего н адвух колесах:

```
task main()
{
    int grey = SensorRaw[S3];
    int err, errold = 0;
    float kp = 25, ki = 350, kd = 0.3;
    float scale = 14;
    float dt = 0.001;
    float p, i = 0, d, u;
    while (true)
    {
        err = grey - SensorRaw[S3];
        p = kp * err;
        i = i + ki * err * dt;
        d = kd * (err - errold) / dt;
        errold = err;
        u = (p + i + d) / scale;
        motor[motorB] = u;
        motor[motorC] = u;
        wait1Msec(1);
    }
}
```