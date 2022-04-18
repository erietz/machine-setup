
.PHONY: build-manjaro
build-manjaro:
	docker build --rm -t "manjaro:dotfiles" -f ./test/manjaro/Dockerfile ./

.PHONY: run-manjaro
run-manjaro:
	docker run --rm -i -t "manjaro:dotfiles"

.PHONY: build-ubuntu
build-ubuntu:
	docker build --rm -t "ubuntu:dotfiles" -f ./test/ubuntu/Dockerfile ./

.PHONY: run-ubuntu
run-ubuntu:
	docker run --rm -i -t "ubuntu:dotfiles"


.PHONY: clean-images
clean-images:
	docker images --quiet --filter=dangling=true | xargs --verbose --no-run-if-empty docker rmi
