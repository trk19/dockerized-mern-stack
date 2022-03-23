buildbackdev:
	docker build -t backend:dev -f dockerfile.dev .

buildbackprod:
	docker build -t backend:prod -f dockerfile.prod .

runbackdev:
	docker run -d --name back_dev_container -p 5000:5000 backend:dev

runbackprod:
	docker run -d --name back_dev_container -p 5000:5000 backend:prod