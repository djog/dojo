# Bal naar rechts

In deze les gaan we een bal naar rechts laten bewegen.

Het ziet er zo uit:

![Bal naar rechts](BalNaarRechts.png)

We leren in deze les wat een variabele is.
Je kunt (bijna) niet programmeren zonder variabelen.

## Wat weten we al?

Als je de vorige lessen hebt gedaan, weet
je wat deze code doet:

```
void setup()
{
  size(600, 400);
}

void draw()
{
  ellipse(50,50,50,50);
}
```

### Vragen 

 * 1. Wat doet dit programma?
 * 2. Waar wordt deze cirkel getekend? 
 * 3. Komt deze cirkel tegen de rand aan?

## Oplossing

 * 1. Het programma maakt een scherm van 600 pixels breed en 400 pixels hoog. Dan
   wordt er een cirkel getekent met een middelpunt op coordinaat (50,50) en
   vijftig pixels breed en hoog
 * 2. In de linkerbovenhoek
 * 3. Nee, de cirkel komt maar voor de helft van middelpunt tot de rand 

## Code met een variabele

We gaan de code aanpassen:

```
float x = 50;

void setup()
{
  size(600, 400);
}

void draw()
{
  ellipse(x,50,50,50);
}
```

### Vragen 

 * 1. Wat doet dit programma?
 * 2. Wat zijn de verschillen?


## Oplossing

 * 1. Het programma maakt een scherm van 600 pixels breed en 400 pixels hoog. Dan
   wordt er een cirkel getekent met een middelpunt op coordinaat (50,50) en
   vijftig pixels breed en hoog
 * 2. Er zijn geen verschillen!

## Variabelen

De eerste nieuwe regel is:

```
float x = 50;
```

In mensentaal is dit: 'Lieve computer, onthoud het getal `x`. `x` heeft een beginwaarde van vijftig.'.

Een variabele is iets dat onthouden moet worden. Een kassa onthoudt bijvoorbeeld de hoeveelheid geld
die alle boodschappen bij elkaar zijn. Variabelen die jij weet, zijn: je naam, je leeftijd, je
geboortedatum, je adres, je telefoonnummer, je emailadres, en nog veel meer. Als iemand je je leeftijd
vraagt, dan weet je welk getal je moet zeggen.

Het woord `x` is de naam van een variable. In dit geval van hoe ver de cirkel naar rechts staat.
Het woord `float` betekent dat 'x' een getal is.
Het symbool `=` betekent 'wordt vanaf nu'.
Het getal `50` is de beginwaarde.

De tweede veranderde regel is:

```
ellipse(x,50,50,50);
```

In mensentaal is dit: 'Lieve computer, teken een ovaal die:

 * `x` naar rechts is. De computer weet nog wel wat `x` is: vijftig!
 * `50` omlaag is
 * `50` pixels breed is
 * `50` pixels hoog is

### Vragen 

 * 1. Wat als je `float x = 50;` weghaalt?
 * 2. Wat als je `float x = 50;` verandert naar `float rechts = 50;`?
 * 3. Wat als je `float x = 50;` verandert naar `float x = 100;`?
 * 4. Wat als je `ellipse(x,50,50,50);` weghaalt?
 * 5. Wat als je `ellipse(x,50,50,50);` verandert naar `ellipse(rechts,50,50,50);`?
 * 6. Wat als je `ellipse(x,50,50,50);` verandert naar `ellipse(x,x,50,50);`?
 * 7. Wat als je `ellipse(x,50,50,50);` verandert naar `ellipse(x,x,x,50);`?
 * 8. Wat als je `ellipse(x,50,50,50);` verandert naar `ellipse(x,x,x,x);`?
 * 9. Wat als je `x` vervangt door `dinosaurus`?

## Oplossing

 * 1. Dan komt er onderin 'x cannot be resolved to variable' te staan. Het programma
   doet het niet meer. Dit omdat de computer `x` niet meer kan vinden 
 * 2. Dan komt er onderin 'x cannot be resolved to variable' te staan. Het programma
   doet het niet meer. Dit omdat de computer `x` niet meer kan vinden
 * 3. Dan komt het middelpunt van de cirkel honderd pixels naar rechts te liggen
 * 4. Dan wordt er geen cirkel meer getekend
 * 5. Dan komt onderin 'The variable "rechts" does not exist' te staan. De computer
   kent geen variabele met de naam `rechts`
 * 6. Dan komt het middelpunt van de cirkel honderd pixels naar rechts en honderd
   pixels naar onder te liggen
 * 7. Dan komt het middelpunt van de cirkel honderd pixels naar rechts en honderd
   pixels naar onder te liggen. De cirkel wordt honderd pixels breed
 * 8. Dan komt het middelpunt van de cirkel honderd pixels naar rechts en honderd
   pixels naar onder te liggen. De cirkel wordt honderd pixels breed en hoog
 * 9. Dan komt onderin 'The variable "dinosaurus" does not exist' te staan. De computer
   kent geen variabele met de naam `dinosaurus`

## Bewegen

Nu gaan we de cirkel laten bewegen:

```
float x = 50;

void setup()
{
  size(600, 400);
}

void draw()
{
  ellipse(x,50,50,50);
  x = x + 1;
}
```

### Vragen 

 * Wat doet dit programma?
 * Wat zijn de verschillen?

De nieuwe regel is:

```
x = x + 1;
```

In mensentaal is dit: 'Lieve computer, x is vanaf nu x plus een'. Of: 'Maak x een hoger'.

### Vragen

 * Als `x` vijftig is, wat is `x` dan na `x = x + 1;`?
 * Als `x` 51 is, wat is `x` dan na `x = x + 1;`?
 * Als `x` 52 is, wat is `x` dan na `x = x + 1;`?
 * Als `x` 53 is, wat is `x` dan na `x = x + 1;`?
 * Als `x` 54 is, wat is `x` dan na `x = x + 1;`?

Nu kunnen we snappen wat het programma doet. Hier staat het programma weer:

```
float x = 50;

void setup()
{
  size(600, 400);
}

void draw()
{
  ellipse(x,50,50,50);
  x = x + 1;
}
```

De eerste keer dat de computer `draw` gaat doen, dan vult deze voor `x` een `50` in.
Daarna wordt x een hoger. Dan is `draw` klaar.

De tweede keer dat de computer `draw` gaat doen, dan vult deze voor `x` een `51` in.
Daarna wordt x een hoger. Dan is `draw` klaar.

De derde keer dat de computer `draw` gaat doen, dan vult deze voor `x` een `52` in.
Daarna wordt x een hoger. Dan is `draw` klaar.

### Vragen

 * Wat als je `ellipse(x,50,50,50);` vervangt door `ellipse(50,50,50,50);`?
 * Wat als je `ellipse(x,50,50,50);` vervangt door `ellipse(50,x,50,50);`?
 * Wat als je `ellipse(x,50,50,50);` vervangt door `ellipse(50,50,x,50);`?
 * Wat als je `ellipse(x,50,50,50);` vervangt door `ellipse(50,50,50,x);`?
 * Wat als je `ellipse(x,50,50,50);` vervangt door `ellipse(x,x,50,50);`?
 * Wat als je `ellipse(x,50,50,50);` vervangt door `ellipse(50,x,x,50);`?
 * Wat als je `ellipse(x,50,50,50);` vervangt door `ellipse(50,50,x,x);`?
 * Wat als je `ellipse(x,50,50,50);` vervangt door `ellipse(x,50,50,x);`?
 * Wat als je `ellipse(x,50,50,50);` vervangt door `ellipse(x,x,x,50);`?
 * Wat als je `ellipse(x,50,50,50);` vervangt door `ellipse(50,x,x,x);`?
 * Wat als je `ellipse(x,50,50,50);` vervangt door `ellipse(x,50,x,x);`?
 * Wat als je `ellipse(x,50,50,50);` vervangt door `ellipse(x,x,50,x);`?
 * Wat als je `ellipse(x,50,50,50);` vervangt door `ellipse(x,x,x,x);`?
 * Wat als je `x = x + 1;` vervangt door `x = x + 2;`?
 * Wat als je `x = x + 1;` vervangt door `x = x + 10;`?
 * Wat als je `x = x + 1;` vervangt door `x = x + 0;`?
 * Wat als je `x = x + 1;` vervangt door `x = x - 1;`?
 * Wat als je `x = x + 1;` vervangt door `x = x - 0;`?
 * Wat als je `x = x + 1;` vervangt door `x = x * 2;`?
 * Wat als je `x = x + 1;` vervangt door `x = x * 1;`?
 * Wat als je `x = x + 1;` vervangt door `x = x * 0;`?
 * Wat als je `x = x + 1;` vervangt door `x = x / 2;`?
 * Wat als je `x = x + 1;` vervangt door `x = x / -2;`?
 * Wat als je `x = x + 1;` vervangt door `x = x / 1;`?
 * Wat als je `x = x + 1;` vervangt door `x = x / 0;`?

## Bal naar links

Haha, deze les heet 'Bal naar rechts', toch gaan we ook een bal naar links laten bewegen!

## Opdracht

 * Laat een bal aan de rechterkant van het scherm beginnen
 * De bal moet in een rechte lijn naar links gaan

## Oplossing

```
float x = 500;

void setup()
{
  size(600, 400);
}

void draw()
{
  ellipse(x,50,50,50);
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

```
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

```
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

```
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

```
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

## Verder

Je zou nu kunnen doen:

 * [Bal die eeuwig naar rechts gaat](../BalEeuwigNaarRechts/README.md)
