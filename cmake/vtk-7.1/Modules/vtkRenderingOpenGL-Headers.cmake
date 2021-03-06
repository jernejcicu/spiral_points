set(vtkRenderingOpenGL_HEADERS_LOADED 1)
set(vtkRenderingOpenGL_HEADERS "vtkCameraPass;vtkChooserPainter;vtkClearRGBPass;vtkClearZPass;vtkClipPlanesPainter;vtkCoincidentTopologyResolutionPainter;vtkColorMaterialHelper;vtkCompositePainter;vtkCompositePolyDataMapper2;vtkDataTransferHelper;vtkDefaultPainter;vtkDefaultPass;vtkDepthPeelingPass;vtkDisplayListPainter;vtkFrameBufferObject;vtkFrameBufferObject2;vtkGLSLShaderDeviceAdapter2;vtkGaussianBlurPass;vtkGenericOpenGLRenderWindow;vtkHiddenLineRemovalPass;vtkHardwareSelectionPolyDataPainter;vtkImageProcessingPass;vtkLightingHelper;vtkLightingPainter;vtkLightsPass;vtkLinesPainter;vtkOpaquePass;vtkOpenGLActor;vtkOpenGLCamera;vtkOpenGLClipPlanesPainter;vtkOpenGLCoincidentTopologyResolutionPainter;vtkOpenGLCompositePainter;vtkOpenGLDisplayListPainter;vtkOpenGLExtensionManager;vtkOpenGLGL2PSHelper;vtkOpenGLGlyph3DMapper;vtkOpenGLHardwareSelector;vtkOpenGLHardwareSupport;vtkOpenGLImageMapper;vtkOpenGLImageSliceMapper;vtkOpenGLLabeledContourMapper;vtkOpenGLLight;vtkOpenGLLightMonitor;vtkOpenGLLightingPainter;vtkOpenGLModelViewProjectionMonitor;vtkOpenGLPainterDeviceAdapter;vtkOpenGLPolyDataMapper2D;vtkOpenGLProperty;vtkOpenGLRenderWindow;vtkOpenGLRenderer;vtkOpenGLRepresentationPainter;vtkOpenGLScalarsToColorsPainter;vtkOpenGLState;vtkOpenGLTexture;vtkOverlayPass;vtkPainter;vtkPainterPolyDataMapper;vtkPixelBufferObject;vtkPointsPainter;vtkPolyDataPainter;vtkPolygonsPainter;vtkPrimitivePainter;vtkRenderPassCollection;vtkRenderbuffer;vtkRepresentationPainter;vtkScalarsToColorsPainter;vtkSequencePass;vtkShader2;vtkShader2Collection;vtkShaderProgram2;vtkShadowMapBakerPass;vtkShadowMapPass;vtkSobelGradientMagnitudePass;vtkStandardPolyDataPainter;vtkTStripsPainter;vtkTextureObject;vtkTextureUnitManager;vtkTranslucentPass;vtkUniformVariables;vtkValuePainter;vtkValuePass;vtkValuePasses;vtkVolumetricPass;vtkgl;vtkRenderingOpenGLObjectFactory;vtkOpenGLPolyDataMapper;vtkColorMaterialHelper_vs;vtkDepthPeeling_fs;vtkGaussianBlurPassShader_fs;vtkLighting_s;vtkLightingHelper_s;vtkOpenGLRenderer_PeelingFS;vtkOpenGLPropertyDefaultPropFunc_fs;vtkOpenGLPropertyDefaultPropFunc_vs;vtkOpenGLPropertyDefaultMain_fs;vtkOpenGLPropertyDefaultMain_vs;vtkSobelGradientMagnitudePassShader1_fs;vtkSobelGradientMagnitudePassShader2_fs;vtkShadowMapPassShader_fs;vtkShadowMapPassShader_vs;vtkXRenderWindowInteractor;vtkXOpenGLRenderWindow;vtkDummyGPUInfoList")

foreach(header ${vtkRenderingOpenGL_HEADERS})
  set(vtkRenderingOpenGL_HEADER_${header}_EXISTS 1)
endforeach()

set(vtkRenderingOpenGL_HEADER_vtkImageProcessingPass_ABSTRACT 1)
set(vtkRenderingOpenGL_HEADER_vtkOpenGLRenderWindow_ABSTRACT 1)
set(vtkRenderingOpenGL_HEADER_vtkPainter_ABSTRACT 1)
set(vtkRenderingOpenGL_HEADER_vtkPolyDataPainter_ABSTRACT 1)
set(vtkRenderingOpenGL_HEADER_vtkPrimitivePainter_ABSTRACT 1)

set(vtkRenderingOpenGL_HEADER_vtkLightingHelper_WRAP_EXCLUDE 1)
set(vtkRenderingOpenGL_HEADER_vtkOpenGLGL2PSHelper_WRAP_EXCLUDE 1)
set(vtkRenderingOpenGL_HEADER_vtkOpenGLState_WRAP_EXCLUDE 1)
set(vtkRenderingOpenGL_HEADER_vtkShader2_WRAP_EXCLUDE 1)
set(vtkRenderingOpenGL_HEADER_vtkShader2Collection_WRAP_EXCLUDE 1)
set(vtkRenderingOpenGL_HEADER_vtkShaderProgram2_WRAP_EXCLUDE 1)
set(vtkRenderingOpenGL_HEADER_vtkTextureUnitManager_WRAP_EXCLUDE 1)
set(vtkRenderingOpenGL_HEADER_vtkgl_WRAP_EXCLUDE 1)
set(vtkRenderingOpenGL_HEADER_vtkRenderingOpenGLObjectFactory_WRAP_EXCLUDE 1)
set(vtkRenderingOpenGL_HEADER_vtkColorMaterialHelper_vs_WRAP_EXCLUDE 1)
set(vtkRenderingOpenGL_HEADER_vtkDepthPeeling_fs_WRAP_EXCLUDE 1)
set(vtkRenderingOpenGL_HEADER_vtkGaussianBlurPassShader_fs_WRAP_EXCLUDE 1)
set(vtkRenderingOpenGL_HEADER_vtkLighting_s_WRAP_EXCLUDE 1)
set(vtkRenderingOpenGL_HEADER_vtkLightingHelper_s_WRAP_EXCLUDE 1)
set(vtkRenderingOpenGL_HEADER_vtkOpenGLRenderer_PeelingFS_WRAP_EXCLUDE 1)
set(vtkRenderingOpenGL_HEADER_vtkOpenGLPropertyDefaultPropFunc_fs_WRAP_EXCLUDE 1)
set(vtkRenderingOpenGL_HEADER_vtkOpenGLPropertyDefaultPropFunc_vs_WRAP_EXCLUDE 1)
set(vtkRenderingOpenGL_HEADER_vtkOpenGLPropertyDefaultMain_fs_WRAP_EXCLUDE 1)
set(vtkRenderingOpenGL_HEADER_vtkOpenGLPropertyDefaultMain_vs_WRAP_EXCLUDE 1)
set(vtkRenderingOpenGL_HEADER_vtkSobelGradientMagnitudePassShader1_fs_WRAP_EXCLUDE 1)
set(vtkRenderingOpenGL_HEADER_vtkSobelGradientMagnitudePassShader2_fs_WRAP_EXCLUDE 1)
set(vtkRenderingOpenGL_HEADER_vtkShadowMapPassShader_fs_WRAP_EXCLUDE 1)
set(vtkRenderingOpenGL_HEADER_vtkShadowMapPassShader_vs_WRAP_EXCLUDE 1)

set(vtkRenderingOpenGL_HEADER_vtkLightingHelper_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingOpenGL_HEADER_vtkOpenGLGL2PSHelper_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingOpenGL_HEADER_vtkOpenGLState_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingOpenGL_HEADER_vtkgl_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingOpenGL_HEADER_vtkRenderingOpenGLObjectFactory_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingOpenGL_HEADER_vtkColorMaterialHelper_vs_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingOpenGL_HEADER_vtkDepthPeeling_fs_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingOpenGL_HEADER_vtkGaussianBlurPassShader_fs_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingOpenGL_HEADER_vtkLighting_s_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingOpenGL_HEADER_vtkLightingHelper_s_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingOpenGL_HEADER_vtkOpenGLRenderer_PeelingFS_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingOpenGL_HEADER_vtkOpenGLPropertyDefaultPropFunc_fs_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingOpenGL_HEADER_vtkOpenGLPropertyDefaultPropFunc_vs_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingOpenGL_HEADER_vtkOpenGLPropertyDefaultMain_fs_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingOpenGL_HEADER_vtkOpenGLPropertyDefaultMain_vs_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingOpenGL_HEADER_vtkSobelGradientMagnitudePassShader1_fs_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingOpenGL_HEADER_vtkSobelGradientMagnitudePassShader2_fs_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingOpenGL_HEADER_vtkShadowMapPassShader_fs_WRAP_EXCLUDE_PYTHON 1)
set(vtkRenderingOpenGL_HEADER_vtkShadowMapPassShader_vs_WRAP_EXCLUDE_PYTHON 1)

