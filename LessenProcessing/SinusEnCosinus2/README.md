# Sinus en cosinus 2: tekenen.

In deze les gaan we een sinus en cosinus gebruiken om een maan om een planeet te laten slingeren.

\pagebreak

## Sinus en cosinus 2: opdracht 1 

Type deze code over:

```c++
float hoek = 0;

void setup()
{
  size(300, 200);
}

void draw()
{
  final float x = cos(hoek) * 100;
  final float y = sin(hoek) * 100;
  point(x, y);
  hoek = hoek + 0.01;  
}
```

Wat zie je?

\pagebreak

## Sinus en cosinus 2: oplossing 1 

![Sinus en cosinus 2: oplossing 1](SinusEnCosinus2_1.png)

Je ziet een kwart cirkel in de linkerbovenhoek.

\pagebreak

## Sinus en cosinus 2: opdracht 2

 * Verplaats de cirkel naar het midden'
 * Doe dit door by `y` de halve hoogte op te tellen 
 * Doe dit door by `x` de halve breedte op te tellen 

![Sunglasses](EmojiSunglasses.png) | Tip: het is slim om ronde haakjes om `height / 2` te zetten`
:-------------:|:----------------------------------------: 

![Sinus en cosinus 2: opdracht 2](SinusEnCosinus2_2.png)

\pagebreak

## Sinus en cosinus 2: oplossing 2 

```c++
float hoek = 0;

void setup()
{
  size(300, 200);
}

void draw()
{
  final float x = cos(hoek) * 100 + (width / 2);
  final float y = sin(hoek) * 100 + (height / 2);
  point(x, y);
  hoek = hoek + 0.01;  
}
```

![Sunglasses](EmojiSunglasses.png) | Door de haakjes weet de computer de volgorde van een berekening
:-------------:|:----------------------------------------: 

![Sunglasses](EmojiSunglasses.png) | Een sinus en cosinus samen kunnen een cirkel tekenen
:-------------:|:----------------------------------------: 

\pagebreak

## Sinus en cosinus 2: opdracht 3

 * Teken een cirkel in plaats van een punt. De cirkel moet 20 pixels breed zijn, en 20 pixels hoog

![Sinus en cosinus 2: opdracht 3](SinusEnCosinus2_3.png)

\pagebreak

## Sinus en cosinus 2: oplossing 3

Je ziet nu een patroon.

![Sinus en cosinus 3: opdracht 2](SinusEnCosinus2_3.png)

```c++
float hoek = 0;

void setup()
{
  size(300, 200);
}

void draw()
{
  final float x = cos(hoek) * 100 + (width / 2);
  final float y = sin(hoek) * 100 + (height / 2);
  ellipse(x, y, 20, 20);
  hoek = hoek + 0.01;  
}
```

## Sinus en cosinus 2: opdracht 4

 * Zorg dat de bal geen streep meer achterlaat
 * Gebruik hiervoor een witte achtergrond

![Sinus en cosinus 2: opdracht 4](SinusEnCosinus2_4.png)

![Sunglasses](EmojiSunglasses.png) | Tip: gebruik `background`
:-------------:|:----------------------------------------: 


\pagebreak

## Sinus en cosinus 2: Eindopdracht

 * Teken ook een cirkel in het midden, met een breedte en hoogte van 50 pixels
 * Laat de bewegende cirkel tegen de klok ingaan
 * Zorg dat de bewegende cirkel niet meer half het scherm uit gaat. Doe dit,
   door de afstand met het midden kleiner te maken

![Sinus en cosinus 2: Eindopdracht](SinusEnCosinus2_Eindopdracht.png)
