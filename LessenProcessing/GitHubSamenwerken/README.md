# git, GitHub samenwerken

Samenwerken is lastig, zeker met programmeren: 
de ander (of jij) maakt misschien dingen stuk en/of kwijt.

In deze les gaan we leren samenwerken met git en GitHub.
Dit doen we (nog) niet met code, maar met een Nederlandse tekst.

## git, GitHub

git houdt de geschiedenis van de tekst/code bij.
Je kunt ook terug in de geschiedenis gaan.
Als je per ongeluk een bestand hebt gewist, kun je deze weer terughalen.

## Sprookje

In deze les gaan we samen een sprookje maken. Hier staat de begintekst: 

```
# Sprookje

## 1

Heel erg lang geleden ...

## 2

## 3

## 4

## 5

## 6

## 7

... en ze leefden nog lang en gelukkig.
```

Het sprookje is nog erg saai.
Samen kunnen we er een leuk verhaal van maken.

## De GitHub op je computer zetten

Om het sprookje op je computer te zetten,
start je (onder Windows) Git Bash, onder Linux een terminal.

Type dan het volgende:

```
git clone https://github.com/richelbilderbeek/Sprookje
```

Er is nu een map gemaakt, genaamd `Sprookje` met daarin het bestand `README.md`.
`README.md` bevat de tekst van het sprookje en kun je openen in Kladblok/Wordpad/leafpad of een andere teksteditor.

## Samenwerken

Verander de tekst in `README.md` en save.

Doe dan in Git Bash:

```
git pull
git add --all :/
git commit -m "Verbetering"
git push
```

 * `git pull`: update de GitHub
 * `git add --all :/`: bekijk alles wat veranderd is
 * `git commit -m "Verbetering"`: benoem de veranderingen `Verbetering`
 * `git push`: publiceer je veranderingen

## Merge conflicts

Soms krijg je 'Merge conflicts'. Dit gebeurt als `git` niet weet, waar welke veranderingen horen.

Stel, je hebt dit:

```
## 1

## 2
```

Nu maakt Jantje er dit van:

```
## 1
Er woonde een gevaarlijke draak in de berg ten oosten van het dorpje.

## 2
```

En maakt Truus er tegelijkertijd dit van:

```
## 1
De prinses was op zoek naar de knapste ridder.

## 2
```

`git` kan dit niet samenvoegen, omdat de volgorde tussen de zinnen onduidelijk is.

Degene die het merge conflict krijgt, krijgt een `README.md` zoals dit:

```
## 1
<<<<<<<<<<<<<HEAD: 372546042986273465283736726872
Er woonde een gevaarlijke draak in de berg ten oosten van het dorpje.
=================
De prinses was op zoek naar de knapste ridder.
TAIL>>>>>>>>>>>>>: 623483754623592736429736239874

## 2
```

De persoon zal dan zelf de zinnen moeten samenvoegen:

```
## 1

Er woonde een gevaarlijke draak in de berg ten oosten van het dorpje.
Ten westen van het dorpje was een kasteel met een prinses.
De prinses was op zoek naar de knapste ridder.

## 2
```

Dan weer:

```
git pull
git add --all :/
git commit -m "Verbetering"
git push
```
