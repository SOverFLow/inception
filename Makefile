up:
	@cd srcs && sudo docker compose up -d --build

down:
	@cd srcs && sudo docker compose down

clean: down
	@echo "💥 Removing related folders/files..."
	@sudo rm -rf srcs/logs
