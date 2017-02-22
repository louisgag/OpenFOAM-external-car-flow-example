# OpenFOAM-external-car-flow-example

This model was used to evaluate the aerodynamic efficiency of a the [Alérion Supermileage](http://www.alerionsupermileage.com/) car.
Note that the car shapes provided are **not the actual shape** of the Alérion Supermileage car.
Using these shapes would give you rather bad aerodynamics.
They are rough approximation provided only to allow running the case.
You may also need to reposition the mesh provided in the file.stl file and copy it in the corresponding yaw angle directories.
Indeed, similar versions of the example are given for yaw angles of 0°, 5°, 15°, and 25°.

The .geo files can be opened with [Gmsh](http://gmsh.info/).

If you use the model in your research please cite the corresponding article:
Gagnon, L., Richard, M., Beardsell, G., and Boudreau, M., « [The Process of Making an Aerodynamically Efficient Car Body for the SAE Supermileage Competition](http://papers.sae.org/2012-01-0176/) », SAE Technical Paper 2012-01-0176, 2012, doi: 10.4271/2012-01-0176
