CXX ?= g++
CXXFLAGS = -W -Wall -Wno-unused-result -O3 -std=c++11

all: mazegen

OBJECTS = cellborder.o \
	depthfirstsearch.o \
	main.o rectangularmaze.o circularmaze.o maze.o \
	breadthfirstsearch.o minimumspanningtreealgorithm.o

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
