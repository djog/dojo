# Arrays2

We gaan honderd rookdeeltjes nadoen op de computer!

![Honderd rookdeeltjes](Arrays2_honderd_rookdeeltjes.png)

## Opdracht 1

Run deze code:

```c++
float x1 = 160;
float y1 = 100;

void setup() 
{
  size(320, 200);
}

void draw()
{
  x1 += random(-1,1);
  y1 += random(-1,1);
  ellipse(x1, y1, 10, 10);
}
```

## Oplossing 1

![Een rookdeeltje](Arrays2_een_rookdeeltje.png)

Ha, een rookdeeltje.


## Opdracht 2

![Twee rookdeeltjes](Arrays2_twee_rookdeeltjes.png)

Maak een tweede rookdeeltje. Maak h

## Oplossing 2

```c++
float x1 = 160;
float y1 = 100;
float x2 = 160;
float y2 = 100;

void setup() 
{
  size(320, 200);
}

void draw()
{
  x1 += random(-1,1);
  y1 += random(-1,1);
  ellipse(x1, y1, 10, 10);
  x2 += random(-1,1);
  y2 += random(-1,1);
  ellipse(x2, y2, 10, 10);
}
```

## Opdracht 3

Gebruik nu een array, zonder for loop.

![Computer](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-------------:|:----------------------------------------: 
`float[] xs`|'Lieve computer, onthoud keiveel gebroken getallen met de naam `xs`'

![Computer](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-------------:|:----------------------------------------: 
`xs = new float[2]`|'Lieve computer, maak `xs` 2 laatjes groot`'

![Bowtie](EmojiBowtie.png) | Tip: gebruik `xs[0]` inplaats van `x1` en `xs[1]` inplaats van `x2` 
:-------------:|:----------------------------------------: 


## Oplossing 3

```c++
float[] xs;
float[] ys;

void setup() 
{
  size(320, 200);
  xs = new float[2];
  ys = new float[2];
  xs[0] = 160;
  xs[1] = 160;
  ys[0] = 100;
  ys[1] = 100;
}

void draw()
{
  xs[0] += random(-1,1);
  ys[0] += random(-1,1);
  ellipse(xs[0], ys[0], 10, 10);
  xs[1] += random(-1,1);
  ys[1] += random(-1,1);
  ellipse(xs[1], ys[1], 10, 10);
}
```

## Opdracht 4

![Drie rookdeeltjes](Arrays2_drie_rookdeeltjes.png)

Gebruik nu for loops. Maak zowel array `xs` en `ys` drie laatjes groot.

![Computer](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-------------:|:----------------------------------------: 
`for (int i=0; i<3; ++i) {}`|'Lieve computer, doe wat tussen accolades staat met waarden van `i` van `0` tot `3` in stapjes van `1`'

## Oplossing

```c++
float[] xs;
float[] ys;

void setup() 
{
  size(320, 200);
  xs = new float[3];
  ys = new float[3];
  for (int i=0; i<3; ++i)
  {
    xs[i] = 160;
    ys[i] = 100;
  }
}

void draw()
{
  for (int i=0; i<3; ++i)
  {
    xs[i] += random(-1,1);
    ys[i] += random(-1,1);
    ellipse(xs[i], ys[i], 10, 10);
  }
}
```

## Opdracht 5

![Vier rookdeeltjes](Arrays2_vier_rookdeeltjes.png)

Elk rookdeeltje krijgt nu een eigen rode randkleur:

 * Maak een derde array genaamd `rs`, voor de roodheid van de rookdeeltjes
 * In `rs` moeten de getallen `0`, `64`, `128` en `196` komen
 * De roodheid moet ook steeds een meer of minder worden
 * De rand van het eerste rookdeeltje, moet de eerste roodheid krijgen. Tip: gebruik `stroke`

![Bowtie](EmojiBowtie.png) | Tip: gebruik `stroke` voor de randkleur
:-------------:|:----------------------------------------: 

## Oplossing 5

```c++
float[] xs;
float[] ys;
float[] rs; //Roodwaarden

void setup() 
{
  size(320, 200);
  xs = new float[4];
  ys = new float[4];
  rs = new float[4];
  for (int i=0; i<4; ++i)
  {
    xs[i] = 160;
    ys[i] = 100;
    rs[i] = i * 64;
  }
}

void draw()
{
  for (int i=0; i<4; ++i)
  {
    xs[i] += random(-1,1);
    ys[i] += random(-1,1);
    rs[i] += random(-1,1);
    stroke(rs[i], 0, 0);
    ellipse(xs[i], ys[i], 10, 10);
  }
}
```

## Eindopdracht

![Arrays2 eindopdracht](Arrays2_eindopdracht.png)

Maak nu de code zo dat:

 * er 256 rookdeeltjes komen.
 * elk rookdeeltje heeft en eigen *blauw*waarde
 * het eerste rookdeeltje heeft een blauwwaarde van nul. Het tweede rookdeeltje heeft een blauwwaarde van een. Het derde rookdeeltje heeft een blauwwaarde van twee. Enzovoorts
 * niet de rand, maar de vulkleur is blauw

![Bowtie](EmojiBowtie.png) | Tip: gebruik `fill` voor de vulkleur
:-------------:|:----------------------------------------: 
