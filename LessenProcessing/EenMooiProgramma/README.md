# Een Mooi Programma

Processing is een programmeertaal ontwikkeld voor kunstenaars
en erg geschikt om games en mooie dingen mee te maken.

In deze les gaan we leren 

 * hoe we Processing opstarten
 * hoe je code naar Processing kopieert
 * hoe je het programma start

Zo ziet het programma eruit:

![EenMooiProgramma](EenMooiProgramma.png)

\pagebreak

## Een mooi programma: intro

Processing begint met een leeg programma zonder code:

![Processing zonder code](Processing.png)

\pagebreak

Dit is de programmeercode die we gaan gebruiken:

```c++
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

![Processing met code](ProcessingMetCode.png)

\pagebreak

## Een mooi programma: eindopdracht

 * Start Processing
 * Run deze code, door op de 'Run' knop te klikken

![De Run knop](ProcessingRun.png)

![Sunglasses](EmojiSunglasses.png) | Gelukt? Laat dit zien aan een volwassene voor een sticker!
:-------------:|:----------------------------------------: 

## Links

 * Een Mooi Programma: [YouTube](https://www.youtube.com/watch?v=TW6fIxI-Pl4), [mp4](http://www.richelbilderbeek/een_mooi_programma.mp4)
