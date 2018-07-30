set(vtkFiltersPoints_HEADERS_LOADED 1)
set(vtkFiltersPoints_HEADERS "vtkBoundedPointSource;vtkEllipsoidalGaussianKernel;vtkEuclideanClusterExtraction;vtkExtractHierarchicalBins;vtkExtractPointCloudPiece;vtkExtractPoints;vtkExtractSurface;vtkFitImplicitFunction;vtkGaussianKernel;vtkGeneralizedKernel;vtkHierarchicalBinningFilter;vtkInterpolationKernel;vtkLinearKernel;vtkPCACurvatureEstimation;vtkPCANormalEstimation;vtkPointDensityFilter;vtkPointCloudFilter;vtkPointInterpolator;vtkPointInterpolator2D;vtkProbabilisticVoronoiKernel;vtkRadiusOutlierRemoval;vtkSPHInterpolator;vtkSPHCubicKernel;vtkSPHKernel;vtkSPHQuarticKernel;vtkSPHQuinticKernel;vtkShepardKernel;vtkSignedDistance;vtkStatisticalOutlierRemoval;vtkVoxelGrid;vtkVoronoiKernel;vtkWendlandQuinticKernel")

foreach(header ${vtkFiltersPoints_HEADERS})
  set(vtkFiltersPoints_HEADER_${header}_EXISTS 1)
endforeach()

set(vtkFiltersPoints_HEADER_vtkGeneralizedKernel_ABSTRACT 1)
set(vtkFiltersPoints_HEADER_vtkInterpolationKernel_ABSTRACT 1)
set(vtkFiltersPoints_HEADER_vtkPointCloudFilter_ABSTRACT 1)



