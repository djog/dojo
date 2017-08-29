# `fullScreen` en `PImage`

`fullScreen` is een functie waarmee je het venster van je programma net zo groot maakt als het beeldscherm van je computer.

## Opdracht 1

Run deze code. Wat zie je?

```c++
void setup() 
{
  fullScreen();
}

void draw() 
{
  rect(100, 200, width / 4, height / 4);
}
```

![Computer](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:------------------------:|:---------------------------------------------------: 
`rect(100, 200, 300, 400)`|'Lieve computer, teken een rechthoek met `(100, 200)` als linkerbovenhoek, 300 pixels breed en 400 pixels hoog is.'
`width / 4`|'Lieve computer, vul hier het aantal pixels dat het scherm breed is, gedeeld door vier'
`height / 4`|'Lieve computer, vul hier het aantal pixels dat het scherm hoog is, gedeeld door vier'

## Oplossing 1

![Oplossing 1](FullscreenPImage1.png)

## Opdracht 2

Maak een rechthoek met de linkerbovenhoek in het midden, 
met een breedte van 200 en een hoogte van 100 pixels.

![Opdracht 2](FullscreenPImage2.png)

## Oplossing 2

```c++
void setup() 
{
  fullScreen();
}

void draw() 
{
  rect(width / 2, height / 2, 200, 100);
}
```

## Opdracht 3

Zet nu de rechthoek in het midden van het scherm. 

![Opdracht 3](FullscreenPImage3.png)

![Sunglasses](EmojiSunglasses.png) | De rechthoek moet 100 naar links en 50 omhoog
:-------------:|:----------------------------------------: 

## Oplossing 3

```c++
void setup() 
{
  fullScreen();
}

void draw() 
{
  rect(width / 2 - 100, height / 2 - 50, 200, 100);
}
```

## Opdracht 4

Zet een rechthoek in het midden van het scherm, met een breedte van 300 pixels
en een hoogte van 400 pixels.

![Opdracht 4](FullscreenPImage4.png)

## Oplossing 4

```c++
void setup() 
{
  fullScreen();
}

void draw() 
{
  rect(width / 2 - 150, height / 2 - 200, 300, 400);
}
```

## Opdracht 5

Zet een rechthoek in het midden van het scherm, die half zo breed is als het scherm,
en 500 pixels hoog is.

![Opdracht 5](FullscreenPImage5.png)

## Oplossing 5

```c++
void setup() 
{
  fullScreen();
}

void draw() 
{
  rect(width / 4, height / 2 - 250, width / 2, 500);
}
```

## Eindopdracht

Zet een rechthoek in het midden van het scherm, die half zo breed en hoog is als het scherm.




Maak een rechthoek die 

 * half zo breed is als het scherm breed is
 * half zo hoog is als het scherm hoog is
 * in het midden staat

![Opdracht 2](FullscreenPImage1.png)

![Sunglasses](EmojiSunglasses.png) | Linkerbovenhoek heeft coordinaat `(width / 4, height / 4)`. Reken maar na!
:-------------:|:----------------------------------------: 

## Oplossing 2

```c++
void setup() 
{
  fullScreen();
}

void draw() 
{
  rect(width / 4, height / 4, width / 2, height / 2);
}
```




Maak de breedte van de rechthoek nu altijd een kwart van de breedte van je venster, ook als je `fullScreen()` gebruikt.

# PImage les 1

In deze les gaan we met een plaatje werken.

![PImage1.png](PImage1.png)

## Een plaatje vinden

Op de GitHub van de cursus hebben we een aantal goede plaatjes verzameld.

Er zijn twee manieren de plaatjes te downloaden:
 
 * Ga naar [https://github.com/richelbilderbeek/Dojo/tree/master/Sprites](https://github.com/richelbilderbeek/Dojo/tree/master/Sprites). Klik dan op de naam van een plaatje. Nu kun je het plaatje zien. Klik met de rechtermuisknop op het plaatje en kies 'Afbeelding opslaan als'/'Save image as'
 * Je kunt alle plaatjes in een keer downloaden. Download de cursus als zip hier: [https://github.com/richelbilderbeek/Dojo/archive/master.zip ](https://github.com/richelbilderbeek/Dojo/archive/master.zip). Kies 'Alles uitpakken'/'Extract all' om het zipje uit te pakken. In de folder 'Sprites' staan de plaatjes

In dit voorbeeld gebruik ik dit plaatje van Mario:

![mario.png](mario.png)

## Code

De code om Mario op de muis cursor te laten zien is simpel:

```
PImage plaatje;

void setup() {
  size(640, 360);
  plaatje = loadImage("mario.png");
}

void draw() {
  background(0);
  image(plaatje, mouseX, mouseY);
}
```

 * `PImage plaatje`: onthoud een `PImage` met de naam `plaatje`. Let op: `PImage` begint met twee hoofdletters
 * `void setup() {}`: de setup functie, de computer voert een keer alles tussen de accolades uit
 * `size(640, 360)`: maak een scherm van 640 pixels breed en 360 pixels hoog
 * `plaatje = loadImage("mario.png")`. Laat `plaatje` de afbeelding van Mario krijgen, door het bestand `mario.png` te laden
 * `void draw() {}`: de draw functie, de computer voert steeds alles tussen de accolades uit
 * `background(0)`: maak de achtergrond zwart
 * `image(plaatje, mouseX, mouseY)`: teken (de linkerbovenhoek van) het plaatje `plaatje` op de plek waar de muiscursus is.

Dit werkt niet meteen, omdat de bestanden op de juiste plek moeten staan.

## Bestanden op de juiste plek

Hier zie je een plaatje waarop staat waar de bestanden moeten staan:

![Folderstructuur.png](Folderstructuur.png)

 * De sketch heet `PImage1.pde`. Daarom staat deze in de map `PImage1`. Deze kan je in Processing vinden onder `Schets` -> `Toon Schets Map`
 * De sketch heeft een folder `data`. Hierin staat het plaatje, `mario.png`

## Opdracht

 * Krijg bovenstaand voorbeeld werkend
 * Maak een eigen programma met een ander plaatje

## Eindopdracht

 * Maak een programma dat twee verschillende plaatjes gebruikt
