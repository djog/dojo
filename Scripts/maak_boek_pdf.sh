#!/bin/bash

# Create all PDFs first, concatenate those

cd ..
cd LessenProcessing
cd ProcessingOpstartenOpCursusLaptop; pandoc README.md -o ../../Scripts/1.pdf ; cd ..
cd EenMooiProgramma; pandoc README.md -o ../../Scripts/2.pdf ; cd ..
cd Point; pandoc README.md -o ../../Scripts/3.pdf ; cd ..
cd Line; pandoc README.md -o ../../Scripts/4.pdf ; cd ..
cd Background; pandoc README.md -o ../../Scripts/5.pdf ; cd ..
cd Stroke; pandoc README.md -o ../../Scripts/6.pdf ; cd ..
cd Rect; pandoc README.md -o ../../Scripts/7.pdf ; cd ..
cd Ellipse; pandoc README.md -o ../../Scripts/8.pdf ; cd ..
cd Fill; pandoc README.md -o ../../Scripts/9.pdf ; cd ..
cd BalNaarRechts; pandoc README.md -o ../../Scripts/10.pdf ; cd ..
cd BalEeuwigNaarRechts; pandoc README.md -o ../../Scripts/11.pdf ; cd ..
cd BalDieHorizontaalStuitert; pandoc README.md -o ../../Scripts/12.pdf ; cd ..
cd Zwaartekracht; pandoc README.md -o ../../Scripts/13.pdf ; cd ..
cd Text; pandoc README.md -o ../../Scripts/14.pdf ; cd ..

cd ..
cd Scripts

pdfunite 1.pdf 2.pdf 3.pdf 4.pdf 5.pdf 6.pdf 7.pdf 8.pdf 9.pdf 10.pdf 11.pdf 12.pdf 13.pdf 14.pdf Boek.pdf
