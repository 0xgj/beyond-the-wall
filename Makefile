all:
	pip install docker-compose
	cd polipo; docker build -t caogj/polipo .
	cd ss-client; docker build -t caogj/ss-client .
	docker-compose up -d

