.PHONY: Armatus Arrowhead CaTCH CHAC CHDF deDoc

all:
	docker-compose up --build -d

Armatus: HIC001_50k_KR.chr6
	cp HIC001_50k_KR.chr6  Armatus/HIC001_50k_KR.chr6
	gzip Armatus/HIC001_50k_KR.chr6
	tar zxvf boost_1_70_0.tar.gz
	docker-compose exec armatus bash
#	armatus/src/armatus -r 50000 -c 6 -i HIC001_50k_KR.chr6.gz -g 0.5 -o domain.out

Arrowhead:
	wget -P Arrowhead -O "juicer_tools" -c https://s3.amazonaws.com/hicfiles.tc4ga.com/public/juicer/juicer_tools_1.22.01.jar
	cp HIC003_arrowhead.chr1.hic  Arrowhead/HIC003_arrowhead.chr1.hic
	docker-compose exec dedoc bash
CaTCH:
	cp HIC001_50k_KR.chr6 CaTCH/HIC001_50k_KR.chr6
	docker-compose exec catch bash
CHAC:
	cp HIC001_50k_KR.chr6 CHAC/HIC001_50k_KR.chr6
	docker-compose exec chac bash
CHDF:
	cp HIC001_50k_KR.chr6 CHDF/HIC001_50k_KR.chr6
	docker-compose exec chdf bash
deDoc:
	cp HIC001_50k_KR.chr6 deDoc/HIC001_50k_KR.chr6
	docker-compose exec dedoc bash