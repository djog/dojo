# `fullScreen`

`fullScreen` is een functie waarmee je het venster van je programma net zo groot maakt als het beeldscherm van je computer.

Een normaal programma kan er misschien zo uit zien:
```
void setup() {
  size(200, 200);
  rect(100, 100, 50, 25);
}

void draw() {
}
```
Dit programma tekent een rechthoek van met de linkerbovenhoek in het midden van het scherm. De breedte van de rechthoek is een kwart van de breedte van het venster en de hoogte van de rechthoek is een achtste van de hoogte van het venster.

Stel dat we dit meesterwerk op het volledige beeldscherm willen laten zien, dan kunnen we `fullScreen()` gebruiken. `size()` is dan niet meer nodig. Dat ziet er zo uit:
```
void setup() {
  fullScreen();
  rect(100, 100, 50, 25);
}

void draw() {
}
```
Maar nu is de rechthoek nog steeds op de coördinaten `(100, 100)` terwijl dat niet het midden van het scherm is. Als we dezelfde relatieve plaats willen houden kunnen we `width` en `height` gebruiken. Het wordt dan:
```
void setup() {
  fullScreen();
  rect(width/2, height/2, 50, 25);
}

void draw() {
}
```
# Eindopdracht

Maak de breedte van de rechthoek nu altijd een kwart van de breedte van je venster, ook als je `fullScreen()` gebruikt.
