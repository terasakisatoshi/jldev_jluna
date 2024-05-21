docker build -t jldev_jluna .
docker run --rm -it \
	-v $PWD:/workspaces -w /workspaces \
	jldev_jluna /bin/bash -c "cmake -S . -B ./build && cmake --build ./build && ./build/main"
