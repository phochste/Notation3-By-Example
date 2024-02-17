#!/bin/bash

for f in test*.trig; do
    echo "test $f..."
    eye --quiet complement.trig disjointWith.trig symmetricProperty.trig  $f 2>&1 | tee $f.answer
done
