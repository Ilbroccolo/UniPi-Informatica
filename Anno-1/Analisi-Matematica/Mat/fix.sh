#!/bin/bash

echo "--- Inizio pulizia cartella ---"

# 1. Crea le cartelle che mancano
mkdir -p capitoli
mkdir -p temp_files

# 2. Sposta TUTTI i file .tex nella cartella capitoli
# (È il metodo più sicuro per non dimenticarn nessuno)
echo "Sposto i capitoli..."
mv *.tex capitoli/

# 3. Riporta indietro SOLO i file che devono stare fuori
# main.tex (il file principale) e frontespizio.tex (se serve fuori)
echo "Ripristino main.tex e frontespizio..."
mv capitoli/main.tex . 2>/dev/null
mv capitoli/frontespizio.tex . 2>/dev/null

# 4. Sposta tutti i file temporanei inutili in temp_files
echo "Pulisco i file temporanei..."
mv *.log *.aux *.dvi *.out *.toc *.synctex.gz *.fdb_latexmk *.fls temp_files/ 2>/dev/null

# 5. Se ci sono immagini sparse, le mette nella tua cartella 'images' esistente
mv *.jpg *.png images/ 2>/dev/null

echo "--- Fatto! ---"
echo "IMPORTANTE: Aggiorna i percorsi nel tuo file main.tex!"