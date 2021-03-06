#include "mainwindow.h"
#include "ui_mainwindow.h"

#include <QDebug>


#include <vtkAutoInit.h>
VTK_MODULE_INIT(vtkRenderingOpenGL);
VTK_MODULE_INIT(vtkInteractionStyle);
VTK_MODULE_INIT(vtkRenderingFreeType);


#include <vtkCylinderSource.h>
#include <vtkPolyDataMapper.h>
#include <vtkActor.h>
#include <vtkRenderer.h>
#include <vtkRenderWindow.h>
#include <vtkRenderWindowInteractor.h>
#include <vtkProperty.h>
#include <vtkCamera.h>
#include <vtkSmartPointer.h>
#include <vtkPlaneSource.h>
#include <vtkAxesActor.h>
#include <vtkPolyData.h>
#include <vtkSphereSource.h>
#include <vtkInteractorStyleTrackballCamera.h>
#include <vtkLineSource.h>
#include <vtkTubeFilter.h>
#include <vtkPoints.h>
#include <vtkCellArray.h>
#include <vtkVertexGlyphFilter.h>
#include <vtkKdTreePointLocator.h>
#include <vtkAppendFilter.h>



MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    double spotSize = 8;
    double stepOver = 4;
    double scannerHeight = 200;
    double workAreaX = 60;
    double workAreaY = 40;


    //PLANE
    vtkSmartPointer<vtkPlaneSource> planeSource =
            vtkSmartPointer<vtkPlaneSource>::New();

    planeSource->SetNormal(0.0, 0.0, 1.0);
    planeSource->SetPoint1(workAreaX,0,0);
    planeSource->SetPoint2(0,workAreaY,0);
    planeSource->SetCenter(0.0, 0.0, 2.0);

    planeSource->Update();


    vtkSmartPointer<vtkPolyDataMapper> planeMapper =
            vtkSmartPointer<vtkPolyDataMapper>::New();
    planeMapper->SetInputConnection(planeSource->GetOutputPort());

    vtkSmartPointer<vtkActor> planeActor =
            vtkSmartPointer<vtkActor>::New();
    planeActor->SetMapper(planeMapper);
    planeActor->GetProperty()->SetOpacity(0.2);
    planeActor->VisibilityOn();


    //RENDERING PIPELINE
    vtkSmartPointer<vtkRenderer> renderer =
            vtkSmartPointer<vtkRenderer>::New();
    vtkSmartPointer<vtkRenderWindow> renderWindow =
            vtkSmartPointer<vtkRenderWindow>::New();
    renderWindow->AddRenderer(renderer);

    vtkSmartPointer<vtkRenderWindowInteractor> renderWindowInteractor =
            vtkSmartPointer<vtkRenderWindowInteractor>::New();

    vtkSmartPointer<vtkInteractorStyleTrackballCamera> interactorStyle =
            vtkSmartPointer<vtkInteractorStyleTrackballCamera>::New();
    renderWindowInteractor->SetInteractorStyle(interactorStyle);
    renderWindowInteractor->SetRenderWindow(renderWindow);

    //AXES ACTOR
    vtkSmartPointer<vtkAxesActor> axesActor =
            vtkSmartPointer<vtkAxesActor>::New();
    axesActor->AxisLabelsOff();
    axesActor->SetTotalLength(50,50,50);








//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //ARRAY OF POINTS
    vtkSmartPointer<vtkPoints> pointsArray =
            vtkSmartPointer<vtkPoints>::New();

    int numberOfSpotsX = floor((workAreaX - spotSize) / stepOver);
    int numberOfSpotsY = floor((workAreaY - spotSize) / stepOver);
    qDebug() << "numberOfSpotsX: " << numberOfSpotsX;
    qDebug() << "numberOfSpotsY: " << numberOfSpotsY;
    double workAreaXActual = numberOfSpotsX * stepOver + spotSize;
    double workAreaYActual = numberOfSpotsY * stepOver + spotSize;
    //double distanceBetweenExtremePointsX = (numberOfSpotsX - 1) * stepOver;
    double distanceBetweenExtremePointsY = (numberOfSpotsY ) * stepOver;
//    qDebug() << "workAreaXActual: " << workAreaXActual;
//    qDebug() << "workAreaYActual: " << workAreaYActual;
//    qDebug() << "distanceBetweenExtremePointsX: " << distanceBetweenExtremePointsX;
//    qDebug() << "distanceBetweenExtremePointsY: " << distanceBetweenExtremePointsY;

    const double firstPoint[3] = {(-workAreaXActual/2 + spotSize/2), (-workAreaYActual/2 + spotSize/2), 0.0};

    qDebug() << firstPoint[0];
    qDebug() << firstPoint[1];
    //qDebug() << firstPoint[2];

    double bufferPoint[3];

    vtkIdType indexOfPoints = 0;


    for(int i = 0; i < numberOfSpotsX + 1; i++)
    {
        for (int j=0; j < numberOfSpotsY + 1; j++)
        {
            if(i%2 == 0)
            {
                pointsArray->InsertPoint(indexOfPoints, firstPoint[0] +  stepOver*i, firstPoint[1] + stepOver*j, 0.0 );
            }
            else
            {
                if( j == numberOfSpotsY)
                    break;
                pointsArray->InsertPoint(indexOfPoints, firstPoint[0] +  stepOver*i, firstPoint[1] + distanceBetweenExtremePointsY - stepOver/2 - stepOver*j, 0.0 );

            }
            pointsArray->GetPoint(indexOfPoints, bufferPoint);

//            qDebug() << "bufferPoint: ";
//            qDebug() << "X: " << bufferPoint[0];
//            qDebug() << "Y: " << bufferPoint[1];
//            qDebug() << "Z: " << bufferPoint[2];
//            qDebug() << "indexOfPoints: " << indexOfPoints;
//            qDebug() << "\n";

            indexOfPoints++;
        }
    }

    vtkSmartPointer<vtkPolyData> pointsArrayPolyData =
            vtkSmartPointer<vtkPolyData>::New();
    pointsArrayPolyData->SetPoints(pointsArray);

    vtkSmartPointer<vtkVertexGlyphFilter> vertexFilter =
            vtkSmartPointer<vtkVertexGlyphFilter>::New();
    vertexFilter->SetInputData(pointsArrayPolyData);
    vertexFilter->Update();

    vtkSmartPointer<vtkPolyData> polyDataPoints =
            vtkSmartPointer<vtkPolyData>::New();
    polyDataPoints->ShallowCopy(vertexFilter->GetOutput());

    vtkSmartPointer<vtkPolyDataMapper> pointsMapper =
            vtkSmartPointer<vtkPolyDataMapper>::New();
    pointsMapper->SetInputData(polyDataPoints);

    vtkSmartPointer<vtkActor> pointsActor =
            vtkSmartPointer<vtkActor>::New();
    pointsActor->SetMapper(pointsMapper);
    pointsActor->GetProperty()->SetRenderPointsAsSpheres(1);
    pointsActor->GetProperty()->SetPointSize(10);
    pointsActor->GetProperty()->SetColor(0.0, 0.0, 1.0);

    //INDEXING SPIRAL

    vtkSmartPointer<vtkKdTreePointLocator> kdTree =
            vtkSmartPointer<vtkKdTreePointLocator>::New();
    kdTree->SetDataSet(polyDataPoints);
    kdTree->BuildLocator();
    kdTree->Update();

    double referencePoint[3] = {0.0, 0.0, 0.0};
    vtkIdType closestId = kdTree->FindClosestPoint(referencePoint);

    vtkSmartPointer<vtkPoints> pointsArrayTrueSpiral =
            vtkSmartPointer<vtkPoints>::New();


    vtkSmartPointer<vtkPoints> sixSide1 =
            vtkSmartPointer<vtkPoints>::New();
    vtkSmartPointer<vtkPoints> sixSide2 =
            vtkSmartPointer<vtkPoints>::New();
    vtkSmartPointer<vtkPoints> sixSide3 =
            vtkSmartPointer<vtkPoints>::New();
    vtkSmartPointer<vtkPoints> sixSide4 =
            vtkSmartPointer<vtkPoints>::New();
    vtkSmartPointer<vtkPoints> sixSide5 =
            vtkSmartPointer<vtkPoints>::New();
    vtkSmartPointer<vtkPoints> sixSide6 =
            vtkSmartPointer<vtkPoints>::New();


    double hexagonCenterPoint[3];


    pointsArrayTrueSpiral->InsertNextPoint(polyDataPoints->GetPoint(closestId));

    pointsArrayTrueSpiral->GetPoint(pointsArrayTrueSpiral->GetNumberOfPoints() - 1, hexagonCenterPoint);

//    qDebug() << referencePoint[0];
//    qDebug() << referencePoint[1];
//    qDebug() << referencePoint[2];

    //POULATING THE HEXAGON
    //First points in the new hexagon



    int i=5;

    //1 SIDE OF HEXAGON
    sixSide1->InsertNextPoint(hexagonCenterPoint[0], hexagonCenterPoint[1] - stepOver*(i-1), hexagonCenterPoint[2]);
    sixSide1->GetPoint(sixSide1->GetNumberOfPoints() - 1, referencePoint);


    for(int j = 0; j<i; j++)
    {
        sixSide1->InsertNextPoint(referencePoint[0] + stepOver*j, referencePoint[1] + (stepOver/2)*j, referencePoint[2]);
    }
    //2 SIDE OF HEXAGON
    sixSide1->GetPoint(sixSide1->GetNumberOfPoints() - 1, referencePoint);
    for(int j = 0; j<i; j++)
    {
        sixSide2->InsertNextPoint(referencePoint[0], referencePoint[1] + stepOver*j, referencePoint[2]);
    }
    //3 SIDE OF HEXAGON
    sixSide2->GetPoint(sixSide2->GetNumberOfPoints() - 1, referencePoint);
    for(int j = 0; j<i; j++)
    {
        sixSide3->InsertNextPoint(referencePoint[0]-stepOver*j, referencePoint[1] + (stepOver/2)*j, referencePoint[2]);
    }
    //4 SIDE OF HEXAGON
    sixSide3->GetPoint(sixSide3->GetNumberOfPoints() - 1, referencePoint);
    for(int j = 0; j<i; j++)
    {
        sixSide4->InsertNextPoint(referencePoint[0]-stepOver*j, referencePoint[1] - (stepOver/2)*j, referencePoint[2]);
    }
    //5 SIDE OF HEXAGON
    sixSide4->GetPoint(sixSide4->GetNumberOfPoints() - 1, referencePoint);
    for(int j = 0; j<i; j++)
    {
        sixSide5->InsertNextPoint(referencePoint[0], referencePoint[1] - stepOver*j, referencePoint[2]);
    }
    //6 SIDE OF HEXAGON
    sixSide5->GetPoint(sixSide5->GetNumberOfPoints() - 1, referencePoint);
    for(int j = 0; j<(i-1); j++)
    {
        sixSide6->InsertNextPoint(referencePoint[0]+stepOver*j, referencePoint[1] - (stepOver*j)/2, referencePoint[2]);
    }


    qDebug()<< "Number of points in sixSide1: " << (int)sixSide1->GetNumberOfPoints();
    qDebug()<< "Number of points in sixSide2: " << (int)sixSide2->GetNumberOfPoints();
    qDebug()<< "Number of points in sixSide3: " << (int)sixSide3->GetNumberOfPoints();
    qDebug()<< "Number of points in sixSide4: " << (int)sixSide4->GetNumberOfPoints();
    qDebug()<< "Number of points in sixSide5: " << (int)sixSide5->GetNumberOfPoints();
    qDebug()<< "Number of points in sixSide6: " << (int)sixSide6->GetNumberOfPoints();

    //COMBINING HEXAGON POINTS INTO A SINGLE SET OF POINTS
    vtkSmartPointer<vtkPoints> pointsArrayHexagon =
            vtkSmartPointer<vtkPoints>::New();

    pointsArrayHexagon->InsertPoints(pointsArrayHexagon->GetNumberOfPoints(),
                                        sixSide1->GetNumberOfPoints(),
                                        0, sixSide1);
    pointsArrayHexagon->InsertPoints(pointsArrayHexagon->GetNumberOfPoints(),
                                        sixSide2->GetNumberOfPoints(),
                                        0, sixSide2);
    pointsArrayHexagon->InsertPoints(pointsArrayHexagon->GetNumberOfPoints(),
                                        sixSide3->GetNumberOfPoints(),
                                        0, sixSide3);
    pointsArrayHexagon->InsertPoints(pointsArrayHexagon->GetNumberOfPoints(),
                                        sixSide3->GetNumberOfPoints(),
                                        0, sixSide4);
    pointsArrayHexagon->InsertPoints(pointsArrayHexagon->GetNumberOfPoints(),
                                        sixSide5->GetNumberOfPoints(),
                                        0, sixSide5);
    pointsArrayHexagon->InsertPoints(pointsArrayHexagon->GetNumberOfPoints(),
                                        sixSide6->GetNumberOfPoints(),
                                        0, sixSide6);

    qDebug()<< "Number of points in pointsArrayHexagon: " << (int)pointsArrayHexagon->GetNumberOfPoints();


    //VISUALIZATION OF HEXAGONS
    vtkSmartPointer<vtkPolyData> hexagonPolyData =
            vtkSmartPointer<vtkPolyData>::New();
    hexagonPolyData->SetPoints(pointsArrayHexagon);

    vertexFilter->SetInputData(hexagonPolyData);
    vertexFilter->Update();

    vtkSmartPointer<vtkPolyData> hexagonPolyDataPoints =
            vtkSmartPointer<vtkPolyData>::New();
    hexagonPolyDataPoints->ShallowCopy(vertexFilter->GetOutput());

    vtkSmartPointer<vtkPolyDataMapper> hexagonPointsMapper =
            vtkSmartPointer<vtkPolyDataMapper>::New();
    hexagonPointsMapper->SetInputData(hexagonPolyDataPoints);


    vtkSmartPointer<vtkPolyDataMapper> polygonPointsMapper =
            vtkSmartPointer<vtkPolyDataMapper>::New();
    polygonPointsMapper->SetInputData(hexagonPolyDataPoints);

    vtkSmartPointer<vtkActor> hexagonPointsActor =
            vtkSmartPointer<vtkActor>::New();
    hexagonPointsActor->SetMapper(hexagonPointsMapper);
    hexagonPointsActor->GetProperty()->SetRenderPointsAsSpheres(1);
    hexagonPointsActor->GetProperty()->SetPointSize(10);
    hexagonPointsActor->GetProperty()->SetColor(0.0, 1.0, 0.0);



/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //SPHERE SOURCE
    vtkSmartPointer<vtkSphereSource> sphereSource =
            vtkSmartPointer<vtkSphereSource>::New();
    sphereSource->SetRadius(10);
    sphereSource->SetCenter(0.0, 0.0, scannerHeight);

    vtkSmartPointer<vtkPolyDataMapper> sphereMapper =
            vtkSmartPointer<vtkPolyDataMapper>::New();
    sphereMapper->SetInputConnection(sphereSource->GetOutputPort());

    vtkSmartPointer<vtkActor> sphereActor =
            vtkSmartPointer<vtkActor>::New();
    sphereActor->SetMapper(sphereMapper);

    //LASER BEAM
    vtkSmartPointer<vtkLineSource> laserLine =
            vtkSmartPointer<vtkLineSource>::New();
    laserLine->SetPoint1(pointsArray->GetPoint(closestId));
    laserLine->SetPoint2(0.0, 0.0, scannerHeight);
    laserLine->Update();

    vtkSmartPointer<vtkTubeFilter> tubeFilter =
            vtkSmartPointer<vtkTubeFilter>::New();
    tubeFilter->SetInputConnection(laserLine->GetOutputPort());
    tubeFilter->SetRadius(spotSize/2);
    tubeFilter->SetNumberOfSides(10);
    tubeFilter->SetCapping(true);

    vtkSmartPointer<vtkPolyDataMapper> laserBeamMapper =
            vtkSmartPointer<vtkPolyDataMapper>::New();
    laserBeamMapper->SetInputConnection(tubeFilter->GetOutputPort());


    vtkSmartPointer<vtkActor> laserBeamActor =
            vtkSmartPointer<vtkActor>::New();
    laserBeamActor->SetMapper(laserBeamMapper);
    laserBeamActor->GetProperty()->SetColor(1.0, 0.0, 0.0);
    laserBeamActor->GetProperty()->SetOpacity(0.2);


    //ADDING ACTORS
    renderer->AddActor(planeActor);
    renderer->SetBackground(0.1,0.2,0.3);

    renderer->AddActor(axesActor);

    renderer->AddActor(sphereActor);

    renderer->AddActor(laserBeamActor);

    renderer->AddActor(pointsActor);

    renderer->AddActor(hexagonPointsActor);

    renderer->ResetCamera();
    renderWindow->Render();

    renderWindowInteractor->Start();



    //return EXIT_SUCCESS;
}

MainWindow::~MainWindow()
{
    delete ui;
}
