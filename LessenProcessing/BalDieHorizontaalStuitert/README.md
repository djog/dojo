# Bal die horizontaal stuitert

In deze les gaan we een bal horizontaal laten stuiteren.

Het ziet er zo uit:

![Bal die horizontaal stuitert (zie 'dojo/Images/BalDieHorizontaalStuitertGif')](BalDieHorizontaalStuitert.gif)

We gaan in deze les twee variabelen en twee `if`-statements gebruiken. 

## Wat weten we al?

Dit is een eeuwig naar rechts gaande bal:

```
float x = 300;

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

## Vragen 

 * Wat doet dit programma?
 * In welke richting beweegt de ovaal?
 * Blijft de ovaal zichtbaar op het scherm?
 * Kopieer de code en bekijk het programma. Klopt wat je dacht?
 * Verander het programma: laat de bal nu eeuwig naar links gaan

## Twee variabelen

Nu onthoudt de computer een variabele: de x-coordinaat van de ovaal.
Om een bal te laten stuiteren, moet er ook een richting onthouden worden:
de bal gaat immers of naar links of naar rechts.

In deze code wordt de richting van de bal `dx` genoemd. Dit is een afkorting
van 'delta x' en dat is weer wiskundetaal voor 'de verandering van x'.

## Vragen

```
float x = 300;
float dx = 2;

void setup()
{
  size(600, 100);
}

void draw()
{
  ellipse(x,50,100,100);
  x = x + dx;
  if (x > 650)
  {
    x = -50;
  }
}
```

 * In welke richting beweegt de bal? 
 * Hoeveel pixels beweegt de bal per keer?
 * Zet de waarde van `dx` op `1`. Wat zie je?
 * Zet de waarde van `dx` op `0`. Wat zie je?
 * Zet de waarde van `dx` op `-1`. Wat zie je?
 * Bij sommige waarden van `dx` gaat de bal links het beeld uit. Maak een tweede if-statement, die ervoor zorgt dat de bal eeuwig links kan gaan. 
   Test dit bij een `dx` van `2`, `0` en `-2`.
 * Wat moet er met de `dx` gebeuren om de bal te laten stuiteren? Probeer dit!

## Stuiteren

Als een bal met een snelheid van drie pixels naar rechst gaat en stuitert, dan gaat deze vanaf dan drie pixels naar links.
Andersom is dat ook zo.

Hier is een manier om de bal te laten stuiteren:

```
float x = 300;
float dx = 2;

void setup()
{
  size(600, 100);
}

void draw()
{
  ellipse(x,50,100,100);
  x = x + dx;
  if (x > 650)
  {
    dx = -2;
  }
  if (x < 50)
  {
    dx = 2;
  }
}
```

## Vragen

 * Kopieer en run de code. Stuitert de bal?
 * Verander de snelheid van de bal naar een pixel per keer. Op hoeveel plekken moet je de code aanpassen?
 * Verander de snelheid van de bal naar drie pixels per keer. Op hoeveel plekken moet je de code aanpassen?
 * Verander de snelheid van de bal terug naar een pixel per keer. Op hoeveel plekken moet je de code aanpassen? 
   Laat nu de bal in het begin naar links gaan. Op hoeveel plekken moet je de code aanpassen?

## De richting omklappen

Er is een slimmere manier om `dx` te veranderen. We hebben gezien dat als `dx` gelijk was aan `2`, deze `-2` wordt bij bij een stuiter.
We hebben gezien dat als `dx` gelijk was aan `-2`, deze `2` wordt bij bij een stuiter. Er komt een minnetje voor, of er komt een minnetje bij.
Dit is gemakkelijk op dezelfde manier te doen:

```
dx = -dx;
```

Hiermee zeg je 'Lieve computer, de nieuwe waarde van `dx` is min de oude waarde'. Als de oude waarde van `dx` `2` is, dan wordt deze nu `-2`.
Als de oude waarde van `dx` `-2` is, dan wordt deze nu `--2` (jawel, min min twee) en dat mag je schrijven als `2` (omdat min keer min is plus).

## Opdracht

 * Gebruik nu de slimme manier om een bal te laten stuiteren.

Het lijkt al een beetje op [Lonelier Pong](https://github.com/richelbilderbeek/LonelierPong). Dit is geen toeval :-)
