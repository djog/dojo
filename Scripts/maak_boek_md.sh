#!/bin/bash

# Concatenate all Markdown files first, convert those to one PDF

my_script_path=`realpath $0`
my_folder_path=`dirname $my_script_path`
build_folder=$my_folder_path/build
#echo $build_folder

if [ ! -d "build" ]; then mkdir build; fi

if [ ! -d $build_folder ]; then 
  echo "Error: failed to create build folder"
  exit 1
fi



cd ..
cd LessenProcessing
cd Voorwoord                        ; cp *.* $build_folder; mv $build_folder/README.md $build_folder/README_00.md; cd ..
cd ProcessingOpstartenOpCursusLaptop; cp *.* $build_folder; mv $build_folder/README.md $build_folder/README_01.md; cd ..
cd EenMooiProgramma                 ; cp *.* $build_folder; mv $build_folder/README.md $build_folder/README_02.md; cd ..
cd Point                            ; cp *.* $build_folder; mv $build_folder/README.md $build_folder/README_03.md; cd ..
cd Line                             ; cp *.* $build_folder; mv $build_folder/README.md $build_folder/README_04.md; cd ..
cd Background                       ; cp *.* $build_folder; mv $build_folder/README.md $build_folder/README_05.md; cd ..
cd Stroke                           ; cp *.* $build_folder; mv $build_folder/README.md $build_folder/README_06.md; cd ..
cd Rect                             ; cp *.* $build_folder; mv $build_folder/README.md $build_folder/README_07.md; cd ..
cd Ellipse                          ; cp *.* $build_folder; mv $build_folder/README.md $build_folder/README_08.md; cd ..
cd Fill                             ; cp *.* $build_folder; mv $build_folder/README.md $build_folder/README_09.md; cd ..
cd BalNaarRechts                    ; cp *.* $build_folder; mv $build_folder/README.md $build_folder/README_10.md; cd ..
cd BalEeuwigNaarRechts              ; cp *.* $build_folder; mv $build_folder/README.md $build_folder/README_11.md; cd ..
cd BalDieHorizontaalStuitert        ; cp *.* $build_folder; mv $build_folder/README.md $build_folder/README_12.md; cd ..
cd Zwaartekracht                    ; cp *.* $build_folder; mv $build_folder/README.md $build_folder/README_13.md; cd ..
cd Text                             ; cp *.* $build_folder; mv $build_folder/README.md $build_folder/README_14.md; cd ..
cd Arrays1                          ; cp *.* $build_folder; mv $build_folder/README.md $build_folder/README_15.md; cd ..
cd Arrays2                          ; cp *.* $build_folder; mv $build_folder/README.md $build_folder/README_16.md; cd ..
cd PImage1                          ; cp *.* $build_folder; mv $build_folder/README.md $build_folder/README_17.md; cd ..
cd FunctiesTekening                 ; cp *.* $build_folder; mv $build_folder/README.md $build_folder/README_18.md; cd ..
cd FunctiesSchaapkleur              ; cp *.* $build_folder; mv $build_folder/README.md $build_folder/README_19.md; cd ..
cd FunctiesPoten                    ; cp *.* $build_folder; mv $build_folder/README.md $build_folder/README_20.md; cd ..
cd GitHub                           ; cp *.* $build_folder; mv $build_folder/README.md $build_folder/README_21.md; cd ..
cd GitHubPages                      ; cp *.* $build_folder; mv $build_folder/README.md $build_folder/README_22.md; cd ..
cd ProcessingJS                     ; cp *.* $build_folder; mv $build_folder/README.md $build_folder/README_23.md; cd ..
cd GitHubChat                       ; cp *.* $build_folder; mv $build_folder/README.md $build_folder/README_24.md; cd ..
cd GitHubSamenwerken                ; cp *.* $build_folder; mv $build_folder/README.md $build_folder/README_25.md; cd ..

cd $build_folder
sed -e '$s/$/\n/' -s *.md > README.md

# sed -e '$s/$/\n/' -s *.md > all_content.md
# if [ ! -e gh-md-toc ]; then
#   wget https://raw.githubusercontent.com/ekalinin/github-markdown-toc/master/gh-md-toc
#   chmod a+x gh-md-toc
# fi
# ./gh-md-toc all_content.md > toc.md
# cat toc.md > README.md
# cat all_content.md >> README.md

pandoc README.md -o boek.pdf
cp boek.pdf ../../Boek/Boek.pdf
