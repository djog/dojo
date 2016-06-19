# Een Mooi Programma

Processing is een programmeertaal ontwikkeld voor kunstenaars
en erg geschikt om games en mooie dingen mee te maken.

In deze les gaan we leren 

 * hoe we Processing opstarten
 * hoe je code naar Processing kopieert
 * hoe je het programma start

Zo ziet het programma eruit:

![EenMooiProgramma](EenMooiProgramma.png)

## Processing opstarten

Hoe je Processing opstart, hangt af van het besturingssysteem

Hieronder staat uitgelegd:

 * Processing opstarten in Windows
 * Processing opstarten in Linux

### Processing opstarten in Windows

In Windows staat er na installatie een icoontje op je Bureaublad.

Dubbelklik hierop.

### Processing opstarten in Linux

Start een Terminal. Dit kan soms met `Win+T`, `CTRL+ALT+T`, of deze te vinden in de menuutjes, of te zoeken op het woord `Terminal`

![Een terminal](Images/Terminal.png)

Ga naar de folder waar Processing in staat. Hiervoor is het command `cd`. `cd` is een afkorting van 'Change Directory'. "Change Directory' is Engels voor 'Verander van folder'.

Zo ga je naar de folder waar Processing instaat:

```
cd Programs/Processing-3.1.1
```

Dit hoef je niet zo te typen! Een terminal kan je woorden aanvullen als je op Tab drukt. Vaak is het volgende typen voldoende:

```
cd Progr[TAB]/Pr[TAB]
```

Dit werkt ook als een andere versie van Processing op de computer staat :-)

Nu je in de juiste folder bent, start Processing:

```
./processing
```

De `./` betekent 'Start hier'

Ook hier is Tab nuttig:

```
./p[TAB]
```

Je mag de terminal nu sluiten.

## Opdrachten
 
 * Start Processing

![Processing zonder code](Processing.png)

## Code kopieeren

Dit is de programmeercode die je nodig hebt:

```
void setup()
{
  size(256,256);  
}

void draw() 
{
  fill(mouseX, mouseY, mouseX + mouseY);
  ellipse(mouseX, mouseY, 50, 50);  
  fill(mouseY, mouseX, 255);
  ellipse(mouseY, mouseX, 50, 50);  
}
```

Wat de code precies doet, leggen we later uit.
Voor nu is het genoeg te weten dat het iets moois doet. 

 * Kopieer deze code naar Processing

![Processing met code](ProcessingMetCode.png)

## Programma uitvoeren

 * Klik op de 'Run' knop

![De Run knop](ProcessingRun.png)

Als het goed is, zie je nu het programma!