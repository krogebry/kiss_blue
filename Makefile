VERSION="0.3.2"

docker_image: 
	docker build -t kiss_blue:${VERSION} .

push:
	docker tag kiss_blue:${VERSION} krogebry/kiss_blue:latest
	docker tag kiss_blue:${VERSION} krogebry/kiss_blue:${VERSION}

	docker push krogebry/kiss_blue:latest
	docker push krogebry/kiss_blue:${VERSION}

test:
	docker run -ti --entrypoint "/usr/local/bin/ruby" kiss_blue:${VERSION} /usr/local/bundle/bin/rspec spec/api.rb
