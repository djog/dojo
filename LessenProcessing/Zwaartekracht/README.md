# Zwaartekracht

In deze les gaan we zwaartekracht programmeren.

Het ziet er zo uit:

![Zwaartekracht](Zwaartekracht.png)

We gaan in deze les twee variabelen en twee `if`-statements gebruiken. 

## Wat weten we al?

Dit is een eeuwig horizontaal stuiterende bal:

```
float x = 300; 
float dx = 1; //Snelheid in de x richting

void setup()
{
  size(600, 100);
}

void draw()
{
  ellipse(x,50,100,100);
  x = x + dx;
  if (x > 600 || x < 0)
  {
    dx = -dx;
  }
}

```

## Vragen 

 * 1. Wat doet dit programma?
 * 2. In welke richting beweegt de ovaal in het begin? In welke regel zie je dat?
 * 3. Blijft de ovaal zichtbaar op het scherm?
 * 4. Zorg ervoor dat de ovaal netjes op het scherm zichtbaar blijft. Hij moet 100 bij 100 pixels groot blijven

## Oplossing

 * 1. De bal stuitert horizontaal: eerste gaat 'ie rechts, bij de rand verandert deze van richting naar links.
      Weer aan de linkerkant, stuitert de bal weer naar rechts
 * 2. Naar rechts. Dit zie je aan `x = x + dx` (dit zorgt ervoor dat de bal beweegt) en `float dx = 1`. Hierdoor
      wordt de eerste regel dus `x = x + 1`. Als `x` meer wordt, gaat de bal meer naar rechts
 * 3. Nee, de ovaal gaat een stuk het veld uit


```
float x = 300; 
float dx = 1; //Snelheid in de x richting

void setup()
{
  size(600, 50);
}

void draw()
{
  ellipse(x,50,100,100);
  x = x + dx;
  if (x > 550 || x < 50)
  {
    dx = -dx;
  }
}
```

## Gas geven

Nu gaat een bal altijd `dx` naar links of naar rechts. 
Een bal kan ook steeds sneller gaan.
Dit kun je doen door `dx` te veranderen!

Zet nu deze code in Processing:

```
float x = 50; 
float dx = 0; //Snelheid in de x richting
float a = 1; //Versnelling

void setup()
{
  size(600, 100);
}

void draw()
{
  ellipse(x,50,100,100);
  x = x + dx;
  dx = dx + a;
  if (x > 650)
  {
    x = 50;
    dx = 0;
  }
}
```

## Vragen

 * 1. Wat zie je gebeuren?
 * 2. Waarom staat er `float dx = 0`?
 * 3. In het `if` statement staat `x = 50`. Wat doet dit?
 * 4. In het `if` statement staat `dx = 0`. Wat doet dit?
 * 5. Verander de code in het `if` statement van `dx = 0` naar `dx = -dx`. Wat doet dit?

## Oplossing

 * 1. De bal gaat naar rechts. De bal gaat ook steeds sneller naar rechts. Als de bal rechts is, begint deze weer links
 * 2. Dan staat de bal in het begin stil
 * 3. Deze zet de bal weer naar links
 * 4. Deze zet de bal weer stil
 * 5. De bal gaat nu stuiteren als een stuiterbal








## Opdrachten

 * Laat de bal nu *ook* verticaal bewegen. Gebruik de variabele namen `y` en `dy`. Zorg dat de bal ook verticaal stuitert

## Zwaartekracht

De zwaartekracht trekt aan voorwerpen. Iets dat omlaag valt, gaat hierdoor steeds sneller vallen.
Iets dat omhoog gaat, gaat eerst steeds langzamer omhoog, en gaat daarna ook vallen.
In de natuukunde gebruiken ze `g` (van 'gravity', dit is Engels voor zwaartekracht)
voor de zwaartekracht.

## Opdacht

In onze code hebben we nu een `dy`. Dit is de snelheid in de y richting.
Elke beurt moet `dy` nu `g` groter worden. Een mooie waarde voor `g` is `0.1`.

Voeg toe dat de cirkel op een natuurlijke manier omlaag valt.

 


 
 



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
