isEmpty(PREFIX):PREFIX = /usr/local

TEMPLATE = app
TARGET = ../openspin
target.path = $${PREFIX}/bin
INSTALLS += target

LIBS = -L$${OUT_PWD}/../PropellerCompiler/ -lopenspin
CONFIG -= qt

SOURCES += $$files(*.cpp)
