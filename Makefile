CC := clang # clang++, gcc or c++
CFLGAS := -W
TARGET := ./bin/my_app # modify execute file name
BUILDDIR := ./build
SRCDIR := ./src
SRCEXT := c
SRCS := $(shell find $(SRCDIR) -type f -name *.$(SRCEXT))
OBJS := $(patsubst $(SRCDIR)/%,$(BUILDDIR)/%,$(SRCS:.$(SRCEXT)=.o))
INCLUDES := -I ./include
LIBS := -L ./libs
TEST_TARGET := ./bin/test_main
TEST_MAIN := tests/test_main.cpp

.PHONY: all
all: clean $(TARGET)

$(TARGET): $(OBJS)
	@echo "Build execute file..."
	$(CC) $^ -o $@ $(LIBS) -O3

$(BUILDDIR)/%.o: $(SRCDIR)/%.$(SRCEXT)
	@echo "Build objects..."
	$(CC) $(CFLGAS) -c -o $@ $< $(INCLUDES)

.PHONY: test
test: $(TEST_MAIN)
	@echo "Unit test start."
	$(CC) $(CFLGAS) -o $^ $(INCLUDES) $(LIBS)

.PHONY: clean
clean:
	@echo "Clean files..."
	$(RM) $(TARGET) $(BUILDDIR)/*

start.docker:
	@cd ./docker/; docker-compose up -d; cd ../

stop.docker:
	@cd ./docker/; docker-compose down; cd ../
