# Toetsenbord 2: Tron

In deze les gaan we een puntje besturen met het toetsenbord.

![Tron](Tron.png)

\pagebreak

## Toetsenbord 2: intro

![Toetsenbord 2: intro](Toetsenbord2_Intro.png)

Dit is onze begincode. Type deze code over:

```c++
float x = 0;
float y = 0;

// 0: omhoog
// 1: naar rechts
// 2: omlaag
// 3: naar links
int richting = 1;

void setup()
{
  size(200,200);
  x = width / 2;
  y = height / 2;
}

void draw()
{
  if (keyPressed)
  {
    if (key == 'w') richting = 0;
    if (key == 'd') richting = 1;
    if (key == 's') richting = 2;
    if (key == 'a') richting = 3;
  }
  if (richting == 0) y = y - 1;
  if (richting == 1) x = x + 1;
  if (richting == 2) y = y + 1;
  if (richting == 3) x = x - 1;
  point(x,y);
}
```

Start het programma en druk op ADSW om van richting te veranderen.

![Sunglasses](EmojiSunglasses.png) | De besturing is niet perfect! Dit perfect maken is iets moeilijker
:-------------:|:----------------------------------------: 

\pagebreak

## Toetsenbord 2: opdracht 1

Zorg ervoor dat als de speler rechts het beeld uit gaat, dat
'ie aan de rechterkant verschijnt.

![Toetsenbord 2: opdracht 1](Toetsenbord2_1.png)

\pagebreak

## Toetsenbord 2: oplossing 1

Je hebt een `if`-statement nodig:

```c++
float x = 0;
float y = 0;

// 0: omhoog
// 1: naar rechts
// 2: omlaag
// 3: naar links
int richting = 1;

void setup()
{
  size(200,200);
  x = width / 2;
  y = height / 2;
}

void draw()
{
  if (keyPressed)
  {
    if (key == 'w') richting = 0;
    if (key == 'd') richting = 1;
    if (key == 's') richting = 2;
    if (key == 'a') richting = 3;
  }
  if (richting == 0) y = y - 1;
  if (richting == 1) x = x + 1;
  if (richting == 2) y = y + 1;
  if (richting == 3) x = x - 1;
  if (x > width) x = 0;
  point(x,y);
}
```

![Computer](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-------------:|:----------------------------------------: 
`if (x > width) x = 0`|'Lieve computer, als `x` groter is dan `width`, zet `x` dan op nul.'

\pagebreak

## Toetsenbord 2: opdracht 2

Zorg ervoor dat *ook* als de speler bovenaan het beeld uit gaat, dat
'ie aan de onderkant verschijnt.

![Toetsenbord 2: opdracht 2](Toetsenbord2_2.png)

\pagebreak

## Toetsenbord 2: oplossing 2

```c++
float x = 0;
float y = 0;

// 0: omhoog
// 1: naar rechts
// 2: omlaag
// 3: naar links
int richting = 1;

void setup()
{
  size(200,200);
  x = width / 2;
  y = height / 2;
}

void draw()
{
  if (keyPressed)
  {
    if (key == 'w') richting = 0;
    if (key == 'd') richting = 1;
    if (key == 's') richting = 2;
    if (key == 'a') richting = 3;
  }
  if (richting == 0) y = y - 1;
  if (richting == 1) x = x + 1;
  if (richting == 2) y = y + 1;
  if (richting == 3) x = x - 1;
  if (x > width) x = 0;
  if (y < 0) y = height;
  point(x,y);
}
```

\pagebreak

## Toetsenbord 2: eindopdracht

Zorg ervoor dat de speler altijd in het beeld blijft.

![Toetsenbord 2: eindopdracht](Toetsenbord2_Eindopdracht.png)
