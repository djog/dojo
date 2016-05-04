# Processing handleiding

Door Bo, Lucas, Richel

## Les ?: Tekenen
processing is een codeer taal waar goed mee getekend kan worden.
maar voordat we daarmee beginnen moeten we eerst een paar basics leren.

```
void setup()
{
  size(600, 400);
}

void draw() 
{
  
}
```

dit stukje code geeft je een scherm om op te tekenen. 
het bestaat uit drie delen:
* `void setup()`{    }
  * setup() is een functie die een keer word uitgevoerd aan het begin van de code. in setup() wordt vooral het scherm aangeroepen. ook wordt hier de frame rate van het scherm ingestelt en file's vanaf je computer geladen . dit wordt dan 1 keer uitgevoerd zodat het niet veel geheugen van je computer kost.
* `size(x, y)`;
  * dit is een de functie die een scherm maakt er grote can x breed en y hoog.
* `void draw()`{   }
  * dit is een speciale omgeving waarin we de code schrijven die wordt getekent. alles binnen de accolade's valt in draw loop.
  draw()

### Vragen
* wat moet je gebruiken als je een scherm van 800 bij 800 pixels wilt?
* wat als je een scherm van 5 cm bij 3 cm wilt? (1 cm = 37.8 pixels)?
* wat als je fullscreen wilt?

nu als je wilt tekenen moeten we leren werken met coordinaten. net zoals op een kaart hebben we x coordinaten en y coordinaten.
het makkelijkst is om je een ruitjes blad dat gebruikt wordt bij wiskunde voor te stellen. 
![alt text](/boek/Cartesian_coordinates_2D2.png "Figuur 1: coordinate grid")
je scherm heeft pixels die werkt net als het ruitjes blad. elke pixels is een coordinaat op het ruitjesblad.
de x coordinaten vertellen hoeveel je naar rechts en links wil, de y coordinaten hoeveel je naar boven en beneden wil.
de computer werkt alleen net iets anders op de y-as (naar boven en beneden). Als je naar beneden wilt moet je y coordinaat groter worden. zoals in het plaatje te zien is. coordinaten worden altijd geschreven met de x coordinaat eerst en daarna de y coordinaat (x,y). wanneer coordinaten worden door gegeven aan de computer kunnen we tekenen op het scherm.
 ![alt text](/boek/Computer_coordinates_2D.png "Figuur 2: computer coordinate grid")

### Vragen
pak een schrift of blaadje met ruitjes. hierop gaan we coordinaten oefenen.
* teken een computer grid met een x-as van 15 pixels en een y-as van 15 pixels, zet links bovenin de 0 en tel dan bij elke lijn 1 op tot je 15 pixels hebt.
LETOP! een computer telt inplaats van 1 tot 15 van 0 tot tot 14. als je goed kijkt zie dat er dan nog steeds 15 cijfers zijn. 
* zet een stip op coordinaat (0,0), (0,14), (14,0), (14,14), (7,7)).
* zet een stip of coordinaat (7,3)
* zet een stip of coordinaat (5,1)
* zet een stip of coordinaat (3,3)
* zet een stip of coordinaat (7,7)
* zet een stip of coordinaat (11,3)
* zet een stip of coordinaat (9,1)
* verbint nu alle stippen. (als het goed is een hartje)

Er zijn vier simpele functies om mee te tekenen op het computer scherm en ze werken allemaal met x en y coordinaten.
line (lijn),triangle (driehoek),rect (rechthoek),ellipse (cirkel).

`line(x1,y1,x2,y2)`: dit tekent een lijn van punt 1 naar punt 2. de x1 en y1 vertellen waar het eerste punt komt, x2 en y2 waar het tweede punt komt. de computer tekent dan een lijn tussen deze twee punten in.

### Vragen
nu gaan we tekenen op de computer. hiervoor hebben we een stukje code nodig dat eerder is uitgelegd.
```
void setup()
{
  size(600, 400);
}

void draw() 
{
!!!! HIER ALLES DAT GETEKENT MOET WORDEN!!!!
}
```
* teken deze lijnen: `line(200,150,250,100)`,`line(250,100,300,150)`, `line(200,150,300,150)`
* teken een lijn van coordinaat (200,150) naar (200, 250)
* teken een lijn van coordinaat (200,250) naar (300, 250)
* teken een lijn van cordinaat (300,250) naar (300,150)
je hebt nu een huisje getekent.
je code moet er nu zo uit zien.
```
void draw()
{
line(200,150,250,100);
line(250,100,300,150);
line(200,150,300,150);
line(200,150,200,250);
line(200,250,300,250);
line(300,250,300,150);
}
```

* wat gebeurt er als je een lijn tekent van coordinaat (500,200) naar (700,200)
* wat gebeurt er als je een lijn tekent van coordinaat (100,300) naar (100,500)
* wat gebeurt er als je een lijn tekent van coordinaat (-100,100) naar (100,100)
* wat gebeurt er als je een lijn tekent van coordinaat (100,-100) naar (100,100)
* speel met de `line(x1,y1,x2,y2)` functie todat je hem onder de knie hebt.


nu heb je onder de knie hoe je lijnen kunt tekenen, met lijnen kan je natuurlijk alle figuren maken die je wilt, maar er zijn ook al makkelijkere functies gemaakt die je daarbij heel goed kunnen helpen. in de oefening heb je een dak getekend voor een huisje. inplaats van drie line() functies te gebruiken kan je ook een triangle() functie gebruiken. de triangle() functie kan in een keer driehoeken tekenen.
`triangle(x1,y1,x2,y2,x3,y3)`: de triangle() functie heeft 3 coordinaten nodig en verbint deze dan met lijnen. 
 
### Vragen
* teken een driehoek op coordinaten (100,20), (50,50), (150,50)
* teken een paar driehoeken, om te oefenen.
* vervang de 3 line() functies uit de vorige opdracthen met 1 triangle() functie 

om een vierkant of cirkel te tekenen krijg je met twee nieuwe termen te maken, hoogte en breedte. om een vierkant te tekenen geef je de (x,y) coordinaten van de linker bovenhoek van het vierkant. daarna vertel je hoe breed en hoog het vierkant moet worden. 
`rect(x,y,breedte,hoogte)`

### Vragen
* teken een vierkant op coordinaat (500,100) met een hoogte van 100 en een breedte van 50
* teken een vierkant met hoogte 40 en breedte 100
* teken een vierkant met breedte 60 en hoogte 60
* vervang de 3 overgebleven line() functies van het huisje en vervang het met 1 rect() functie
* teken een raampje en een deur in het huisje met de rect()

de ellipse is vergelijkbaar met de rect() fuctie. Een word een coordinaat gegeven met een breedte en een hoogte. bij de ellipse is de coordinaat die gegeven wordt het middelste punt van de cirkel.
`ellipse(x,y,breedte,hoogte)`

### Vragen
* teken een cirkel op coordinaat (100, 300) met breedte 50 en hoogte 50
* wat gebeurte er als je de hoogte verandert maar de breedte niet
* teken een cirkel op coordinaat (100, 300) met breedte 70 en hoogte 30
* teken een cirkel op coordinaat (100, 300) met hoogte 70 en breedte 30
* teken een paar cirkels om te oefenen
* teken een zolderraam in het huisje

nu weet je de basic functies om mee te tekenen in processing. Er zijn een aantal andere functies om de vier vooreen uitgelegde functies te versterken en flexibeler te maken. eerst moeten we wat leren over het RGB kleuren systeem. RGB is een afkorting van RED GREEN BLUE. met deze drie kleuren kan de computer alle mogelijke kleuren die wij kunnen zien maken. de computer heeft voor elke van de drie kleuren (RED/GREEN/BLUE) een waarde van 0 tot 255 nodig. hoe hoger de waarde hoe feller de kleur, op deze site kan je een beetje spelen met RGB. [RGB rekenmachine](http://www.rapidtables.com/web/color/RGB_Color.html)
Er drie functies die werken met het RGB systeem.
* `background(RED, GREEN, BLUE)` 
  * background() wordt in het begin draw() opgeroepen. background staat voor achtergrond en bepaalt dus de kleur van het scherm zelf. 
* `fill(RED, GREEN, BLUE)`
  * fill() wordt gebruikt om je figuur dat net is getekend in te vullen met een kleur. fill() werkt met ellipse(), triangle() en rect(). 
* `stroke(RED, GREEN, BLUE)`
  * stroke() wordt gebruikt om de lijn van het figuur te kleuren. stroke() werkt met ellipse(), triangle(), rect() en line().

* `noFill()`
  * noFill() is het omgekeerde van fill(), het zorgt ervoor dat er het figuur dat getekent is doorzichtig wordt. noFill() werkt met ellipse(), triangle() en rect(). 
* `noStroke()`
  * noStroke() zorgt ervoor dat de lijnen waarmee je figuur wordt getekent verdwijnen. noStroke() werkt met ellipse(), triangle(), rect() en line().
* `strokeWeight(x)`
  * strokeWeight() bepaalt de dikte van de lijnen die worden getekent. als je een figuur wilt met dikke lijnen gebruikt je de strokeWeight().

dit zijn allemaal functies om je tekeningen mooier te maken of in te kleuren. TIP: deze functie schrijf je boven het figuur dat je wil tekenen. als je het erna zet werkt het niet.
```
void draw(){
background(0,0,0)

//dit werkt
fill(0,255,0)
rect(100,100,50,50)

//dit niet
rect(100,100,50,50)
fill(255,0,0)
}
```

### Vragen
* geef de tekening een mooie achtegrond kleur die jezelf hebt uitgezocht met de RGB rekenmachine
* kleur het huisje in
* geef een figuur dikkere lijnen
* maak een figuur doorzichtig
* geef een figuur blauw zonder de zwarte lijnen om het figuur.

nu weet je hoe je kan tekenen met Processing. Dit is het begin om games te maken. als het coördinaten vinden nog lastig gaat blijf oefenen met tekenen. In de volgende hoofdstukken gaan we leren hoe we de tekeningen die we hebben gemaakt kunnen laten bewegen.


[voorstel: begin meteen met setup en draw te werken]

```
void setup() 
{
  size(600,400);
}

void draw() 
{
  ellipse(300,200,50,50);
  rect(250,150,50,50);
  triangle(100,300,300,100,500,300);
  line(100,100,500,300);
}

```
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

## Les ?: Reageer op een toets die wordt ingedrukt

## Les ?: Reageer op een toets die wordt losgelaten

## Les ?: Reageer soepel op meer ingedrukte toetsen

## Les ?: Reageer op de muis cursor

## Les ?: Reageer op het indrukken van de muis knoppen

## Les ?: For loops

## Les ?: Arrays



