#!/bin/bash 
g++ -o CHDF CHDF.cpp 
rows=$(cat  | wc -l)
let maxn=rows/10
CHDF HIC001_50k_KR.chr6 domain.out ${rows} ${rows} ${maxn}

$BIN=50000
para1=`expr $(($BIN*3))`
para2=`expr $(($BIN*6))`
python convert_homer.py -i HIC001_50k_KR.chr6 -o HIC001_50k_KR.chr6 -c chr6 -b ${BIN}

# the path of executive file path should be updated according to actual situation
#/home/chengzj/mypython/bin/hicConvertFormat
#/home/chengzj/mypython/bin/hicFindTADs
/usr/local/bin/hicConvertFormat -m HIC001_50k_KR.chr6 --inputFormat homer --outputFormat h5 -o HIC001_50k_KR.chr6.h5
/usr/local/bin/hicFindTADs  -m HIC001_50k_KR.chr6.h5 --outPrefix domain.out --numberOfProcessors 30 --correctForMultipleTesting None --minDepth ${para1} --maxDepth ${para2} --step ${BIN}


