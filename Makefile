
.PHONY: build
build:
	docker build --rm -t "foo:dotfiles" ./

.PHONY: build
run: build
	docker run --rm -i -t "foo:dotfiles"

.PHONY: clean-images
clean-images:
	docker images --quiet --filter=dangling=true | xargs --verbose --no-run-if-empty docker rmi
