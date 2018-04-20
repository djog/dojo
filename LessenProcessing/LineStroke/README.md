# `line` en `stroke`

![Moria, een van de allereerste games met kleur](LineStrokeMoria.png)

In deze les gaan we leren hoe je gekleurde lijnen tekent.

\pagebreak

## `line` en `stroke`: opdracht 1

Run deze code:

```c++
void setup()
{
  size(300, 200);
}

void draw()
{
  line(0, 100, 300, 200);
}
```

![Computer](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:----------------:|:----------------------------------------: 
`line(0, 100, 300, 200);`|'Lieve computer, teken een lijn van `(0, 100)` naar `(300, 200)`.'

![Sunglasses](EmojiSunglasses.png) | `(100, 200)` is de pixel die 100 pixels naar links en 200 pixels onder de linkerbovenhoek van het scherm zit 
:-------------:|:----------------------------------------: 

\pagebreak

## `line` en `stroke`: oplossing 1

![Oplossing 1](LineStroke1Uitleg.png)

\pagebreak

## `line` en `stroke`: opdracht 2

![Opdracht 2](LineStroke2.png)

Laat de lijn niet naar de rechteronderhoek, maar naar de rechterbovenhoek gaan.

\pagebreak

\pagebreak

## `line` en `stroke`: oplossing 2

```c++
void setup()
{
  size(300, 200);
}

void draw()
{
  line(0, 100, 300, 0);
}
```

\pagebreak

## `line` en `stroke`: opdracht 3

Laat de lijn niet links in het midden, maar linksonder beginnen

![Opdracht 3](LineStroke3.png)

\pagebreak

## `line` en `stroke`: oplossing 3

```c++
void setup()
{
  size(300, 200);
}

void draw()
{
  line(0, 200, 300, 0);
}
```

\pagebreak

## `line` en `stroke`: opdracht 4

Laat de lijn van linksonder naar rechtsboven gaan, maar gebruik nu `width` en `height`

![Opdracht 4](LineStroke4.png)

\pagebreak

## Oplossing 4

```c++
void setup()
{
  size(300, 200);
}

void draw()
{
  line(0, height, width, 0);
}
```

\pagebreak

## `line` en `stroke`: opdracht 5

![Opdracht 5](LineStroke5.png)

Laat de lijn links op een willekeurige hoogte beginnen. Dit doe je met `random`

\pagebreak

\pagebreak

## Oplossing 5

```c++
void setup()
{
  size(300, 200);
}

void draw()
{
  line(0, random(height), width, 0);
}
```

\pagebreak

## `line` en `stroke`: opdracht 6

![Opdracht 6](LineStroke6.png)

Laat de lijn nu ook rechts op een willekeurige hoogte eindigen.

\pagebreak

## `line` en `stroke`: oplossing 6

```c++
void setup()
{
  size(300, 200);
}

void draw()
{
  line(0, random(height), width, random(height));
}
```

\pagebreak

## `line` en `stroke`: opdracht 7

![Opdracht 7](LineStroke7.png)

Zet voor `line` de regel `stroke(255, 0, 0);`

\pagebreak

## `line` en `stroke`: oplossing 7

```c++
void setup()
{
  size(300, 200);
}

void draw()
{
  stroke(255, 0, 0);
  line(0, random(height), width, random(height));
}
```

![Computer](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:----------------:|:----------------------------------------: 
`stroke(255, 0, 0);`|'Lieve computer, geef de lijnen de kleur rood.'
`stroke(255, 0, 0);`|'Lieve computer, geef de lijnen de kleur vol rood, zonder groen en zonder blauw.'

\pagebreak

## `line` en `stroke`: opdracht 8

![Opdracht 8](LineStroke8.png)

Maak de lijnen nu cyaan. Kijk naar figuur `Kleurencirkel` hoe je die maakt

![Kleurencirkel](AdditiveColor3.png)

\pagebreak

## `line` en `stroke`: oplossing 8

```c++
void setup()
{
  size(300, 200);
}

void draw()
{
  stroke(0, 255, 255);
  line(0, random(height), width, random(height));
}
```

![Computer](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:----------------:|:----------------------------------------: 
`stroke(0, 255, 255);`|'Lieve computer, geef de lijnen de kleur cyaan.'
`stroke(0, 255, 255);`|'Lieve computer, geef de lijnen de kleur zonder rood, vol groen en vol blauw.'

\pagebreak

## `line` en `stroke`: opdracht 9

![Opdracht 9](LineStroke9.png)

Laat nu de roodwaarde een willeukeurig getal van 0 tot 256 worden.


\pagebreak

## `line` en `stroke`: oplossing 9

```c++
void setup()
{
  size(300, 200);
}

void draw()
{
  stroke(random(256), 255, 255);
  line(0, random(height), width, random(height));
}
```

\pagebreak

## `line` en `stroke`: eindopdracht

![Eindopdracht `line` en `stroke`](LineStrokeEindopdracht.png)

Laat de lijnen nu op willekeurige plekken beginnen en eindigen. De lijnkleur moet
ook willekeurig zijn.

## `line` en `stroke`: links

 * `line` en `stroke`: [YouTube](https://youtu.be/94cuhGWpdjw), [mp4](http://www.richelbilderbeek/line_en_stroke.mp4)
