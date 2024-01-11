up:
	docker compose up 2>&1 | tee log.log

setup:
	cp env.template .env

fix-chown:
	sudo useradd -u 1001 bitnami-docker-user
	sudo chown -R bitnami-docker-user:bitnami-docker-user ./mariadb_data/
	sudo chown -R bitnami-docker-user:bitnami-docker-user ./wordpress_data/