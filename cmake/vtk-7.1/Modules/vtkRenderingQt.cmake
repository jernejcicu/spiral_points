set(vtkRenderingQt_LOADED 1)
set(vtkRenderingQt_DEPENDS "vtkCommonCore;vtkCommonDataModel;vtkCommonExecutionModel;vtkCommonSystem;vtkFiltersSources;vtkFiltersTexture;vtkGUISupportQt;vtkRenderingCore;vtkRenderingLabel")
set(vtkRenderingQt_LIBRARIES "vtkRenderingQt")
set(vtkRenderingQt_INCLUDE_DIRS "/home/urf/Documents/VTK-7.1.1/VTK-build/Rendering/Qt;/home/urf/Documents/VTK-7.1.1/Rendering/Qt")
set(vtkRenderingQt_LIBRARY_DIRS "")
set(vtkRenderingQt_RUNTIME_LIBRARY_DIRS "/home/urf/Documents/VTK-7.1.1/VTK-build/lib")
set(vtkRenderingQt_WRAP_HIERARCHY_FILE "")
set(vtkRenderingQt_KIT "")

if(NOT Qt5_DIR)
  set(Qt5_DIR "/usr/lib/x86_64-linux-gnu/cmake/Qt5")
endif()
find_package(Qt5 REQUIRED QUIET COMPONENTS Widgets)

