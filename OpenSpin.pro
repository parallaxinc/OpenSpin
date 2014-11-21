TEMPLATE  = subdirs

SUBDIRS = PropellerCompiler \
    SpinSource

SpinSource.depends = PropellerCompiler
