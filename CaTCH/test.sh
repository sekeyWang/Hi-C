#!/bin/bash 
python3 convert_triple_CaTCH.py  HIC001_50k_KR.chr6 converted_HIC001_50k_KR.chr6 chr6
gzip converted_HIC001_50k_KR.chr6
Rscript CaTCH_run.r -i converted_HIC001_50k_KR.chr6.gz -o domain.out
