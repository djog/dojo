# Bal die horizontaal stuitert

In deze les gaan we een bal horizontaal laten stuiteren.

We gaan in deze les een ingewikkeldere beweging doen. 

## Een bal met een snelheid

```c++
float x = 300;
float snelheid = 2;

void setup()
{
  size(600, 100);
}

void draw()
{
  ellipse(x,50,100,100);
  x = x + snelheid;
  if (x > 650)
  {
    x = -50;
  }
}
```

## Opdracht 1

Type de code van `Een bal met een snelheid` over. 
Zet de waarde van `snelheid` op `1`. Wat zie je?

## Antwoord

Je ziet dat de bal rusig naar rechts beweegt. Als de bal
rechts het beeld uit gaat, komt deze vanaf links weer in het beeldscherm.

```c++
float x = 300;
float snelheid = 1;

void setup()
{
  size(600, 100);
}

void draw()
{
  ellipse(x,50,100,100);
  x = x + snelheid;
  if (x > 650)
  {
    x = -50;
  }
}
```

![Oplossing 1](BalDieHorizontaalStuitert1.png)

## Opdracht 2

Zet de waarde van `snelheid` op `0`. Wat zie je?

## Antwoord 2

De bal staat nu stil

```c++
float x = 300;
float snelheid = 0;

void setup()
{
  size(600, 100);
}

void draw()
{
  ellipse(x,50,100,100);
  x = x + snelheid;
  if (x > 650)
  {
    x = -50;
  }
}
```

![Oplossing 2](BalDieHorizontaalStuitert2.png)

## Opdracht 3

Zet de waarde van `snelheid` op `-1`. Wat zie je?

:sunglasses:

![Sunglasses](EmojiSunglasses.png) | Het getal `-1` spreek je uit als 'min een'. Het is het getal een lager dan nul


## Antwoord 3

De bal gaat nu naar links en komt niet meer in beeld.

```c++
float x = 300;
float snelheid = -1;

void setup()
{
  size(600, 100);
}

void draw()
{
  ellipse(x,50,100,100);
  x = x + snelheid;
  if (x > 650)
  {
    x = -50;
  }
}
```

![Oplossing 2](BalDieHorizontaalStuitert2.png)






 * Zet de waarde van `snelheid` op `0`. Wat zie je?
 * Zet de waarde van `snelheid` op `-1`. Wat zie je?
 * Bij sommige waarden van `snelheid` gaat de bal links het beeld uit. Maak een tweede if-statement, die ervoor zorgt dat de bal eeuwig links kan gaan. 
   Test dit bij een `dx` van `2`, `0` en `-2`.
 * Wat moet er met de `dx` gebeuren om de bal te laten stuiteren? Probeer dit!

## Stuiteren

Als een bal met een snelheid van drie pixels naar rechst gaat en stuitert, dan gaat deze vanaf dan drie pixels naar links.
Andersom is dat ook zo.

Hier is een manier om de bal te laten stuiteren:

```c++
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

```c++
dx = -dx;
```

Hiermee zeg je 'Lieve computer, de nieuwe waarde van `dx` is min de oude waarde'. Als de oude waarde van `dx` `2` is, dan wordt deze nu `-2`.
Als de oude waarde van `dx` `-2` is, dan wordt deze nu `--2` (jawel, min min twee) en dat mag je schrijven als `2` (omdat min keer min is plus).

## Eindopdracht

 * Gebruik nu de slimme manier om een bal te laten stuiteren.

Het lijkt al een beetje op [Lonelier Pong](https://github.com/richelbilderbeek/LonelierPong). Dit is geen toeval :-)
