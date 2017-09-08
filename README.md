# kiss_blue

KISS'ing Blue

Keep It Simple Stupid, right?

https://hub.docker.com/r/krogebry/kiss_blue/

# Using

Pull the image down.
```
# docker pull krogebry/kiss_blue
```

Run the useless unit tests.
```
# docker run -ti --entrypoint "/usr/local/bin/ruby" krogebry/kiss_blue:latest /usr/local/bundle/bin/rspec spec/api.rb
```

Run the web app
```
# docker run krogebry/kiss_blue:latest
```

# Building

Using docker...
```
# docker login
# make docker_image
# make push
```

Using docker-compose
```
# docker-compose build
# docker-compose up
```
