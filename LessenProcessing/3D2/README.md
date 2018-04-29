# 3D les 2: bal besturen

In deze les gaan we een 3D bal laten bewegen.

\pagebreak

## 3D 2: opdracht 1 

Type deze code over:

```c++
float x = 0;

void setup() 
{
  size(300, 200, P3D);
  noStroke();
  x = width / 2;
}

void draw() 
{
  background(255, 255, 255);
  lights();
  translate(x, height / 2, 0);
  sphere(20);
  if (keyPressed) 
  {
    if (key == 'a') x = x - 1;
    if (key == 'd') x = x + 1;
  }
}
```

Wat zie je?

\pagebreak

## 3D 2: oplossing 1 

![3D 2: oplossing 1](3D1_2.png)

Je ziet een bal die je met `a` en `d` naar 
links en rechts kunt bewegen.

Als je goed kijkt zie je dat het witste gedeelte van de bal ook van plek verandert.

\pagebreak

## 3D 2: opdracht 2

 * Zorg dat de bal nu ook naar onder en boven kan gaan, met de toetsen `w` en `s`
 * Maak een nieuwe variabele, bijvoorbeeld `y`, met als beginwaarde `height / 2`

![3D 2: opdracht 2](3D1_2.png)

\pagebreak

## 3D 2: oplossing 2 

```c++
float x = 0;
float y = 0;

void setup() 
{
  size(300, 200, P3D);
  noStroke();
}

void draw() 
{
  background(255, 255, 255);
  lights();
  translate(x, y, 0);
  sphere(20);
  x = x + 1;
  y = y + 1;
}
```

\pagebreak

## 3D 2: Eindopdracht

 * Laat de bal nu naar voren en achter gaan, met de toetsen `q` en `e`
 * Maak een nieuwe variabele, bijvoorbeeld `z`, met als beginwaarde nul

Dit ziet er misschien anders uit dan je verwacht!

![3D 2: opdracht 3](3D1_3.png)

