# `tcpdump`

Met `tcpdump` kun je je internetverkeer bekijken.

## Opdracht 1 

Vind uit, hoe je van de command-line, de tekst 'Hallo' zien.

## Oplossing 1

```
echo "Hallo"
```

## Opdracht 2

Vind uit, hoe je van de command-line, de tekst 'Hallo' naar een bestand 
gemaamd `data.txt` schrijft.

## Oplossing 2

```
echo "Hallo" > data.txt
```

## Opdracht 3

Vind uit, hoe je van de command-line, de tekst in bestand `data.txt` laat zien.

## Oplossing 3

```
cat data.txt
```

## Opdracht 4

Vind uit, hoe je met `egrep` kunt zoeken op de tekst in jouw bestand `data.txt`. 
Zoek op `Hallo` en `Doei`. Output moet zijn regels met de zoektermen:

```
> [zoek op Hallo in bestand data.txt]
Hallo
> [zoek op Doei in bestand data.txt]
>
```

## Oplossing 4

```
egrep "Hallo" data.txt
egrep "Doei" data.txt
```

## Opdracht 5

Start `tcpdump` als `root` en ga naar de website [https://slashdot.org/](https://slashdot.org/). 

![Sunglasses](EmojiSunglasses.png) | Tip: gebruik `su` of `sudo` om als `root` iets te starten
:-------------:|:----------------------------------------: 

![Bowtie](EmojiBowtie.png) | Installeer `tcpdump` als deze niet geinstalleerd is. Ook hier moet je `root` voor zijn
:-------------:|:----------------------------------------: 

Wat zie je?

## Oplossing 5

Je ziet een heleboel tekst verschijnen.

## Eindopracht

 1. Laat `tcpdump` zijn output naar `data.txt` schrijven. 
 2. Laat `egrep` zoeken op `.org.` en de output naar `org.txt` schrijven.
 3. Laat `egrep` zoeken op `.com.` en de output naar `com.txt` schrijven.

![Sunglasses](EmojiSunglasses.png) | Zoek op een punt voor *en* na de extensies `org` en `com`
:-------------:|:----------------------------------------: 

 4. Kijk in `com.txt` Welk bedrijf host de website van slashdot?
 5. Mail beide bestanden naar een cursusdocent

