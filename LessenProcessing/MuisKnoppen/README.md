# Muis les 2: Knoppen

Een muis heeft twee knoppen; de linker- en rechtermuisknop. Deze knoppen kan je in je programma gebruiken om hele vette dingen te doen.

We gaan beginnen met leren hoe je het indrukken en loslaten van een muisknop herkent.

## Indrukken

Wanneer er een muisknop wordt ingedrukt, wordt de functie `mousePressed()` aangeroepen. Deze functie geeft niets terug en heeft dus als datatype `void`, `void` herken je vast van `void setup()` en `void draw()`! Je gebruikt `void mousePressed()` ook op dezelfde manier.

Om de achtergrondkleur te veranderen als een muisknop ingedrukt wordt, kan `void mousePressed()` er zo uit zien:
```
void mousePressed() {
  background(255, 0, 255);
}
```
**Let op!** Een werkend programma heeft altijd een `void setup()` en een `void draw()` nodig, ook als je wel een `void mousePressed()` hebt!

## Opdracht
Maak een programma wat van achtergrondkleur verandert wanneer een muisknop ingedrukt wordt.

## Oplossing
```
void setup() {
  size(256, 256);
  background(0);
}

void draw() {
}

void mousePressed() {
  background(255, 0, 255);
}
```

## Loslaten
Wanneer er een muisknop wordt ingedrukt, wordt de functie `mouseReleased()` aangeroepen. Deze functie geeft niets terug en heeft dus als datatype `void`. `void mouseReleased()` gebruik je op dezelfde manier als `void mousePressed()`.

## Opdracht
Maak een programma wat van achtergrondkleur verandert wanneer een muisknop ingedrukt wordt en een cirkel tekent wanneer een muisknop losgelaten wordt.

## Opdracht
```
void setup() {
  size(256, 256);
  background(0);
}

void draw() {
}

void mousePressed() {
  background(255, 0, 255);
}

void mouseReleased() {
  ellipse(128, 128, 200, 200);
}
```

## Muisknoppen herkennen
Om het verschil tussen de twee muisknoppen te herkennen zijn er in Processing twee constanten en een variable. De constanten zijn `LEFT` en `RIGHT`, de variabele is `mouseButton`. Als de linkermuisknop als laatste is ingedrukt is `mouseButton` gelijk aan `LEFT`, als de rechtermuisknop als laatste is ingedrukt is `mouseButton` gelijk aan `RIGHT`. Met een if-statement kan je dus controleren welke muisknop is ingedrukt, namelijk zo:
```
void mousePressed() {
  if(mouseButton == LEFT) {
    background(255, 0, 255);
  }
}
```

## Eindopdracht
Maak een programma wat van achtergrondkleur verandert wanneer de linkermuisknop ingedrukt wordt en een cirkel tekent wanneer de rechtermuisknop losgelaten wordt.
