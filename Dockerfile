# docker build -t jluna
# docker run --rm -it -v ${PWD}:/workspaces -w /workspaces jluna bash
# 

FROM julia:1.10.3

# create user with a home directory
ARG NB_USER=jovyan
ARG NB_UID=1000
ENV USER ${NB_USER}
ENV HOME /home/${NB_USER}

RUN adduser --disabled-password \
    --gecos "Default user" \
    --uid ${NB_UID} \
    ${NB_USER}

USER root

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
	git cmake build-essential g++ && \
	apt-get clean && \
	rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

RUN mkdir -p /workspaces
RUN chown -R ${NB_UID} /workspaces

WORKDIR /workspaces

RUN git clone https://github.com/clemapfel/jluna.git && \
	cmake -S ./jluna -B ./jluna/build && \
	cmake --build ./jluna/build -j `nproc` && \
	cmake --install ./jluna/build && \
	rm -r jluna

USER ${USER}
