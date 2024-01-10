up:
	docker compose up 2>&1 | tee log.log

setup:
	cp env.template .env