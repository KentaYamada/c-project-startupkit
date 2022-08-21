CC := clang # clang++, gcc or c++
CFLGAS := -W
TARGET := ./bin/my_app # modify execute file name
BUILDDIR := ./build
SRCDIR := ./src
SRCEXT := c
SRCS := $(shell find $(SRCDIR) -type f -name *.$(SRCEXT))
OBJS := $(patsubst $(SRCDIR)/%,$(BUILDDIR)/%,$(SRCS::.$(SRCEXT)=.o))
INCLUDES := -I ./include
LIBS := -l ./libs
TEST_TARGET := ./bin/test_main
TEST_MAIN := tests/test_main.cpp

.PHONY: all
all: clean $(TARGET)

$(TARGET): $(OBJS)
	@echo "Build execute file..."
	$(CC) -O3 $^ -o $@ $(LIBS)

$(BUILDDIR)/%.o: $(SRCDIR)/%.$(SRCDIR)
	@echo "Build objects..."
	$(RM) $(BUILDDIR)/*
	$(CC) $(CFLGAS) -c -o $@ $< $(INCLUDES)

.PHONY: test
test: $(TEST_MAIN)
	@echo "Unit test start."
	$(CC) $(CFLGAS) -o $^ $(INCLUDES) $(LIBS)

.PHONY: clean
clean:
	@echo "Clean files..."
	$(RM) $(TARGET) $(BUILDDIR)/*
