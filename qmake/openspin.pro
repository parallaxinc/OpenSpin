TEMPLATE = app
TARGET = openspin

!greaterThan(QT_MAJOR_VERSION, 4): {
    error("PropellerIDE requires Qt5.2 or greater")
}
!greaterThan(QT_MINOR_VERSION, 1): {
    error("PropellerIDE requires Qt5.2 or greater")
}

CONFIG -= debug_and_release app_bundle
CONFIG += console

INCLUDEPATH += ../PropellerCompiler ../SpinSource

SOURCES += \
    openspin.cpp \
    ../PropellerCompiler/BlockNestStackRoutines.cpp \
    ../PropellerCompiler/CompileDatBlocks.cpp \
    ../PropellerCompiler/CompileExpression.cpp \
    ../PropellerCompiler/CompileInstruction.cpp \
    ../PropellerCompiler/CompileUtilities.cpp \
    ../PropellerCompiler/DistillObjects.cpp \
    ../PropellerCompiler/Elementizer.cpp \
    ../PropellerCompiler/ErrorStrings.cpp \
    ../PropellerCompiler/ExpressionResolver.cpp \
    ../PropellerCompiler/InstructionBlockCompiler.cpp \
    ../PropellerCompiler/PropellerCompiler.cpp \
    ../PropellerCompiler/StringConstantRoutines.cpp \
    ../PropellerCompiler/SymbolEngine.cpp \
	../PropellerCompiler/UnusedMethodUtils.cpp \
    ../PropellerCompiler/Utilities.cpp \
    ../SpinSource/flexbuf.cpp \
    ../SpinSource/objectheap.cpp \
    ../SpinSource/pathentry.cpp \
    ../SpinSource/preprocess.cpp \
    ../SpinSource/textconvert.cpp

HEADERS += \
    ../PropellerCompiler/CompileUtilities.h \
    ../PropellerCompiler/Elementizer.h \
    ../PropellerCompiler/ErrorStrings.h \
    ../PropellerCompiler/PropellerCompiler.h \
    ../PropellerCompiler/PropellerCompilerInternal.h \
    ../PropellerCompiler/SymbolEngine.h \
    ../PropellerCompiler/Utilities.h \
    ../SpinSource/flexbuf.h \
    ../SpinSource/objectheap.h \
    ../SpinSource/pathentry.h \
    ../SpinSource/preprocess.h \
    ../SpinSource/textconvert.h

