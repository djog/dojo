# Veelgestelde vragen

## Mag ik games maken?

Jazeker! Sterker nog, het programmeren van games is een van de leukste manieren om programmeren te leren.

## Mag ik gamen?

Nee. De Dojo is een cursus avond, waarbij leren voorop staat. Gamen draagt niet bij aan het leren programmeren.
Ook niet voor de cursus, ook niet in de pauze en ook niet na de pauze.
Heb je *zelf* een spel geprogrammeerd, dan krijg je de ruimte om het spel te laten zien en te laten testen.

## Ik wil Processing doen, kan dat?

Ja, dat kan altijd! [Download Processing hier](https://processing.org/download/).

De lessen staan [hier](Lessen/README.md).

## Ik wil C++ doen, kan dat?

Ja, dat kan! C++ is wat moeilijker dan Processing, daarom kun je er niet zomaar mee beginnen. Om ermee te mogen beginnen moet je (1) zelf een C++ programmeeromgeving installeren (2) een voorbeeld SFML of Urho3D programma kunnen laten runnen (3) dit allemaal zelfstanding Googlen. Natuurlijk helpen we je bij je vragen, maar het leeuwendeel zul je zelf moeten doen.

## Welke vrijwilligers zijn er?

### [Frode](https://github.com/Modanung)

Frode geeft les in Urho3D en het maken van 2D of 3D graphics en het maken van geluid. Zijn werk is te zien
op [de LucKey productions website](http://www.luckeyproductions.nl).

### [Jan](https://github.com/janderkkotlarski)

[Jan geeft les in SFML](https://github.com/janderkkotlarski/Cplusplus-with-SFML-course) en is ook handig
met GameMaker.

### [Lucas](https://github.com/LJK1991)

Lucas is handig in Python, C++ en Processing. Hij helpt bij de Processing klas.

### [Peter](https://github.com/dpstruwe)

Peter is de BHV-er en helpt de cursus mee achter de schermen. Hij weet veel van electronica.

### Petra

Lucas is handig met Arduino (C++) en Processing. Zij helpt vooral bij de Processing klas.

### [Richel](https://github.com/richelbilderbeek)

![Richel](Images/Richel.png)

Richel programmeert sinds zijn achtste. Hij is de meest ervaren en belezen programmeur, vooral in C++.
Richel is vooral geinteresseerd in onderwijs en heeft de lerarenopleiding aan de universiteit afgerond.
Hij coordineert de Dojo en zal gastlessen geven bij elk van de andere docenten. 

Zijn werk is te zien op [zijn website met meer dan 3900 pagina's](http://richelbilderbeek.nl) en [meer dan 300 GitHub repositories](https://github.com/richelbilderbeek?tab=repositories).

### [Thijs](https://github.com/thijsvb)

Thijs geeft les in Processing. Ook is Thijs handig met Arduino, te zien aan [de GitHub van de Arduino cursus](https://github.com/richelbilderbeek/ArduinoCourse).

# Wat is de missie van de cursus?

De missie van De Jonge Onderzoekers is: '[Het] exploiteren van een activiteitencentrum met als doel kinderen op een uitdagende en creatieve manier met techniek en wetenschap in aanraking te laten komen'. De missie van de DOJO heeft veel overlap hiermee. We vinden het belangrijk dat de kinderen iets leren, uitgedaagd worden en hun creativiteit gebruiken om iets te maken. Om dit te bereiken laten we de leerlingen games maken en presenteren, maar het spelen van niet-zelfgemaakte games vinden we niet goed.

## `Unsupported major.minor version 51.0`. Ik heb Debian

Je hebt Java 8 nodig.

```
su
echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu precise main" | tee -a /etc/apt/sources.list
echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu precise main" | tee -a /etc/apt/sources.list
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886
apt-get update
apt-get install oracle-java8-installer
```


## `Could not find fonts. Please reinstall processing`. Ik heb Debian

Processing kan de fonts niet vinden. Kopieer ze bij de folder van Java.

```
cd ~/Programs/processing-3.0.1/java/lib/fonts
su
cp *.* /usr/lib/jvm/java-8-oracle/jre/lib/fonts
```

## Could not start `java`. Ik heb Debian

Doe

```
uname -a
```

Dan kun je zien dat je de 64 bit versie moet downloaden :-)
