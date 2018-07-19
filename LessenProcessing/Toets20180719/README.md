# Toets 2018-07-19

## Code 1

Bekijk deze code:

```c++
void setup()
{
  size(200, 300);
}

void draw()
{
  point(50, 100);
}
```

### 1.1. Hoe breed is het scherm?

 * W. 50 pixels
 * V. 100 pixels
 * Z. 200 pixels
 * S. 300 pixels 

### 1.2. Hoeveel pixels zit de getekende punt van de onderkant af?

 * V. 50 pixels
 * B. 100 pixels
 * G. 200 pixels
 * K. 300 pixels 

\pagebreak

## Code 2

Bekijk deze code:

```c++
void setup()
{
  size(400, 400);
}

void draw()
{
  line(50, 100, 150, 200);
}
```

### 2.1. Hoeveel pixels gaat de lijn naar rechts?

 * I. 50 pixels
 * K. 100 pixels
 * M. 150 pixels
 * N. 200 pixels

### 2.1. Hoeveel pixels gaat de lijn naar omlaag?

 * B. 50 pixels
 * D. 100 pixels
 * T. 150 pixels
 * M. 200 pixels

\pagebreak

## Code 3

Bekijk deze code:

```c++
void setup()
{
  size(400, 400);
}

void draw()
{
  rect(50, 100, 150, 200);
}
```

### 3.1. Hoeveel pixels is de rechthoek breed?

 * I. 50 pixels
 * D. 100 pixels
 * S. 150 pixels
 * J. 200 pixels

### 3.2. Hoeveel pixels is de rechthoek hoog?

 * V. 50 pixels
 * D. 100 pixels
 * K. 150 pixels
 * U. 200 pixels

## Code 4

Bekijk deze code:

```c++
float x = 100;

void setup() {}

void draw()
{
  if (x > 50) 
  {
    println(x);
    x = x - 40;
  }
}
```

### 4.1 Wat komt er onderin het scherm te staan?

 * D. Niks
 * W. 100
 * S. 100, 60
 * V. 100, 60, 20
 * J. 60
 * N. 60, 20
 * A. Iets anders

## Code 5

Bekijk deze code:

```c++
float x = 100;

void setup() {}

void draw()
{
  if (x > 50) 
  {
    println(x);
  }
  x = x - 40;
}
```

### 5.1 Wat komt er onderin het scherm te staan?

 * B. Niks
 * Z. 100
 * W. 100, 60
 * J. 100, 60, 20
 * S. 60
 * G. 60, 20
 * K. Iets anders

## Code 6

Bekijk deze code:

```c++
void setup() { }

void draw()
{
  for (int i = 2; i < 6; i = i + 2)
  {
    println(i);
  }
}
```

### 6.1 Welke getallen komt er onderin het scherm te staan?

 * D. Niks
 * E. 2
 * A. 2, 4
 * R. 2, 4, 6
 * V. 2, 4, 6, 8
 * G. 4
 * N. 4, 6
 * L. 4, 6, 8

