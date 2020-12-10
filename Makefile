# Copyright 2020 Paul Salvador Inventado and Google LLC
#
# Use of this source code is governed by an MIT-style
# license that can be found in the LICENSE file or at
# https://opensource.org/licenses/MIT.

.PHONY: build

OS_NAME 				:= $(shell uname -s | tr A-Z a-z)
COMPILE_FLAGS 	:= -lm -lX11 -lpthread

ifeq ($(OS_NAME), darwin)
	COMPILE_FLAGS	:= -lm -I/opt/X11/include -lpthread -lX11 -lstdc++ -I/usr/X11R6/include -L/usr/X11R6/lib
	HAS_BREW	:= $(shell command -v brew 2> /dev/null)
endif

build:
	@clang++ -std=c++17 main.cc cpputils/graphics/image.cc cpputils/karel/karel.cc cpputils/karel/src/robot.cc -o main $(COMPILE_FLAGS)
