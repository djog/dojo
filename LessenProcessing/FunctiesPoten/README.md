# Functies les 3: Poten

**Als je nog niet weet wat functies zijn, doe dan eerst [deze les](../FunctiesTekening/README.md)**

**Als je nog niet weet hoe functies met argumenten werken, doe dan eerst [deze les](../FunctiesSchaapkleur/README.md)**

In deze les gaan we kijken naar functies met een return type. Dat doen we door poten van een aantal schapen te tellen.

We beginnen met deze code:
```
int schapen;

void setup(){
  size(256, 256);
  println("Potenberekenaar!");
  background(25, 160, 25);
  
  schapen = 2;
  println("Voor " + schapen + " schapen, zijn er " + schapen * 4 + " poten!");
  schapen = 3;
  println("Voor " + schapen + " schapen, zijn er " + schapen * 4 + " poten!");
  schapen = 5;
  println("Voor " + schapen + " schapen, zijn er " + schapen * 4 + " poten!");

}

void draw(){
  
}
```

Deze code print dit naar de console:
```
Potenberekenaar!
Voor 2 schapen, zijn er 8 poten!
Voor 3 schapen, zijn er 12 poten!
Voor 5 schapen, zijn er 20 poten!
```

Er staat elke keer `schapen * 4`, omdat elk schaap 4 poten heeft. Maar dat staat niet heel duidelijk in de code.

Het zou een stuk leesbaarder zijn als er `aantalPoten(schapen)` stond. En dat kan! 

Maar dan moeten we wel eerst de `aantalPoten` functie maken, die het aantal schapen ontvangt en het aantal poten teruggeeft.

Als we een functie willen maken die iets teruggeeft moeten we in plaats van `void` het return type gebruiken. 
In dit geval is dat `int`, omdat het aantal poten altijd een heel getal is.

De functie wordt dan:
```
int aantalPoten(int aantalSchapen){
  return aantalSchapen * 4;
}
```

In de regel `return aantalSchapen * 4;` geven we `aantalSchapen * 4` terug. `return` betekent dus `geef terug`!

###Opdrachten
* Kopieër de code van het programma aan het begin en pas het aan zodat het de `aantalPoten` functie gebruikt wordt
* Bedenk een manier om iets op het scherm te tekenen bij dit programma
* Maak een functie die het aantal oren teruggeeft in plaats van het aantal poten
* Maak een functie die het aantal schapen teruggeeft als je er het aantal poten in stopt

