up:
	@cd srcs && docker compose up -d
	@echo "💥 services active..."
build:
	@cd srcs && docker compose up -d --build
	@echo "💥 services build and active..."

down:
	@cd srcs && docker compose down
	@echo "💥 services down..."
