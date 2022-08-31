# Formula de Harris Benedict (Taxa de metabolismo)

```
(((weigth * 10) + (height * 6.25) - (age * 5)) + gender_mod) * activity_mod
```

where:

gender_mod = `'male' = +5, 'female' = -161`
activity_mod = `'1' = 1.2, '2' = 1.375, '3' = 1.55, '4' = 1.725, '5' = 1.9`
