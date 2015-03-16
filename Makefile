OS:=$(shell uname)
CC=gcc
CXX=g++
ifeq ($(OS),Darwin)
	CFLAGS+=-Wall -g
else
	CFLAGS+=-Wall -g -static
endif
CXXFLAGS += $(CFLAGS)

TARGET=openspin
SRCDIR=SpinSource
OBJ=$(SRCDIR)/openspin.o \
	$(SRCDIR)/flexbuf.o \
	$(SRCDIR)/preprocess.o \
	$(SRCDIR)/textconvert.o \
	$(SRCDIR)/pathentry.o \
	$(SRCDIR)/objectheap.o \

LIBDIR=PropellerCompiler
LIBNAME=$(LIBDIR)/libopenspin.a

all: $(LIBNAME) $(OBJ) Makefile
	$(CXX) -o $(TARGET) $(CXXFLAGS) $(OBJ) $(LIBNAME)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -o $@ -c $<

$(LIBNAME):
	make -C $(LIBDIR) all

clean:
	rm -rf $(OBJ) $(LIBNAME) $(TARGET).exe
	make -C $(LIBDIR) clean
