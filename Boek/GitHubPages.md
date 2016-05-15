**Als je nog geen GitHub account hebt, doe dan eerst [deze les](GitHub.md)**

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

Een stukje HTML kan er bijvoorbeeld zo uit zien:
```
<body>
  <h1>Hello World</h1>
  <p>This is <b>my</b> website!</p>
</body>
```

Een stukje HTML met een tag gaat altijd op deze manier:

`<tag>(n)iets</tag>`

* `<tag>` opent de tag, in plaats van `tag` staat hier het soort tag wat je wil gebruiken (bijvoorbeeld `h1` of `p`)
* `(n)iets` kan een heleboel zijn, zoals teks, nog meer tags, of helemaal niks
* `</tag>` sluit de tag, hier moet in plaats van `tag` het zelfde als in de openende tag staan

