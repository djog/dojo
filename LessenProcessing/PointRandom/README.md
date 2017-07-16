# `point` en `random`

![Eindopdracht](PointEindopdracht.png)

In deze les gaan we leren 

 * wat pixels zijn
 * hoe de pixels op een beeldscherm zitten
 * hoe je puntjes tekent
 * hoe je willekeurige dingen doet

## Pixels

Pixels zijn de vierkantjes waaruit je beeldscherm is opgebouwd.

![Sunglasses](EmojiSunglasses.png) | Pixel = een vierkantje op je beeldscherm
:-------------:|:----------------------------------------: 

Hoe meer pixels je scherm heeft, hoe scherper het beeld eruit ziet.
Dat zie je goed bij oude games: die hebben minder pixels:

![Super Mario Bros 1](NES_Super_Mario_Bros.png)

## Opdracht 1

Run de volgende code:

```c++
void setup()
{
  size(300, 200);
}

void draw()
{
  point(150, 100);
}
```

![Computer](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:----------------:|:----------------------------------------: 
`point(150, 100);`|'Lieve computer, teken een puntje op de pixel die tweehonderd pixels naar rechts en honderdvijftig pixels omlaag is'
`point(150, 100);`|'Lieve computer, teken een puntje op coordinaat `(150, 100)`'

# Oplossing 1

![Oplossing 1](Point1.png)

## Opdracht 2

![Opdracht 2](Point2.png)

Teken een tweede puntje tussen de eerste en de bovenkant van het venster.

## Oplossing 2

```c++
void setup()
{
  size(300, 200);
}

void draw()
{
  point(150, 100);
  point(150, 50);
}
```

## Opdracht 3

De eerste pixel zit precies in het midden. Oftewel op de helft van de breedte van het venster en
op de helft van de hoogte van het scherm. Verander `point(150,100);` naar iets met `width` en `height`.

## Oplossing 3

```c++
void setup()
{
  size(300, 200);
}

void draw()
{
  point(width / 2, height / 2);
  point(150, 50);
}
```

![Computer](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-------------:|:----------------------------------------: 
`width / 2`|'Lieve computer, vul hier de breedte van het venster in, gedeeld door twee'

## Opdracht 4

De tweede pixel zit 

  * op de helft van de breedte van het venster
  * op een kwart van de hoogte van het scherm

Verander `point(150, 50);` naar iets met `width` en `height`.

## Oplossing 3

```c++
void setup()
{
  size(300, 200);
}

void draw()
{
  point(width / 2, height / 2);
  point(width / 2, height / 4);
}
```

![Computer](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-------------:|:----------------------------------------: 
`height / 4`|'Lieve computer, vul hier de hoogte van het venster in, gedeeld door vier'


## Opdracht 4

![Opdracht 4](Point4.png)

Teken een nieuwe pixel, in de linkerbovenhoek van het scherm. 

## Oplossing 4

```
void setup()
{
  size(300, 200);
}

void draw()
{
  point(width / 2, height / 2);
  point(width / 2, height / 4);
  point(0, 0);
}
```

![Computer](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-------------:|:----------------------------------------: 
`point(0,0);`|'Lieve computer, teken een puntje in de linkerbovenhoek'
`point(0,0);`|'Lieve computer, teken een puntje op coordinaat `(0, 0)`'

## Opdracht 5

![Opdracht 5](Point5.png)

Teken een nieuwe pixel, in de rechtbovenhoek van het scherm. 
Gebruik `width - 1` als eerste getal binnen de ronde haakjes van `point`.

## Oplossing 5

```c++
void setup()
{
  size(300, 200);
}

void draw()
{
  point(width / 2, height / 2);
  point(width / 2, height / 4);
  point(0, 0);
  point(width - 1, 0);
}
``` 

## Opdracht 6

![Opdracht 6](Point6.png)

Teken twee pixels erbij, in de onderste twee hoeken. Gebruik `width - 1` en `height - 1` op de juiste plekken.

## Oplossing 6

```c++
void setup()
{
  size(300, 200);
}

void draw()
{
  point(width / 2, height / 2);
  point(width / 2, height / 4);
  point(0, 0);
  point(width - 1, 0);
  point(0, height - 1);
  point(width - 1, height - 1);
}
```

## Opdracht 7

Run deze code:

```c++
void setup()
{
  size(300, 200);
}

void draw()
{
  point(random(300), 100);
}
```

Wat zie je?

## Oplossing 7

![Oplossing 7](Point7.png)

Je ziet dat er puntjes op willekeurige plekken worden getekend, maar wel altijd op dezelfde hoogte.

![Computer](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-------------:|:----------------------------------------: 
`random(300)`|'Lieve computer, kies een willekeurig getal van nul tot driehonderd'

## Opdracht 8

![Opdracht 8](Point8.png)

Maak het venster 400 pixels breed en 100 pixels hoog. Gebruik in plaats van `random(300)` iets met `random` en `width`.
Zorg dat de lijn van puntjes op de halve hoogte van het scherm blijft.

## Oplossing 8

```c++
void setup()
{
  size(400, 100);
}

void draw()
{
  point(random(width), height / 2);
}
```

## Eindopdracht

![Eindopdracht](PointEindopdracht.png)

Laat de computer willekeurig puntjes tekenen in het hele venster.