up:
	@cd srcs && docker compose up -d --build
	@echo "💥 services active..."

down:
	@cd srcs && docker compose down
	@echo "💥 services down..."
