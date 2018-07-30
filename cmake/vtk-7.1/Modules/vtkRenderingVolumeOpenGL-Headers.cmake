set(vtkRenderingVolumeOpenGL_HEADERS_LOADED 1)
set(vtkRenderingVolumeOpenGL_HEADERS "vtkOpenGLHAVSVolumeMapper;vtkOpenGLProjectedAAHexahedraMapper;vtkOpenGLProjectedTetrahedraMapper;vtkOpenGLRayCastImageDisplayHelper;vtkOpenGLVolumeTextureMapper2D;vtkOpenGLVolumeTextureMapper3D;vtkSmartVolumeMapper;vtkOpenGLGPUVolumeRayCastMapper;vtkGPUVolumeRayCastMapper_AdditiveFS;vtkGPUVolumeRayCastMapper_AdditiveCroppingFS;vtkGPUVolumeRayCastMapper_AdditiveNoCroppingFS;vtkGPUVolumeRayCastMapper_CompositeFS;vtkGPUVolumeRayCastMapper_CompositeMaskFS;vtkGPUVolumeRayCastMapper_CompositeBinaryMaskFS;vtkGPUVolumeRayCastMapper_CompositeCroppingFS;vtkGPUVolumeRayCastMapper_CompositeNoCroppingFS;vtkGPUVolumeRayCastMapper_HeaderFS;vtkGPUVolumeRayCastMapper_MIPCroppingFS;vtkGPUVolumeRayCastMapper_MIPFS;vtkGPUVolumeRayCastMapper_MIPBinaryMaskFS;vtkGPUVolumeRayCastMapper_MIPFourDependentFS;vtkGPUVolumeRayCastMapper_MIPFourDependentCroppingFS;vtkGPUVolumeRayCastMapper_MIPFourDependentNoCroppingFS;vtkGPUVolumeRayCastMapper_MIPNoCroppingFS;vtkGPUVolumeRayCastMapper_MinIPCroppingFS;vtkGPUVolumeRayCastMapper_MinIPFS;vtkGPUVolumeRayCastMapper_MinIPBinaryMaskFS;vtkGPUVolumeRayCastMapper_MinIPFourDependentFS;vtkGPUVolumeRayCastMapper_MinIPFourDependentCroppingFS;vtkGPUVolumeRayCastMapper_MinIPFourDependentNoCroppingFS;vtkGPUVolumeRayCastMapper_MinIPNoCroppingFS;vtkGPUVolumeRayCastMapper_ParallelProjectionFS;vtkGPUVolumeRayCastMapper_PerspectiveProjectionFS;vtkGPUVolumeRayCastMapper_ScaleBiasFS;vtkGPUVolumeRayCastMapper_OneComponentFS;vtkGPUVolumeRayCastMapper_FourComponentsFS;vtkGPUVolumeRayCastMapper_NoShadeFS;vtkGPUVolumeRayCastMapper_ShadeFS;vtkHAVSVolumeMapper_kbufferVP;vtkHAVSVolumeMapper_k2FP;vtkHAVSVolumeMapper_k2BeginFP;vtkHAVSVolumeMapper_k2EndFP;vtkHAVSVolumeMapper_k6FP;vtkHAVSVolumeMapper_k6BeginFP;vtkHAVSVolumeMapper_k6EndFP;vtkProjectedAAHexahedraMapper_VS;vtkProjectedAAHexahedraMapper_GS;vtkProjectedAAHexahedraMapper_FS;vtkVolumeTextureMapper3D_FourDependentNoShadeFP;vtkVolumeTextureMapper3D_FourDependentShadeFP;vtkVolumeTextureMapper3D_OneComponentNoShadeFP;vtkVolumeTextureMapper3D_OneComponentShadeFP;vtkVolumeTextureMapper3D_TwoDependentNoShadeFP;vtkVolumeTextureMapper3D_TwoDependentShadeFP;vtkRenderingVolumeOpenGLObjectFactory")

foreach(header ${vtkRenderingVolumeOpenGL_HEADERS})
  set(vtkRenderingVolumeOpenGL_HEADER_${header}_EXISTS 1)
endforeach()


set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_AdditiveFS_WRAP_EXCLUDE 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_AdditiveCroppingFS_WRAP_EXCLUDE 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_AdditiveNoCroppingFS_WRAP_EXCLUDE 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_CompositeFS_WRAP_EXCLUDE 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_CompositeMaskFS_WRAP_EXCLUDE 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_CompositeBinaryMaskFS_WRAP_EXCLUDE 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_CompositeCroppingFS_WRAP_EXCLUDE 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_CompositeNoCroppingFS_WRAP_EXCLUDE 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_HeaderFS_WRAP_EXCLUDE 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_MIPCroppingFS_WRAP_EXCLUDE 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_MIPFS_WRAP_EXCLUDE 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_MIPBinaryMaskFS_WRAP_EXCLUDE 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_MIPFourDependentFS_WRAP_EXCLUDE 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_MIPFourDependentCroppingFS_WRAP_EXCLUDE 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_MIPFourDependentNoCroppingFS_WRAP_EXCLUDE 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_MIPNoCroppingFS_WRAP_EXCLUDE 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_MinIPCroppingFS_WRAP_EXCLUDE 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_MinIPFS_WRAP_EXCLUDE 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_MinIPBinaryMaskFS_WRAP_EXCLUDE 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_MinIPFourDependentFS_WRAP_EXCLUDE 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_MinIPFourDependentCroppingFS_WRAP_EXCLUDE 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_MinIPFourDependentNoCroppingFS_WRAP_EXCLUDE 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_MinIPNoCroppingFS_WRAP_EXCLUDE 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_ParallelProjectionFS_WRAP_EXCLUDE 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_PerspectiveProjectionFS_WRAP_EXCLUDE 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_ScaleBiasFS_WRAP_EXCLUDE 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_OneComponentFS_WRAP_EXCLUDE 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_FourComponentsFS_WRAP_EXCLUDE 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_NoShadeFS_WRAP_EXCLUDE 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_ShadeFS_WRAP_EXCLUDE 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkHAVSVolumeMapper_kbufferVP_WRAP_EXCLUDE 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkHAVSVolumeMapper_k2FP_WRAP_EXCLUDE 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkHAVSVolumeMapper_k2BeginFP_WRAP_EXCLUDE 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkHAVSVolumeMapper_k2EndFP_WRAP_EXCLUDE 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkHAVSVolumeMapper_k6FP_WRAP_EXCLUDE 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkHAVSVolumeMapper_k6BeginFP_WRAP_EXCLUDE 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkHAVSVolumeMapper_k6EndFP_WRAP_EXCLUDE 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkProjectedAAHexahedraMapper_VS_WRAP_EXCLUDE 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkProjectedAAHexahedraMapper_GS_WRAP_EXCLUDE 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkProjectedAAHexahedraMapper_FS_WRAP_EXCLUDE 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkVolumeTextureMapper3D_FourDependentNoShadeFP_WRAP_EXCLUDE 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkVolumeTextureMapper3D_FourDependentShadeFP_WRAP_EXCLUDE 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkVolumeTextureMapper3D_OneComponentNoShadeFP_WRAP_EXCLUDE 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkVolumeTextureMapper3D_OneComponentShadeFP_WRAP_EXCLUDE 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkVolumeTextureMapper3D_TwoDependentNoShadeFP_WRAP_EXCLUDE 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkVolumeTextureMapper3D_TwoDependentShadeFP_WRAP_EXCLUDE 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkRenderingVolumeOpenGLObjectFactory_WRAP_EXCLUDE 1)

set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_AdditiveFS_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_AdditiveCroppingFS_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_AdditiveNoCroppingFS_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_CompositeFS_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_CompositeMaskFS_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_CompositeBinaryMaskFS_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_CompositeCroppingFS_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_CompositeNoCroppingFS_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_HeaderFS_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_MIPCroppingFS_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_MIPFS_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_MIPBinaryMaskFS_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_MIPFourDependentFS_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_MIPFourDependentCroppingFS_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_MIPFourDependentNoCroppingFS_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_MIPNoCroppingFS_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_MinIPCroppingFS_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_MinIPFS_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_MinIPBinaryMaskFS_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_MinIPFourDependentFS_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_MinIPFourDependentCroppingFS_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_MinIPFourDependentNoCroppingFS_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_MinIPNoCroppingFS_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_ParallelProjectionFS_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_PerspectiveProjectionFS_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_ScaleBiasFS_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_OneComponentFS_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_FourComponentsFS_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_NoShadeFS_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkGPUVolumeRayCastMapper_ShadeFS_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkHAVSVolumeMapper_kbufferVP_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkHAVSVolumeMapper_k2FP_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkHAVSVolumeMapper_k2BeginFP_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkHAVSVolumeMapper_k2EndFP_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkHAVSVolumeMapper_k6FP_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkHAVSVolumeMapper_k6BeginFP_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkHAVSVolumeMapper_k6EndFP_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkProjectedAAHexahedraMapper_VS_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkProjectedAAHexahedraMapper_GS_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkProjectedAAHexahedraMapper_FS_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkVolumeTextureMapper3D_FourDependentNoShadeFP_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkVolumeTextureMapper3D_FourDependentShadeFP_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkVolumeTextureMapper3D_OneComponentNoShadeFP_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkVolumeTextureMapper3D_OneComponentShadeFP_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkVolumeTextureMapper3D_TwoDependentNoShadeFP_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkVolumeTextureMapper3D_TwoDependentShadeFP_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingVolumeOpenGL_HEADER_vtkRenderingVolumeOpenGLObjectFactory_WRAP_EXCLUDE_PYTHON 1)

