# Klassen 1

## Wanneer klassen?

Je bent een game aan het maken.
Je wilt de coordinaten van de vijanden bijhouden.

Dit doe je zo:

```
std::vector<double> xs; //x coordinaten van de vijanden
std::vector<double> ys; //y coordinaten van de vijanden
```

Je spel doet het. Als een vijand dood gaat, gebeurt er dit:

```
const int vijand_index = /* iets */;

//Index moet bestaan
assert(vijand_index >= 0);
assert(vijand_index < static_cast<int>(xs.size()));

//Beide vectoren moeten even groot zijn
assert(xs.size() == ys.size());

//Verplaats de coordinaat van de dode vijand naar achter
std::swap(xs[vijand_index], xs.back());
std::swap(ys[vijand_index], ys.back());

//Pop de laatste coordinaat weg
xs.pop_back();
ys.pop_back();
```

Je ziet dat er veel dingen 2x moeten gebeuren. 
Ga maar na als je 3D gaat programmeren!

## Oplossingen

Je kunt dit probleem op meerdere manieren oplossen:

  1. een `using` statement gebruiken
  2. een eigen klasse gebruiken

### Oplossing #1: een `using` statement gebruiken.

```
using coordinat = std::array<double,2>;

std::vector<coordinat> cs; //coordinaten van de vijanden

const int vijand_index = /* iets */;

//Index moet bestaan
assert(vijand_index >= 0);
assert(vijand_index < static_cast<int>(cs.size()));

//Verplaats de coordinaat van de dode vijand naar achter
std::swap(cs[vijand_index], cs.back());

//Pop de laatste coordinaat weg
cs.pop_back();
```

Het nadeel is hier dat de getallen in `std::array<double,2>` geen naam hebben. 
Het liefst zou je willen dat je ze `x` en `y` zouden heten.
Een klasse maakt het mogelijk om betekenisvolle namen te gebruiken.

## Oplossing #2: een eigen klasse gebruiken

Hier maak je een klasse:

```
class coordinat
{
  public:
  double x;
  double y;
};
```

In deze code:

 * `class`: keyword waarin staat dat de declaratie van een klasse begint
 * `coordinat`: de naam van de klasse. Kan bijna elke naam zijn, bijvoorbeeld `puntje`, `beeldpunt`, `spot`, etc.
 * `public`: vanaf onder het woord `public` is alles toegankelijk voor buiten. Dit wordt later duidelijker als we `private` gaan gebruiken
 * `double x`: een lidvariabele van `coordinat`. Lees dit als 'een coordinaat heeft een x, dat een gebroken getal is'
 * `double y`: een lidvariabele van `coordinat`. Lees dit als 'een coordinaat heeft een y, dat een gebroken getal is'
 * Vergeet de puntkomma niet!

Zo gebruik je je klasse:

```
coordinat c;
c.x = 3.14;
c.y = 123.456;
std::cout << c.x << ", " << c.y << '\n';
```

Voor de rest werkt een klasse als een `int` of `std::string` (ook een klasse!).

