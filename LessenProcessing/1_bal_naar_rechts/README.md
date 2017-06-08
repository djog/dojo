# Bal naar rechts

In deze les gaan we een bal naar rechts laten bewegen.

Het ziet er zo uit:

![Bal naar rechts](BalNaarRechts.png)

We leren in deze les wat een variabele is.
Je kunt bijna niet programmeren zonder variabelen.

## Bewegen

Type de volgende code over:

```c++
float x = 60;

void setup()
{
  size(600, 400);
}

void draw()
{
  ellipse(x,50,40,30);
  x = x + 1;
}
```

Druk dan op 'Run' (zie figuur `Druk op 'Run'`). Als er rode letters komen, heb je een typefout gemaakt. 

![Druk op 'Run'](1_bal_naar_rechts_run.png)

### Opdracht

 1. Het scherm is nu 600 pixels breed. Kun je deze 800 pixels breed krijgen? Verander de code en druk op 'Run'

### Oplossing

 1. Er zit een `600` in de code. Deze naar `800` veranderen is genoeg:

```c++
float x = 60;

void setup()
{
  size(800, 400);
}

void draw()
{
  ellipse(x,50,40,30);
  x = x + 1;
}
```

### Opdracht

 1. De bal is nu een ellips- is niet rond, maar ovaal. Maak deze rond. Hint: de bal is nu 40 pixels breed en 30 pixels hoog

### Oplossing

 1. `ellipse(x,50,40,30);` tekent de bal. De `40,30` zorgt ervoor dat de bal niet rond is. Door dit `40,40` of `30,30` te maken, wordt de bal rond:

```c++
float x = 60;

void setup()
{
  size(800, 400);
}

void draw()
{
  ellipse(x,50,40,40);
  x = x + 1;
}
```

## Opdracht

 1. De bal gaat nu met een snelheid van 1 pixel per keer naar rechts. Laat de bal twee keer zo snel naar rechts gaan

## Oplossing

 1. `x = x + 1;` beweegt de bal. Verander dit naar `x = x + 2;`. De code wordt dan:

```c++
float x = 60;

void setup()
{
  size(800, 400);
}

void draw()
{
  ellipse(x,50,40,40);
  x = x + 2;
}
```

## Opdracht

 1. In het begin zit het midden van de bal 60 pixels naar rechts. Kun je de cirkel ook 0 pixels naar rechts laten beginnen?

## Oplossing

 1. `float x = 60;` bepaalt dit. Verander dit naar `float x = 0;`. De code wordt dan:

```c++
float x = 0;

void setup()
{
  size(800, 400);
}

void draw()
{
  ellipse(x,50,40,40);
  x = x + 2;
}
```

## Bal naar links

Haha, deze les heet 'Bal naar rechts', toch gaan we ook een bal naar links laten bewegen!

## Opdracht

 1. Laat de bal nu aan de rechterkant van het scherm beginnen en naar links gaan

## Oplossing

 1. Om de bal aan de rechtkant te krijgen moet je `float x = 500;` gebruiken (of een ander hoog getal).
    Om de bal naar links te laten bewegen, moet je `x = x - 1;` gebruiken. De code wordt dan:

```c++
float x = 500;

void setup()
{
  size(600, 400);
}

void draw()
{
  ellipse(x,50,40,40);
  x = x - 1;
}
```

## Bal naar onder

Haha, deze les heet 'Bal naar rechts', toch gaan we ook een bal naar onder laten bewegen!

## Opdracht

 * Verander de naam van de variabele `x` in `y`
 * Laat een bal aan de bovenkant van het scherm beginnen
 * De bal moet in een rechte lijn naar onder gaan

## Oplossing

```c++
float y = 50;

void setup()
{
  size(600, 400);
}

void draw()
{
  ellipse(50,y,50,50);
  y = y + 1;
}
```

## Bal snel omhoog

Nu gaan we de bal sneller laten bewegen

## Opdracht

 * Laat een bal aan de onderkant van het scherm beginnen
 * De bal moet in een rechte lijn naar boven gaan
 * De bal moet twee keer zo snel gaan

## Oplossing

```c++
float y = 50;

void setup()
{
  size(600, 400);
}

void draw()
{
  ellipse(50,y,50,50);
  y = y - 2;
}
```

## Bal groter

Nu gaan we de bal sneller bewegen en groter maken

## Opdracht

 * Gebruik als variabele naam `x`
 * Laat een bal aan de linker van het scherm beginnen
 * De bal moet in een rechte lijn naar rechts gaan
 * De bal moet even groot blijven

## Oplossing

```c++
float x = 50;

void setup()
{
  size(600, 400);
}

void draw()
{
  fill(x,x,x);
  ellipse(x,50,50,50);
  x = x + 1;
}
```

## Bal veranderd van kleur

Nu gaan we de bal een kleur geven met `fill`

## Opdracht

 * Gebruik als variabele naam `t` (van tijd) in plaats van `x` of `y`
 * Laat een bal aan de linker van het scherm beginnen
 * De bal moet in een rechte lijn naar rechts gaan
 * De kleur moet van zwart naar wit veranderen

## Oplossing

```c++
float t = 50;

void setup()
{
  size(600, 400);
}

void draw()
{
  fill(t,t,t);
  ellipse(50,t,50,t);
  t = t + 1;
}
```

## Eindopdracht

 * gebruik een variabele `t` (van tijd)
 * de bal moet snel omlaag en naar rechts gaan
 * de bal moet groter worden in de breedte en hoogte
 * de kleur moet van zwart naar wit veranderen
