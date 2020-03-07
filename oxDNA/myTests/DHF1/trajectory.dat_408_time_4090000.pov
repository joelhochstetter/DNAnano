// switches for output
#declare DRAW_BASES = 1; // possible values are 0, 1; only relevant for DNA ribbons
#declare DRAW_BASES_TYPE = 3; // possible values are 1, 2, 3; only relevant for DNA ribbons
#declare DRAW_FOG = 0; // set to 1 to enable fog

#include "colors.inc"

#include "transforms.inc"
background { rgb <1, 1, 1>}

#default {
   normal{
       ripples 0.25
       frequency 0.20
       turbulence 0.2
       lambda 5
   }
	finish {
		phong 0.1
		phong_size 40.
	}
}

// original window dimensions: 1024x640


// camera settings

camera {
	sky <-0, 1, 0>
	up <-0, 1, 0>
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<1.327300, 3.726281, 2.219884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.931015, 3.689701, 2.260136>,  <0.693244, 3.667753, 2.284287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.931015, 3.689701, 2.260136>,  <1.327300, 3.726281, 2.219884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.931015, 3.689701, 2.260136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045347, 0.475484, 0.878555,
		-0.128191, 0.874958, -0.466921,
		-0.990712, -0.091449, 0.100629,
		0.633801, 3.662266, 2.290324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.994366, 4.280279, 2.344728>,  <1.327300, 3.726281, 2.219884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.994366, 4.280279, 2.344728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.744560, 4.016766, 2.512531>,  <0.594676, 3.858658, 2.613213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.744560, 4.016766, 2.512531>,  <0.994366, 4.280279, 2.344728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.744560, 4.016766, 2.512531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146968, 0.428409, 0.891552,
		-0.767060, 0.618442, -0.170728,
		-0.624516, -0.658782, 0.419507,
		0.557206, 3.819131, 2.638383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.403021, 4.611771, 2.751858>,  <0.994366, 4.280279, 2.344728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.403021, 4.611771, 2.751858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.500946, 4.251644, 2.895802>,  <0.559701, 4.035568, 2.982168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.500946, 4.251644, 2.895802>,  <0.403021, 4.611771, 2.751858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.500946, 4.251644, 2.895802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089462, 0.390545, 0.916226,
		-0.965434, -0.192109, 0.176155,
		0.244812, -0.900316, 0.359859,
		0.574390, 3.981550, 3.003759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.062722, 4.325339, 3.379934>,  <0.403021, 4.611771, 2.751858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.062722, 4.325339, 3.379934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.303490, 4.164459, 3.377335>,  <0.523217, 4.067931, 3.375775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.303490, 4.164459, 3.377335>,  <-0.062722, 4.325339, 3.379934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.303490, 4.164459, 3.377335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113617, 0.243061, 0.963334,
		-0.385874, -0.882698, 0.268226,
		0.915528, -0.402201, -0.006499,
		0.578148, 4.043799, 3.375385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.043390, 3.791072, 3.952673>,  <-0.062722, 4.325339, 3.379934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.043390, 3.791072, 3.952673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.332253, 3.904385, 3.874870>,  <0.557638, 3.972372, 3.828189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.332253, 3.904385, 3.874870>,  <-0.043390, 3.791072, 3.952673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.332253, 3.904385, 3.874870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124366, 0.247474, 0.960880,
		0.320338, -0.926556, 0.197173,
		0.939104, 0.283285, -0.194507,
		0.613984, 3.989369, 3.816518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.401489, 3.448506, 4.429870>,  <-0.043390, 3.791072, 3.952673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.401489, 3.448506, 4.429870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.619625, 3.755917, 4.296021>,  <0.750507, 3.940363, 4.215711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.619625, 3.755917, 4.296021>,  <0.401489, 3.448506, 4.429870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.619625, 3.755917, 4.296021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267075, 0.219093, 0.938440,
		0.794529, -0.601138, -0.085775,
		0.545339, 0.768526, -0.334625,
		0.783227, 3.986474, 4.195633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.026181, 3.227686, 4.471600>,  <0.401489, 3.448506, 4.429870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.026181, 3.227686, 4.471600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.082169, 3.623692, 4.478313>,  <1.115761, 3.861295, 4.482341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.082169, 3.623692, 4.478313>,  <1.026181, 3.227686, 4.471600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.082169, 3.623692, 4.478313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404091, -0.072589, 0.911834,
		0.903946, -0.120847, -0.410216,
		0.139970, 0.990013, 0.016784,
		1.124160, 3.920696, 4.483348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.679160, 3.355659, 4.780864>,  <1.026181, 3.227686, 4.471600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.679160, 3.355659, 4.780864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.494518, 3.709961, 4.800301>,  <1.383733, 3.922542, 4.811963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.494518, 3.709961, 4.800301>,  <1.679160, 3.355659, 4.780864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.494518, 3.709961, 4.800301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346382, 0.129545, 0.929106,
		0.816665, 0.445710, -0.366608,
		-0.461604, 0.885754, 0.048591,
		1.356037, 3.975687, 4.814878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.298826, 3.530623, 6.107621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.357956, 3.925735, 6.127365>,  <1.393434, 4.162803, 6.139212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.357956, 3.925735, 6.127365>,  <1.298826, 3.530623, 6.107621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.357956, 3.925735, 6.127365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119420, 0.067370, -0.990555,
		-0.981777, 0.140534, 0.127920,
		0.147824, 0.987781, 0.049360,
		1.402303, 4.222070, 6.142173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.863932, 3.908221, 5.641009>,  <1.298826, 3.530623, 6.107621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.863932, 3.908221, 5.641009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.143583, 4.184029, 5.716675>,  <1.311374, 4.349513, 5.762074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.143583, 4.184029, 5.716675>,  <0.863932, 3.908221, 5.641009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.143583, 4.184029, 5.716675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030722, 0.293292, -0.955529,
		-0.714336, 0.662226, 0.226232,
		0.699128, 0.689519, 0.189164,
		1.353322, 4.390884, 5.773424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.706631, 4.635333, 5.719024>,  <0.863932, 3.908221, 5.641009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.706631, 4.635333, 5.719024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.025343, 4.493195, 5.523525>,  <1.216570, 4.407912, 5.406226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.025343, 4.493195, 5.523525>,  <0.706631, 4.635333, 5.719024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.025343, 4.493195, 5.523525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403361, 0.289476, -0.868046,
		0.449936, 0.888782, 0.087316,
		0.796779, -0.355345, -0.488746,
		1.264377, 4.386591, 5.376901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.785857, 5.075292, 5.147521>,  <0.706631, 4.635333, 5.719024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.785857, 5.075292, 5.147521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.964520, 4.730690, 5.050934>,  <1.071717, 4.523929, 4.992981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.964520, 4.730690, 5.050934>,  <0.785857, 5.075292, 5.147521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.964520, 4.730690, 5.050934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232188, 0.149027, -0.961187,
		0.864053, 0.485385, -0.133467,
		0.446656, -0.861506, -0.241468,
		1.098516, 4.472239, 4.978493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.125670, 5.245998, 4.492325>,  <0.785857, 5.075292, 5.147521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.125670, 5.245998, 4.492325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.121246, 4.846031, 4.494919>,  <1.118592, 4.606051, 4.496475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.121246, 4.846031, 4.494919>,  <1.125670, 5.245998, 4.492325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.121246, 4.846031, 4.494919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075527, -0.005631, -0.997128,
		0.997082, -0.011518, -0.075458,
		-0.011060, -0.999918, 0.006485,
		1.117928, 4.546056, 4.496864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.569994, 4.950736, 3.910778>,  <1.125670, 5.245998, 4.492325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.569994, 4.950736, 3.910778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.320578, 4.654533, 4.011055>,  <1.170928, 4.476812, 4.071221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.320578, 4.654533, 4.011055>,  <1.569994, 4.950736, 3.910778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.320578, 4.654533, 4.011055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052696, -0.359746, -0.931561,
		0.780012, -0.567656, 0.263338,
		-0.623541, -0.740506, 0.250693,
		1.133515, 4.432382, 4.086263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.814166, 4.366339, 3.581802>,  <1.569994, 4.950736, 3.910778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.814166, 4.366339, 3.581802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.440168, 4.245270, 3.655746>,  <1.215770, 4.172628, 3.700113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.440168, 4.245270, 3.655746>,  <1.814166, 4.366339, 3.581802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.440168, 4.245270, 3.655746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022095, -0.470512, -0.882117,
		0.353974, -0.828859, 0.433238,
		-0.934994, -0.302674, 0.184862,
		1.159670, 4.154468, 3.711205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.835361, 3.619184, 3.388453>,  <1.814166, 4.366339, 3.581802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.835361, 3.619184, 3.388453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.469912, 3.779510, 3.361214>,  <1.250642, 3.875706, 3.344870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.469912, 3.779510, 3.361214>,  <1.835361, 3.619184, 3.388453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.469912, 3.779510, 3.361214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114098, -0.413550, -0.903304,
		-0.390211, -0.817515, 0.423562,
		-0.913628, 0.400807, -0.068095,
		1.195824, 3.899755, 3.340784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
