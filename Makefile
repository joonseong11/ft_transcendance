NAME = Transcendance

RED			=	\033[0;31m
GRN			= 	\033[0;32m
YLW			=	\033[0;33m
BLU			= 	\033[0;36m
DFT			= 	\033[0;37m

# all: fclean up

up:
	@docker-compose -f ./srcs/docker-compose.yml up --build -d;
	@echo "$(GRN)>>> docker compose up$(DFT)"

down:
	@docker-compose -f ./srcs/docker-compose.yml down;
	@echo "$(YLW)>>> docker compose down$(DFT)"

image:
	@docker pull debian:bullseye
	@echo "$(GRN)>>> docker image download$(DFT)"

clean: down
	@docker system prune -af
	@echo "$(RED)>>> docker stop and remove networks and caches$(DFT)"

.PHONY: up down clean fclean