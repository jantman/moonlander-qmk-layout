#!/bin/bash

rm -f *.png
pdftocairo layout.pdf -png
for i in layout-1 layout-2 layout-3; do
    convert ${i}.png -trim +repage ${i}_trimmed.png
    mv ${i}_trimmed.png ${i}.png
done
