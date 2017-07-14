# Bal die eeuwig naar rechts gaat

In deze les gaan we een bal eeuwig naar rechts laten gaan.

We leren in deze les wat `if`-statement is.
Je kunt (bijna) niet programmeren zonder `if`-statements.

## Een `if`-statement

![Verkleurende bal naar rechts](BalEeuwigNaarRechtsIntro.png)

Dit is een verkleurende bal die naar rechts gaat:

```c++
float x = 50;

void setup()
{
  size(600, 400);
}

void draw()
{
  ellipse(x, 50, 50, 50);
  fill(x, 255, 255);
  x = x + 1;
}
```

Nadeel: de bal komt nooit meer terug in het scherm.

We willen kunnen zeggen: 'Lieve computer, *als* de bal te ver naar rechts is, dan teleporteer je de bal naar rechts'. `if` is Engels voor 'als'.

Zo zou dit kunnen:

```c++
if (x > 200)
{
  x = 100;
}
```

Het tekentje `>` betekent 'groter dan'. Preciezer zeg je: 'Lieve computer, *als* x meer is dan 200, zet x dat op 100'. `if` is Engels voor 'als'.

![Computer](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-------------:|:----------------------------------------: 
`if (x > 200) { }`|'Lieve computer, als `x` groter is dan 200, doe dan wat tussen accolades staat.'
`x = 100;`|'Lieve computer, stop het getal `100` in `x`.'

## Opdracht 1

![Opdracht 1](BalEeuwigNaarRechts1.png)

Zet de `if` tussen de code van het programma. Zet de `if` aan het eind van `draw`, voor de accolade sluiten (`}`).

## Oplossing 1

De code wordt dan:

```c++
float x = 50;

void setup()
{
  size(600, 400);
}

void draw()
{
  ellipse(x,100,100,100);
  x = x + 1;
  if (x > 200)
  {
    x = 100;
  }
}
```

## Opdracht 2

![Opdracht 2](BalEeuwigNaarRechts2.png)

Zorg ervoor dat de ovaal helemaal naar de linkerkant van het scherm springt

## Oplossing 2

 * Verander `float x = 50` naar `float x = 0` of `float x = -50`: allebei is goed.
 * Verander `x = 100` naar `x = 0` of `x = -50`: allebei is goed.

```c++
float x = 50;

void setup()
{
  size(600, 400);
}

void draw()
{
  ellipse(x,100,100,100);
  x = x + 1;
  if (x > 200)
  {
    x = 0;
  }
}
```

## Opdracht 3

![Opdracht 3](BalEeuwigNaarRechts3.png)

Zorg ervoor dat de ovaal helemaal naar rechts beweegt, voordat deze naar de linkerkant van het scherm springt

## Oplossing 3

Verander `if (x > 200)` naar `if (x > 650)`.

```c++
float x = -50;

void setup()
{
  size(600, 400);
}

void draw()
{
  ellipse(x,50,100,100);
  x = x + 1;
  if (x > 650)
  {
    x = 0;
  }
}
```

## Bal die eeuwig naar links gaat

Gefopt! Ook al het de les 'Bal die eeuwig naar rechts gaat', we gaan toch de bal ook andere
kanten op laten gaan.

We gaan nu een bal programmeren die eeuwig naar links gaat.

Wat je nu moet weten is het `if` statement om te zeggen wanneer de `x` te klein is:

```c++
if (x < 100)
{
  x = 500;
}
```

Hiermee zeg je: 'Lieve computer, als `x` kleiner (`<`, hier kun je een `k` van maken) is dan honderd,
zet dan `x` op vijfhonderd.

![Computer](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-------------:|:----------------------------------------: 
`if (x < 100) { }`|'Lieve computer, als `x` kleiner is dan 100, doe dan wat tussen accolades staat.'

## Opdracht 4

![Opdracht 4](BalEeuwigNaarRechts4.png)

Maak een bal die eeuwig naar links gaat:

 * De bal begint buiten het beeld
 * De bal gaat helemaal het beeld uit
 * Als de bal net uit het beeld uit, komt 'ie meteen de andere kant weer binnen

## Antwoord 4

Dit is een eeuwig naar links gaande bal:

```c++
float x = 650;

void setup()
{
  size(600, 400);
}

void draw()
{
  ellipse(x,50,100,100);
  x = x - 1;
  if (x < -50)
  {
    x = 650;
  }
}
```

![Computer](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-------------:|:----------------------------------------: 
`x = x - 1`|'Lieve computer, maak `x` een lager.'


## Bal die eeuwig omlaag gaat

We hebben een bal naar rechts en naar links laten bewegen door de `x` coordinaat
te veranderen. De bal kan ook naar omlaag en omhoog gaan door de `y` coordinaat
te veranderen.

## Opdracht 5

Schrijf een programma waarin een bal eeuwig omlaag gaat:

 * maak het scherm 300 pixels breed en 200 pixels hoog
 * gebruik een variable met naam `y`
 * vervang de code `ellipse(x,50,100,00)` door `elllipse(50,y,100,100)`
 * als de bal omlaag uit het scherm gaat, moet de bal weer bovenin komen

## Oplossing 5

```c++
float y = -50;

void setup()
{
  size(300, 200);
}

void draw()
{
  ellipse(50,y,100,100);
  y = y + 1;
  if (y > 250)
  {
    y = -50;
  }
}
```

## Bal die schuin gaat

Hoppa, nu we een variabele `x` of een `y` hebben gemaakt, gaan we beiden doen!

Als we code samenvoegen, gelden de volgende regels:

 * alles wat boven de `setup` functie staat, moet daar blijven
 * alles wat binnen de `setup` functie staat, moet binnen de `setup` functie blijven
 * alles wat binnen de `draw` functie staat, moet binnen de `draw` functie blijven

## Opdracht 

 * Voeg de code van 'Bal die eeuwig naar rechts gaat' samen met 'Bal die eeuwig omlaag gaat'
 * Verander de code zo dat de bal schuin gaat

## Oplossing

```c++
float x = -50;
float y = -50;

void setup()
{
  size(300, 200);
}

void draw()
{
  ellipse(x,y,100,100);
  x = x + 1;
  y = y + 1;
  if (x > 350)
  {
    x = -50;
  }
  if (y > 250)
  {
    y = -50;
  }
}
```

## Eindopdracht

Laat de bal nu eeuwig schuin naar linksonder gaan.
