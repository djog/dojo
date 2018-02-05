# Bal die eeuwig naar rechts gaat

In deze les gaan we een bal eeuwig naar rechts laten gaan.

Het ziet er zo uit:

![Bal die eeuwig naar rechts gaat 1](BalEeuwigNaarRechts1.png)

![Bal die eeuwig naar rechts gaat 2](BalEeuwigNaarRechts2.png)

We leren in deze les wat `if`-statement is.
Je kunt (bijna) niet programmeren zonder `if`-statements.

## Wat weten we al?

Als je de vorige lessen hebt gedaan, weet
je wat deze code doet:

```c++
float x = 50;

void setup()
{
  size(600, 400);
}

void draw()
{
  ellipse(x,50,50,50);
  x = x + 1;
}
```

## Vragen 

 * Wat doet dit programma?
 * In welke richting beweegt de ovaal
 * Blijft de ovaal zichtbaar op het scherm?
 * Kopieer de code en bekijk het programma. Klopt wat je dacht?

## Een `if`-statement

We willen kunnen zeggen: 'Lieve computer, *als* de bal te ver naar rechts is, dan teleporteer je de bal naar rechts'. `if` is Engels voor 'als'.

Zo zou dit kunnen:

```c++
if (x > 200)
{
  x = 100;
}
```

Dit betekent:

 * `if`: begin van een if statement. Een if-statement heeft dan twee gedeeltes:
   * `()`: tussen de ronde haken staat een test; iets wat waar of niet waar is
   * `{}`: tussen de accolades staat wat de computer moet doen als de test waar is
 * `x > 200`: dit staat tussen de ronde haken. Dit is de test 'x is groter dan 200'. Het `>` tekentje betekent 'groter dan'
 * `x = 100`: dit staat tussen de accolades. Als 'x is groter dan 200' waar is, dan krijgt `x` de waarde 100

Preciezer zeg je: 'Lieve computer, *als* x meer is dan 200, zet x dat op 100'. `if` is Engels voor 'als'.

## Vragen

 * Kopieer het `if`-statement tussen de accolades van de `draw` functie
 * Wat doet het programma?

Als het kopieren niet is gelukt, gebruik dan deze code:

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

 * Kun je ervoor zorgen dat de ovaal helemaal naar de linkerkant van het scherm springt?
 * Kun je ervoor zorgen dat de ovaal helemaal naar rechst beweegt, voordat deze naar de linkerkant van het scherm springt?


## Antwoord

Dit is een eeuwig naar rechts gaande bal:

```c++
float x = -50;

void setup()
{
  size(600, 100);
}

void draw()
{
  ellipse(x,50,100,100);
  x = x + 1;
  if (x > 650)
  {
    x = -50;
  }
}
```

Het lijkt al een beetje op [Lonelier Pong](https://github.com/richelbilderbeek/LonelierPong). Dit is geen toeval :-)

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

## Opdracht

Maak een bal die eeuwig naar links gaat:

 * De bal begint buiten het beeld
 * De bal gaat helemaal het beeld uit
 * Als de bal net uit het beeld uit, komt 'ie meteen de andere kant weer binnen

## Antwoord

Dit is een eeuwig naar links gaande bal:

```c++
float x = 650;

void setup()
{
  size(600, 100);
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

## Bal die eeuwig omlaag gaat

We hebben een bal naar rechts en naar links laten bewegen door de `x` coordinaat
te veranderen. De bal kan ook naar omlaag en omhoog gaan door de `y` coordinaat
te veranderen.

## Opdracht

Schrijf een programma waarin een bal eeuwig omlaag gaat:

 * maak het scherm 300 pixels breed en 200 pixels hoog
 * gebruik een variable met naam `y`
 * vervang de code `ellipse(x,50,100,00)` door `elllipse(50,y,100,100)`
 * als de bal omlaag uit het scherm gaat, moet de bal weer bovenin komen

## Oplossing

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

## Links

 * [YouTube](https://youtu.be/k-7Ji0_HcAc)
 * [mp4](http://www.richelbilderbeek/bal_eeuwig_naar_rechts.mp4)
