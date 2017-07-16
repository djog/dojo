# fill

Een rechthoek of een ovaal kan ook ingekleurd worden.

Een van de beroemdste games ooit heeft bijvoorbeeld
veel ingekleurde vierkanten:

![Tetris](Tetris.png)

In deze les gaan we leren hoe we de invulkleur van vierkanten en ovalen instellen

Weet je nog niet hoe je een lijn een kleur kan geven?
Ga dan naar [stroke](../Stroke/README.md)

## Een rood vierkant

Zo teken je een rood ingekleurd vierkant:

```c++
void setup()
{
  size(200,100);
}

void draw()
{
  fill(255,0,0);
  rect(50,25,100,50);
}
```

## Een rood vierkant en een groene ovaal

Zo teken je een rood ingekleurd vierkant en een groen
ingekleurde ovaal:

```c++
void setup()
{
  size(200,100);
}

void draw()
{
  fill(255,0,0);
  rect(50,25,100,50);
  fill(0,255,0);
  ellipse(50,75,40,40);
}
```

## Opdrachten

 1. Wat gebeurt er als je de tweede `fill` weglaat?
 2. Wat gebeurt er als je de eerste `fill` weglaat?
 3. Maak een rood vierkant erbij, zonder een extra `fill` te gebruiken
 4. Maak een groene ovaal erbij, zonder een extra `fill` te gebruiken
 5. Maak een blauw vierkant erbij

## Oplossing

 1. Dan wordt de ovaal ook rood
 2. Dan wordt het vierkant ook groen
 3. Hier een tweede rood vierkant:

```c++
void setup()
{
  size(200,100);
}

void draw()
{
  fill(255,0,0);
  rect(50,25,100,50);
  rect(75,50,100,50);
  fill(0,255,0);
  ellipse(50,75,40,40);
}
```

 4. Hier een tweede groene ovaal:

```c++
void setup()
{
  size(200,100);
}

void draw()
{
  fill(255,0,0);
  rect(50,25,100,50);
  fill(0,255,0);
  ellipse(50,75,40,40);
  ellipse(75,50,40,40);
}
```


 5. Hier een extra blauw vierkant:

```c++
void setup()
{
  size(200,100);
}

void draw()
{
  fill(255,0,0);
  rect(50,25,100,50);
  fill(0,255,0);
  ellipse(50,75,40,40);
  fill(0,0,255);
  rect(0,0,50,100);
}
```

##Eindopdracht

Hier zie je een schilderij van Mondriaan:

![Composition II in Red, Blue, and Yellow door Mondriaan](FillMondriaan.jpg)

Maak het schilderij ongeveer na, zoals bijvoorbeeld hier:

![Composition II in Red, Blue, and Yellow door Richel](FillRichel.png)

Je mag ook een eigen kunstwerk maken. Gebruik dan minstens vijf verschillende kleuren.
