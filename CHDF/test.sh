#!/bin/bash 
g++ -o CHDF CHDF.cpp 
rows=$(cat HIC001_50k_KR.chr6 | wc -l)
let maxn=rows/10
./CHDF HIC001_50k_KR.chr6 domain.out ${rows} ${rows} ${maxn}

