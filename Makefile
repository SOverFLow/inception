up:
	@cd srcs && sudo docker compose up -d --build

down:
	@cd srcs && sudo docker compose down

clean: down
	@echo "💥 Removing related folders/files..."
	@rm -rf  srcs/requirements/mariadb/* srcs/requirements/wordpress/*