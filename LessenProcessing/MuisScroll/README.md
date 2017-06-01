# Muis les 3: Scrollen

Een muis heeft tussen de twee knoppen meestal een scrollwiel (bij een mousepad kan je scrollen door met twee vingers tegelijk te vegen).

In deze les ga je leren hoe je het scrollwiel kan gebruiken in Processing.

## Scrollen

Eerst gaan we herkennen wanneer er gescrolld wordt.

Wanneer er een muisknop wordt ingedrukt, wordt de functie `mouseWheel()` aangeroepen. Deze functie geeft niets terug en heeft dus als datatype `void`.

Om de achtergrondkleur te veranderen als er gescrolld wordt, kan `void mouseWheel()` er zo uit zien:
```
void mouseWheel() {
  background(0, 127, 0);
}
```

## Opdracht
Maak een programma wat van achtergrondkleur verandert wanneer er gescrolld wordt.

## Oplossing
```
void setup() {
  size(256, 256);
  background(0);
}

void draw() {
}

void mouseWheel() {
  background(255, 0, 255);
}
```


## Richting

Scrollen gebeurt altijd in één van twee richtingen: omhoog of omlaag. Deze richting bewaart Processing in een `MouseEvent`, dat is een data type van Processing waar allemaal informatie over gebeurtenissen met de muis in staan.

Als het kan zal Processing `void mouseWheel()` aanroepen met een `MouseEvent` als argument. Om die te gebruiken moet `void mouseWheel()` er dus zo uit zien:
```
void mouseWheel(MouseEvent gebeurtenis) {
}
```
In dit geval heet de `MouseEvent` "gebeurtenis".

In een `MouseEvent` staat heel veel informatie, maar de richting kan je krijgen met de functie `getCount()`.
Om te kijken wat voor getal hier uit komt kunnen we het printen in de console. Dan ziet `void mouseWheel()` er zo uit:
```
void mouseWheel(MouseEvent gebeurtenis) {
  float richting = gebeurtenis.getCount();
  println(richting);
}
```
Het getal wat je uit `getCount()` krijgt zal per computer verschillen. Bij sommige computers wordt ook bepaald door de snelheid waarmee je scrollt, maar altijd zal het afhangen van de richting. Bij één richting krijg je een positief getal, bij de andere een negatief getal (welke richting welk teken geeft verschilt ook weer per computer).

## Eindopdracht
Maak een programma wat een andere achtergrondkleur krijgt voor elke richting waarin je scrollt.
