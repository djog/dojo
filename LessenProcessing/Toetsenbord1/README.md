# Toetsenbord 1: Qix

In deze les gaan we een puntje bewegen met het toetsenbord.

![Qix](Qix.png)

\pagebreak

## Toetsenbord 1: intro

![Intro](Intro.png)

Dit is onze begincode. Type deze code over:

```c++
float x = 0;
float y = 0;

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
    if (key == 'w') y = y - 1;
    if (key == 'd') x = x + 1;
    if (key == 's') y = y + 1;
    if (key == 'a') x = x - 1;
  }
  point(x,y);
}
```

Start het programma en druk op ADSW om te bewegen.

![Sunglasses](EmojiSunglasses.png) | De besturing is niet perfect! Dit perfect maken is iets moeilijker
:-------------:|:----------------------------------------: 

\pagebreak

## Toetsenbord 1: opdracht 1

Zorg ervoor dat als de speler rechts het beeld uit gaat, dat
'ie aan de rechterkant verschijnt.

![Toetsenbord 1: opdracht 1](Toetsenbord1_1.png)

\pagebreak

## Toetsenbord 1: oplossing 1

Je hebt een `if`-statement nodig:

```c++
float x = 0;
float y = 0;

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
    if (key == 'w') y = y - 1;
    if (key == 'd') x = x + 1;
    if (key == 's') y = y + 1;
    if (key == 'a') x = x - 1;
  }
  if (x > width) x = 0;
  point(x,y);
}
```

![Computer](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-------------:|:----------------------------------------: 
`if (x > width) x = 0`|'Lieve computer, als `x` groter is dan `width`, zet `x` dan op nul.'

\pagebreak

## Toetsenbord 1: opdracht 2

Zorg ervoor dat *ook* als de speler bovenaan het beeld uit gaat, dat
'ie aan de onderkant verschijnt.

![Toetsenbord 1: opdracht 2](Toetsenbord1_2.png)

\pagebreak

## Toetsenbord 1: oplossing 2

```c++
float x = 0;
float y = 0;

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
    if (key == 'w') y = y - 1;
    if (key == 'd') x = x + 1;
    if (key == 's') y = y + 1;
    if (key == 'a') x = x - 1;
  }
  if (x > width) x = 0;
  if (y < 0) y = height;
  point(x,y);
}
```

\pagebreak

## Toetsenbord 1: eindopdracht

Zorg ervoor dat de speler altijd in het beeld blijft.

![Toetsenbord 1: eindopdracht](Toetsenbord1_Eindopdracht.png)
