# `text`

Tekst wordt veel gebruikt, ook in games, voor bijvoorbeeld een score.

Hier zie je 'Zork, the underground empire`, een van de beroemdste
tekstavonturen ooit:

![Zork](ZorkKleiner.png)

In deze les gaan we leren 

 * hoe je tekst op het scherm zet
 * hoe je berekeningen op het scherm zet
 * hoe je tekst vergroot
 * hoe je tekst een kleur geeft

Kun je nog geen puntjes tekenen? Ga dan 
[naar de les waarin je puntjes leert tekenen](../Point/README.md)

Kun je nog geen vlakken inkleuren? Ga dan 
[naar de les 'fill'](../Fill/README.md)

## Tekst

Hier zie je de tekst 'Hallo' laat zetten op coordinaat (10,20):

```c++
text("Hallo", 10, 20);
```
Let op dat de tekst tussen dubbele apostroffen (`"`) moet.

`text` kan ook rekenen!

Hier plus en min:

```c++
text(128 + 64, 10, 20);
text(128 - 64, 10, 20);
```

Hier een keersom: 

```c++
text(16 * 16, 10, 20);
```

Hier een deelsom:

```c++
text(256 / 16, 10, 20);
```

Tekstgrootte kun je aanpassen met

```c++
textSize(32);
```

Tekstkleur kun je aanpassen met `fill`:

```c++
fill(255, 0, 0);
```

## Opdracht

Zet de tekst `I love you 4 ever` op het scherm, waarbij:

 * de coordinaat is (10, 30)
 * de tekst heeft de normale kleur, dit is wit
 * de tekst heeft de normale grootte, dit is 8 pixels

## Oplossing

```c++
void setup()
{
  size(300,300);
}

void draw()
{
  text("I love you 4 ever", 10, 30);
}
```

## Opdracht

Zet de tekst `I love you 4 ever` op het scherm, waarbij:

 * de coordinaat is (10, 30)
 * de tekst zwart is (tip: gebruik `fill`)
 * de tekst heeft de normale grootte, dit is 8 pixels

## Oplossing

```c++
void setup()
{
  size(300,300);
}

void draw()
{
  fill(0, 0, 0);
  text("I love you 4 ever", 10, 30);
}
```

## Opdracht

Zet de tekst `I love you 4 ever` op het scherm, waarbij:

 * de coordinaat is (10, 30)
 * de tekst zwart is
 * de tekst is 32 pixels groot (tip: gebruik `textSize`)

## Oplossing

```c++
void setup()
{
  size(300,300);
  textSize(32);
}

void draw()
{
  fill(0, 0, 0);
  text("I love you 4 ever", 10, 30);
}
```

## Opdracht

Zet de tekst `I love you 4 ever` op het scherm, waarbij:

 * de tekst is 32 pixels groot (tip: gebruik `textSize`)
 * alle woorden zwart zijn, behalve `love`, die rood is
 * de `4` is de uitkomst van een berekening, bijvoorbeeld `2 + 2` (maar hoe moeilijker de berekening, hoe stoerder)

![Text](Text.png)

## Oplossing

```c++
void setup()
{
  size(300,300);
  textSize(32);
}

void draw()
{
  fill(0, 0, 0);
  text("I", 10, 30);
  fill(255, 0, 0);
  text("love", 40, 30);
  fill(0, 0, 0);
  text("you", 120, 30);
  text(256 / 64, 20, 60);
  text("ever", 50, 60);
}
```

## Eindopdracht

Zet je eigen naam mooi op het scherm. Een voorbeeld:

![Eindopdacht text](TextEindopdrachtVoorbeeld.png)

