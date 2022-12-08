up:
	@cd srcs/requirements/nginx && sudo docker build -t nginx:1.3 .
	@cd srcs/requirements/mariadb && sudo docker build -t mariadb:1.0 .
	@cd srcs && sudo docker compose up -d --build
	@echo "💥 services active..."

down:
	@cd srcs && sudo docker compose down
	@echo "💥 services down..."

reset: down
	@cd srcs && sudo docker compose up -d --build
	@echo "💥 restarted..."

clean: down
	@echo "💥 Removing related folders/files and clean database..."
	@sudo rm -rf srcs/logs
	@sudo docker volume rm srcs_wp-data
