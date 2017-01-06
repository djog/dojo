# Line

Zonder lijnen kun je bijna geen games maken.
Een van de allereerste successgames, Asteroids,
bestond vooral uit lijnen:

![Asteroids](Asteroids.png)

Je kunt een lijn tekenen met een boel puntjes,
maar de `line` functie werkt gemakkelijker.

In deze les gaan we leren 

 * hoe je lijnen tekent

Zo gaat het eruit zien:

![Line](Line.png)

Kun je nog geen puntjes tekenen? Ga dan 
[naar de les waarin je puntjes leert tekenen](../Point/README.md)

## Lijnen

Een lijn bestaat uit pixels.
Om een lijn te tekenen, 
moet je een beginpixel en eindpixel kiezen.
Processing tekent dan zelf de pixels ertussenin.

Om in Processing een lijn te tekenen, gebruik je de functie `line`.
De functie `line` heeft vier getallen nodig.
Deze vier getallen zijn twee coordinaten achter elkaar.
De eerste twee getallen zijn de coordinaat van het eene eind van de lijn.
De laatste twee getallen zijn de coordinaat van het ander eind van de lijn.

Hier zie je een lijn die gaat van coordinaat 
(1,2) naar (3,2):

![Lijn 1](Lijn1.png)

In Processing teken je deze lijn met:

```
line(1,2,3,2);
```

De volgorde van de twee coordinaten maakt niet uit.

Lijnen kunnen ook schuin gaan.

Hier zie je een lijn die gaat van coordinaat (2,4) naar (1,1):

![Lijn 2](Lijn2.png)

In Processing teken je deze lijn met:

```
line(2,4,1,1);
```

## Vragen

![Lijn 3](Lijn3.png)

 * 1. Hierboven staat een lijn. Wat zijn de begin- en eindcoordinaat van die lijn?

![Lijn 4](Lijn4.png)

 * 2. Hierboven staat een lijn. Wat zijn de begin- en eindcoordinaat van die lijn?

![Lijn 5](Lijn5.png)

 * 3. Hierboven staat een lijn. Wat zijn de begin- en eindcoordinaat van die lijn?
 * 4. Een lijn gaat van coordinaat (0,0) naar (10,0). In welke richting gaat de lijn? Wat is het Processing commando?
 * 5. Een lijn gaat van coordinaat (0,0) naar (0,10). In welke richting gaat de lijn? Wat is het Processing commando?
 * 6. Een lijn gaat van coordinaat (0,0) naar (10,10). In welke richting gaat de lijn? Wat is het Processing commando?
 * 7. Een lijn gaat van coordinaat (30,20) naar (20,20). In welke richting gaat de lijn? Wat is het Processing commando?
 * 8. Een lijn gaat van coordinaat (10,20) 20 pixels naar rechts. Welke coordinaat heeft het eindpunt? Wat is het Processing commando?
 * 9. Een lijn gaat van coordinaat (10,30) 10 pixels naar rechtsomhoog. Welke coordinaat heeft het eindpunt? Wat is het Processing commando?

## Oplossing

 * 1. (0,0) en (0,3)
 * 2. (3,1) en (3,4)
 * 3. (2,1) en (0,3)
 * 4. Van links naar rechts/horizontaal. `line(0,0,10,0)`
 * 5. Van onder naar boven/verticaal. `line(0,0,0,10)`
 * 6. Schuin/diagonaal. `line(0,0,0,10)`
 * 7. Van rechts naar links/horizontaal. `line(30,20,20,20)`
 * 8. (30,20). `line(10,20,30,20)`
 * 9. (20,20). `line(10,30,20,20)`

## Eindopdracht
 
![Line](Line.png)

Hierboven staat een tekening. 
Maak deze tekening zo goed mogelijk na in Processing.


