**Als je nog geen GitHub account hebt, doe dan eerst [deze les](../GitHub/README.md)**

#GitHub Pages

GitHub Pages is een service van GitHub waarmee elke gebruiker zijn eigen website kan maken. Deze les gaan we een GitHub Page met homepage maken.

Het verschil met een repository is dat die op `www.github.com/gebruiker` staat, terwijl een GitHub Page op `www.gebruiker.github.io` staat.

Een repository gebruik je om:
* Je code te bewaren
* Je code te delen met de wereld
* Samen aan code te werken

Een GitHub Page gebruik je om:
* Mensen jouw spellen te laten spelen
* De wereld te laten zien wat je kan

##GitHub Page aanmaken

* Open een webbrowser
* Ga naar `www.github.com`

Je komt nu op de GitHub homepage:

![GitHub homepage](GitHubHomepage.png)

* Klik op `Sign in` (NL: `Aanmelden`)

![GitHub aanmelden](GitHubSignIn.png)

* Log in met je GitHub account (Heb je die niet? Doe dan eerst [deze les](GitHub.md)!)

###GitHub Page repository maken

![Maak een GitHub](GitHubCreateNewRepository.png)

* Klik op het plusje bovenin
* Klik op `New repository`
 
![Maak GitHub Page repository](GitHubCreatePage.png)

Vul hier in:

 * `Repository name`: de naam van je GitHub Page moet zijn `gebruiker.github.io`, dus bijvoorbeeld `thijsvb.github.io`
 * `Description`: omschrijving van je GitHub Page, bijvoorbeeld `Mijn geweldige website!`
 * Kies `Public`
 * Vink aan: `Initialize this repository with a README`
 * Kies bij `Add a license`: `GNU General Public License v3.0`

Je hebt nu een GitHub Page!

###HTML

Als je nu in een browser naar je GitHub Page gaat, is er nog niks. Je moet een homepage maken, en om dat te doen moet je HTML-bestanden kunnen schrijven.

HTML staat voor HyperText Markup Language en is een opmaaktaal. Met een opmaaktaal kun je aangeven hoe tekst eruit moet komen te zien, een andere veel gebruikte opmaaktaal is Markdown (deze pagina is in Markdown geschreven).

Om tekstopmaak te doen in een programma zoals *Microsoft Word* heb je allerlei knoppen; dikgedrukte tekst, schuine tekst, plaatje, etc.
In HTML heb je daar *tags* voor; `<b></b>`, `<i></i>`, `<img></img>`.

Een stukje HTML met een tag gaat altijd op deze manier:

`<tag>(n)iets</tag>`

* `<tag>` opent de tag, in plaats van `tag` staat hier het soort tag wat je wil gebruiken (bijvoorbeeld `h1` of `p`)
* `(n)iets` kan een heleboel zijn, zoals teks, nog meer tags, of helemaal niks
* `</tag>` sluit de tag, hier moet in plaats van `tag` het zelfde als in de openende tag staan

Een HTML-bestand begint altijd met `<!doctype html>`, dit verteld een programma wat het bestand opent dat het in HTML geschreven is.
De rest van het bestand staat in één `html` tag, die weer is opgedeeld in één `head` tag en één `body` tag.

In de `head` tag staat informatie *over* de webpagina, in de `body` tag staat wat er *op* de webpagina komt.

Een stukje HTML kan er bijvoorbeeld zo uit zien:
```
<body>
  <h1>Hello World</h1>
  <p>This is <b>my</b> website!</p>
</body>
```

###De homepage maken

Elke website is een map met bestanden, alleen staat de map niet op jouw computer. Een repository is ook een map, en de GitHub Page repository is ook jouw website. De homepage van elke website is het bestand `index.html`, die gaan we dus maken!

* Ga naar je GitHub Page repository

![De GitHub Page repository](GitHubCreateNewFile.png)

* Klik op `New file`

![Maak index.html](GitHubCreateIndex.png)

* Noem het nieuwe bestand `index.html`
* Begin het bestand met `<!doctype html>`
* Open op een nieuwe regel een `html` tag met `<html>`
* Open op een nieuwe regel een `head` tag met `<head>`
* Open op een nieuwe regel een `title` tag met `<title>`
* Typ hier de titel van je webpagina, bijvoorbeeld `Hello World`
* Sluit de `title` tag met `</title>`
* Sluit op een nieuwe regel de `head` tag met `</head>`
* Open op een nieuwe regel een `body` tag met `<body>`
* Open op een nieuwe regel een `h1` tag met `<h1>`
* Typ hier een kop voor je webpagina, bijvoorbeeld `Hallo`
* Sluit de `h1` tag met `</h1>`
* Open op een nieuwe regel een `p` tag met `<p>`
* Type hier een stukje tekst voor je webpagina, bijvoorbeeld `Welkom op mijn website`
* Sluit de `p` tag met `</p>`
* Sluit op een nieuwe regel de `body` tag met `</body>`
* Sluit op een nieuwe regel de `html` tag met `</html>`

Als het goed is ziet je bestand er nu zo uit:

![index.html](GitHubCreateIndex1.png)

* Klik onderaan op de groene `Commit new file` knop
* Ga in je browser naar je GitHub Page en bewonder je eigen website!
* Ga terug naar je GitHub Page repository
* Klik bij `index.html` op het podloodje om het bestand te bewerken
* Maak een paar veranderingen en klik op `Commit changes`
* Bewonder nu je eigen gepersonaliseerde website en bekijk ook eens die van je klasgenoten!
