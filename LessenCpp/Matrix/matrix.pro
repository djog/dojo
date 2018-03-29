TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += main.cpp \
    xy_matrix.cpp \
    yx_matrix.cpp \
    idx_matrix.cpp

HEADERS += \
    xy_matrix.h \
    yx_matrix.h \
    idx_matrix.h
