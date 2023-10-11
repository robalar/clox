default: build
build:
	@ $(MAKE) -f util/c.make NAME=clox MODE=release SOURCE_DIR=src SNIPPET=true
	@ cp build/clox clox # For convenience, copy the interpreter to the top level.
debug:
	@ $(MAKE) -f util/c.make NAME=cloxd MODE=debug SOURCE_DIR=src
clean:
	@ rm -rf $(BUILD_DIR)
.PHONY: build debug
