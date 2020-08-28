.PHONY: armatus arrowhead

all:
	docker-compose up --build -d

armatus: HIC001_50k_KR.chr6
	cp HIC001_50k_KR.chr6  Armatus/HIC001_50k_KR.chr6
	gzip Armatus/HIC001_50k_KR.chr6
	tar zxvf boost_1_70_0.tar.gz
#	armatus/src/armatus -r 50000 -c 6 -i HIC001_50k_KR.chr6.gz -g 0.5 -o domain.out

arrowhead:
	wget -P Arrowhead -O "juicer_tools" -c https://s3.amazonaws.com/hicfiles.tc4ga.com/public/juicer/juicer_tools_1.22.01.jar
	cp HIC003_arrowhead.chr1.hic  Arrowhead/HIC003_arrowhead.chr1.hic
