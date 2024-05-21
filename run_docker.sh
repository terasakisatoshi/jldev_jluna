docker build -t jldev_jluna . --build-arg NB_UID=`id -u`
docker run --rm -t \
	-v $PWD:/workspaces -w /workspaces \
	jldev_jluna /bin/bash -c "cmake -S . -B ./build && cmake --build ./build && ./build/main"
