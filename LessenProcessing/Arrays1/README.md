# Arrays 1

Met arrays kun je de computer veel waardes laten onthouden:
de coordinaten van kogels, meteorieten, vijanden.

![Galaga is een beroemde game met veel vijanden en kogels](Galaga.png)

## Arrays 1: opdracht 1

Run deze code. Wat doet het?

```c++
float x = 0;

void setup()
{
  size(600, 50);
}

void draw()
{
  ellipse(x,25,50,50);
  x = x + 1;
  if (x > 625)
  {
    x = -25;
  }
}
```

\pagebreak

## Arrays 1: oplossing 1

Een bal die eeuwig naar rechts gaat!

![Arrays 1: oplossing 1](Arrays1_1.png)

## Arrays 1: opdracht 2

Zorg dat er een tweede bal bijkomt.

![Twee ballen die eeuwig naar rechts gaan](Arrays1_twee_ballen.png)

![Sunglasses](EmojiSunglasses.png) | Tip: verander de naam `x` naar `x1`
:-------------:|:----------------------------------------: 

![Bowtie](EmojiBowtie.png) | Maak dan een nieuwe variabele met de naam `x2`
:-------------:|:----------------------------------------: 

\pagebreak

## Arrays 1: oplossing 2

```c++
float x1 = 0;
float x2 = 100;

void setup()
{
  size(600, 50);
}

void draw()
{
  ellipse(x1,25,50,50);
  ellipse(x2,25,50,50);
  x1 = x1 + 1;
  x2 = x2 + 1;
  if (x1 > 625)
  {
    x1 = -25;
  }
  if (x2 > 625)
  {
    x2 = -25;
  }
}
```

![Sunglasses](EmojiSunglasses.png) | Dit was zeven regels extra werk
:-------------:|:----------------------------------------: 

## Arrays 1: opdracht 3

Zorg dat er een derde bal bijkomt.

![Arrays 1: opdracht 3](Arrays1_drie_ballen.png)

\pagebreak

## Arrays 1: oplossing 3

```c++
float x1 = 0;
float x2 = 100;
float x3 = 200;

void setup()
{
  size(600, 50);
}

void draw()
{
  ellipse(x1,25,50,50);
  ellipse(x2,25,50,50);
  ellipse(x3,25,50,50);
  x1 = x1 + 1;
  x2 = x2 + 1;
  x3 = x3 + 1;
  if (x1 > 625)
  {
    x1 = -25;
  }
  if (x2 > 625)
  {
    x2 = -25;
  }
  if (x3 > 625)
  {
    x3 = -25;
  }
}
```

![Sunglasses](EmojiSunglasses.png) | Dit was weer zeven regels extra werk
:-------------:|:----------------------------------------: 

![Bowtie](EmojiBowtie.png) | Dit kan slimmer, met arrays!
:-------------:|:----------------------------------------: 

\pagebreak

## Arrays 1: wat is een array?

Een array is als een kast met laatjes.

![Kast met laatje](KastMetLaatje.png)

Elk laatje heeft een nummer en in elk laatje kan een getal.

Hier zie je het nummer van het laatje, en het getal wat erin zit:

![Kast met genummerde laatjes](KastMetGenummerdLaatjeEnGetal.png)

![Sunglasses](EmojiSunglasses.png) | Het eerste laatje van een array heeft nummer nul
:-------------:|:----------------------------------------: 

Het laatje heeft nummer *nul* (links) en in het laatje zit het
getal tweeenveertig.

![Computer](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-------------:|:----------------------------------------: 
`plek in array met index nul`|'het eerste plekje in de array'

\pagebreak

## Werken met een array met een laatje

![Array met naam 'geheime_getallen' en een laatje](Arrays1_kast_geheime_getallen.png)

Stel we willen een array maken van gebroken getallen (`float`s) met de naam `geheime_getallen`, 
dan moeten we boven de `setup` het volgende typen:

```
float[] geheime_getallen;
```

Met deze regel maak je array met de naam `geheime_getallen`.

![Computer](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-------------:|:----------------------------------------: 
`float[] geheime_getallen`|'Lieve computer, onthoud keiveel gebroken getallen met de naam `geheime_getallen`'


Er is nog niet gezegd *hoeveel* gebroken getallen dat zijn.
Vaak wordt de `setup` functie gebruikt om te zeggen hoeveel getallen er onthouden moeten worden:

```
geheime_getallen = new float[1];
```

Hiermee maak je de array `geheime_getallen` 1 laatje groot.


![Computer](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-------------:|:----------------------------------------: 
`geheime_getallen = new float[1]`|'Lieve computer, maak `geheime_getallen` 1 laatje groot`'


\pagebreak

Om de kast met de laatjes precies na te maken, kun je de volgende code gebruiken:

```
geheime_getallen[0] = 42;
```

Hierdoor stop je het getal 42 op het eerste plekje in de array.

![Computer](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-------------:|:----------------------------------------: 
`geheime_getallen[0] = 42`|'Lieve computer, stop het getal `42` in het eerste plekje van de array `geheime_getallen`'

Je zou ook de waarde in de laatjes kunnen lezen:

```
float x = geheime_getallen[0];
```

Hiermee lees je het eerste plekje (het laatje met index nul) en stop je dat in `x`.

![Computer](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-------------:|:----------------------------------------: 
`float x = geheime_getallen[0]`|'Lieve computer, kijk wat er in laatje met index nul zit en onthoud dat als `x`'


Alles bij elkaar krijg je dit programma:

```c++
float[] geheime_getallen;

void setup()
{
  size(400, 400);
  geheime_getallen = new float[1];
  geheime_getallen[0] = 42;
}

void draw() 
{
  float x = geheime_getallen[0];
  ellipse(x, 200, 300, 400);
}
```
Dit programma ziet er niet erg mooi uit. Het is bedoeld om je te laten hoe je arrays maakt, vult en leest.

\pagebreak

## Arrays 1: opdracht 4 

Run onderstaande code.

```c++
float[] xs;

void setup()
{
  size(600, 50);
  xs = new float[3];
  xs[0] = 0;
  xs[1] = 100;
  xs[2] = 200;
}

void draw()
{
  ellipse(xs[0],25,50,50);
  ellipse(xs[1],25,50,50);
  ellipse(xs[2],25,50,50);
  xs[0] = xs[0] + 1;
  xs[1] = xs[1] + 1;
  xs[2] = xs[2] + 1;
  if (xs[0] > 625)
  {
    xs[0] = -25;
  }
  if (xs[1] > 625)
  {
    xs[1] = -25;
  }
  if (xs[2] > 625)
  {
    xs[2] = -25;
  }
}
```

\pagebreak

## Arrays 1: oplossing 4

Hee, hetzelfde als net!

![Arrays 1: oplossing 4](Arrays1_drie_ballen.png)

## Arrays 1: opdracht 5

Run deze code:

```c++
float[] xs;

void setup()
{
  size(600, 50);
  xs = new float[3];
  for (int i=0; i<3; ++i)
  {
    xs[i] = i * 100;
  }
}

void draw()
{
  for (int i=0; i<3; ++i)
  {
    ellipse(xs[i],25,50,50);
    xs[i] = xs[i] + 1;
    if (xs[i] > 625)
    {
      xs[i] = -25;
    }
  }
}
```

![Sunglasses](EmojiSunglasses.png) | Goede programmeur gebruiken liever `for` loops dan dom te knippen en plakken
:-------------:|:----------------------------------------: 

\pagebreak

## Arrays 1: oplossing 5

Hee, hetzelfde als net!

![Computer](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-------------:|:----------------------------------------: 
`for (int i=0; i<3; ++i) {}`|'Lieve computer, doe wat tussen accolades staat met waarden van `i` van `0` tot `3` in stapjes van `1`'

![Computer](EmojiComputer.png) | Ik ben een domme computer
:-------------:|:----------------------------------------: 
 |`xs[0] =   0;`
 |`xs[1] = 100;`
 |`xs[2] = 200;`

![Computer](EmojiComputer.png) | Ik ben een slimme computer
:--------------|:----------------------------------------- 
 |`for (int i=0; i<3; ++i)`
 |`{`
 |  `  xs[i] = i * 100;`
 |`}`

## Arrays 1: opdracht 6

![Arrays 1: opdracht 6](Arrays1_vier_ballen.png)

Maak nu een vierde bal erbij.

![Bowtie](EmojiBowtie.png) | Tip: maak van een `3` een `4`
:-------------:|:----------------------------------------: 

\pagebreak

## Arrays 1: oplossing 6


```c++
float[] xs;

void setup()
{
  size(600, 50);
  xs = new float[4];
  for (int i=0; i<4; ++i)
  {
    xs[i] = i * 100;
  }
}

void draw()
{
  for (int i=0; i<4; ++i)
  {
    ellipse(xs[i], 25, 50, 50);
    xs[i] = xs[i] + 1;
    if (xs[i] > 625)
    {
      xs[i] = -25;
    }
  }
}
```

## Arrays 1: opdracht 7

Maak nu het programma full-screen. Laat de ballen als ze rechts het scherm uitgaan, weer links beginnen. Gebruik hiervoor `width`

![Arrays 1: opdracht 7](Arrays1_7.png)

\pagebreak

## Arrays 1: oplossing 7

```c++
float[] xs;

void setup()
{
  fullScreen();
  xs = new float[4];
  for (int i=0; i<4; ++i)
  {
    xs[i] = i * 100;
  }
}

void draw()
{
  for (int i=0; i<4; ++i)
  {
    ellipse(xs[i], 25, 50, 50);
    xs[i] = xs[i] + 1;
    if (xs[i] > width + 25)
    {
      xs[i] = -25;
    }
  }
}
```

## Arrays 1: eindopdracht

![Arrays 1: eindopdracht](Arrays1_eindopdracht.png)

Maak de code nu zo dat:

 * Er zes ballen zijn
 * De ballen eeuwig naar links gaan
