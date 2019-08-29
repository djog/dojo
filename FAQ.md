# Veelgestelde vragen

## Leeftijd

### Ik ben jonger dan acht jaar. Ben ik welkom?

Goed dat je dit leest, want acht jaar is enkel een richtlijn!
Die richtlijn is er niet voor niks: programmeren is een 
moeilijk (maar keigave!) hobby. 

Maar ben je jonger dan acht en denk je dat je al op les 
kan (bijvoorbeeld omdat je al kunt programmeren),
dan ben je hartstikke welkom om eens een les te proberen!

### Ik ben tussen 8 en 12 jaar oud. Ben ik welkom na 20:15?

In principe: nee, omdat dan de oudere tieners begeleid worden.

Wil je echter nuttig werk doen, zonder de oudere tieners te storen,
dan ben je welkom.

### Ik ben tussen 12 en 18 jaar oud. Ben ik welkom voor 20:00?

Jazeker! 

Begrijp wel: voor 20:00 gaan wel de jongere tieners voor.
Ook wordt van je verwacht, dat je de jongere tieners niet stoort
en iets nuttigs komt doen.

### Ik ben ouder dan achttien jaar. Ben ik welkom?

Goed dat je dit leest, want achttien jaar is enkel een richtlijn!
Die richtlijn is er niet voor niks: De Jonge Onderzoekers
is er voor minderjarigen.

Maar het is erg fijn volwassenen in de cursus te hebben: de kids
zullen je opleiden (hier leren ze van!) en profiteren van de rust
die volwassenen meestal met zich meenemen. En veel volwassenen 
vinden het juist leuk om les te krijgen van minderjarigen.

Kortom: kom eens langs!

## Gedrag

### Mag ik games maken?

Jazeker! 
Sterker nog, het programmeren van games 
is een van de leukste manieren om programmeren te leren.

### Mag ik gamen?

Nee. De Dojo is een cursus avond, waarbij leren voorop staat. 
Gamen draagt niet bij aan het leren programmeren.
Ook niet voor de cursus, ook niet in de pauze en ook niet na de pauze.
Heb je *zelf* een spel geprogrammeerd, 
dan krijg je de ruimte om het spel te laten zien en te laten testen.

### Waar ga ik zitten?

Dit is afhankelijk van wat je wilt doen:

  * Processing: grote tafel in kantine bij het bord
  * Team Red Cobra: tafel bij whiteboard
  * Team Octane: aquarium

Je begint met Processing, later kun je doorstromen naar de programmeerteams.

### Wie stel ik een vraag?

  * Zit er een leerling naast je? Zo ja, dan hij/zij.
  * Zit er een leerling aan je tafel? Zo ja, dan hij/zij
  * Als er niemand is of niemand is die het weet, vraag het dan een volwassene

### Wat als er een nieuwe leerling binnenkomt?

 * De gastheer/gastvrouw vangt hem/haar op:
    * Jas ophangen
    * Naam op de lijst zetten
    * Koppelen aan een leerling die hem/haar op wilt starten: ze gaan dan aan de grote tafel zitten

## Lessen en lesmateriaal

### Waar staan de lessen?

 * De lessen Processing staan op de website van [Processing voor jonge tieners](https://github.com/richelbilderbeek/processing_voor_jonge_tieners)
 * De lessen C++ staan [in de map LessenCpp](LessenCpp/README.md).

## Ik wil Processing doen, kan dat?

Ja, dat kan altijd! [Download Processing hier](https://processing.org/download/).

De lessen Processing staan op de website [Processing voor jonge tieners](https://github.com/richelbilderbeek/processing_voor_jonge_tieners).

## Ik wil C++ doen, kan dat?

Ja, dat kan! 

De programmeerteams 'Team Red Cobra' en 'Team Octane' werken beiden met C++.

Om in die teams te komen, moet je wel wat programmeerervaring hebben.

Heb je die niet, dan begin je met Processing.

## Ik wil Arduino doen, kan dat?

Jazeker, maar we geven op de donderdag geen les in Arduino.

Je zou de [Arduino cursus van de vrijdagavond](https://github.com/richelbilderbeek/ArduinoCourse)
kunnen volgen :-)

## Ik wil iets met natuur en techniek, kan dat?

Jazeker, maar we geven op de donderdag geen les in dieren/planten/biologie.

Je zou de [natuur en techniekcursus van de vrijdagavond](https://github.com/dpstruwe/N-T-cursus-DJOG)
kunnen volgen :-)

## Mensen

### Welke vrijwilligers zijn er?

 * Erik
 * Richel

### Wie is Erik?

Erik is een volwassen vrijwilliger.
Hij speelt graag het spel Diablo.

### Wie is [Richel](https://github.com/richelbilderbeek)?

![Richel](Images/Richel.png)

Richel is een volwassen vrijwilliger en coordineert de Dojo.

Richel programmeert sinds zijn achtste. 
Hij is de meest ervaren en belezen programmeur, vooral in C++.
Richel is vooral geinteresseerd in onderwijs en heeft de 
lerarenopleiding aan de universiteit afgerond en heeft twee jaar als
docent aan een VMBO gewerkt.

Zijn werk is te zien op [zijn website met meer dan 3900 pagina's](http://richelbilderbeek.nl) en [meer dan 900 GitHub repositories](https://github.com/richelbilderbeek?tab=repositories).

## Stichting

### Wat is de missie van de cursus?

De missie van De Jonge Onderzoekers is: '[Het] exploiteren van een activiteitencentrum met als doel kinderen op een uitdagende en creatieve manier met techniek en wetenschap in aanraking te laten komen'. De missie van de DOJO heeft veel overlap hiermee. We vinden het belangrijk dat de kinderen iets leren, uitgedaagd worden en hun creativiteit gebruiken om iets te maken. Om dit te bereiken laten we de leerlingen games maken en presenteren, maar het spelen van niet-zelfgemaakte games vinden we niet goed.


## Technische

### Ik wil niet dat Processing in `Update` scherm laat zien

![Update scherm](Images/Update.png)

In de folder van Processing, bijvoorbeeld `processing-3.2.3`, doe:

```
sed -i "s/update.check = true/update.check = false/" lib/defaults.txt
```

### `Unsupported major.minor version 51.0`. Ik heb Debian

Je hebt Java 8 nodig.

```
su
echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu precise main" | tee -a /etc/apt/sources.list
echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu precise main" | tee -a /etc/apt/sources.list
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886
apt-get update
apt-get install oracle-java8-installer
```


### `Could not find fonts. Please reinstall processing`. Ik heb Debian

Processing kan de fonts niet vinden. Kopieer ze bij de folder van Java.

```
cd ~/Programs/processing-3.0.1/java/lib/fonts
su
cp *.* /usr/lib/jvm/java-8-oracle/jre/lib/fonts
```

### Could not start `java`. Ik heb Debian

Doe

```
uname -a
```

Dan kun je zien dat je de 64 bit versie moet downloaden :-)
