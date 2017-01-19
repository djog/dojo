# Muis positie

De muis kan nuttig zijn om een spel te besturen.


## Een cirkel

Hier zie je hoe je een cirkel onder de muiscursor zet:

```
int rechts = -100;
int omlaag = -100;

void draw() 
{
  ellipse(rechts, omlaag, 50, 50);
}

void mouseMoved() 
{
  rechts = mouseX;
  omlaag = mouseY;
}
```

## Opdrachten

 * Waarom wordt bovenaan de variabelen `rechts` en `omlaag` op min honderd gezet? Als het het niet weet, begin dan met beiden op nul te zetten
 * Hoeveel functies heeft deze code? Hoe heten deze?
 * Wat betekent `mouseMoved`?

## Oplossingen

 * Hierdoor wordt de eerste cirkel buiten het scherm getekend. Anders wordt de eerste cirkel in de linkerbovenhoek in de linkerbovenhoek
   getekend 
 * De code heeft twee functies. Die functies heten `draw` en `mouseMoved`
 * `mouseMoved` betekent 'muis bewoog'

## Een vierkant

Hier zie je hoe je een vierkant onder de muiscursor zet:

```
int rechts = -100;
int omlaag = -100;

void draw() 
{
  rect(rechts, omlaag, 40, 40);
}

void mouseMoved() 
{
  rechts = mouseX - 20;
  omlaag = mouseY - 20;
}
```

## Opdrachten

 * Waarom wordt in `mouseMoved` twintig afgehaald van `mouseX` en `mouseY`? Als het het niet weet, begin dan met beiden op tien te zetten
 * Maak het vierkant tachtig pixels breed en veertig pixels hoog. Laat dan deze rechthoek recht onder de muiscursor staan 

## Oplossingen

 * Bij de functie `rect` is de coordinaat die van de linkerbovenhoek. Door van ``
 * De code heeft twee functies. Die functies heten `draw` en `mouseMoved`
 * `mouseMoved` betekent 'muis bewoog'

