#!/bin/bash

cd "$(dirname "$0")/introduction_to_machine_learning"   # Go to the 'main' directory relative to script location
cd chapter_03_Neural_Network

pdflatex NeuralNetwork.tex
bibtex NeuralNetwork.tex
pdflatex NeuralNetwork.tex
pdflatex NeuralNetwork.tex

mv NeuralNetwork.pdf ..       # Move the PDF to build/
