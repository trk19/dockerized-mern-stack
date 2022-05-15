compose_run_app:
	docker-compose -f docker-compose.prod.yml up -d

compose_stop_app:
	docker-compose -f docker-compose.prod.yml down 

compose_run_proxy:
	docker-compose -f nginx-proxy.prod.yml up -d 

compose_stop_proxy:
	docker-compose -f nginx-proxy.prod.yml down 
