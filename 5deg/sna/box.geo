//gmsh

//Merge "coque_aero_orig_rescale.stp";

//General.ScaleX=0.001;
//General.ScaleY=0.001;
//General.ScaleZ=0.001;

//Mesh.CharacteristicLengthFactor=1.5;
Mesh.CharacteristicLengthFromCurvature=0;
Mesh.CharacteristicLengthMin=0.005;
Mesh.CharacteristicLengthMax=5;

Mesh.Optimize = 1;
Mesh.OptimizeNetgen = 0;


//////// begin outter box*****************


Point(1) = {2.6, 2.1, 16.3};

nff[]=Extrude {-5.2,0,0} {
Point{1};
Layers{4};
Recombine;
};

nfg[]=Extrude {0, -2.1, 0} {
  Line{nff[1]};
Layers {2};
Recombine;
};

Extrude {0, 0, -22.45} {
  Surface{nfg[1]};
Layers {16};
Recombine;
}






/*
Physical Surface("fixedWalls") = {23, 24, 21, 20, 22, 18, 19, 25, 17, 16, 14, 15, 12, 26, 11, 10, 29, 27, 9, 13, 30, 28, 1, 8, 4, 5, 2, 7, 3, 6};

Physical Surface("splitWall") = {9053};
Physical Surface("floor") = {9066, 9022};
Physical Surface("outlet") = {9057};
Physical Surface("inlet") = {9055};
Physical Surface("outdoors") = {9063, 9061, 9059};
*/



Physical Surface("inlet") = {27};
Physical Surface("outlet") = {5};
Physical Surface("outdoors") = {18, 14, 26};
Physical Surface("floor") = {22};


Physical Volume(28) = {1};
