# Sinus en cosinus 1: tekenen.

In deze les gaan we een sinus en cosinus tekenen.

![Elite](Elite.jpg)

\pagebreak

## Sinus en cosinus 1: opdracht 1 

Type deze code over:

```c++
float x = 0;

void setup()
{
  size(314, 200);
}

void draw()
{
  final float y = sin(x);
  point(x, y);
  x = x + 1;  
}
```

Wat zie je?

![Sunglasses](EmojiSunglasses.png) | 314 is ongeveer honderd keer het getal pi
:-------------:|:----------------------------------------: 

\pagebreak

## Sinus en cosinus 1: oplossing 1 

![Sinus en cosinus 1: oplossing 1](SinusEnCosinus1_1.png)

Je ziet een soort stippellijn aan de bovenkant.

\pagebreak

## Sinus en cosinus 1: opdracht 2

 * Verplaats de stippellijn omlaag. Doe dit door by `y` de halve hoogte op te tellen 

![Sunglasses](EmojiSunglasses.png) | Tip: het is slim om ronde haakjes om `height / 2` te zetten`
:-------------:|:----------------------------------------: 

![Sinus en cosinus 1: opdracht 2](SinusEnCosinus1_2.png)

\pagebreak

## Sinus en cosinus 1: oplossing 2 

```c++
float x = 0;

void setup()
{
  size(314, 200);
}

void draw()
{
  final float y = sin(x) + (height / 2);
  point(x, y);
  x = x + 1;  
}
```

![Sunglasses](EmojiSunglasses.png) | Door de haakjes weet de computer de volgorde van een berekening
:-------------:|:----------------------------------------: 

![Sunglasses](EmojiSunglasses.png) | Een sinus heeft de vorm van een golf die slingert tussen -1 en 1
:-------------:|:----------------------------------------: 

\pagebreak

## Sinus en cosinus 1: opdracht 3

 * Vervang `sin(x)` door `(sin(x) * 50)`

![Sinus en cosinus 1: opdracht 3](SinusEnCosinus1_3.png)

![Sunglasses](EmojiSunglasses.png) | Haakjes zijn belangrijk!
:-------------:|:----------------------------------------: 

\pagebreak

## Sinus en cosinus 1: oplossing 3

Je ziet nu een patroon.

![Sinus en cosinus 3: opdracht 2](SinusEnCosinus1_3.png)

```c++
float x = 0;

void setup()
{
  size(314, 200);
}

void draw()
{
  final float y = (sin(x) * 50) + (height / 2);
  point(x, y);
  x = x + 1;  
}
```

![Sunglasses](EmojiSunglasses.png) | Het is een rommel, omdat we ongeveer 100 sinussen door elkaar tekenen
:-------------:|:----------------------------------------: 

![Sunglasses](EmojiSunglasses.png) | `* 50` zorgt ervoor dat de sinus vijtig keer vergroot wordt
:-------------:|:----------------------------------------: 

## Sinus en cosinus 1: opdracht 4

 * Vervang `sin(x)` door `sin(x / 100)`

![Sinus en cosinus 1: opdracht 4](SinusEnCosinus1_4.png)


\pagebreak

## Sinus en cosinus 1: oplossing 4

Je ziet nu een golf: een sinus!.

![Sinus en cosinus 1: opdracht 4](SinusEnCosinus1_4.png)

```c++
float x = 0;

void setup()
{
  size(314, 200);
}

void draw()
{
  final float y = (sin(x / 25) * 50) + (height / 2);
  point(x, y);
  x = x + 1;  
}
```

## Sinus en cosinus 1: opdracht 5

 * Vervang `sin(x)` door `cos(x)`

![Sinus en cosinus 1: opdracht 5](SinusEnCosinus1_5.png)


\pagebreak

## Sinus en cosinus 1: oplossing 5

Je ziet nu een golf: een sinus!.

![Sinus en cosinus 1: opdracht 5](SinusEnCosinus1_5.png)

```c++
float x = 0;

void setup()
{
  size(314, 200);
}

void draw()
{
  final float y = (sin(x / 25) * 50) + (height / 2);
  point(x, y);
  x = x + 1;  
}
```


![Sunglasses](EmojiSunglasses.png) | `x / 25` zorgt ervoor dat we 25x rustiger door de sinus gaan
:-------------:|:----------------------------------------: 

\pagebreak

## Sinus en cosinus 1: Eindopdracht

 * Teken zowel de sinus als cosinus
 * Zorg dat elke golf een keer op en neer gaat
 * Teken de cosinus rood, de sinus blauw

![Sinus en cosinus 1: Eindopdracht](SinusEnCosinus1_Eindopdracht.png)
