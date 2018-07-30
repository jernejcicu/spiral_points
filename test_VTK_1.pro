#-------------------------------------------------
#
# Project created by QtCreator 2018-06-12T21:34:25
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = test_VTK_1
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

INCLUDEPATH += "/usr/local/include/vtk-7.1/"\

LIBS += -L"/usr/local/lib/"\

LIBS += -L$$PWD/../../../VTK-7.1.1/VTK-build/lib/ \
        -lvtkCommonCore-7.1\
        -lvtkalglib-7.1\
        -lvtkChartsCore-7.1 \
        -lvtkCommonColor-7.1 \
        -lvtkCommonComputationalGeometry-7.1 \
        -lvtkCommonDataModel-7.1 \
        -lvtkCommonExecutionModel-7.1 \
        -lvtkCommonMath-7.1 \
        -lvtkCommonSystem-7.1\
        -lvtkCommonTransforms-7.1\
        -lvtkDICOMParser-7.1\
        -lvtkDomainsChemistry-7.1\
        -lvtkexoIIc-7.1\
        -lvtkexpat-7.1\
        -lvtkFiltersAMR-7.1\
        -lvtkFiltersCore-7.1\
        -lvtkFiltersExtraction-7.1\
        -lvtkFiltersFlowPaths-7.1\
        -lvtkFiltersGeneral-7.1\
        -lvtkFiltersGeneric-7.1\
        -lvtkFiltersGeometry-7.1\
        -lvtkFiltersHybrid-7.1\
        -lvtkFiltersHyperTree-7.1\
        -lvtkFiltersImaging-7.1\
        -lvtkFiltersModeling-7.1\
        -lvtkFiltersParallelImaging-7.1\
        -lvtkFiltersPoints-7.1\
        -lvtkFiltersProgrammable-7.1\
        -lvtkFiltersSelection-7.1\
        -lvtkFiltersSMP-7.1\
        -lvtkFiltersSources-7.1\
        -lvtkFiltersStatistics-7.1\
        -lvtkFiltersTexture-7.1\
        -lvtkFiltersVerdict-7.1\
        -lvtkfreetype-7.1\
        -lvtkGeovisCore-7.1\
        -lvtkgl2ps-7.1\
        -lvtkGUISupportQt-7.1\
        -lvtkhdf5-7.1\
        -lvtkhdf5_hl-7.1\
        -lvtkImagingColor-7.1\
        -lvtkImagingCore-7.1\
        -lvtkImagingFourier-7.1\
        -lvtkImagingGeneral-7.1\
        -lvtkImagingHybrid-7.1\
        -lvtkImagingMath-7.1\
        -lvtkImagingMorphological-7.1\
        -lvtkImagingSources-7.1\
        -lvtkImagingStatistics-7.1\
        -lvtkImagingStencil-7.1\
        -lvtkInfovisCore-7.1\
        -lvtkInfovisLayout-7.1\
        -lvtkInteractionImage-7.1\
        -lvtkInteractionStyle-7.1\
        -lvtkInteractionWidgets-7.1\
        -lvtkIOAMR-7.1\
        -lvtkIOCore-7.1\
        -lvtkIOEnSight-7.1\
        -lvtkIOExodus-7.1\
        -lvtkIOExport-7.1\
        -lvtkIOGeometry-7.1\
        -lvtkIOImage-7.1\
        -lvtkIOImport-7.1\
        -lvtkIOInfovis-7.1\
        -lvtkIOLegacy-7.1\
        -lvtkIOLSDyna-7.1\
        -lvtkIOMINC-7.1\
        -lvtkIOMovie-7.1\
        -lvtkIONetCDF-7.1\
        -lvtkIOParallel-7.1\
        -lvtkIOParallelXML-7.1\
        -lvtkIOPLY-7.1\
        -lvtkIOSQL-7.1\
        -lvtkIOTecplotTable-7.1\
        -lvtkIOVideo-7.1\
        -lvtkIOXML-7.1\
        -lvtkIOXMLParser-7.1\
        -lvtkjpeg-7.1\
        -lvtkjsoncpp-7.1\
        -lvtklibxml2-7.1\
        -lvtkmetaio-7.1\
        -lvtkNetCDF-7.1\
        -lvtkNetCDF_cxx-7.1\
        -lvtkoggtheora-7.1\
        -lvtkParallelCore-7.1\
        -lvtkParallelCore-7.1\
        -lvtkpng-7.1\
        -lvtkproj4-7.1\
        -lvtkRenderingAnnotation-7.1\
        -lvtkRenderingContext2D-7.1\
        -lvtkRenderingContextOpenGL-7.1\
        -lvtkRenderingCore-7.1\
        -lvtkRenderingFreeType-7.1\
        -lvtkRenderingGL2PS-7.1\
        -lvtkRenderingImage-7.1\
        -lvtkRenderingLabel-7.1\
        -lvtkRenderingLIC-7.1\
        -lvtkRenderingLOD-7.1\
        -lvtkRenderingOpenGL-7.1\
        -lvtkRenderingQt-7.1\
        -lvtkRenderingVolume-7.1\
        -lvtkRenderingVolumeOpenGL-7.1\
        -lvtksqlite-7.1\
        -lvtksys-7.1\
        -lvtktiff-7.1\
        -lvtkverdict-7.1\
        -lvtkViewsContext2D-7.1\
        -lvtkViewsCore-7.1\
        -lvtkViewsInfovis-7.1\
        -lvtkViewsQt-7.1\
        -lvtkzlib-7.1\
        -ldl\

INCLUDEPATH += $$PWD/../../../VTK-7.1.1/VTK-build
DEPENDPATH += $$PWD/../../../VTK-7.1.1/VTK-build

#PRE_TARGETDEPS += -$$PWD/../../../VTK-7.1.1/VTK-build/lib/libvtkCommonCore-7.1.a \



SOURCES += \
        main.cpp \
        mainwindow.cpp

HEADERS += \
        mainwindow.h

FORMS += \
        mainwindow.ui



