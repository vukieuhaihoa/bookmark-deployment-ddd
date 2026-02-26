.PHONY: up, down
up:
	docker-compose -f docker-compose.yaml up -d

down:
	docker-compose -f docker-compose.yaml down


.PHONY: generate-rsa-key, deploy, full-deploy

generate-rsa-key:
	openssl genpkey -algorithm RSA -out private_key.pem -pkeyopt rsa_keygen_bits:2048
	openssl rsa -pubout -in private_key.pem -out public_key.pem

deploy:
	sh ./deploy.sh

full-deploy: generate-rsa-key deploy
