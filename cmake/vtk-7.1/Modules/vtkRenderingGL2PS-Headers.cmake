set(vtkRenderingGL2PS_HEADERS_LOADED 1)
set(vtkRenderingGL2PS_HEADERS "vtkGL2PSContextDevice2D;vtkGL2PSUtilities")

foreach(header ${vtkRenderingGL2PS_HEADERS})
  set(vtkRenderingGL2PS_HEADER_${header}_EXISTS 1)
endforeach()


set(vtkRenderingGL2PS_HEADER_vtkGL2PSContextDevice2D_WRAP_EXCLUDE 1)


