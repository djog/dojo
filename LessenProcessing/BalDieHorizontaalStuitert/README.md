# Bal die horizontaal stuitert

![Eindopdracht `Bal Die Horizontaal Stuitert`](BalDieHorizontaalStuitertEindopdracht.png)

In deze les gaan we een bal horizontaal laten stuiteren.

\pagebreak

## Bal die horizontaal stuitert: opdracht 1

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

Type deze code over. Zet de waarde van `snelheid` op `1`. Wat zie je?

\pagebreak

## Bal die horizontaal stuitert: oplossing 1

Je ziet dat de bal rustig naar rechts beweegt. Als de bal
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

![Bal die horizontaal stuitert: oplossing 1](BalDieHorizontaalStuitert1.png)

\pagebreak

## Bal die horizontaal stuitert: opdracht 2

Zet de waarde van `snelheid` op `0`. Wat zie je?

\pagebreak

## Bal die horizontaal stuitert: oplossing 2

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

![Bal die horizontaal stuitert: oplossing 2](BalDieHorizontaalStuitert2.png)

\pagebreak

## Bal die horizontaal stuitert: opdracht 3

Zet de waarde van `snelheid` op `-1`. Wat zie je?

![Sunglasses](EmojiSunglasses.png) | Het getal `-1` spreek je uit als 'min een'. Het is het getal een lager dan nul.
:-------------:|:----------------------------------------: 

\pagebreak

## Bal die horizontaal stuitert: oplossing 3

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

![Bal die horizontaal stuitert: oplossing 3](BalDieHorizontaalStuitert3.png)

\pagebreak

## Bal die horizontaal stuitert: opdracht 4

![Bal die horizontaal stuitert: opdracht 4](BalDieHorizontaalStuitert4.png)

Zorg dat als de bal links uit beeld gaat, deze weer rechts verschijnt.
Doe dit door een tweede `if` te maken

\pagebreak

## Bal die horizontaal stuitert: oplossing 4

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
  if (x < -50)
  {
    x = 650;
  }
}
```

\pagebreak

## Bal die horizontaal stuitert: opdracht 5

Denk na: wat moet er met de `snelheid` gebeuren om de bal te laten stuiteren (van links naar rechst)? 

Als je durft: probeer dit zonder verder te lezen!

\pagebreak

## Bal die horizontaal stuitert: oplossing 5

Als tegen de linkerkant komt, moet de bal de bal naar rechts gaan. Als tegen de rechterkant komt, moet de bal de bal naar links gaan.

![Smiley](EmojiSmiley.png)|Als de bal ...|dan moet deze ...
:---:|:------:|:------:
![Bal aan linkerkant](BalDieHorizontaalStuitertLinksKlein.png)|aan de linkerkant komt|naar rechts gaan
![Bal aan rechterkant](BalDieHorizontaalStuitertRechtsKlein.png)|aan de rechtkant komt|naar links gaan

![Computer](EmojiComputer.png)|`if (...)` | `{ }`
:---:|:------:|:------:
![Bal aan linkerkant](BalDieHorizontaalStuitertLinksKlein.png)|`x < 50`|`snelheid = 1;`
![Bal aan rechterkant](BalDieHorizontaalStuitertRechtsKlein.png)|`x > 550`|`snelheid = -1;`

\pagebreak

## Bal die horizontaal stuitert: opdracht 6

![Opdracht 6](BalDieHorizontaalStuitert6.png)

Laat de bal nu van links naar rechts stuiteren

\pagebreak

## Bal die horizontaal stuitert: oplossing 6

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
  if (x > 550)
  {
    snelheid = -1;
  }
  if (x < 50)
  {
    snelheid = 1;
  }
}
```

\pagebreak

## Bal die horizontaal stuitert: opdracht 7

![Opdracht 7](BalDieHorizontaalStuitert7.png)

Laat de bal nu met een snelheid van 2 pixels per keer bewegen.

\pagebreak

## Bal die horizontaal stuitert: oplossing 7

```c++
float x = 300;
float snelheid = 2;

void setup()
{
  size(600, 100);
}

void draw()
{
  ellipse(x, 50, 100, 100);
  x = x + snelheid;
  if (x > 550)
  {
    snelheid = -2;
  }
  if (x < 50)
  {
    snelheid = 2;
  }
}
```

\pagebreak

## Bal die horizontaal stuitert: opdracht 8

Verander in de code:

van|naar
---|---
`snelheid = 2;`|`snelheid = -snelheid;`
`snelheid = -2;`|`snelheid = -snelheid;`

![Computer](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-------------:|:----------------------------------------: 
`snelheid = -snelheid;`|'Lieve computer, verander het (min of plus)teken van snelheid'

![Sunglasses](EmojiSunglasses.png) | Het getal `-1` heeft een minteken. Het getal `1` (ook goed: `+1`) heeft een plusteken.
:-------------:|:----------------------------------------: 

\pagebreak

## Bal die horizontaal stuitert: oplossing 8

![Opdracht 8](BalDieHorizontaalStuitert8.png)

```c++
float x = 300;
float snelheid = 2;

void setup()
{
  size(600, 100);
}

void draw()
{
  ellipse(x, 50, 100, 100);
  x = x + snelheid;
  if (x > 550)
  {
    snelheid = -snelheid;
  }
  if (x < 50)
  {
    snelheid = -snelheid;
  }
}
```

\pagebreak

## Bal die horizontaal stuitert: eindopdracht

![Bal die horizontaal stuitert: eindopdracht](BalDieHorizontaalStuitertEindopdracht.png)

Laat de bal nu omhoog en omlaag stuiteren.
