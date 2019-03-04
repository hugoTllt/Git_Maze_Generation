CXX ?= g++
CXXFLAGS = -W -Wall -Wno-unused-result -O3 -std=c++11

all: mazegen

OBJECTS = cellborder.o \
	depthfirstsearch.o \
	main.o rectangularlabyrinth.o circularlabyrinth.o labyrinth.o \
	breadthfirstsearch.o

mazegen: $(OBJECTS)
	@echo "Building" $@
	@$(CXX) -o $@ $^ $(CXXFLAGS)

%.o: %.cpp
	@echo "Compiling" $<
	@$(CXX) -o $@ -c $< $(CXXFLAGS)

.phony: clean
clean:
	@echo "Cleaning"
	@rm -f $(OBJECTS) mazegen
