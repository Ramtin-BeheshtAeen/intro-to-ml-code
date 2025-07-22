#!/bin/bash

cd "$(dirname "$0")/introduction_to_machine_learning"   # Go to the 'main' directory relative to script location
cd 00_python_numpy_notes

pdflatex python_numpy_notes.tex
bibtex python_numpy_notes.tex
pdflatex python_numpy_notes.tex
pdflatex python_numpy_notes.tex

cp python_numpy_notes.pdf ../..

mv python_numpy_notes.pdf ..       # Move the PDF to build/
