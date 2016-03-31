# Processing boek

Door Bo, Lucas, Richel

## Les ?: Tekenen
processing is een codeer taal waar goed mee getekend kan worden.
maar voordat we daarmee beginnen moeten we eerst een paar basics te leren.

void setup(){
  size(400, 600);
}

void draw(){
  
}

dit stukje code geeft je een scherm om op te tekenen. 
het bestaat uit drie delen:
- void setup(){    }
  - setup() is een functie die een keer word uitgevoerd aan het begin van de code. in setup() wordt vooral het scherm              aangeroepen. ook wordt hier de frame rate van het scherm ingestelt en file's vanaf je computer geladen . dit wordt dan 1       keer uitgevoerd zodat het niet veel geheugen van je computer kost.
- size(x, y);
   - dit is een de functie die een scherm maakt er grote van x pixels breed en y pixels hoog.
- void draw(){   }
   -deze functie wordt direct opgeroepen na de setup() functie. het is een speciale omgeving waarin we de code die wordt geschreven herhaalt blijft worden.alles binnen de accolade's valt vna de draw() functie valt in deze "loop". de snelheid van het herhalen (de framerate) wordt vastgesteld in setup(). hier teken je bijvoorbeeld je games.

### Vragen
* wat moet je gebruiken als je een scherm van 800 bij 800 pixels wilt?
* wat als je een scherm van 5 cm bij 3 cm wilt? (1 cm = 37.8 pixels)?
* wat als je fullscreen wilt?

nu als je wilt tekenen moeten we leren werken met coordinaten. net zoals op een kaart hebben we x coordinaten en y coordinaten.
het makkelijkst is om je een grafiek dat gebruikt wordt bij wiskunde voor te stellen. 
<hier een voorbeeld van een grid https://www.google.nl/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&ved=0ahUKEwjvupGyyOvLAhVH3A4KHQPnAZIQjhwIBQ&url=http%3A%2F%2Fwww.datemplate.com%2Fpost_blank-x-y-graph_672581%2F&psig=AFQjCNFdSwinHzO1K1cyd8TfB9Iygn2wJw&ust=1459535675438287&cad=rjt>


[voorstel: begin meteen met setup en draw te werken]


## Les ?: Beweging met een variabele

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

 * Wat doet dit programma?
 * Waar wordt deze cirkel getekend? Komt deze cirkel tegen de rand aan?

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

 * Wat doet dit programma?
 * Wat zijn de verschillen?

De eerste nieuwe regel is:

```
float x = 50;
```

In mensentaal is dit: 'Lieve computer, onthoud het getal x. x heeft een beginwaarde van vijftig.'.

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

 * Wat als je `float x = 50;` weghaalt?
 * Wat als je `float x = 50;` verandert naar `float rechts = 50;`?
 * Wat als je `float x = 50;` verandert naar `float x = 100;`?
 * Wat als je `ellipse(x,50,50,50);` weghaalt?
 * Wat als je `ellipse(x,50,50,50);` verandert naar `ellipse(rechts,50,50,50);`?
 * Wat als je `ellipse(x,50,50,50);` verandert naar `ellipse(x,x,50,50);`?
 * Wat als je `ellipse(x,50,50,50);` verandert naar `ellipse(x,x,x,50);`?
 * Wat als je `ellipse(x,50,50,50);` verandert naar `ellipse(x,x,x,x);`?
 * Wat als je `x` vervangt door `rechts`?
 * Wat als je `x` vervangt door `dinosaurus`?

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

## Les ?: Beweging met twee variabelen

[nu met x en y]

## Les ?: Beweging met een variabele en een if statement

[bal beweegt naar rechts. Als uit het scherm, dan wordt de bal naar links geteleporteerd]

## Les ?: Beweging met twee variabelen en twee if statements

[bal beweegt naar rechts onder. Als uit het scherm, dan wordt de bal naar links of naar boven geteleporteerd]

## Les ?: Stuiterbeweging met twee variabelen en twee if statements

[bal beweegt horizontaal naar rechts, stuitert tegen kanten]

## Les ?: Stuiterbeweging met vier variabelen en vier if statements

[bal beweegt schuin naar rechts, stuitert tegen kanten]

## Les ?: Stuiterbeweging met zwaartekracht

[bal valt versnellend omlaag en beweegt naar rechts, stuitert tegen onderkant en zijkanten]

