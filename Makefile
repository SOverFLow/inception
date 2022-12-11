up:
	@cd srcs && sudo docker compose up -d --build
	@echo "💥 services active..."

down:
	@cd srcs && sudo docker compose down
	@echo "💥 services down..."
