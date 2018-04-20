# `rect` en `fill`

Vierkanten worden veel gebruikt in games.

Hier zie je een van de beroemdste games ooit:

![Tetris](Tetris.png)

Je kunt een vierkant tekenen met vier lijnen,
maar de `rect` functie werkt gemakkelijker.

\pagebreak

## `rect` en `fill`: opdracht 1

Run deze code

```c++
float x = -50;

void setup()
{
  size(300, 200);
}

void draw()
{
  ellipse(x, height / 2, 100, 100);
  x = x + 1;
  if (x > width + 50)
  {
    x = -50;
  }
}
```

\pagebreak

## `rect` en `fill`: oplossing 1

![Oplossing 1](RectFill1.png)

\pagebreak

## `rect` en `fill`: opdracht 2

Voeg de volgende extra regel toe, na `ellipse(x, height / 2, 100, 100);`:

```c++
  rect(x, height / 2, 100, 100);
```

![Computer](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:------------------------:|:---------------------------------------------------: 
`rect(100, 200, 300, 400)`|'Lieve computer, teken een rechthoek met `(100, 200)` als linkerbovenhoek, 300 pixels breed en 400 pixels hoog is.'

\pagebreak

## `rect` en `fill`: oplossing 2

![Oplossing 2](RectFill2.png)

```c++
float x = -50;

void setup()
{
  size(300, 200);
}

void draw()
{
  ellipse(x, height / 2, 100, 100);
  rect(x, height / 2, 100, 100);
  x = x + 1;
  if (x > width + 50)
  {
    x = -50;
  }
}
```

\pagebreak

## `rect` en `fill`: opdracht 3

![Opdracht 3](RectFill3.png)

Teken de rechthoek nu over de ovaal. Doe dit door van de `x` en `y` coordinaat 50 af te halen.

\pagebreak

## `rect` en `fill`: oplossing 3

```c++
float x = -50;

void setup()
{
  size(300, 200);
}

void draw()
{
  ellipse(x, height / 2, 100, 100);
  rect(x - 50, height / 2 - 50, 100, 100);
  x = x + 1;
  if (x > width + 50)
  {
    x = -50;
  }
}
```

\pagebreak

## `rect` en `fill`: opdracht 4

![Opdracht 4](RectFill4.png)

Haal de onzichttbare ovaal weg en maak de lijnkleur geel. Hoe je geel maakt,
kun je zien in figuur `Kleurencirkel`.

![Kleurencirkel](AdditiveColor3.png)

\pagebreak

## `rect` en `fill`: oplossing 4

```c++
float x = -50;

void setup()
{
  size(300, 200);
}

void draw()
{
  stroke(255, 255, 0);
  rect(x - 50, height / 2 - 50, 100, 100);
  x = x + 1;
  if (x > width + 50)
  {
    x = -50;
  }
}
```

\pagebreak

## `rect` en `fill`: opdracht 5

Voeg de volgende regel toe na `stroke(255, 255, 0);`:

```c++
fill(x, 0, 255);
```

\pagebreak

## `rect` en `fill`: oplossing 5

![Opdracht 5](RectFill5.png)

```c++
float x = -50;

void setup()
{
  size(300, 200);
}

void draw()
{
  stroke(255, 255, 0);
  fill(x, 0, 255);
  rect(x - 50, height / 2 - 50, 100, 100);
  x = x + 1;
  if (x > width + 50)
  {
    x = -50;
  }
}
```

![Computer](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:----------------:|:----------------------------------------: 
`fill(0, 128, 255);`|'Lieve computer, maak de invulkleur zonder rood, halvol groen en vol blauw.'

\pagebreak

## `rect` en `fill`: opdracht 6

Maak een nieuwe variable aan, `groen` met een beginwaarde van nul. 
`groen` wordt gebruikt als het tweede getal van `fill` (inplaats van de nul).
Elke keer wordt `groen` twee hoger.

\pagebreak

### `rect` en `fill`: oplossing 6

```c++
float x = -50;
float groen = 0;

void setup()
{
  size(300, 200);
}

void draw()
{
  stroke(255, 255, 0);
  fill(x, groen, 255);
  rect(x - 50, height / 2 - 50, 100, 100);
  x = x + 1;
  groen = groen + 2;
  if (x > width + 50)
  {
    x = -50;
  }
}
```
 
\pagebreak

## `rect` en `fill`: opdracht 7

![Opdracht 7](RectFill7.png)

De variabele `groen` mag niet hoger worden dan `255`. Maak een `if` erbij,
dat als `groen` meer is dan 255, dat groen dan nul wordt

\pagebreak

## `rect` en `fill`: oplossing 7

```c++
float x = -50;
float groen = 0;

void setup()
{
  size(300, 200);
}

void draw()
{
  stroke(255, 255, 0);
  fill(x, groen, 255);
  rect(x - 50, height / 2 - 50, 100, 100);
  x = x + 1;
  groen = groen + 2;
  if (x > width + 50)
  {
    x = -50;
  }
  if (groen > 255)
  {
    groen = 0;
  }
}
```

\pagebreak

## `rect` en `fill`: opdracht 8

![Opdracht 8](RectFill8.png)

Maak de blauwheid van de invulkleur een willekeurig getal van nul tot 256.

\pagebreak

## `rect` en `fill`: oplossing 8

```c++
float x = -50;
float groen = 0;

void setup()
{
  size(300, 200);
}

void draw()
{
  stroke(255, 255, 0);
  fill(x, groen, random(256));
  rect(x - 50, height / 2 - 50, 100, 100);
  x = x + 1;
  groen = groen + 2;
  if (x > width + 50)
  {
    x = -50;
  }
  if (groen > 255)
  {
    groen = 0;
  }
}
```

\pagebreak

## `rect` en `fill`: eindopdracht

![Eindopdracht `rect` en `fill`](RectFillEindopdracht.png)

Maak de lijnkleur willekeurig in roodheid (dus van zwart tot rood, groen en blauw zijn uit).
Laat de invulkleur gaan van zwart naar groen, waarbij groen steeds 3 hoger wordt.
