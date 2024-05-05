CARGO = cargo

UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Darwin)
ARGO += --config 'build.rustdocflags = ["-C", "link-args=-framework CoreFoundation -framework Security"]'
endif
build:
        $(MAKE) clean
      	./tools/make/build.sh

setup:
        ./tools/make/setup.sh