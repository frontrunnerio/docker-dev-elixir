FROM frontrunnerio/dev-base
MAINTAINER Andreas Böhrnsen <andreas@frontrunner.io>

# Install Elixir
RUN \
	curl -O https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && \
	dpkg -i erlang-solutions_1.0_all.deb 2> /dev/null && \
	rm erlang-solutions_1.0_all.deb && \
	apt-get update && \
	apt-get install -yy elixir && \
	apt-get clean

