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
	right 1.6 * <0.581683, 0, 0.813415>
	location <-54.4937, 30, 90.4225>
	look_at <30, 30, 30>
	direction <84.4937, 0, -60.4225>
	angle 67.0682
}


# declare cpy_camera_pos = <-54.4937, 30, 90.4225>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 48
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <0.231732, -1, 1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <-0.231732, 1, -1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<42.395283, 32.528469, 22.927958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.783291, 32.620552, 22.959122>,  <43.016094, 32.675800, 22.977819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.783291, 32.620552, 22.959122>,  <42.395283, 32.528469, 22.927958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.783291, 32.620552, 22.959122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023120, 0.406532, -0.913344,
		-0.241932, 0.884159, 0.399665,
		0.970018, 0.230207, 0.077911,
		43.074295, 32.689613, 22.982494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.282806, 33.145985, 22.643444>,  <42.395283, 32.528469, 22.927958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.282806, 33.145985, 22.643444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.672794, 33.057278, 22.637169>,  <42.906788, 33.004055, 22.633404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.672794, 33.057278, 22.637169>,  <42.282806, 33.145985, 22.643444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.672794, 33.057278, 22.637169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069244, 0.369974, -0.926458,
		0.211260, 0.902186, 0.376071,
		0.974974, -0.221764, -0.015690,
		42.965286, 32.990749, 22.632462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.668247, 33.714397, 22.511913>,  <42.282806, 33.145985, 22.643444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.668247, 33.714397, 22.511913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.889027, 33.408123, 22.379810>,  <43.021496, 33.224358, 22.300549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.889027, 33.408123, 22.379810>,  <42.668247, 33.714397, 22.511913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.889027, 33.408123, 22.379810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085332, 0.342109, -0.935778,
		0.829498, 0.544686, 0.123491,
		0.551953, -0.765688, -0.330258,
		43.054611, 33.178417, 22.280733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.846210, 33.893135, 21.787971>,  <42.668247, 33.714397, 22.511913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.846210, 33.893135, 21.787971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.030331, 33.540752, 21.831852>,  <43.140804, 33.329323, 21.858181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.030331, 33.540752, 21.831852>,  <42.846210, 33.893135, 21.787971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.030331, 33.540752, 21.831852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090138, -0.076556, -0.992983,
		0.883173, 0.466963, 0.044168,
		0.460305, -0.880957, 0.109703,
		43.168423, 33.276466, 21.864763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.582790, 33.831944, 21.503225>,  <42.846210, 33.893135, 21.787971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.582790, 33.831944, 21.503225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.347595, 33.508701, 21.489223>,  <43.206478, 33.314754, 21.480824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.347595, 33.508701, 21.489223>,  <43.582790, 33.831944, 21.503225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.347595, 33.508701, 21.489223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119586, -0.044051, -0.991846,
		0.799979, -0.587382, 0.122540,
		-0.587991, -0.808110, -0.035003,
		43.171200, 33.266270, 21.478722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.950508, 33.238022, 21.342936>,  <43.582790, 33.831944, 21.503225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.950508, 33.238022, 21.342936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.570553, 33.187458, 21.228580>,  <43.342579, 33.157120, 21.159967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.570553, 33.187458, 21.228580>,  <43.950508, 33.238022, 21.342936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.570553, 33.187458, 21.228580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311901, -0.322680, -0.893642,
		0.020718, -0.938028, 0.345938,
		-0.949889, -0.126413, -0.285887,
		43.285587, 33.149532, 21.142815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.796585, 32.524429, 21.073105>,  <43.950508, 33.238022, 21.342936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.796585, 32.524429, 21.073105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.535381, 32.768063, 20.893059>,  <43.378658, 32.914242, 20.785032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.535381, 32.768063, 20.893059>,  <43.796585, 32.524429, 21.073105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.535381, 32.768063, 20.893059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407131, -0.218833, -0.886767,
		-0.638614, -0.762319, -0.105077,
		-0.653005, 0.609082, -0.450114,
		43.339481, 32.950787, 20.758024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.508911, 32.108616, 20.482212>,  <43.796585, 32.524429, 21.073105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.508911, 32.108616, 20.482212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.478481, 32.504711, 20.435478>,  <43.460224, 32.742367, 20.407438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.478481, 32.504711, 20.435478>,  <43.508911, 32.108616, 20.482212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.478481, 32.504711, 20.435478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483027, -0.065906, -0.873122,
		-0.872295, -0.122857, -0.473295,
		-0.076077, 0.990234, -0.116832,
		43.455658, 32.801781, 20.400429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.590446, 32.147594, 19.818811>,  <43.508911, 32.108616, 20.482212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.590446, 32.147594, 19.818811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.639000, 32.530258, 19.924694>,  <43.668133, 32.759857, 19.988224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.639000, 32.530258, 19.924694>,  <43.590446, 32.147594, 19.818811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.639000, 32.530258, 19.924694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621594, 0.134651, -0.771680,
		-0.773878, 0.258212, -0.578308,
		0.121387, 0.956659, 0.264706,
		43.675415, 32.817257, 20.004107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.397095, 32.682991, 19.252335>,  <43.590446, 32.147594, 19.818811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.397095, 32.682991, 19.252335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.681725, 32.858776, 19.471619>,  <43.852501, 32.964249, 19.603189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.681725, 32.858776, 19.471619>,  <43.397095, 32.682991, 19.252335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.681725, 32.858776, 19.471619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380295, 0.415178, -0.826440,
		-0.590795, 0.796555, 0.128305,
		0.711574, 0.439463, 0.548211,
		43.895195, 32.990616, 19.636082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.561184, 33.174622, 18.844355>,  <43.397095, 32.682991, 19.252335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.561184, 33.174622, 18.844355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.860920, 33.235783, 19.102070>,  <44.040764, 33.272480, 19.256699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.860920, 33.235783, 19.102070>,  <43.561184, 33.174622, 18.844355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.860920, 33.235783, 19.102070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586388, 0.298790, -0.752910,
		-0.307629, 0.941990, 0.134235,
		0.749342, 0.152903, 0.644288,
		44.085724, 33.281654, 19.295357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.967018, 33.730499, 18.619015>,  <43.561184, 33.174622, 18.844355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.967018, 33.730499, 18.619015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.215477, 33.551712, 18.876511>,  <44.364552, 33.444439, 19.031008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.215477, 33.551712, 18.876511>,  <43.967018, 33.730499, 18.619015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.215477, 33.551712, 18.876511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755510, 0.123206, -0.643447,
		0.208286, 0.886026, 0.414216,
		0.621145, -0.446966, 0.643740,
		44.401821, 33.417622, 19.069633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.571198, 34.146034, 18.615955>,  <43.967018, 33.730499, 18.619015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.571198, 34.146034, 18.615955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.704948, 33.797890, 18.760548>,  <44.785198, 33.589005, 18.847303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.704948, 33.797890, 18.760548>,  <44.571198, 34.146034, 18.615955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.704948, 33.797890, 18.760548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916190, 0.210312, -0.341123,
		0.220875, 0.445250, 0.867736,
		0.334380, -0.870357, 0.361481,
		44.805264, 33.536781, 18.868992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.264530, 34.292210, 18.883892>,  <44.571198, 34.146034, 18.615955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.264530, 34.292210, 18.883892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.255375, 33.895184, 18.836079>,  <45.249882, 33.656967, 18.807390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.255375, 33.895184, 18.836079>,  <45.264530, 34.292210, 18.883892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.255375, 33.895184, 18.836079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888303, 0.034668, -0.457947,
		0.458687, -0.116661, 0.880906,
		-0.022885, -0.992567, -0.119532,
		45.248508, 33.597412, 18.800219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.926922, 34.095219, 19.084080>,  <45.264530, 34.292210, 18.883892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.926922, 34.095219, 19.084080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.779724, 33.808884, 18.846710>,  <45.691406, 33.637081, 18.704288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.779724, 33.808884, 18.846710>,  <45.926922, 34.095219, 19.084080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.779724, 33.808884, 18.846710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892316, -0.092435, -0.441845,
		0.261436, -0.692121, 0.672770,
		-0.367998, -0.715838, -0.593425,
		45.669323, 33.594131, 18.668682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.385395, 33.543076, 19.156719>,  <45.926922, 34.095219, 19.084080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.385395, 33.543076, 19.156719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.194973, 33.438633, 18.820816>,  <46.080719, 33.375965, 18.619274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.194973, 33.438633, 18.820816>,  <46.385395, 33.543076, 19.156719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.194973, 33.438633, 18.820816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878970, -0.171650, -0.444913,
		-0.027973, -0.949925, 0.311223,
		-0.476056, -0.261111, -0.839757,
		46.052155, 33.360298, 18.568890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.731865, 32.936302, 18.922281>,  <46.385395, 33.543076, 19.156719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.731865, 32.936302, 18.922281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.539001, 33.099247, 18.612034>,  <46.423283, 33.197014, 18.425886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.539001, 33.099247, 18.612034>,  <46.731865, 32.936302, 18.922281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.539001, 33.099247, 18.612034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867052, 0.095069, -0.489063,
		-0.125487, -0.908306, -0.399041,
		-0.482155, 0.407360, -0.775618,
		46.394356, 33.221455, 18.379349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.981724, 32.619740, 18.320766>,  <46.731865, 32.936302, 18.922281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.981724, 32.619740, 18.320766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.826962, 32.972271, 18.212273>,  <46.734104, 33.183788, 18.147177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.826962, 32.972271, 18.212273>,  <46.981724, 32.619740, 18.320766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.826962, 32.972271, 18.212273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869783, 0.251110, -0.424761,
		-0.306244, -0.400256, -0.863719,
		-0.386901, 0.881328, -0.271235,
		46.710892, 33.236668, 18.130901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.375118, 32.611717, 17.660223>,  <46.981724, 32.619740, 18.320766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.375118, 32.611717, 17.660223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.167015, 32.951023, 17.699787>,  <47.042152, 33.154606, 17.723526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.167015, 32.951023, 17.699787>,  <47.375118, 32.611717, 17.660223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.167015, 32.951023, 17.699787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584907, 0.438314, -0.682470,
		-0.622267, -0.297207, -0.724191,
		-0.520258, 0.848262, 0.098910,
		47.010937, 33.205502, 17.729460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.076500, 32.904236, 16.994913>,  <47.375118, 32.611717, 17.660223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.076500, 32.904236, 16.994913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.125317, 33.223907, 17.230343>,  <47.154606, 33.415710, 17.371601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.125317, 33.223907, 17.230343>,  <47.076500, 32.904236, 16.994913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.125317, 33.223907, 17.230343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611380, 0.406616, -0.678880,
		-0.781870, 0.442691, -0.438980,
		0.122038, 0.799180, 0.588573,
		47.161926, 33.463661, 17.406916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.053780, 33.484028, 16.635757>,  <47.076500, 32.904236, 16.994913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.053780, 33.484028, 16.635757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.279190, 33.596409, 16.946499>,  <47.414436, 33.663837, 17.132944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.279190, 33.596409, 16.946499>,  <47.053780, 33.484028, 16.635757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.279190, 33.596409, 16.946499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644052, 0.439492, -0.626134,
		-0.517338, 0.853177, 0.066713,
		0.563523, 0.280956, 0.776856,
		47.448246, 33.680695, 17.179556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.164146, 34.175323, 16.459713>,  <47.053780, 33.484028, 16.635757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.164146, 34.175323, 16.459713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.443268, 34.132519, 16.743011>,  <47.610741, 34.106834, 16.912991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.443268, 34.132519, 16.743011>,  <47.164146, 34.175323, 16.459713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.443268, 34.132519, 16.743011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672565, 0.438048, -0.596465,
		-0.246417, 0.892559, 0.377646,
		0.697808, -0.107012, 0.708246,
		47.652611, 34.100414, 16.955486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.501701, 34.808338, 16.509933>,  <47.164146, 34.175323, 16.459713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.501701, 34.808338, 16.509933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.771862, 34.549606, 16.651608>,  <47.933960, 34.394367, 16.736612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.771862, 34.549606, 16.651608>,  <47.501701, 34.808338, 16.509933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.771862, 34.549606, 16.651608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653743, 0.302917, -0.693442,
		0.341247, 0.699899, 0.627448,
		0.675404, -0.646825, 0.354184,
		47.974483, 34.355560, 16.757862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.151131, 35.172108, 16.578911>,  <47.501701, 34.808338, 16.509933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.151131, 35.172108, 16.578911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.221050, 34.779060, 16.553909>,  <48.263000, 34.543232, 16.538908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.221050, 34.779060, 16.553909>,  <48.151131, 35.172108, 16.578911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.221050, 34.779060, 16.553909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673229, 0.165601, -0.720652,
		0.718477, 0.083887, 0.690474,
		0.174797, -0.982619, -0.062505,
		48.273491, 34.484276, 16.535158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.866741, 35.153408, 16.844168>,  <48.151131, 35.172108, 16.578911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.866741, 35.153408, 16.844168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.777161, 34.842358, 16.609173>,  <48.723412, 34.655727, 16.468176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.777161, 34.842358, 16.609173>,  <48.866741, 35.153408, 16.844168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.777161, 34.842358, 16.609173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613654, 0.355794, -0.704869,
		0.757150, -0.518367, 0.397516,
		-0.223947, -0.777628, -0.587487,
		48.709976, 34.609070, 16.432926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.518467, 35.029427, 16.484241>,  <48.866741, 35.153408, 16.844168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.518467, 35.029427, 16.484241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.244579, 34.839691, 16.262917>,  <49.080246, 34.725849, 16.130121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.244579, 34.839691, 16.262917>,  <49.518467, 35.029427, 16.484241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.244579, 34.839691, 16.262917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623359, 0.012174, -0.781841,
		0.377594, -0.880258, 0.287347,
		-0.684723, -0.474339, -0.553314,
		49.039162, 34.697388, 16.096922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.897251, 34.500809, 15.964272>,  <49.518467, 35.029427, 16.484241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.897251, 34.500809, 15.964272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.549019, 34.618073, 15.806209>,  <49.340080, 34.688431, 15.711371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.549019, 34.618073, 15.806209>,  <49.897251, 34.500809, 15.964272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.549019, 34.618073, 15.806209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476894, 0.305109, -0.824306,
		-0.121087, -0.906072, -0.405428,
		-0.870580, 0.293159, -0.395156,
		49.287846, 34.706020, 15.687662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.737373, 34.324387, 15.155401>,  <49.897251, 34.500809, 15.964272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.737373, 34.324387, 15.155401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.566822, 34.685688, 15.174760>,  <49.464493, 34.902470, 15.186375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.566822, 34.685688, 15.174760>,  <49.737373, 34.324387, 15.155401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.566822, 34.685688, 15.174760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510879, 0.284621, -0.811168,
		-0.746462, -0.321138, -0.582807,
		-0.426376, 0.903251, 0.048396,
		49.438908, 34.956665, 15.189279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.609482, 34.513100, 14.496279>,  <49.737373, 34.324387, 15.155401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.609482, 34.513100, 14.496279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.628754, 34.873875, 14.667945>,  <49.640316, 35.090340, 14.770945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.628754, 34.873875, 14.667945>,  <49.609482, 34.513100, 14.496279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.628754, 34.873875, 14.667945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471809, 0.358157, -0.805680,
		-0.880383, 0.241303, -0.408287,
		0.048183, 0.901940, 0.429165,
		49.643208, 35.144455, 14.796694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.411366, 35.090458, 14.077684>,  <49.609482, 34.513100, 14.496279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.411366, 35.090458, 14.077684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.711540, 35.139515, 14.337468>,  <49.891647, 35.168949, 14.493339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.711540, 35.139515, 14.337468>,  <49.411366, 35.090458, 14.077684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.711540, 35.139515, 14.337468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635012, 0.138725, -0.759944,
		-0.183296, 0.982708, 0.026227,
		0.750441, 0.122640, 0.649459,
		49.936672, 35.176308, 14.532306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.100468, 35.592964, 14.541483>,  <49.411366, 35.090458, 14.077684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.100468, 35.592964, 14.541483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.139111, 35.888298, 14.808476>,  <49.162296, 36.065498, 14.968673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.139111, 35.888298, 14.808476>,  <49.100468, 35.592964, 14.541483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.139111, 35.888298, 14.808476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994219, 0.103155, 0.029789,
		-0.046861, -0.666503, 0.744028,
		0.096605, 0.738331, 0.667484,
		49.168091, 36.109798, 15.008721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.792641, 35.464001, 15.151863>,  <49.100468, 35.592964, 14.541483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.792641, 35.464001, 15.151863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.793907, 35.862015, 15.112082>,  <48.794666, 36.100822, 15.088214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.793907, 35.862015, 15.112082>,  <48.792641, 35.464001, 15.151863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.793907, 35.862015, 15.112082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983242, 0.021228, 0.181067,
		0.182280, 0.097211, 0.978429,
		0.003168, 0.995037, -0.099452,
		48.794857, 36.160526, 15.082247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.527817, 35.834599, 15.767280>,  <48.792641, 35.464001, 15.151863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.527817, 35.834599, 15.767280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.462669, 36.044544, 15.433095>,  <48.423580, 36.170509, 15.232584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.462669, 36.044544, 15.433095>,  <48.527817, 35.834599, 15.767280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.462669, 36.044544, 15.433095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973537, 0.052098, 0.222513,
		0.160314, 0.849592, 0.502488,
		-0.162866, 0.524862, -0.835461,
		48.413811, 36.202003, 15.182457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.108120, 36.519878, 15.763536>,  <48.527817, 35.834599, 15.767280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.108120, 36.519878, 15.763536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.053856, 36.323269, 15.419442>,  <48.021297, 36.205303, 15.212986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.053856, 36.323269, 15.419442>,  <48.108120, 36.519878, 15.763536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.053856, 36.323269, 15.419442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979938, -0.061387, 0.189612,
		-0.146006, 0.868700, -0.473331,
		-0.135660, -0.491520, -0.860235,
		48.013157, 36.175812, 15.161371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.655018, 36.951504, 15.402331>,  <48.108120, 36.519878, 15.763536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.655018, 36.951504, 15.402331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.621895, 36.562813, 15.313893>,  <47.602020, 36.329597, 15.260831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.621895, 36.562813, 15.313893>,  <47.655018, 36.951504, 15.402331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.621895, 36.562813, 15.313893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974835, 0.032907, 0.220485,
		-0.206977, 0.233790, -0.950002,
		-0.082808, -0.971730, -0.221095,
		47.597054, 36.271294, 15.247564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.032452, 36.713642, 14.904611>,  <47.655018, 36.951504, 15.402331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.032452, 36.713642, 14.904611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.122971, 36.412884, 15.152299>,  <47.177284, 36.232430, 15.300912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.122971, 36.412884, 15.152299>,  <47.032452, 36.713642, 14.904611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.122971, 36.412884, 15.152299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966747, -0.095632, 0.237182,
		-0.119121, -0.652301, -0.748541,
		0.226299, -0.751903, 0.619218,
		47.190861, 36.187313, 15.338065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.621746, 36.050098, 14.706437>,  <47.032452, 36.713642, 14.904611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.621746, 36.050098, 14.706437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.717499, 36.069447, 15.094325>,  <46.774948, 36.081055, 15.327058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.717499, 36.069447, 15.094325>,  <46.621746, 36.050098, 14.706437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.717499, 36.069447, 15.094325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935799, -0.254727, 0.243711,
		0.258802, -0.965802, -0.015712,
		0.239379, 0.048370, 0.969721,
		46.789314, 36.083958, 15.385242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.302986, 35.526028, 14.953989>,  <46.621746, 36.050098, 14.706437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.302986, 35.526028, 14.953989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.367870, 35.767582, 15.266145>,  <46.406799, 35.912514, 15.453438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.367870, 35.767582, 15.266145>,  <46.302986, 35.526028, 14.953989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.367870, 35.767582, 15.266145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946733, -0.127710, 0.295612,
		0.278180, -0.786771, 0.551006,
		0.162210, 0.603889, 0.780389,
		46.416534, 35.948750, 15.500261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.843746, 35.302864, 15.414041>,  <46.302986, 35.526028, 14.953989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.843746, 35.302864, 15.414041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.943790, 35.639839, 15.604930>,  <46.003815, 35.842026, 15.719463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.943790, 35.639839, 15.604930>,  <45.843746, 35.302864, 15.414041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.943790, 35.639839, 15.604930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893578, 0.011070, 0.448772,
		0.372781, -0.538675, 0.755555,
		0.250106, 0.842441, 0.477222,
		46.018822, 35.892570, 15.748096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.821232, 35.190941, 16.148369>,  <45.843746, 35.302864, 15.414041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.821232, 35.190941, 16.148369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.803349, 35.589573, 16.120544>,  <45.792618, 35.828751, 16.103849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.803349, 35.589573, 16.120544>,  <45.821232, 35.190941, 16.148369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.803349, 35.589573, 16.120544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764742, 0.010662, 0.644248,
		0.642783, 0.081999, 0.761647,
		-0.044707, 0.996575, -0.069561,
		45.789936, 35.888546, 16.099676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.683495, 35.336845, 16.860065>,  <45.821232, 35.190941, 16.148369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.683495, 35.336845, 16.860065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.587708, 35.640793, 16.618320>,  <45.530235, 35.823162, 16.473274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.587708, 35.640793, 16.618320>,  <45.683495, 35.336845, 16.860065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.587708, 35.640793, 16.618320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873283, 0.103461, 0.476102,
		0.424304, 0.641789, 0.638806,
		-0.239466, 0.759870, -0.604362,
		45.515869, 35.868755, 16.437012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.635590, 35.930389, 17.269316>,  <45.683495, 35.336845, 16.860065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.635590, 35.930389, 17.269316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.396465, 35.939960, 16.948803>,  <45.252991, 35.945705, 16.756496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.396465, 35.939960, 16.948803>,  <45.635590, 35.930389, 17.269316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.396465, 35.939960, 16.948803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800916, -0.060237, 0.595739,
		-0.034010, 0.997897, 0.055176,
		-0.597810, 0.023931, -0.801281,
		45.217121, 35.947140, 16.708418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.043354, 36.301884, 17.600380>,  <45.635590, 35.930389, 17.269316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.043354, 36.301884, 17.600380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.907860, 36.265640, 17.225777>,  <44.826565, 36.243896, 17.001015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.907860, 36.265640, 17.225777>,  <45.043354, 36.301884, 17.600380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.907860, 36.265640, 17.225777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907694, 0.293501, 0.299916,
		0.247692, 0.951655, -0.181660,
		-0.338734, -0.090605, -0.936509,
		44.806240, 36.238461, 16.944824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.677708, 36.915817, 17.507133>,  <45.043354, 36.301884, 17.600380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.677708, 36.915817, 17.507133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.567520, 36.595867, 17.293846>,  <44.501408, 36.403896, 17.165874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.567520, 36.595867, 17.293846>,  <44.677708, 36.915817, 17.507133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.567520, 36.595867, 17.293846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910082, 0.038339, 0.412651,
		-0.309625, 0.598944, -0.738511,
		-0.275468, -0.799873, -0.533218,
		44.484879, 36.355904, 17.133881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.997177, 37.008648, 17.267023>,  <44.677708, 36.915817, 17.507133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.997177, 37.008648, 17.267023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.017509, 36.609444, 17.252087>,  <44.029709, 36.369923, 17.243124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.017509, 36.609444, 17.252087>,  <43.997177, 37.008648, 17.267023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.017509, 36.609444, 17.252087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906586, -0.061795, 0.417473,
		-0.418949, 0.012633, -0.907922,
		0.050831, -0.998009, -0.037342,
		44.032761, 36.310040, 17.240885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.436054, 36.828590, 17.058170>,  <43.997177, 37.008648, 17.267023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.436054, 36.828590, 17.058170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.545979, 36.472748, 17.204094>,  <43.611935, 36.259243, 17.291647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.545979, 36.472748, 17.204094>,  <43.436054, 36.828590, 17.058170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.545979, 36.472748, 17.204094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958592, -0.224013, 0.175839,
		-0.074705, -0.398024, -0.914328,
		0.274810, -0.889604, 0.364808,
		43.628422, 36.205868, 17.313536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.787464, 36.400429, 16.929979>,  <43.436054, 36.828590, 17.058170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.787464, 36.400429, 16.929979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.016029, 36.213421, 17.199768>,  <43.153168, 36.101215, 17.361641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.016029, 36.213421, 17.199768>,  <42.787464, 36.400429, 16.929979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.016029, 36.213421, 17.199768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817329, -0.398237, 0.416390,
		0.073929, -0.789196, -0.609676,
		0.571409, -0.467522, 0.674474,
		43.187450, 36.073166, 17.402111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.641235, 35.612888, 16.993658>,  <42.787464, 36.400429, 16.929979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.641235, 35.612888, 16.993658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.776974, 35.760113, 17.339924>,  <42.858418, 35.848450, 17.547684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.776974, 35.760113, 17.339924>,  <42.641235, 35.612888, 16.993658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.776974, 35.760113, 17.339924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645557, -0.578223, 0.498913,
		0.684178, -0.728140, 0.041386,
		0.339348, 0.368063, 0.865663,
		42.878777, 35.870533, 17.599623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.587597, 35.108360, 17.383036>,  <42.641235, 35.612888, 16.993658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.587597, 35.108360, 17.383036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.624363, 35.373333, 17.680420>,  <42.646423, 35.532318, 17.858850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.624363, 35.373333, 17.680420>,  <42.587597, 35.108360, 17.383036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.624363, 35.373333, 17.680420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447356, -0.639565, 0.625163,
		0.889620, -0.390053, 0.237558,
		0.091913, 0.662431, 0.743463,
		42.651936, 35.572063, 17.903460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.754967, 34.679256, 17.973747>,  <42.587597, 35.108360, 17.383036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.754967, 34.679256, 17.973747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.646870, 35.028912, 18.135170>,  <42.582012, 35.238705, 18.232023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.646870, 35.028912, 18.135170>,  <42.754967, 34.679256, 17.973747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.646870, 35.028912, 18.135170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334393, -0.478275, 0.812056,
		0.902856, 0.084507, 0.421556,
		-0.270244, 0.874135, 0.403555,
		42.565796, 35.291153, 18.256237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.115002, 34.759922, 18.670565>,  <42.754967, 34.679256, 17.973747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.115002, 34.759922, 18.670565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.776981, 34.971836, 18.641663>,  <42.574169, 35.098984, 18.624321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.776981, 34.971836, 18.641663>,  <43.115002, 34.759922, 18.670565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.776981, 34.971836, 18.641663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368338, -0.478847, 0.796889,
		0.387582, 0.700024, 0.599789,
		-0.845049, 0.529785, -0.072253,
		42.523468, 35.130772, 18.619987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.841232, 34.717026, 19.342543>,  <43.115002, 34.759922, 18.670565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.841232, 34.717026, 19.342543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.531395, 34.866436, 19.138393>,  <42.345493, 34.956081, 19.015903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.531395, 34.866436, 19.138393>,  <42.841232, 34.717026, 19.342543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.531395, 34.866436, 19.138393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626846, -0.346125, 0.698041,
		0.084085, 0.860624, 0.502250,
		-0.774592, 0.373528, -0.510375,
		42.299019, 34.978493, 18.985281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.411427, 35.125004, 19.767181>,  <42.841232, 34.717026, 19.342543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.411427, 35.125004, 19.767181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.167347, 35.030464, 19.464710>,  <42.020901, 34.973740, 19.283228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.167347, 35.030464, 19.464710>,  <42.411427, 35.125004, 19.767181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.167347, 35.030464, 19.464710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699235, -0.288067, 0.654284,
		-0.372469, 0.927985, 0.010514,
		-0.610195, -0.236349, -0.756176,
		41.984287, 34.959560, 19.237858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.785194, 35.162735, 20.113335>,  <42.411427, 35.125004, 19.767181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.785194, 35.162735, 20.113335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.707569, 34.968006, 19.772667>,  <41.660992, 34.851170, 19.568266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.707569, 34.968006, 19.772667>,  <41.785194, 35.162735, 20.113335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.707569, 34.968006, 19.772667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899919, -0.257237, 0.352100,
		-0.390491, 0.834767, -0.388177,
		-0.194068, -0.486820, -0.851672,
		41.649349, 34.821960, 19.517166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.120804, 35.225220, 20.079432>,  <41.785194, 35.162735, 20.113335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.120804, 35.225220, 20.079432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.170532, 34.917660, 19.828568>,  <41.200371, 34.733124, 19.678049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.170532, 34.917660, 19.828568>,  <41.120804, 35.225220, 20.079432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.170532, 34.917660, 19.828568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794919, -0.455462, 0.400823,
		-0.593842, 0.448710, -0.667841,
		0.124323, -0.768904, -0.627160,
		41.207829, 34.686989, 19.640419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443527, 35.146263, 19.809523>,  <41.120804, 35.225220, 20.079432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.443527, 35.146263, 19.809523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.655231, 34.810383, 19.760895>,  <40.782253, 34.608852, 19.731718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.655231, 34.810383, 19.760895>,  <40.443527, 35.146263, 19.809523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.655231, 34.810383, 19.760895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666742, -0.500233, 0.552468,
		-0.524722, -0.211346, -0.824621,
		0.529264, -0.839702, -0.121570,
		40.814011, 34.558472, 19.724424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860775, 34.547821, 19.629553>,  <40.443527, 35.146263, 19.809523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860775, 34.547821, 19.629553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.196754, 34.366928, 19.749542>,  <40.398342, 34.258392, 19.821535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.196754, 34.366928, 19.749542>,  <39.860775, 34.547821, 19.629553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196754, 34.366928, 19.749542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535224, -0.599074, 0.595522,
		-0.089607, -0.660757, -0.745232,
		0.839944, -0.452229, 0.299971,
		40.448738, 34.231258, 19.839533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772953, 33.808811, 19.510052>,  <39.860775, 34.547821, 19.629553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.772953, 33.808811, 19.510052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043491, 33.870354, 19.798183>,  <40.205814, 33.907280, 19.971064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043491, 33.870354, 19.798183>,  <39.772953, 33.808811, 19.510052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.043491, 33.870354, 19.798183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517052, -0.597329, 0.613070,
		0.524602, -0.787099, -0.324450,
		0.676350, 0.153860, 0.720331,
		40.246395, 33.916512, 20.014282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.166607, 33.222900, 19.671881>,  <39.772953, 33.808811, 19.510052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.166607, 33.222900, 19.671881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.061218, 33.479095, 19.960426>,  <39.997986, 33.632812, 20.133553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.061218, 33.479095, 19.960426>,  <40.166607, 33.222900, 19.671881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.061218, 33.479095, 19.960426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728253, -0.622463, 0.286686,
		0.632639, -0.449801, 0.630435,
		-0.263470, 0.640484, 0.721362,
		39.982178, 33.671242, 20.176834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.199223, 32.873142, 20.350328>,  <40.166607, 33.222900, 19.671881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.199223, 32.873142, 20.350328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.926346, 33.165249, 20.364902>,  <39.762619, 33.340511, 20.373648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.926346, 33.165249, 20.364902>,  <40.199223, 32.873142, 20.350328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.926346, 33.165249, 20.364902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660475, -0.636842, 0.397750,
		0.313667, 0.247276, 0.916770,
		-0.682192, 0.730265, 0.036437,
		39.721687, 33.384327, 20.375834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026047, 33.054935, 21.052956>,  <40.199223, 32.873142, 20.350328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026047, 33.054935, 21.052956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.727108, 33.112465, 20.793484>,  <39.547745, 33.146980, 20.637800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.727108, 33.112465, 20.793484>,  <40.026047, 33.054935, 21.052956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727108, 33.112465, 20.793484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589672, -0.593484, 0.547781,
		-0.306200, 0.791892, 0.528345,
		-0.747348, 0.143820, -0.648681,
		39.502903, 33.155609, 20.598879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507217, 33.446144, 21.373331>,  <40.026047, 33.054935, 21.052956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507217, 33.446144, 21.373331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.346695, 33.206497, 21.096199>,  <39.250381, 33.062710, 20.929920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.346695, 33.206497, 21.096199>,  <39.507217, 33.446144, 21.373331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346695, 33.206497, 21.096199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482184, -0.504928, 0.715923,
		-0.778751, 0.621376, -0.086254,
		-0.401305, -0.599116, -0.692830,
		39.226303, 33.026764, 20.888350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723091, 33.415886, 21.382359>,  <39.507217, 33.446144, 21.373331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723091, 33.415886, 21.382359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.854092, 33.080658, 21.207829>,  <38.932690, 32.879520, 21.103111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.854092, 33.080658, 21.207829>,  <38.723091, 33.415886, 21.382359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854092, 33.080658, 21.207829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401676, -0.541478, 0.738551,
		-0.855220, -0.066614, -0.513967,
		0.327499, -0.838072, -0.436325,
		38.952343, 32.829235, 21.076931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227283, 32.926163, 21.132641>,  <38.723091, 33.415886, 21.382359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227283, 32.926163, 21.132641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559681, 32.720692, 21.218044>,  <38.759121, 32.597408, 21.269287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559681, 32.720692, 21.218044>,  <38.227283, 32.926163, 21.132641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559681, 32.720692, 21.218044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525933, -0.600441, 0.602384,
		-0.181230, -0.612868, -0.769122,
		0.830994, -0.513676, 0.213509,
		38.808979, 32.566589, 21.282097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771465, 32.874435, 21.741922>,  <38.227283, 32.926163, 21.132641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771465, 32.874435, 21.741922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.635765, 33.132572, 22.015694>,  <37.554344, 33.287453, 22.179956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.635765, 33.132572, 22.015694>,  <37.771465, 32.874435, 21.741922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635765, 33.132572, 22.015694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110825, -0.695093, 0.710326,
		0.934144, 0.316833, 0.164293,
		-0.339254, 0.645339, 0.684430,
		37.533989, 33.326176, 22.221024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131332, 32.811565, 22.329960>,  <37.771465, 32.874435, 21.741922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131332, 32.811565, 22.329960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.800751, 32.985931, 22.472485>,  <37.602402, 33.090549, 22.557999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.800751, 32.985931, 22.472485>,  <38.131332, 32.811565, 22.329960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800751, 32.985931, 22.472485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019345, -0.654484, 0.755828,
		0.562673, 0.617764, 0.549333,
		-0.826453, 0.435911, 0.356310,
		37.552814, 33.116703, 22.579378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268631, 32.985722, 23.145828>,  <38.131332, 32.811565, 22.329960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.268631, 32.985722, 23.145828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.884117, 32.947590, 23.042412>,  <37.653408, 32.924709, 22.980362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.884117, 32.947590, 23.042412>,  <38.268631, 32.985722, 23.145828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884117, 32.947590, 23.042412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136411, -0.650591, 0.747076,
		-0.239424, 0.753421, 0.612399,
		-0.961285, -0.095330, -0.258542,
		37.595734, 32.918991, 22.964849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959625, 32.934280, 23.786215>,  <38.268631, 32.985722, 23.145828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959625, 32.934280, 23.786215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.688290, 32.785931, 23.532505>,  <37.525486, 32.696918, 23.380280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.688290, 32.785931, 23.532505>,  <37.959625, 32.934280, 23.786215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.688290, 32.785931, 23.532505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246211, -0.698606, 0.671811,
		-0.692266, 0.611883, 0.382580,
		-0.678342, -0.370876, -0.634273,
		37.484787, 32.674667, 23.342222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486115, 32.873943, 24.170338>,  <37.959625, 32.934280, 23.786215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486115, 32.873943, 24.170338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.379818, 32.636276, 23.866669>,  <37.316040, 32.493675, 23.684467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.379818, 32.636276, 23.866669>,  <37.486115, 32.873943, 24.170338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379818, 32.636276, 23.866669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395861, -0.650781, 0.647903,
		-0.879019, 0.472703, -0.062268,
		-0.265743, -0.594168, -0.759174,
		37.300095, 32.458027, 23.638916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777729, 32.737202, 24.283726>,  <37.486115, 32.873943, 24.170338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777729, 32.737202, 24.283726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917377, 32.428329, 24.071365>,  <37.001167, 32.243008, 23.943949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917377, 32.428329, 24.071365>,  <36.777729, 32.737202, 24.283726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917377, 32.428329, 24.071365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497289, -0.632858, 0.593459,
		-0.794241, 0.056823, -0.604940,
		0.349119, -0.772180, -0.530899,
		37.022114, 32.196674, 23.912096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130138, 32.264908, 24.298302>,  <36.777729, 32.737202, 24.283726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130138, 32.264908, 24.298302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425705, 32.031265, 24.163944>,  <36.603043, 31.891079, 24.083330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425705, 32.031265, 24.163944>,  <36.130138, 32.264908, 24.298302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425705, 32.031265, 24.163944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416588, -0.787841, 0.453608,
		-0.529586, -0.195249, -0.825480,
		0.738914, -0.584109, -0.335891,
		36.647381, 31.856033, 24.063177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814819, 31.745371, 24.015339>,  <36.130138, 32.264908, 24.298302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814819, 31.745371, 24.015339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180134, 31.588837, 24.060535>,  <36.399323, 31.494917, 24.087654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180134, 31.588837, 24.060535>,  <35.814819, 31.745371, 24.015339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180134, 31.588837, 24.060535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403951, -0.834583, 0.374560,
		-0.052277, -0.387724, -0.920292,
		0.913286, -0.391333, 0.112992,
		36.454121, 31.471437, 24.094433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676495, 31.020023, 23.857244>,  <35.814819, 31.745371, 24.015339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676495, 31.020023, 23.857244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050762, 31.013737, 23.998260>,  <36.275322, 31.009964, 24.082870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050762, 31.013737, 23.998260>,  <35.676495, 31.020023, 23.857244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050762, 31.013737, 23.998260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190687, -0.863118, 0.467616,
		0.296933, -0.504757, -0.810587,
		0.935665, -0.015718, 0.352539,
		36.331463, 31.009022, 24.104023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787975, 30.421324, 23.765400>,  <35.676495, 31.020023, 23.857244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787975, 30.421324, 23.765400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.060398, 30.504463, 24.046246>,  <36.223850, 30.554346, 24.214752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.060398, 30.504463, 24.046246>,  <35.787975, 30.421324, 23.765400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060398, 30.504463, 24.046246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319909, -0.778052, 0.540641,
		0.658651, -0.592820, -0.463405,
		0.681056, 0.207846, 0.702113,
		36.264713, 30.566816, 24.256880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130943, 29.745783, 24.016600>,  <35.787975, 30.421324, 23.765400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130943, 29.745783, 24.016600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.210152, 30.008823, 24.307350>,  <36.257679, 30.166647, 24.481800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.210152, 30.008823, 24.307350>,  <36.130943, 29.745783, 24.016600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210152, 30.008823, 24.307350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259306, -0.679996, 0.685832,
		0.945276, -0.324294, 0.035864,
		0.198024, 0.657601, 0.726875,
		36.269558, 30.206104, 24.525414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665382, 29.505022, 24.482426>,  <36.130943, 29.745783, 24.016600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665382, 29.505022, 24.482426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431049, 29.762707, 24.679115>,  <36.290451, 29.917318, 24.797129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431049, 29.762707, 24.679115>,  <36.665382, 29.505022, 24.482426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431049, 29.762707, 24.679115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164607, -0.688678, 0.706135,
		0.793540, 0.332735, 0.509492,
		-0.585832, 0.644212, 0.491723,
		36.255299, 29.955971, 24.826632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853123, 29.476831, 25.182440>,  <36.665382, 29.505022, 24.482426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853123, 29.476831, 25.182440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482105, 29.623554, 25.211025>,  <36.259495, 29.711588, 25.228176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482105, 29.623554, 25.211025>,  <36.853123, 29.476831, 25.182440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482105, 29.623554, 25.211025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143529, -0.526236, 0.838138,
		0.345044, 0.767155, 0.540757,
		-0.927548, 0.366808, 0.071466,
		36.203842, 29.733597, 25.232466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847134, 29.782564, 25.836277>,  <36.853123, 29.476831, 25.182440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847134, 29.782564, 25.836277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.475533, 29.707352, 25.708778>,  <36.252571, 29.662224, 25.632280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.475533, 29.707352, 25.708778>,  <36.847134, 29.782564, 25.836277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475533, 29.707352, 25.708778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202753, -0.461928, 0.863432,
		-0.309589, 0.866757, 0.391008,
		-0.929003, -0.188031, -0.318745,
		36.196831, 29.650942, 25.613155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448849, 29.855560, 26.490299>,  <36.847134, 29.782564, 25.836277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448849, 29.855560, 26.490299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184429, 29.702538, 26.232101>,  <36.025776, 29.610723, 26.077183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184429, 29.702538, 26.232101>,  <36.448849, 29.855560, 26.490299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184429, 29.702538, 26.232101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494660, -0.424668, 0.758267,
		-0.564201, 0.820553, 0.091491,
		-0.661051, -0.382558, -0.645493,
		35.986115, 29.587770, 26.038454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835838, 29.890604, 26.776220>,  <36.448849, 29.855560, 26.490299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835838, 29.890604, 26.776220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.733227, 29.636406, 26.484924>,  <35.671658, 29.483887, 26.310146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.733227, 29.636406, 26.484924>,  <35.835838, 29.890604, 26.776220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733227, 29.636406, 26.484924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592579, -0.491825, 0.637933,
		-0.763571, 0.595191, -0.250413,
		-0.256533, -0.635497, -0.728241,
		35.656265, 29.445757, 26.266453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064644, 29.858902, 26.763456>,  <35.835838, 29.890604, 26.776220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064644, 29.858902, 26.763456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228996, 29.529667, 26.606636>,  <35.327610, 29.332127, 26.512545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228996, 29.529667, 26.606636>,  <35.064644, 29.858902, 26.763456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228996, 29.529667, 26.606636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545847, -0.566532, 0.617327,
		-0.730222, -0.039650, -0.682059,
		0.410885, -0.823085, -0.392051,
		35.352261, 29.282742, 26.489021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635746, 29.398327, 26.798746>,  <35.064644, 29.858902, 26.763456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635746, 29.398327, 26.798746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.933708, 29.141918, 26.724762>,  <35.112484, 28.988073, 26.680372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.933708, 29.141918, 26.724762>,  <34.635746, 29.398327, 26.798746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933708, 29.141918, 26.724762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383086, -0.637925, 0.668054,
		-0.546230, -0.426779, -0.720758,
		0.744901, -0.641023, -0.184961,
		35.157177, 28.949612, 26.669273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340183, 28.788828, 26.692984>,  <34.635746, 29.398327, 26.798746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340183, 28.788828, 26.692984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711254, 28.708153, 26.818676>,  <34.933895, 28.659748, 26.894093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711254, 28.708153, 26.818676>,  <34.340183, 28.788828, 26.692984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711254, 28.708153, 26.818676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371263, -0.587965, 0.718653,
		0.039813, -0.783338, -0.620319,
		0.927674, -0.201690, 0.314233,
		34.989555, 28.647646, 26.912945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214504, 28.140415, 26.859865>,  <34.340183, 28.788828, 26.692984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214504, 28.140415, 26.859865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565746, 28.233982, 27.026825>,  <34.776489, 28.290123, 27.127001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565746, 28.233982, 27.026825>,  <34.214504, 28.140415, 26.859865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565746, 28.233982, 27.026825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162351, -0.674937, 0.719793,
		0.450091, -0.699816, -0.554686,
		0.878101, 0.233918, 0.417399,
		34.829178, 28.304157, 27.152044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383957, 27.470379, 27.079979>,  <34.214504, 28.140415, 26.859865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383957, 27.470379, 27.079979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607044, 27.732838, 27.283321>,  <34.740894, 27.890312, 27.405327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607044, 27.732838, 27.283321>,  <34.383957, 27.470379, 27.079979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607044, 27.732838, 27.283321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136266, -0.531764, 0.835858,
		0.818771, -0.535442, -0.207162,
		0.557715, 0.656147, 0.508355,
		34.774357, 27.929682, 27.435827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879795, 27.149748, 27.504709>,  <34.383957, 27.470379, 27.079979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879795, 27.149748, 27.504709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.873447, 27.514023, 27.669827>,  <34.869640, 27.732588, 27.768898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.873447, 27.514023, 27.669827>,  <34.879795, 27.149748, 27.504709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873447, 27.514023, 27.669827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139622, -0.410821, 0.900962,
		0.990078, -0.043338, 0.133671,
		-0.015869, 0.910686, 0.412795,
		34.868687, 27.787228, 27.793665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317818, 27.058664, 28.075237>,  <34.879795, 27.149748, 27.504709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317818, 27.058664, 28.075237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081627, 27.375568, 28.136772>,  <34.939911, 27.565710, 28.173693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081627, 27.375568, 28.136772>,  <35.317818, 27.058664, 28.075237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081627, 27.375568, 28.136772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288801, -0.385416, 0.876384,
		0.753612, 0.473056, 0.456384,
		-0.590476, 0.792258, 0.153835,
		34.904484, 27.613245, 28.182922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498821, 27.344763, 28.706034>,  <35.317818, 27.058664, 28.075237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498821, 27.344763, 28.706034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.123798, 27.475246, 28.657745>,  <34.898785, 27.553537, 28.628773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.123798, 27.475246, 28.657745>,  <35.498821, 27.344763, 28.706034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123798, 27.475246, 28.657745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221601, -0.292661, 0.930184,
		0.268104, 0.898853, 0.346675,
		-0.937557, 0.326210, -0.120723,
		34.842533, 27.573109, 28.621529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388905, 27.613642, 29.419415>,  <35.498821, 27.344763, 28.706034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388905, 27.613642, 29.419415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028389, 27.546822, 29.259525>,  <34.812080, 27.506729, 29.163591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028389, 27.546822, 29.259525>,  <35.388905, 27.613642, 29.419415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028389, 27.546822, 29.259525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359350, -0.227079, 0.905153,
		-0.241973, 0.959443, 0.144634,
		-0.901286, -0.167048, -0.399723,
		34.758003, 27.496708, 29.139608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881992, 27.869555, 29.873518>,  <35.388905, 27.613642, 29.419415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881992, 27.869555, 29.873518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685520, 27.599392, 29.653496>,  <34.567635, 27.437294, 29.521482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685520, 27.599392, 29.653496>,  <34.881992, 27.869555, 29.873518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685520, 27.599392, 29.653496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452197, -0.342005, 0.823742,
		-0.744484, 0.653343, -0.137429,
		-0.491185, -0.675407, -0.550057,
		34.538166, 27.396770, 29.488480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317116, 27.684025, 30.324816>,  <34.881992, 27.869555, 29.873518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317116, 27.684025, 30.324816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262001, 27.393085, 30.055897>,  <34.228931, 27.218521, 29.894547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262001, 27.393085, 30.055897>,  <34.317116, 27.684025, 30.324816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262001, 27.393085, 30.055897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464804, -0.551905, 0.692358,
		-0.874627, 0.407881, -0.262030,
		-0.137784, -0.727348, -0.672295,
		34.220665, 27.174881, 29.854208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575085, 27.463728, 30.285833>,  <34.317116, 27.684025, 30.324816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575085, 27.463728, 30.285833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.794704, 27.142685, 30.192566>,  <33.926476, 26.950060, 30.136606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.794704, 27.142685, 30.192566>,  <33.575085, 27.463728, 30.285833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.794704, 27.142685, 30.192566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439246, -0.514440, 0.736488,
		-0.711060, -0.301951, -0.634995,
		0.549051, -0.802606, -0.233167,
		33.959419, 26.901903, 30.122616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031040, 26.847027, 30.261255>,  <33.575085, 27.463728, 30.285833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031040, 26.847027, 30.261255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.382690, 26.656750, 30.272945>,  <33.593681, 26.542583, 30.279959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.382690, 26.656750, 30.272945>,  <33.031040, 26.847027, 30.261255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.382690, 26.656750, 30.272945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364892, -0.632373, 0.683343,
		-0.306582, -0.611408, -0.729512,
		0.879125, -0.475694, 0.029224,
		33.646427, 26.514042, 30.281713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904243, 26.061842, 30.373249>,  <33.031040, 26.847027, 30.261255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904243, 26.061842, 30.373249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.267357, 26.152424, 30.514473>,  <33.485226, 26.206774, 30.599207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.267357, 26.152424, 30.514473>,  <32.904243, 26.061842, 30.373249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.267357, 26.152424, 30.514473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145532, -0.619395, 0.771473,
		0.393389, -0.751710, -0.529318,
		0.907781, 0.226457, 0.353061,
		33.539692, 26.220362, 30.620392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273399, 25.402979, 30.467293>,  <32.904243, 26.061842, 30.373249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273399, 25.402979, 30.467293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471722, 25.682701, 30.673264>,  <33.590717, 25.850534, 30.796846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471722, 25.682701, 30.673264>,  <33.273399, 25.402979, 30.467293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471722, 25.682701, 30.673264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007803, -0.589327, 0.807857,
		0.868397, -0.404560, -0.286736,
		0.495807, 0.699303, 0.514926,
		33.620464, 25.892492, 30.827742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757633, 25.002222, 30.773331>,  <33.273399, 25.402979, 30.467293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757633, 25.002222, 30.773331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698463, 25.335968, 30.985729>,  <33.662960, 25.536215, 31.113169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698463, 25.335968, 30.985729>,  <33.757633, 25.002222, 30.773331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698463, 25.335968, 30.985729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248647, -0.551033, 0.796579,
		0.957232, -0.014197, 0.288973,
		-0.147925, 0.834363, 0.530996,
		33.654087, 25.586277, 31.145027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018093, 24.810234, 31.385921>,  <33.757633, 25.002222, 30.773331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018093, 24.810234, 31.385921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834988, 25.148727, 31.494984>,  <33.725124, 25.351824, 31.560421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834988, 25.148727, 31.494984>,  <34.018093, 24.810234, 31.385921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834988, 25.148727, 31.494984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198500, -0.396210, 0.896446,
		0.866633, 0.356237, 0.349347,
		-0.457762, 0.846235, 0.272656,
		33.697659, 25.402597, 31.576780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183529, 24.875092, 32.070129>,  <34.018093, 24.810234, 31.385921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183529, 24.875092, 32.070129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858574, 25.107910, 32.056034>,  <33.663601, 25.247601, 32.047577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858574, 25.107910, 32.056034>,  <34.183529, 24.875092, 32.070129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858574, 25.107910, 32.056034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272804, -0.325961, 0.905167,
		0.515361, 0.744965, 0.423592,
		-0.812392, 0.582045, -0.035241,
		33.614857, 25.282524, 32.045464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090088, 25.193359, 32.755413>,  <34.183529, 24.875092, 32.070129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090088, 25.193359, 32.755413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732906, 25.179317, 32.575901>,  <33.518597, 25.170893, 32.468193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732906, 25.179317, 32.575901>,  <34.090088, 25.193359, 32.755413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732906, 25.179317, 32.575901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442107, -0.119267, 0.888997,
		-0.084732, 0.992241, 0.090980,
		-0.892951, -0.035104, -0.448783,
		33.465019, 25.168787, 32.441265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628784, 25.561140, 33.232422>,  <34.090088, 25.193359, 32.755413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628784, 25.561140, 33.232422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394703, 25.328999, 33.005894>,  <33.254253, 25.189713, 32.869976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394703, 25.328999, 33.005894>,  <33.628784, 25.561140, 33.232422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394703, 25.328999, 33.005894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501787, -0.289442, 0.815127,
		-0.636982, 0.761190, -0.121832,
		-0.585204, -0.580355, -0.566325,
		33.219143, 25.154892, 32.835995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008732, 25.545715, 33.501274>,  <33.628784, 25.561140, 33.232422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008732, 25.545715, 33.501274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965340, 25.207737, 33.291779>,  <32.939304, 25.004950, 33.166080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965340, 25.207737, 33.291779>,  <33.008732, 25.545715, 33.501274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965340, 25.207737, 33.291779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543588, -0.390688, 0.742883,
		-0.832313, 0.365284, -0.416921,
		-0.108478, -0.844944, -0.523739,
		32.932796, 24.954254, 33.134659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.271507, 25.315823, 33.566116>,  <33.008732, 25.545715, 33.501274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.271507, 25.315823, 33.566116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490833, 25.002403, 33.449219>,  <32.622429, 24.814352, 33.379082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490833, 25.002403, 33.449219>,  <32.271507, 25.315823, 33.566116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490833, 25.002403, 33.449219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448720, -0.570554, 0.687836,
		-0.705693, -0.246014, -0.664436,
		0.548314, -0.783547, -0.292244,
		32.655327, 24.767340, 33.361546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.840815, 24.750208, 33.650894>,  <32.271507, 25.315823, 33.566116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.840815, 24.750208, 33.650894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192970, 24.563206, 33.619011>,  <32.404263, 24.451004, 33.599880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192970, 24.563206, 33.619011>,  <31.840815, 24.750208, 33.650894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192970, 24.563206, 33.619011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308169, -0.691691, 0.653143,
		-0.360483, -0.550455, -0.753028,
		0.880388, -0.467507, -0.079710,
		32.457088, 24.422955, 33.595097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715075, 24.105793, 33.648499>,  <31.840815, 24.750208, 33.650894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715075, 24.105793, 33.648499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101990, 24.134777, 33.745743>,  <32.334137, 24.152168, 33.804089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101990, 24.134777, 33.745743>,  <31.715075, 24.105793, 33.648499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101990, 24.134777, 33.745743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137287, -0.656356, 0.741855,
		0.213325, -0.750964, -0.624936,
		0.967287, 0.072461, 0.243115,
		32.392178, 24.156515, 33.818676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.018463, 23.492470, 33.621895>,  <31.715075, 24.105793, 33.648499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.018463, 23.492470, 33.621895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250824, 23.683849, 33.885300>,  <32.390240, 23.798677, 34.043343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250824, 23.683849, 33.885300>,  <32.018463, 23.492470, 33.621895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250824, 23.683849, 33.885300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027209, -0.819970, 0.571760,
		0.813517, -0.314220, -0.489342,
		0.580904, 0.478451, 0.658510,
		32.425095, 23.827385, 34.082851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622593, 23.162409, 33.664955>,  <32.018463, 23.492470, 33.621895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622593, 23.162409, 33.664955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645065, 23.361431, 34.011200>,  <32.658546, 23.480844, 34.218948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645065, 23.361431, 34.011200>,  <32.622593, 23.162409, 33.664955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645065, 23.361431, 34.011200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000100, -0.866977, 0.498348,
		0.998421, -0.028082, -0.048655,
		0.056177, 0.497557, 0.865611,
		32.661919, 23.510698, 34.270882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777573, 22.670441, 34.138107>,  <32.622593, 23.162409, 33.664955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777573, 22.670441, 34.138107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728016, 22.982407, 34.383507>,  <32.698280, 23.169586, 34.530746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728016, 22.982407, 34.383507>,  <32.777573, 22.670441, 34.138107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728016, 22.982407, 34.383507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102159, -0.604955, 0.789679,
		0.987023, 0.160512, -0.004725,
		-0.123895, 0.779914, 0.613502,
		32.690849, 23.216381, 34.567558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360268, 22.651651, 34.569859>,  <32.777573, 22.670441, 34.138107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360268, 22.651651, 34.569859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.035690, 22.808392, 34.743298>,  <32.840942, 22.902435, 34.847363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.035690, 22.808392, 34.743298>,  <33.360268, 22.651651, 34.569859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035690, 22.808392, 34.743298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018048, -0.724770, 0.688755,
		0.584150, 0.566713, 0.581039,
		-0.811445, 0.391849, 0.433602,
		32.792255, 22.925947, 34.873379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584137, 22.705219, 35.208496>,  <33.360268, 22.651651, 34.569859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584137, 22.705219, 35.208496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.192772, 22.654392, 35.143303>,  <32.957954, 22.623896, 35.104187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.192772, 22.654392, 35.143303>,  <33.584137, 22.705219, 35.208496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192772, 22.654392, 35.143303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011235, -0.754775, 0.655887,
		-0.206356, 0.643559, 0.737054,
		-0.978412, -0.127066, -0.162983,
		32.899250, 22.616272, 35.094410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300404, 22.513075, 35.860023>,  <33.584137, 22.705219, 35.208496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300404, 22.513075, 35.860023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061989, 22.371239, 35.571857>,  <32.918938, 22.286137, 35.398956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061989, 22.371239, 35.571857>,  <33.300404, 22.513075, 35.860023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.061989, 22.371239, 35.571857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172940, -0.819460, 0.546422,
		-0.784110, 0.450279, 0.427108,
		-0.596040, -0.354590, -0.720418,
		32.883179, 22.264862, 35.355732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619865, 22.576216, 36.153061>,  <33.300404, 22.513075, 35.860023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619865, 22.576216, 36.153061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663845, 22.268078, 35.901829>,  <32.690235, 22.083195, 35.751091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663845, 22.268078, 35.901829>,  <32.619865, 22.576216, 36.153061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663845, 22.268078, 35.901829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330319, -0.624314, 0.707900,
		-0.937443, 0.129631, -0.323104,
		0.109952, -0.770343, -0.628078,
		32.696831, 22.036976, 35.713406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443344, 23.097088, 36.595829>,  <32.619865, 22.576216, 36.153061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443344, 23.097088, 36.595829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.092587, 23.262592, 36.693695>,  <31.882132, 23.361895, 36.752415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.092587, 23.262592, 36.693695>,  <32.443344, 23.097088, 36.595829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.092587, 23.262592, 36.693695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255432, 0.832277, -0.492006,
		-0.407202, -0.368941, -0.835505,
		-0.876893, 0.413760, 0.244666,
		31.829519, 23.386721, 36.767094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109699, 23.408695, 35.927345>,  <32.443344, 23.097088, 36.595829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109699, 23.408695, 35.927345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960600, 23.593994, 36.248955>,  <31.871140, 23.705173, 36.441921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960600, 23.593994, 36.248955>,  <32.109699, 23.408695, 35.927345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960600, 23.593994, 36.248955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033541, 0.872632, -0.487225,
		-0.927324, -0.154646, -0.340814,
		-0.372753, 0.463247, 0.804026,
		31.848774, 23.732967, 36.490162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.473011, 23.954752, 35.746643>,  <32.109699, 23.408695, 35.927345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.473011, 23.954752, 35.746643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.685589, 24.062096, 36.068027>,  <31.813135, 24.126501, 36.260857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.685589, 24.062096, 36.068027>,  <31.473011, 23.954752, 35.746643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.685589, 24.062096, 36.068027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350154, 0.794073, -0.496829,
		-0.771337, 0.545372, 0.328037,
		0.531443, 0.268359, 0.803463,
		31.845022, 24.142603, 36.309067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.226482, 24.650806, 36.137722>,  <31.473011, 23.954752, 35.746643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.226482, 24.650806, 36.137722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608381, 24.533287, 36.119198>,  <31.837521, 24.462776, 36.108086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608381, 24.533287, 36.119198>,  <31.226482, 24.650806, 36.137722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.608381, 24.533287, 36.119198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224411, 0.813767, -0.536119,
		0.195192, 0.501465, 0.842871,
		0.954746, -0.293796, -0.046307,
		31.894806, 24.445148, 36.105305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731329, 25.081484, 36.490105>,  <31.226482, 24.650806, 36.137722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731329, 25.081484, 36.490105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.946218, 24.917412, 36.195312>,  <32.075153, 24.818968, 36.018436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.946218, 24.917412, 36.195312>,  <31.731329, 25.081484, 36.490105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.946218, 24.917412, 36.195312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167714, 0.908283, -0.383268,
		0.826597, 0.082298, 0.556744,
		0.537223, -0.410182, -0.736982,
		32.107384, 24.794357, 35.974216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.357311, 25.353945, 36.529140>,  <31.731329, 25.081484, 36.490105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.357311, 25.353945, 36.529140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.295834, 25.250565, 36.147652>,  <32.258945, 25.188536, 35.918758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.295834, 25.250565, 36.147652>,  <32.357311, 25.353945, 36.529140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.295834, 25.250565, 36.147652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230418, 0.929204, -0.288942,
		0.960877, -0.264163, -0.083261,
		-0.153695, -0.258453, -0.953719,
		32.249725, 25.173029, 35.861534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996120, 25.541584, 36.125629>,  <32.357311, 25.353945, 36.529140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996120, 25.541584, 36.125629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718540, 25.511353, 35.839211>,  <32.551991, 25.493214, 35.667358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718540, 25.511353, 35.839211>,  <32.996120, 25.541584, 36.125629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718540, 25.511353, 35.839211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343566, 0.839204, -0.421544,
		0.632768, -0.538539, -0.556399,
		-0.693950, -0.075580, -0.716046,
		32.510357, 25.488678, 35.624397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306484, 25.753614, 35.579407>,  <32.996120, 25.541584, 36.125629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306484, 25.753614, 35.579407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918705, 25.789036, 35.487904>,  <32.686039, 25.810289, 35.433002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918705, 25.789036, 35.487904>,  <33.306484, 25.753614, 35.579407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918705, 25.789036, 35.487904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212261, 0.770272, -0.601353,
		0.122956, -0.631537, -0.765535,
		-0.969447, 0.088553, -0.228760,
		32.627872, 25.815601, 35.419277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288158, 25.890165, 34.845055>,  <33.306484, 25.753614, 35.579407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288158, 25.890165, 34.845055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936611, 26.029957, 34.974945>,  <32.725681, 26.113831, 35.052879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936611, 26.029957, 34.974945>,  <33.288158, 25.890165, 34.845055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936611, 26.029957, 34.974945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114739, 0.815563, -0.567179,
		-0.463054, -0.461218, -0.756875,
		-0.878872, 0.349477, 0.324730,
		32.672951, 26.134800, 35.072365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009029, 26.089705, 34.241123>,  <33.288158, 25.890165, 34.845055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009029, 26.089705, 34.241123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816906, 26.295006, 34.525623>,  <32.701633, 26.418186, 34.696323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816906, 26.295006, 34.525623>,  <33.009029, 26.089705, 34.241123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816906, 26.295006, 34.525623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003405, 0.809814, -0.586677,
		-0.877094, -0.284207, -0.387212,
		-0.480307, 0.513253, 0.711250,
		32.672813, 26.448982, 34.738998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365578, 26.315748, 33.925777>,  <33.009029, 26.089705, 34.241123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365578, 26.315748, 33.925777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426113, 26.567322, 34.230812>,  <32.462433, 26.718266, 34.413834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426113, 26.567322, 34.230812>,  <32.365578, 26.315748, 33.925777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426113, 26.567322, 34.230812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066216, 0.776191, -0.627011,
		-0.986262, 0.044396, 0.159114,
		0.151339, 0.628933, 0.762588,
		32.471516, 26.756002, 34.459587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.811102, 26.723602, 34.005432>,  <32.365578, 26.315748, 33.925777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.811102, 26.723602, 34.005432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.092175, 26.932354, 34.198875>,  <32.260818, 27.057604, 34.314941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.092175, 26.932354, 34.198875>,  <31.811102, 26.723602, 34.005432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.092175, 26.932354, 34.198875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112098, 0.752418, -0.649077,
		-0.702617, 0.401884, 0.587212,
		0.702683, 0.521878, 0.483612,
		32.302979, 27.088917, 34.343960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.516363, 27.361567, 34.002323>,  <31.811102, 26.723602, 34.005432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.516363, 27.361567, 34.002323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893797, 27.441917, 34.107620>,  <32.120258, 27.490128, 34.170799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893797, 27.441917, 34.107620>,  <31.516363, 27.361567, 34.002323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.893797, 27.441917, 34.107620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016520, 0.822550, -0.568453,
		-0.330719, 0.532035, 0.779464,
		0.943585, 0.200875, 0.263243,
		32.176872, 27.502180, 34.186592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548536, 27.959341, 34.313618>,  <31.516363, 27.361567, 34.002323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.548536, 27.959341, 34.313618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899645, 27.898788, 34.131802>,  <32.110310, 27.862457, 34.022713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899645, 27.898788, 34.131802>,  <31.548536, 27.959341, 34.313618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.899645, 27.898788, 34.131802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137265, 0.829522, -0.541343,
		0.458997, 0.537567, 0.707350,
		0.877770, -0.151380, -0.454537,
		32.162975, 27.853374, 33.995441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.709724, 28.554010, 34.170635>,  <31.548536, 27.959341, 34.313618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.709724, 28.554010, 34.170635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954374, 28.340675, 33.936893>,  <32.101162, 28.212675, 33.796650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954374, 28.340675, 33.936893>,  <31.709724, 28.554010, 34.170635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954374, 28.340675, 33.936893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014003, 0.731201, -0.682019,
		0.791026, 0.425321, 0.439751,
		0.611623, -0.533337, -0.584354,
		32.137859, 28.180674, 33.761589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.156132, 29.007929, 33.966553>,  <31.709724, 28.554010, 34.170635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.156132, 29.007929, 33.966553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219315, 28.732731, 33.683228>,  <32.257225, 28.567612, 33.513233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219315, 28.732731, 33.683228>,  <32.156132, 29.007929, 33.966553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219315, 28.732731, 33.683228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136531, 0.725649, -0.674383,
		0.977962, 0.009815, 0.208553,
		0.157956, -0.687995, -0.708317,
		32.266701, 28.526333, 33.470734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622322, 29.364559, 33.561024>,  <32.156132, 29.007929, 33.966553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622322, 29.364559, 33.561024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.521687, 29.048298, 33.337749>,  <32.461304, 28.858541, 33.203785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.521687, 29.048298, 33.337749>,  <32.622322, 29.364559, 33.561024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.521687, 29.048298, 33.337749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116111, 0.547912, -0.828439,
		0.960843, -0.273240, -0.046047,
		-0.251592, -0.790653, -0.558184,
		32.446209, 28.811102, 33.170296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106197, 29.449940, 33.101665>,  <32.622322, 29.364559, 33.561024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.106197, 29.449940, 33.101665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.812260, 29.224693, 32.950459>,  <32.635895, 29.089544, 32.859734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.812260, 29.224693, 32.950459>,  <33.106197, 29.449940, 33.101665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812260, 29.224693, 32.950459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047000, 0.513741, -0.856657,
		0.676604, -0.647278, -0.351053,
		-0.734845, -0.563118, -0.378021,
		32.591805, 29.055758, 32.837051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371620, 29.109249, 32.519699>,  <33.106197, 29.449940, 33.101665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371620, 29.109249, 32.519699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977207, 29.144356, 32.463074>,  <32.740559, 29.165419, 32.429100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977207, 29.144356, 32.463074>,  <33.371620, 29.109249, 32.519699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977207, 29.144356, 32.463074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166472, 0.547122, -0.820332,
		0.005456, -0.832439, -0.554090,
		-0.986031, 0.087765, -0.141563,
		32.681396, 29.170685, 32.420605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202778, 28.882446, 31.732882>,  <33.371620, 29.109249, 32.519699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202778, 28.882446, 31.732882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895302, 29.107075, 31.855358>,  <32.710815, 29.241852, 31.928844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895302, 29.107075, 31.855358>,  <33.202778, 28.882446, 31.732882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895302, 29.107075, 31.855358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053332, 0.420767, -0.905600,
		-0.637393, -0.712456, -0.293490,
		-0.768691, 0.561571, 0.306191,
		32.664696, 29.275545, 31.947216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757393, 28.821270, 31.106730>,  <33.202778, 28.882446, 31.732882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757393, 28.821270, 31.106730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632523, 29.124954, 31.335163>,  <32.557598, 29.307165, 31.472223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632523, 29.124954, 31.335163>,  <32.757393, 28.821270, 31.106730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632523, 29.124954, 31.335163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008405, 0.598898, -0.800781,
		-0.949986, -0.254788, -0.180583,
		-0.312180, 0.759213, 0.571086,
		32.538868, 29.352718, 31.506489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374683, 29.272892, 30.671379>,  <32.757393, 28.821270, 31.106730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374683, 29.272892, 30.671379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.467953, 29.508141, 30.981152>,  <32.523914, 29.649290, 31.167015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.467953, 29.508141, 30.981152>,  <32.374683, 29.272892, 30.671379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.467953, 29.508141, 30.981152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128603, 0.770737, -0.624041,
		-0.963893, 0.245105, 0.104083,
		0.233176, 0.588123, 0.774429,
		32.537907, 29.684578, 31.213480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105091, 29.846735, 30.520161>,  <32.374683, 29.272892, 30.671379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105091, 29.846735, 30.520161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.376259, 29.966393, 30.788769>,  <32.538960, 30.038187, 30.949934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.376259, 29.966393, 30.788769>,  <32.105091, 29.846735, 30.520161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.376259, 29.966393, 30.788769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242798, 0.771092, -0.588614,
		-0.693882, 0.562077, 0.450108,
		0.677921, 0.299144, 0.671518,
		32.579636, 30.056135, 30.990225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.168652, 30.502003, 30.257132>,  <32.105091, 29.846735, 30.520161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.168652, 30.502003, 30.257132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475487, 30.461018, 30.510456>,  <32.659588, 30.436426, 30.662451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475487, 30.461018, 30.510456>,  <32.168652, 30.502003, 30.257132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475487, 30.461018, 30.510456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508172, 0.699592, -0.502326,
		-0.391590, 0.707158, 0.588715,
		0.767085, -0.102463, 0.633311,
		32.705612, 30.430279, 30.700449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421299, 31.134018, 30.320513>,  <32.168652, 30.502003, 30.257132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421299, 31.134018, 30.320513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.735485, 30.912479, 30.431004>,  <32.923996, 30.779556, 30.497299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.735485, 30.912479, 30.431004>,  <32.421299, 31.134018, 30.320513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735485, 30.912479, 30.431004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618704, 0.714125, -0.327461,
		-0.015899, 0.428113, 0.903586,
		0.785463, -0.553846, 0.276229,
		32.971123, 30.746326, 30.513872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827816, 31.607546, 30.596392>,  <32.421299, 31.134018, 30.320513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827816, 31.607546, 30.596392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082745, 31.315742, 30.497089>,  <33.235703, 31.140659, 30.437508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082745, 31.315742, 30.497089>,  <32.827816, 31.607546, 30.596392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082745, 31.315742, 30.497089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553984, 0.657687, -0.510440,
		0.535647, 0.187786, 0.823298,
		0.637326, -0.729510, -0.248258,
		33.273941, 31.096889, 30.422611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420486, 31.883554, 30.538010>,  <32.827816, 31.607546, 30.596392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420486, 31.883554, 30.538010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527477, 31.550930, 30.343296>,  <33.591671, 31.351355, 30.226467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527477, 31.550930, 30.343296>,  <33.420486, 31.883554, 30.538010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527477, 31.550930, 30.343296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698216, 0.515423, -0.496824,
		0.664040, -0.206991, 0.718475,
		0.267480, -0.831562, -0.486785,
		33.607719, 31.301462, 30.197260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146481, 31.816439, 30.597668>,  <33.420486, 31.883554, 30.538010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146481, 31.816439, 30.597668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.026783, 31.607738, 30.278111>,  <33.954964, 31.482519, 30.086376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.026783, 31.607738, 30.278111>,  <34.146481, 31.816439, 30.597668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.026783, 31.607738, 30.278111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613646, 0.535913, -0.579858,
		0.730678, -0.663757, 0.159801,
		-0.299245, -0.521751, -0.798892,
		33.937008, 31.451214, 30.038443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806107, 31.668301, 30.279736>,  <34.146481, 31.816439, 30.597668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806107, 31.668301, 30.279736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554409, 31.605164, 29.975330>,  <34.403393, 31.567282, 29.792686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554409, 31.605164, 29.975330>,  <34.806107, 31.668301, 30.279736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554409, 31.605164, 29.975330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615461, 0.496749, -0.611922,
		0.474615, -0.853422, -0.215435,
		-0.629244, -0.157835, -0.761012,
		34.365639, 31.557812, 29.747026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183197, 31.441904, 29.709055>,  <34.806107, 31.668301, 30.279736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183197, 31.441904, 29.709055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859024, 31.577534, 29.517960>,  <34.664520, 31.658913, 29.403303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859024, 31.577534, 29.517960>,  <35.183197, 31.441904, 29.709055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859024, 31.577534, 29.517960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585799, 0.478465, -0.654149,
		0.006775, -0.810000, -0.586392,
		-0.810428, 0.339076, -0.477739,
		34.615894, 31.679256, 29.374638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317478, 31.377069, 28.928278>,  <35.183197, 31.441904, 29.709055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317478, 31.377069, 28.928278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008335, 31.628372, 28.964008>,  <34.822849, 31.779154, 28.985447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008335, 31.628372, 28.964008>,  <35.317478, 31.377069, 28.928278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008335, 31.628372, 28.964008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332158, 0.520453, -0.786638,
		-0.540702, -0.578291, -0.610919,
		-0.772860, 0.628258, 0.089326,
		34.776478, 31.816849, 28.990807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.065704, 31.521578, 28.264896>,  <35.317478, 31.377069, 28.928278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.065704, 31.521578, 28.264896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950703, 31.839771, 28.478268>,  <34.881702, 32.030689, 28.606291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950703, 31.839771, 28.478268>,  <35.065704, 31.521578, 28.264896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950703, 31.839771, 28.478268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366845, 0.605931, -0.705884,
		-0.884741, -0.007257, -0.466026,
		-0.287502, 0.795484, 0.533430,
		34.864452, 32.078415, 28.638296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059994, 31.965408, 27.776764>,  <35.065704, 31.521578, 28.264896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059994, 31.965408, 27.776764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.985580, 32.229057, 28.068230>,  <34.940933, 32.387245, 28.243109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.985580, 32.229057, 28.068230>,  <35.059994, 31.965408, 27.776764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985580, 32.229057, 28.068230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299234, 0.744388, -0.596947,
		-0.935870, 0.106993, -0.335709,
		-0.186028, 0.659120, 0.728666,
		34.929771, 32.426792, 28.286829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610531, 32.350620, 27.551678>,  <35.059994, 31.965408, 27.776764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610531, 32.350620, 27.551678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.811829, 32.557014, 27.828953>,  <34.932606, 32.680851, 27.995317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.811829, 32.557014, 27.828953>,  <34.610531, 32.350620, 27.551678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811829, 32.557014, 27.828953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098594, 0.762643, -0.639261,
		-0.858502, 0.390048, 0.332921,
		0.503242, 0.515983, 0.693187,
		34.962803, 32.711811, 28.036909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296135, 32.974266, 27.576880>,  <34.610531, 32.350620, 27.551678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296135, 32.974266, 27.576880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675564, 32.993637, 27.702015>,  <34.903221, 33.005260, 27.777096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675564, 32.993637, 27.702015>,  <34.296135, 32.974266, 27.576880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675564, 32.993637, 27.702015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190418, 0.702172, -0.686073,
		-0.252891, 0.710359, 0.656839,
		0.948571, 0.048428, 0.312838,
		34.960136, 33.008167, 27.795866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404922, 33.685917, 27.607676>,  <34.296135, 32.974266, 27.576880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404922, 33.685917, 27.607676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772713, 33.529774, 27.589001>,  <34.993389, 33.436089, 27.577795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772713, 33.529774, 27.589001>,  <34.404922, 33.685917, 27.607676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772713, 33.529774, 27.589001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241724, 0.655001, -0.715922,
		0.310045, 0.646990, 0.696618,
		0.919479, -0.390357, -0.046687,
		35.048557, 33.412666, 27.574995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654495, 34.218933, 27.280735>,  <34.404922, 33.685917, 27.607676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654495, 34.218933, 27.280735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928356, 33.927837, 27.264530>,  <35.092674, 33.753181, 27.254807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928356, 33.927837, 27.264530>,  <34.654495, 34.218933, 27.280735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928356, 33.927837, 27.264530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478959, 0.491109, -0.727606,
		0.549406, 0.478754, 0.684798,
		0.684655, -0.727741, -0.040514,
		35.133751, 33.709515, 27.252377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243248, 34.497658, 27.147585>,  <34.654495, 34.218933, 27.280735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243248, 34.497658, 27.147585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343311, 34.126793, 27.036015>,  <35.403347, 33.904274, 26.969072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343311, 34.126793, 27.036015>,  <35.243248, 34.497658, 27.147585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343311, 34.126793, 27.036015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490177, 0.369716, -0.789327,
		0.834954, 0.060731, 0.546958,
		0.250156, -0.927158, -0.278927,
		35.418358, 33.848644, 26.952337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960850, 34.471161, 26.972416>,  <35.243248, 34.497658, 27.147585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960850, 34.471161, 26.972416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772991, 34.176327, 26.778038>,  <35.660275, 33.999428, 26.661411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772991, 34.176327, 26.778038>,  <35.960850, 34.471161, 26.972416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772991, 34.176327, 26.778038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497064, 0.234132, -0.835529,
		0.729630, -0.633947, 0.256419,
		-0.469646, -0.737084, -0.485943,
		35.632099, 33.955200, 26.632256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499374, 34.327950, 26.458580>,  <35.960850, 34.471161, 26.972416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499374, 34.327950, 26.458580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147713, 34.183533, 26.334167>,  <35.936718, 34.096882, 26.259520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147713, 34.183533, 26.334167>,  <36.499374, 34.327950, 26.458580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147713, 34.183533, 26.334167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179030, 0.354642, -0.917702,
		0.441635, -0.862483, -0.247146,
		-0.879151, -0.361043, -0.311033,
		35.883968, 34.075218, 26.240858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653522, 33.935448, 25.873838>,  <36.499374, 34.327950, 26.458580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653522, 33.935448, 25.873838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260250, 33.999908, 25.839485>,  <36.024284, 34.038586, 25.818872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260250, 33.999908, 25.839485>,  <36.653522, 33.935448, 25.873838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260250, 33.999908, 25.839485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122485, 0.233141, -0.964698,
		-0.135443, -0.958996, -0.248960,
		-0.983185, 0.161155, -0.085885,
		35.965294, 34.048256, 25.813719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459469, 33.619736, 25.224457>,  <36.653522, 33.935448, 25.873838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459469, 33.619736, 25.224457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183659, 33.891167, 25.325718>,  <36.018173, 34.054028, 25.386475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183659, 33.891167, 25.325718>,  <36.459469, 33.619736, 25.224457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183659, 33.891167, 25.325718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033689, 0.379205, -0.924699,
		-0.723479, -0.629074, -0.284332,
		-0.689524, 0.678579, 0.253154,
		35.976803, 34.094742, 25.401665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914433, 33.654846, 24.680792>,  <36.459469, 33.619736, 25.224457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914433, 33.654846, 24.680792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895348, 33.999172, 24.883461>,  <35.883896, 34.205769, 25.005062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895348, 33.999172, 24.883461>,  <35.914433, 33.654846, 24.680792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895348, 33.999172, 24.883461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036926, 0.505385, -0.862104,
		-0.998178, -0.059840, 0.007674,
		-0.047710, 0.860817, 0.506674,
		35.881035, 34.257416, 25.035463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387371, 33.923080, 24.307949>,  <35.914433, 33.654846, 24.680792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387371, 33.923080, 24.307949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.538776, 34.227901, 24.518093>,  <35.629620, 34.410793, 24.644178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.538776, 34.227901, 24.518093>,  <35.387371, 33.923080, 24.307949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538776, 34.227901, 24.518093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209916, 0.482125, -0.850582,
		-0.901477, 0.432240, 0.022525,
		0.378516, 0.762052, 0.525359,
		35.652332, 34.456516, 24.675701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127571, 34.512257, 23.943411>,  <35.387371, 33.923080, 24.307949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127571, 34.512257, 23.943411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442478, 34.642574, 24.152821>,  <35.631420, 34.720764, 24.278465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442478, 34.642574, 24.152821>,  <35.127571, 34.512257, 23.943411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442478, 34.642574, 24.152821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357835, 0.450050, -0.818174,
		-0.502165, 0.831454, 0.237729,
		0.787264, 0.325790, 0.523522,
		35.678658, 34.740311, 24.309877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489624, 34.278530, 24.136520>,  <35.127571, 34.512257, 23.943411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489624, 34.278530, 24.136520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132820, 34.363960, 23.977169>,  <33.918739, 34.415218, 23.881559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132820, 34.363960, 23.977169>,  <34.489624, 34.278530, 24.136520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132820, 34.363960, 23.977169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449993, -0.502821, 0.738023,
		-0.042692, 0.837591, 0.544627,
		-0.892011, 0.213571, -0.398376,
		33.865215, 34.428032, 23.857656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053528, 34.615574, 24.566132>,  <34.489624, 34.278530, 24.136520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053528, 34.615574, 24.566132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834705, 34.400860, 24.309200>,  <33.703411, 34.272030, 24.155041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834705, 34.400860, 24.309200>,  <34.053528, 34.615574, 24.566132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834705, 34.400860, 24.309200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535600, -0.365251, 0.761396,
		-0.643318, 0.760560, -0.087688,
		-0.547060, -0.536786, -0.642329,
		33.670586, 34.239822, 24.116501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370426, 34.656448, 24.877472>,  <34.053528, 34.615574, 24.566132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370426, 34.656448, 24.877472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330795, 34.354553, 24.618073>,  <33.307018, 34.173416, 24.462433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330795, 34.354553, 24.618073>,  <33.370426, 34.656448, 24.877472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330795, 34.354553, 24.618073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663543, -0.435550, 0.608282,
		-0.741549, 0.490571, -0.457652,
		-0.099076, -0.754742, -0.648497,
		33.301071, 34.128132, 24.423523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680756, 34.603870, 24.751804>,  <33.370426, 34.656448, 24.877472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.680756, 34.603870, 24.751804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.839790, 34.246918, 24.666412>,  <32.935211, 34.032745, 24.615177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.839790, 34.246918, 24.666412>,  <32.680756, 34.603870, 24.751804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839790, 34.246918, 24.666412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642389, -0.436845, 0.629684,
		-0.655178, -0.113217, -0.746943,
		0.397589, -0.892384, -0.213482,
		32.959068, 33.979202, 24.602367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126461, 34.183811, 24.615990>,  <32.680756, 34.603870, 24.751804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126461, 34.183811, 24.615990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398621, 33.898014, 24.681171>,  <32.561916, 33.726536, 24.720280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398621, 33.898014, 24.681171>,  <32.126461, 34.183811, 24.615990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.398621, 33.898014, 24.681171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696505, -0.561327, 0.446981,
		-0.227894, -0.417624, -0.879576,
		0.680400, -0.714494, 0.162954,
		32.602741, 33.683666, 24.730057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.804092, 33.508659, 24.445362>,  <32.126461, 34.183811, 24.615990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.804092, 33.508659, 24.445362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113167, 33.410080, 24.679359>,  <32.298611, 33.350933, 24.819757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113167, 33.410080, 24.679359>,  <31.804092, 33.508659, 24.445362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113167, 33.410080, 24.679359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614885, -0.519531, 0.593299,
		0.157701, -0.818137, -0.552975,
		0.772687, -0.246453, 0.584991,
		32.344975, 33.336143, 24.854856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603077, 32.842136, 24.727863>,  <31.804092, 33.508659, 24.445362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.603077, 32.842136, 24.727863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.890753, 32.949787, 24.984093>,  <32.063358, 33.014378, 25.137831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.890753, 32.949787, 24.984093>,  <31.603077, 32.842136, 24.727863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.890753, 32.949787, 24.984093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520205, -0.402599, 0.753194,
		0.460602, -0.874919, -0.149542,
		0.719189, 0.269129, 0.640575,
		32.106510, 33.030525, 25.176266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631601, 32.260193, 25.096203>,  <31.603077, 32.842136, 24.727863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.631601, 32.260193, 25.096203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.801279, 32.551582, 25.311382>,  <31.903086, 32.726418, 25.440489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.801279, 32.551582, 25.311382>,  <31.631601, 32.260193, 25.096203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.801279, 32.551582, 25.311382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389571, -0.389465, 0.834597,
		0.817492, -0.563600, 0.118583,
		0.424195, 0.728473, 0.537946,
		31.928537, 32.770123, 25.472767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.013630, 31.968384, 25.634224>,  <31.631601, 32.260193, 25.096203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.013630, 31.968384, 25.634224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899508, 32.333225, 25.751980>,  <31.831034, 32.552132, 25.822634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899508, 32.333225, 25.751980>,  <32.013630, 31.968384, 25.634224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.899508, 32.333225, 25.751980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463372, -0.400144, 0.790677,
		0.838978, 0.089176, 0.536809,
		-0.285310, 0.912103, 0.294391,
		31.813915, 32.606857, 25.840298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.017002, 31.906559, 26.377092>,  <32.013630, 31.968384, 25.634224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.017002, 31.906559, 26.377092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814661, 32.246014, 26.315212>,  <31.693258, 32.449688, 26.278084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814661, 32.246014, 26.315212>,  <32.017002, 31.906559, 26.377092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.814661, 32.246014, 26.315212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330307, -0.024885, 0.943546,
		0.796878, 0.528389, 0.292899,
		-0.505848, 0.848637, -0.154700,
		31.662907, 32.500607, 26.268803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.104012, 32.346912, 26.986189>,  <32.017002, 31.906559, 26.377092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.104012, 32.346912, 26.986189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767530, 32.461697, 26.802872>,  <31.565641, 32.530567, 26.692881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767530, 32.461697, 26.802872>,  <32.104012, 32.346912, 26.986189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.767530, 32.461697, 26.802872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474681, 0.013999, 0.880046,
		0.258956, 0.957840, 0.124440,
		-0.841201, 0.286962, -0.458294,
		31.515171, 32.547787, 26.665384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.867020, 32.843990, 27.509327>,  <32.104012, 32.346912, 26.986189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.867020, 32.843990, 27.509327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.566055, 32.715935, 27.279060>,  <31.385477, 32.639103, 27.140902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.566055, 32.715935, 27.279060>,  <31.867020, 32.843990, 27.509327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.566055, 32.715935, 27.279060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574328, -0.109079, 0.811325,
		-0.322528, 0.941071, -0.101792,
		-0.752411, -0.320137, -0.575665,
		31.340332, 32.619892, 27.106361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.204338, 33.198997, 27.714622>,  <31.867020, 32.843990, 27.509327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.204338, 33.198997, 27.714622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.058886, 32.881538, 27.519527>,  <30.971615, 32.691063, 27.402470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.058886, 32.881538, 27.519527>,  <31.204338, 33.198997, 27.714622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.058886, 32.881538, 27.519527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670366, -0.140609, 0.728587,
		-0.646825, 0.591900, -0.480908,
		-0.363630, -0.793652, -0.487739,
		30.949797, 32.643444, 27.373205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487928, 33.256897, 27.807850>,  <31.204338, 33.198997, 27.714622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.487928, 33.256897, 27.807850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.553358, 32.870365, 27.728409>,  <30.592615, 32.638447, 27.680744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.553358, 32.870365, 27.728409>,  <30.487928, 33.256897, 27.807850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.553358, 32.870365, 27.728409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476989, -0.253690, 0.841500,
		-0.863554, -0.042914, -0.502428,
		0.163573, -0.966333, -0.198605,
		30.602430, 32.580463, 27.668827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.820621, 32.855389, 27.997440>,  <30.487928, 33.256897, 27.807850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.820621, 32.855389, 27.997440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.096378, 32.565945, 27.984039>,  <30.261833, 32.392277, 27.975998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.096378, 32.565945, 27.984039>,  <29.820621, 32.855389, 27.997440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.096378, 32.565945, 27.984039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267595, -0.297375, 0.916494,
		-0.673150, -0.622859, -0.398643,
		0.689392, -0.723612, -0.033504,
		30.303196, 32.348862, 27.973988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486958, 32.181934, 28.199062>,  <29.820621, 32.855389, 27.997440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.486958, 32.181934, 28.199062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880699, 32.127388, 28.243698>,  <30.116943, 32.094662, 28.270479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880699, 32.127388, 28.243698>,  <29.486958, 32.181934, 28.199062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.880699, 32.127388, 28.243698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161928, -0.450395, 0.878022,
		-0.069471, -0.882354, -0.465429,
		0.984354, -0.136363, 0.111589,
		30.176006, 32.086479, 28.277174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.436743, 31.571747, 28.597290>,  <29.486958, 32.181934, 28.199062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.436743, 31.571747, 28.597290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.805794, 31.722099, 28.631863>,  <30.027225, 31.812311, 28.652607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.805794, 31.722099, 28.631863>,  <29.436743, 31.571747, 28.597290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.805794, 31.722099, 28.631863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041576, -0.319717, 0.946600,
		0.383442, -0.869767, -0.310607,
		0.922629, 0.375880, 0.086431,
		30.082582, 31.834864, 28.657791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.814634, 31.055143, 28.943003>,  <29.436743, 31.571747, 28.597290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.814634, 31.055143, 28.943003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.035847, 31.382225, 29.006905>,  <30.168573, 31.578474, 29.045246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.035847, 31.382225, 29.006905>,  <29.814634, 31.055143, 28.943003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.035847, 31.382225, 29.006905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227466, -0.332646, 0.915208,
		0.801510, -0.469798, -0.369962,
		0.553029, 0.817702, 0.159756,
		30.201756, 31.627535, 29.054831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.455683, 30.762665, 29.197403>,  <29.814634, 31.055143, 28.943003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.455683, 30.762665, 29.197403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.399620, 31.138027, 29.323734>,  <30.365982, 31.363245, 29.399534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.399620, 31.138027, 29.323734>,  <30.455683, 30.762665, 29.197403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.399620, 31.138027, 29.323734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114892, -0.301410, 0.946547,
		0.983441, 0.168951, -0.065571,
		-0.140157, 0.938407, 0.315830,
		30.357573, 31.419550, 29.418484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.023937, 30.880955, 29.733770>,  <30.455683, 30.762665, 29.197403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.023937, 30.880955, 29.733770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.765341, 31.174675, 29.816570>,  <30.610184, 31.350908, 29.866251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.765341, 31.174675, 29.816570>,  <31.023937, 30.880955, 29.733770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.765341, 31.174675, 29.816570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026295, -0.292611, 0.955870,
		0.762468, 0.612518, 0.208479,
		-0.646491, 0.734302, 0.207000,
		30.571394, 31.394966, 29.878670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302568, 31.321299, 30.314066>,  <31.023937, 30.880955, 29.733770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302568, 31.321299, 30.314066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.909555, 31.395695, 30.316452>,  <30.673748, 31.440332, 30.317883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.909555, 31.395695, 30.316452>,  <31.302568, 31.321299, 30.314066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.909555, 31.395695, 30.316452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068349, -0.390507, 0.918059,
		0.173079, 0.901616, 0.396399,
		-0.982533, 0.185991, 0.005964,
		30.614796, 31.451492, 30.318241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.077873, 31.549244, 30.987652>,  <31.302568, 31.321299, 30.314066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.077873, 31.549244, 30.987652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.740471, 31.410255, 30.823818>,  <30.538029, 31.326862, 30.725519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.740471, 31.410255, 30.823818>,  <31.077873, 31.549244, 30.987652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.740471, 31.410255, 30.823818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214808, -0.480686, 0.850175,
		-0.492294, 0.805111, 0.330822,
		-0.843507, -0.347473, -0.409583,
		30.487419, 31.306013, 30.700943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.615427, 31.534325, 31.559042>,  <31.077873, 31.549244, 30.987652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.615427, 31.534325, 31.559042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.449944, 31.303391, 31.277466>,  <30.350653, 31.164831, 31.108521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.449944, 31.303391, 31.277466>,  <30.615427, 31.534325, 31.559042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.449944, 31.303391, 31.277466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229151, -0.682283, 0.694247,
		-0.881098, 0.448525, 0.149971,
		-0.413710, -0.577334, -0.703939,
		30.325830, 31.130190, 31.066284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.932291, 31.186855, 31.856050>,  <30.615427, 31.534325, 31.559042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.932291, 31.186855, 31.856050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.043798, 30.965263, 31.542263>,  <30.110703, 30.832308, 31.353991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.043798, 30.965263, 31.542263>,  <29.932291, 31.186855, 31.856050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.043798, 30.965263, 31.542263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206915, -0.832313, 0.514238,
		-0.937803, 0.018964, -0.346651,
		0.278770, -0.553981, -0.784469,
		30.127430, 30.799068, 31.306923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.421585, 30.621250, 31.786171>,  <29.932291, 31.186855, 31.856050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.421585, 30.621250, 31.786171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.742340, 30.472607, 31.599030>,  <29.934793, 30.383421, 31.486746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.742340, 30.472607, 31.599030>,  <29.421585, 30.621250, 31.786171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.742340, 30.472607, 31.599030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101687, -0.856505, 0.506023,
		-0.588760, -0.358198, -0.724607,
		0.801886, -0.371610, -0.467851,
		29.982906, 30.361124, 31.458673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.227066, 29.979506, 31.509562>,  <29.421585, 30.621250, 31.786171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.227066, 29.979506, 31.509562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.625498, 29.955872, 31.535908>,  <29.864557, 29.941692, 31.551716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.625498, 29.955872, 31.535908>,  <29.227066, 29.979506, 31.509562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.625498, 29.955872, 31.535908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082521, -0.888940, 0.450529,
		0.031934, -0.454197, -0.890329,
		0.996077, -0.059084, 0.065868,
		29.924320, 29.938147, 31.555668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.517448, 29.375299, 30.970257>,  <29.227066, 29.979506, 31.509562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.517448, 29.375299, 30.970257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.771341, 29.436378, 31.273254>,  <29.923677, 29.473026, 31.455053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.771341, 29.436378, 31.273254>,  <29.517448, 29.375299, 30.970257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.771341, 29.436378, 31.273254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113245, -0.951315, 0.286661,
		0.764390, -0.267735, -0.586536,
		0.634730, 0.152698, 0.757496,
		29.961760, 29.482187, 31.500504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.969576, 28.839291, 30.876793>,  <29.517448, 29.375299, 30.970257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.969576, 28.839291, 30.876793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.007036, 28.943264, 31.261223>,  <30.029512, 29.005648, 31.491880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.007036, 28.943264, 31.261223>,  <29.969576, 28.839291, 30.876793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.007036, 28.943264, 31.261223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032127, -0.964025, 0.263864,
		0.995087, -0.055587, -0.081929,
		0.093649, 0.259935, 0.961074,
		30.035131, 29.021244, 31.549545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.398445, 28.360628, 31.101902>,  <29.969576, 28.839291, 30.876793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.398445, 28.360628, 31.101902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.249514, 28.508675, 31.442345>,  <30.160154, 28.597502, 31.646610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.249514, 28.508675, 31.442345>,  <30.398445, 28.360628, 31.101902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.249514, 28.508675, 31.442345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121573, -0.928591, 0.350627,
		0.920103, 0.027077, 0.390738,
		-0.372330, 0.370116, 0.851108,
		30.137815, 28.619709, 31.697678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.682096, 28.084976, 31.608606>,  <30.398445, 28.360628, 31.101902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.682096, 28.084976, 31.608606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.344198, 28.202751, 31.787361>,  <30.141459, 28.273417, 31.894613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.344198, 28.202751, 31.787361>,  <30.682096, 28.084976, 31.608606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.344198, 28.202751, 31.787361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087168, -0.899595, 0.427937,
		0.528018, 0.322545, 0.785596,
		-0.844748, 0.294437, 0.446887,
		30.090775, 28.291082, 31.921427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.667004, 27.617737, 32.298458>,  <30.682096, 28.084976, 31.608606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.667004, 27.617737, 32.298458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.297789, 27.764202, 32.251255>,  <30.076260, 27.852081, 32.222931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.297789, 27.764202, 32.251255>,  <30.667004, 27.617737, 32.298458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.297789, 27.764202, 32.251255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371601, -0.769197, 0.519854,
		0.099580, 0.523697, 0.846064,
		-0.923036, 0.366166, -0.118010,
		30.020878, 27.874052, 32.215851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.308899, 27.602053, 32.916878>,  <30.667004, 27.617737, 32.298458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.308899, 27.602053, 32.916878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.015491, 27.614388, 32.645290>,  <29.839447, 27.621788, 32.482338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.015491, 27.614388, 32.645290>,  <30.308899, 27.602053, 32.916878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.015491, 27.614388, 32.645290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457722, -0.760885, 0.459939,
		-0.502433, 0.648153, 0.572240,
		-0.733520, 0.030838, -0.678968,
		29.795435, 27.623638, 32.441601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.834768, 27.455257, 33.323750>,  <30.308899, 27.602053, 32.916878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.834768, 27.455257, 33.323750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.711758, 27.383278, 32.950001>,  <29.637951, 27.340090, 32.725754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.711758, 27.383278, 32.950001>,  <29.834768, 27.455257, 33.323750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.711758, 27.383278, 32.950001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489755, -0.811968, 0.317566,
		-0.815823, 0.555272, 0.161571,
		-0.307526, -0.179948, -0.934369,
		29.619499, 27.329294, 32.669689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.037748, 27.369352, 33.337513>,  <29.834768, 27.455257, 33.323750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.037748, 27.369352, 33.337513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.184109, 27.184223, 33.014549>,  <29.271925, 27.073145, 32.820770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.184109, 27.184223, 33.014549>,  <29.037748, 27.369352, 33.337513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.184109, 27.184223, 33.014549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467951, -0.841419, 0.270253,
		-0.804449, 0.278943, -0.524454,
		0.365901, -0.462824, -0.807410,
		29.293879, 27.045376, 32.772327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.460279, 27.084835, 32.978725>,  <29.037748, 27.369352, 33.337513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.460279, 27.084835, 32.978725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.772121, 26.859055, 32.870201>,  <28.959227, 26.723587, 32.805084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.772121, 26.859055, 32.870201>,  <28.460279, 27.084835, 32.978725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.772121, 26.859055, 32.870201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495555, -0.820887, 0.283847,
		-0.382936, -0.086838, -0.919684,
		0.779606, -0.564450, -0.271314,
		29.006002, 26.689720, 32.788807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.188189, 26.481113, 32.611794>,  <28.460279, 27.084835, 32.978725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.188189, 26.481113, 32.611794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.561663, 26.375881, 32.708973>,  <28.785748, 26.312742, 32.767281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.561663, 26.375881, 32.708973>,  <28.188189, 26.481113, 32.611794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.561663, 26.375881, 32.708973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340325, -0.862970, 0.373445,
		0.111408, -0.431360, -0.895275,
		0.933685, -0.263080, 0.242945,
		28.841768, 26.296957, 32.781857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.186794, 25.759996, 32.525944>,  <28.188189, 26.481113, 32.611794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.186794, 25.759996, 32.525944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.516970, 25.818707, 32.743977>,  <28.715075, 25.853933, 32.874794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.516970, 25.818707, 32.743977>,  <28.186794, 25.759996, 32.525944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.516970, 25.818707, 32.743977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213455, -0.812754, 0.542096,
		0.522582, -0.563816, -0.639547,
		0.825436, 0.146775, 0.545080,
		28.764601, 25.862740, 32.907501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.331610, 25.081545, 32.740547>,  <28.186794, 25.759996, 32.525944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.331610, 25.081545, 32.740547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.557697, 25.291912, 32.994770>,  <28.693350, 25.418133, 33.147305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.557697, 25.291912, 32.994770>,  <28.331610, 25.081545, 32.740547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.557697, 25.291912, 32.994770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267649, -0.611842, 0.744321,
		0.780314, -0.590812, -0.205064,
		0.565220, 0.525918, 0.635559,
		28.727264, 25.449688, 33.185436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.583021, 24.481251, 33.082909>,  <28.331610, 25.081545, 32.740547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.583021, 24.481251, 33.082909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.635469, 24.235676, 32.771553>,  <28.666939, 24.088331, 32.584740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.635469, 24.235676, 32.771553>,  <28.583021, 24.481251, 33.082909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.635469, 24.235676, 32.771553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369846, 0.758774, -0.536168,
		0.919794, -0.217581, 0.326554,
		0.131121, -0.613938, -0.778387,
		28.674807, 24.051495, 32.538036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.177584, 24.690098, 32.691051>,  <28.583021, 24.481251, 33.082909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.177584, 24.690098, 32.691051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.944580, 24.482513, 32.440815>,  <28.804779, 24.357964, 32.290672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.944580, 24.482513, 32.440815>,  <29.177584, 24.690098, 32.691051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.944580, 24.482513, 32.440815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264291, 0.606901, -0.749547,
		0.768658, -0.601955, -0.216368,
		-0.582508, -0.518961, -0.625591,
		28.769827, 24.326826, 32.253139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.575010, 24.581722, 32.156616>,  <29.177584, 24.690098, 32.691051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.575010, 24.581722, 32.156616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.211891, 24.528721, 31.997444>,  <28.994020, 24.496920, 31.901941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.211891, 24.528721, 31.997444>,  <29.575010, 24.581722, 32.156616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.211891, 24.528721, 31.997444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284633, 0.502209, -0.816560,
		0.308042, -0.854534, -0.418189,
		-0.907796, -0.132505, -0.397930,
		28.939552, 24.488970, 31.878065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.734209, 24.596727, 31.446423>,  <29.575010, 24.581722, 32.156616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.734209, 24.596727, 31.446423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.338209, 24.639717, 31.482964>,  <29.100609, 24.665512, 31.504889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.338209, 24.639717, 31.482964>,  <29.734209, 24.596727, 31.446423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.338209, 24.639717, 31.482964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032574, 0.455937, -0.889416,
		-0.137242, -0.883499, -0.447878,
		-0.990002, 0.107476, 0.091353,
		29.041208, 24.671959, 31.510370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.542101, 24.466228, 30.835346>,  <29.734209, 24.596727, 31.446423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.542101, 24.466228, 30.835346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.239370, 24.665901, 31.004124>,  <29.057732, 24.785704, 31.105391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.239370, 24.665901, 31.004124>,  <29.542101, 24.466228, 30.835346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.239370, 24.665901, 31.004124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037036, 0.611761, -0.790175,
		-0.652567, -0.613652, -0.444508,
		-0.756825, 0.499180, 0.421942,
		29.012323, 24.815655, 31.130707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.020693, 24.491503, 30.322865>,  <29.542101, 24.466228, 30.835346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.020693, 24.491503, 30.322865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.932383, 24.785870, 30.578892>,  <28.879396, 24.962490, 30.732508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.932383, 24.785870, 30.578892>,  <29.020693, 24.491503, 30.322865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.932383, 24.785870, 30.578892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102089, 0.635221, -0.765554,
		-0.969967, -0.234359, -0.065112,
		-0.220775, 0.735915, 0.640069,
		28.866150, 25.006643, 30.770912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.435604, 24.801880, 29.963997>,  <29.020693, 24.491503, 30.322865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.435604, 24.801880, 29.963997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.603102, 25.049385, 30.229866>,  <28.703600, 25.197887, 30.389387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.603102, 25.049385, 30.229866>,  <28.435604, 24.801880, 29.963997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.603102, 25.049385, 30.229866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061590, 0.710896, -0.700595,
		-0.906013, 0.334308, 0.259575,
		0.418745, 0.618761, 0.664671,
		28.728725, 25.235014, 30.429268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.051826, 25.297838, 29.821577>,  <28.435604, 24.801880, 29.963997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.051826, 25.297838, 29.821577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.401075, 25.412773, 29.979103>,  <28.610624, 25.481733, 30.073620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.401075, 25.412773, 29.979103>,  <28.051826, 25.297838, 29.821577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.401075, 25.412773, 29.979103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124153, 0.650132, -0.749609,
		-0.471423, 0.703396, 0.531972,
		0.873124, 0.287337, 0.393816,
		28.663013, 25.498974, 30.097248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.046829, 26.035788, 29.791842>,  <28.051826, 25.297838, 29.821577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.046829, 26.035788, 29.791842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.429176, 25.972187, 29.890663>,  <28.658585, 25.934027, 29.949957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.429176, 25.972187, 29.890663>,  <28.046829, 26.035788, 29.791842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.429176, 25.972187, 29.890663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272360, 0.794876, -0.542210,
		-0.110166, 0.585569, 0.803102,
		0.955868, -0.159000, 0.247054,
		28.715937, 25.924486, 29.964779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.315889, 26.726688, 30.072702>,  <28.046829, 26.035788, 29.791842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.315889, 26.726688, 30.072702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.632257, 26.509457, 29.959915>,  <28.822079, 26.379118, 29.892242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.632257, 26.509457, 29.959915>,  <28.315889, 26.726688, 30.072702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.632257, 26.509457, 29.959915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355389, 0.782791, -0.510819,
		0.498137, 0.303810, 0.812132,
		0.790922, -0.543081, -0.281967,
		28.869534, 26.346533, 29.875324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.004890, 27.103905, 30.319105>,  <28.315889, 26.726688, 30.072702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.004890, 27.103905, 30.319105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.040880, 26.859760, 30.004307>,  <29.062475, 26.713274, 29.815428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.040880, 26.859760, 30.004307>,  <29.004890, 27.103905, 30.319105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.040880, 26.859760, 30.004307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487589, 0.716022, -0.499569,
		0.868424, -0.338782, 0.362030,
		0.089976, -0.610360, -0.786997,
		29.067873, 26.676653, 29.768208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.650732, 27.111835, 30.119343>,  <29.004890, 27.103905, 30.319105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.650732, 27.111835, 30.119343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.483404, 26.969131, 29.785221>,  <29.383007, 26.883509, 29.584747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.483404, 26.969131, 29.785221>,  <29.650732, 27.111835, 30.119343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.483404, 26.969131, 29.785221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411497, 0.745407, -0.524442,
		0.809741, -0.563109, -0.165011,
		-0.418318, -0.356760, -0.835304,
		29.357908, 26.862103, 29.534630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.120272, 27.150702, 29.579916>,  <29.650732, 27.111835, 30.119343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.120272, 27.150702, 29.579916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.771248, 27.115631, 29.387684>,  <29.561834, 27.094589, 29.272345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.771248, 27.115631, 29.387684>,  <30.120272, 27.150702, 29.579916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.771248, 27.115631, 29.387684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267910, 0.736741, -0.620835,
		0.408493, -0.670467, -0.619361,
		-0.872558, -0.087674, -0.480578,
		29.509480, 27.089329, 29.243511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.351055, 27.109709, 28.913603>,  <30.120272, 27.150702, 29.579916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.351055, 27.109709, 28.913603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.963520, 27.207966, 28.900856>,  <29.730999, 27.266920, 28.893208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.963520, 27.207966, 28.900856>,  <30.351055, 27.109709, 28.913603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.963520, 27.207966, 28.900856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157570, 0.511920, -0.844458,
		-0.191120, -0.823163, -0.534673,
		-0.968837, 0.245641, -0.031868,
		29.672869, 27.281658, 28.891296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.093643, 26.856569, 28.368710>,  <30.351055, 27.109709, 28.913603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.093643, 26.856569, 28.368710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.841642, 27.154030, 28.458221>,  <29.690441, 27.332506, 28.511929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.841642, 27.154030, 28.458221>,  <30.093643, 26.856569, 28.368710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.841642, 27.154030, 28.458221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249618, 0.466775, -0.848418,
		-0.735382, -0.478646, -0.479698,
		-0.630003, 0.743653, 0.223779,
		29.652641, 27.377125, 28.525354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.638588, 27.053596, 27.822655>,  <30.093643, 26.856569, 28.368710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.638588, 27.053596, 27.822655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.641769, 27.389423, 28.039932>,  <29.643679, 27.590919, 28.170300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.641769, 27.389423, 28.039932>,  <29.638588, 27.053596, 27.822655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.641769, 27.389423, 28.039932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118163, 0.538617, -0.834224,
		-0.992962, 0.070819, -0.094923,
		0.007952, 0.839569, 0.543195,
		29.644156, 27.641294, 28.202890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.396545, 27.499054, 27.338140>,  <29.638588, 27.053596, 27.822655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.396545, 27.499054, 27.338140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.572605, 27.722588, 27.619274>,  <29.678242, 27.856709, 27.787954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.572605, 27.722588, 27.619274>,  <29.396545, 27.499054, 27.338140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.572605, 27.722588, 27.619274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138581, 0.731075, -0.668076,
		-0.887166, 0.391453, 0.244340,
		0.440151, 0.558833, 0.702832,
		29.704651, 27.890238, 27.830124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.168280, 28.158239, 27.160343>,  <29.396545, 27.499054, 27.338140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.168280, 28.158239, 27.160343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.453463, 28.250237, 27.425308>,  <29.624573, 28.305435, 27.584288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.453463, 28.250237, 27.425308>,  <29.168280, 28.158239, 27.160343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.453463, 28.250237, 27.425308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248501, 0.800494, -0.545396,
		-0.655696, 0.553455, 0.513565,
		0.712958, 0.229993, 0.662415,
		29.667351, 28.319235, 27.624033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.150173, 28.949638, 27.320715>,  <29.168280, 28.158239, 27.160343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.150173, 28.949638, 27.320715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517048, 28.800224, 27.376202>,  <29.737173, 28.710575, 27.409492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517048, 28.800224, 27.376202>,  <29.150173, 28.949638, 27.320715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.517048, 28.800224, 27.376202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375619, 0.694354, -0.613826,
		0.132969, 0.615096, 0.777159,
		0.917186, -0.373536, 0.138715,
		29.792204, 28.688164, 27.417816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.480862, 29.548048, 27.493164>,  <29.150173, 28.949638, 27.320715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.480862, 29.548048, 27.493164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.758184, 29.284519, 27.376354>,  <29.924578, 29.126402, 27.306269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.758184, 29.284519, 27.376354>,  <29.480862, 29.548048, 27.493164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.758184, 29.284519, 27.376354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398481, 0.688122, -0.606383,
		0.600448, 0.304043, 0.739608,
		0.693307, -0.658822, -0.292026,
		29.966177, 29.086872, 27.288746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.052197, 29.845015, 27.572998>,  <29.480862, 29.548048, 27.493164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.052197, 29.845015, 27.572998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.126492, 29.588993, 27.274780>,  <30.171068, 29.435381, 27.095850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.126492, 29.588993, 27.274780>,  <30.052197, 29.845015, 27.572998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.126492, 29.588993, 27.274780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190206, 0.767814, -0.611786,
		0.964014, -0.028175, 0.264354,
		0.185738, -0.640053, -0.745543,
		30.182213, 29.396976, 27.051117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.677475, 30.018850, 27.362633>,  <30.052197, 29.845015, 27.572998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.677475, 30.018850, 27.362633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.541620, 29.813595, 27.047333>,  <30.460108, 29.690441, 26.858152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.541620, 29.813595, 27.047333>,  <30.677475, 30.018850, 27.362633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.541620, 29.813595, 27.047333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233081, 0.766007, -0.599088,
		0.911220, -0.387197, -0.140560,
		-0.339635, -0.513140, -0.788248,
		30.439730, 29.659653, 26.810858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200850, 30.186539, 26.832256>,  <30.677475, 30.018850, 27.362633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200850, 30.186539, 26.832256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.878630, 30.020237, 26.663383>,  <30.685297, 29.920456, 26.562059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.878630, 30.020237, 26.663383>,  <31.200850, 30.186539, 26.832256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.878630, 30.020237, 26.663383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017256, 0.728667, -0.684651,
		0.592274, -0.544237, -0.594153,
		-0.805552, -0.415753, -0.422179,
		30.636965, 29.895512, 26.536730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.316380, 30.335062, 26.153414>,  <31.200850, 30.186539, 26.832256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.316380, 30.335062, 26.153414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.930552, 30.229759, 26.146439>,  <30.699055, 30.166578, 26.142254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.930552, 30.229759, 26.146439>,  <31.316380, 30.335062, 26.153414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.930552, 30.229759, 26.146439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157130, 0.626306, -0.763578,
		0.211939, -0.733783, -0.645480,
		-0.964568, -0.263257, -0.017440,
		30.641182, 30.150782, 26.141207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.138916, 30.187786, 25.420706>,  <31.316380, 30.335062, 26.153414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.138916, 30.187786, 25.420706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.800200, 30.274406, 25.615044>,  <30.596970, 30.326378, 25.731647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.800200, 30.274406, 25.615044>,  <31.138916, 30.187786, 25.420706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.800200, 30.274406, 25.615044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195361, 0.722933, -0.662723,
		-0.494748, -0.656105, -0.569869,
		-0.846793, 0.216551, 0.485847,
		30.546162, 30.339371, 25.760798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.602287, 30.128256, 24.955788>,  <31.138916, 30.187786, 25.420706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.602287, 30.128256, 24.955788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.481276, 30.380234, 25.241905>,  <30.408669, 30.531420, 25.413576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.481276, 30.380234, 25.241905>,  <30.602287, 30.128256, 24.955788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.481276, 30.380234, 25.241905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273940, 0.661332, -0.698282,
		-0.912926, -0.407198, -0.027505,
		-0.302529, 0.629944, 0.715294,
		30.390516, 30.569218, 25.456493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.909058, 30.308126, 24.716410>,  <30.602287, 30.128256, 24.955788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.909058, 30.308126, 24.716410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.058193, 30.578682, 24.970493>,  <30.147675, 30.741014, 25.122944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.058193, 30.578682, 24.970493>,  <29.909058, 30.308126, 24.716410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.058193, 30.578682, 24.970493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255754, 0.732962, -0.630362,
		-0.891953, 0.072567, 0.446266,
		0.372839, 0.676388, 0.635209,
		30.170046, 30.781599, 25.161057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.415180, 30.873381, 24.704605>,  <29.909058, 30.308126, 24.716410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.415180, 30.873381, 24.704605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.747210, 31.023422, 24.869663>,  <29.946426, 31.113447, 24.968699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.747210, 31.023422, 24.869663>,  <29.415180, 30.873381, 24.704605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.747210, 31.023422, 24.869663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259573, 0.914808, -0.309431,
		-0.493561, 0.149738, 0.856724,
		0.830072, 0.375106, 0.412645,
		29.996231, 31.135954, 24.993458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.210325, 31.644567, 24.969114>,  <29.415180, 30.873381, 24.704605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.210325, 31.644567, 24.969114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.609236, 31.662937, 24.946037>,  <29.848583, 31.673960, 24.932192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.609236, 31.662937, 24.946037>,  <29.210325, 31.644567, 24.969114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.609236, 31.662937, 24.946037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068860, 0.859897, -0.505802,
		0.026380, 0.508398, 0.860718,
		0.997278, 0.045926, -0.057693,
		29.908419, 31.676716, 24.928730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.325119, 32.334576, 25.044798>,  <29.210325, 31.644567, 24.969114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.325119, 32.334576, 25.044798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.647684, 32.182251, 24.863834>,  <29.841223, 32.090855, 24.755257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.647684, 32.182251, 24.863834>,  <29.325119, 32.334576, 25.044798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.647684, 32.182251, 24.863834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015983, 0.778802, -0.627066,
		0.591135, 0.498444, 0.634124,
		0.806414, -0.380816, -0.452411,
		29.889608, 32.068005, 24.728111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.773382, 32.846878, 25.089462>,  <29.325119, 32.334576, 25.044798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.773382, 32.846878, 25.089462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.932587, 32.619873, 24.801151>,  <30.028109, 32.483669, 24.628164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.932587, 32.619873, 24.801151>,  <29.773382, 32.846878, 25.089462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.932587, 32.619873, 24.801151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071160, 0.802420, -0.592502,
		0.914617, 0.184531, 0.359755,
		0.398010, -0.567512, -0.720776,
		30.051991, 32.449619, 24.584919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.195177, 33.291397, 24.839523>,  <29.773382, 32.846878, 25.089462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.195177, 33.291397, 24.839523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.156643, 33.009457, 24.558411>,  <30.133522, 32.840290, 24.389744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.156643, 33.009457, 24.558411>,  <30.195177, 33.291397, 24.839523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.156643, 33.009457, 24.558411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010372, 0.706737, -0.707401,
		0.995295, -0.060857, -0.075393,
		-0.096334, -0.704854, -0.702780,
		30.127743, 32.798000, 24.347576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.630508, 33.499962, 24.210621>,  <30.195177, 33.291397, 24.839523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.630508, 33.499962, 24.210621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.377417, 33.221298, 24.075375>,  <30.225561, 33.054100, 23.994226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.377417, 33.221298, 24.075375>,  <30.630508, 33.499962, 24.210621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.377417, 33.221298, 24.075375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129731, 0.525826, -0.840641,
		0.763429, -0.488033, -0.423083,
		-0.632729, -0.696656, -0.338118,
		30.187597, 33.012302, 23.973940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.754385, 33.275551, 23.511356>,  <30.630508, 33.499962, 24.210621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.754385, 33.275551, 23.511356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.363890, 33.206837, 23.564198>,  <30.129593, 33.165607, 23.595901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.363890, 33.206837, 23.564198>,  <30.754385, 33.275551, 23.511356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.363890, 33.206837, 23.564198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194424, 0.425084, -0.884026,
		0.095707, -0.888703, -0.448382,
		-0.976237, -0.171784, 0.132102,
		30.071018, 33.155300, 23.603828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.474800, 33.084946, 22.843088>,  <30.754385, 33.275551, 23.511356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.474800, 33.084946, 22.843088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.175737, 33.212658, 23.076008>,  <29.996300, 33.289284, 23.215759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.175737, 33.212658, 23.076008>,  <30.474800, 33.084946, 22.843088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.175737, 33.212658, 23.076008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428544, 0.437871, -0.790329,
		-0.507306, -0.840435, -0.190552,
		-0.747657, 0.319279, 0.582298,
		29.951441, 33.308441, 23.250698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.779772, 32.844025, 22.431879>,  <30.474800, 33.084946, 22.843088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.779772, 32.844025, 22.431879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.668697, 33.140621, 22.676201>,  <29.602053, 33.318581, 22.822794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.668697, 33.140621, 22.676201>,  <29.779772, 32.844025, 22.431879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.668697, 33.140621, 22.676201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492235, 0.436182, -0.753293,
		-0.824982, -0.509837, 0.243866,
		-0.277686, 0.741492, 0.610802,
		29.585392, 33.363068, 22.859442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.054934, 32.963432, 22.314306>,  <29.779772, 32.844025, 22.431879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.054934, 32.963432, 22.314306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.171152, 33.299568, 22.497353>,  <29.240883, 33.501251, 22.607180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.171152, 33.299568, 22.497353>,  <29.054934, 32.963432, 22.314306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.171152, 33.299568, 22.497353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456853, 0.542043, -0.705319,
		-0.840755, -0.004136, 0.541400,
		0.290545, 0.840341, 0.457615,
		29.258316, 33.551670, 22.634638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.504539, 33.373749, 22.265646>,  <29.054934, 32.963432, 22.314306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.504539, 33.373749, 22.265646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.771446, 33.651112, 22.374416>,  <28.931589, 33.817528, 22.439678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.771446, 33.651112, 22.374416>,  <28.504539, 33.373749, 22.265646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.771446, 33.651112, 22.374416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342831, 0.610051, -0.714356,
		-0.661229, 0.383440, 0.644787,
		0.667266, 0.693406, 0.271928,
		28.971626, 33.859135, 22.455996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.168612, 34.056168, 22.395916>,  <28.504539, 33.373749, 22.265646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.168612, 34.056168, 22.395916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.548000, 34.134140, 22.295998>,  <28.775635, 34.180923, 22.236046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.548000, 34.134140, 22.295998>,  <28.168612, 34.056168, 22.395916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.548000, 34.134140, 22.295998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316561, 0.616970, -0.720511,
		0.013666, 0.762462, 0.646888,
		0.948474, 0.194933, -0.249797,
		28.832542, 34.192619, 22.221058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.082064, 34.699379, 22.271933>,  <28.168612, 34.056168, 22.395916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.082064, 34.699379, 22.271933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.411304, 34.551655, 22.099369>,  <28.608849, 34.463020, 21.995831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.411304, 34.551655, 22.099369>,  <28.082064, 34.699379, 22.271933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.411304, 34.551655, 22.099369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304382, 0.354430, -0.884155,
		0.479431, 0.859063, 0.179321,
		0.823102, -0.369309, -0.431409,
		28.658236, 34.440861, 21.969946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.457195, 34.947563, 22.657192>,  <28.082064, 34.699379, 22.271933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.457195, 34.947563, 22.657192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.134232, 34.835339, 22.864799>,  <26.940454, 34.768005, 22.989363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.134232, 34.835339, 22.864799>,  <27.457195, 34.947563, 22.657192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.134232, 34.835339, 22.864799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527832, 0.736532, -0.422983,
		-0.263601, -0.615473, -0.742770,
		-0.807408, -0.280559, 0.519017,
		26.892010, 34.751171, 23.020504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.058357, 35.331894, 22.269688>,  <27.457195, 34.947563, 22.657192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.058357, 35.331894, 22.269688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.961790, 35.510143, 21.924866>,  <26.903849, 35.617092, 21.717974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.961790, 35.510143, 21.924866>,  <27.058357, 35.331894, 22.269688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.961790, 35.510143, 21.924866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856050, -0.516183, -0.027094,
		-0.457050, 0.731419, 0.506093,
		-0.241420, 0.445624, -0.862053,
		26.889364, 35.643829, 21.666250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.452753, 35.727135, 22.295055>,  <27.058357, 35.331894, 22.269688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.452753, 35.727135, 22.295055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.497658, 35.612522, 21.914467>,  <26.524601, 35.543755, 21.686113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.497658, 35.612522, 21.914467>,  <26.452753, 35.727135, 22.295055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.497658, 35.612522, 21.914467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862295, -0.503930, 0.050017,
		-0.493806, 0.814834, -0.303648,
		0.112261, -0.286533, -0.951470,
		26.531336, 35.526562, 21.629026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.947699, 36.006947, 21.896212>,  <26.452753, 35.727135, 22.295055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.947699, 36.006947, 21.896212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.060280, 35.665398, 21.721081>,  <26.127829, 35.460468, 21.616003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.060280, 35.665398, 21.721081>,  <25.947699, 36.006947, 21.896212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.060280, 35.665398, 21.721081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950053, -0.312082, -0.002102,
		-0.134843, 0.416551, -0.899057,
		0.281455, -0.853868, -0.437827,
		26.144716, 35.409237, 21.589733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.532467, 35.851875, 21.307804>,  <25.947699, 36.006947, 21.896212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.532467, 35.851875, 21.307804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.678371, 35.525707, 21.487602>,  <25.765915, 35.330006, 21.595480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.678371, 35.525707, 21.487602>,  <25.532467, 35.851875, 21.307804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.678371, 35.525707, 21.487602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846461, -0.491512, -0.204742,
		0.387882, -0.305796, -0.869504,
		0.364762, -0.815417, 0.449493,
		25.787800, 35.281082, 21.622450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.279203, 35.102394, 21.555874>,  <25.532467, 35.851875, 21.307804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.279203, 35.102394, 21.555874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.327127, 34.707630, 21.512699>,  <25.355883, 34.470772, 21.486794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.327127, 34.707630, 21.512699>,  <25.279203, 35.102394, 21.555874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.327127, 34.707630, 21.512699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589296, -0.158191, 0.792278,
		-0.798983, -0.031318, -0.600537,
		0.119812, -0.986912, -0.107936,
		25.363071, 34.411556, 21.480318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.580078, 34.703297, 21.792711>,  <25.279203, 35.102394, 21.555874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.580078, 34.703297, 21.792711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.934778, 34.525211, 21.842445>,  <25.147598, 34.418362, 21.872286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.934778, 34.525211, 21.842445>,  <24.580078, 34.703297, 21.792711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.934778, 34.525211, 21.842445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250664, -0.237138, 0.938580,
		-0.388385, -0.863452, -0.321881,
		0.886749, -0.445215, 0.124336,
		25.200804, 34.391647, 21.879745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.012671, 35.222473, 22.003546>,  <24.580078, 34.703297, 21.792711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.012671, 35.222473, 22.003546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.639666, 35.149776, 22.128376>,  <23.415863, 35.106159, 22.203274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.639666, 35.149776, 22.128376>,  <24.012671, 35.222473, 22.003546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.639666, 35.149776, 22.128376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193229, -0.478955, -0.856309,
		0.305097, -0.858820, 0.411513,
		-0.932512, -0.181741, 0.312077,
		23.359913, 35.095253, 22.221998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.835932, 34.503475, 21.790539>,  <24.012671, 35.222473, 22.003546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.835932, 34.503475, 21.790539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.487528, 34.692528, 21.844151>,  <23.278486, 34.805958, 21.876318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.487528, 34.692528, 21.844151>,  <23.835932, 34.503475, 21.790539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.487528, 34.692528, 21.844151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296648, -0.288533, -0.910357,
		-0.391591, -0.832688, 0.391520,
		-0.871009, 0.472631, 0.134028,
		23.226225, 34.834316, 21.884359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.254345, 33.969608, 21.731907>,  <23.835932, 34.503475, 21.790539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.254345, 33.969608, 21.731907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.135012, 34.338287, 21.632740>,  <23.063412, 34.559494, 21.573240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.135012, 34.338287, 21.632740>,  <23.254345, 33.969608, 21.731907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.135012, 34.338287, 21.632740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424932, -0.360845, -0.830195,
		-0.854653, -0.142324, 0.499312,
		-0.298331, 0.921702, -0.247919,
		23.045513, 34.614799, 21.558365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.656487, 33.807194, 21.419781>,  <23.254345, 33.969608, 21.731907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.656487, 33.807194, 21.419781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.689697, 34.190170, 21.309216>,  <22.709623, 34.419956, 21.242876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.689697, 34.190170, 21.309216>,  <22.656487, 33.807194, 21.419781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.689697, 34.190170, 21.309216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473790, -0.206095, -0.856182,
		-0.876715, 0.202048, 0.436517,
		0.083026, 0.957445, -0.276415,
		22.714605, 34.477406, 21.226292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.978863, 33.929123, 21.319534>,  <22.656487, 33.807194, 21.419781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.978863, 33.929123, 21.319534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.214016, 34.194702, 21.134682>,  <22.355108, 34.354050, 21.023769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.214016, 34.194702, 21.134682>,  <21.978863, 33.929123, 21.319534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.214016, 34.194702, 21.134682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586453, -0.043691, -0.808804,
		-0.557196, 0.746500, 0.363690,
		0.587882, 0.663949, -0.462132,
		22.390381, 34.393887, 20.996042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.479769, 34.522114, 21.128172>,  <21.978863, 33.929123, 21.319534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.479769, 34.522114, 21.128172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.797127, 34.515354, 20.884785>,  <21.987541, 34.511299, 20.738752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.797127, 34.515354, 20.884785>,  <21.479769, 34.522114, 21.128172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.797127, 34.515354, 20.884785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608688, -0.014575, -0.793276,
		0.004539, 0.999751, -0.021851,
		0.793397, -0.016901, -0.608470,
		22.035147, 34.510284, 20.702244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.433886, 35.058899, 20.573141>,  <21.479769, 34.522114, 21.128172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.433886, 35.058899, 20.573141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.697968, 34.787884, 20.443485>,  <21.856417, 34.625275, 20.365692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.697968, 34.787884, 20.443485>,  <21.433886, 35.058899, 20.573141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.697968, 34.787884, 20.443485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409591, 0.036962, -0.911520,
		0.629573, 0.734556, -0.253112,
		0.660206, -0.677541, -0.324138,
		21.896029, 34.584621, 20.346245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.658112, 35.323563, 19.949532>,  <21.433886, 35.058899, 20.573141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.658112, 35.323563, 19.949532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.766598, 34.939537, 19.922039>,  <21.831690, 34.709122, 19.905542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.766598, 34.939537, 19.922039>,  <21.658112, 35.323563, 19.949532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.766598, 34.939537, 19.922039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342033, -0.029383, -0.939228,
		0.899697, 0.278243, -0.336342,
		0.271216, -0.960061, -0.068733,
		21.847963, 34.651520, 19.901419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.075714, 35.357094, 19.316343>,  <21.658112, 35.323563, 19.949532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.075714, 35.357094, 19.316343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.983255, 34.973991, 19.384781>,  <21.927780, 34.744129, 19.425844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.983255, 34.973991, 19.384781>,  <22.075714, 35.357094, 19.316343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.983255, 34.973991, 19.384781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168782, -0.133717, -0.976541,
		0.958167, -0.254603, -0.130744,
		-0.231147, -0.957756, 0.171095,
		21.913912, 34.686665, 19.436110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.503023, 35.031242, 18.847700>,  <22.075714, 35.357094, 19.316343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.503023, 35.031242, 18.847700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.182848, 34.800930, 18.914364>,  <21.990744, 34.662743, 18.954363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.182848, 34.800930, 18.914364>,  <22.503023, 35.031242, 18.847700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.182848, 34.800930, 18.914364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086646, -0.163974, -0.982652,
		0.593122, -0.800991, 0.081362,
		-0.800437, -0.575783, 0.166660,
		21.942717, 34.628197, 18.964361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.596647, 34.496483, 18.355564>,  <22.503023, 35.031242, 18.847700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.596647, 34.496483, 18.355564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.217649, 34.424370, 18.461205>,  <21.990250, 34.381104, 18.524590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.217649, 34.424370, 18.461205>,  <22.596647, 34.496483, 18.355564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.217649, 34.424370, 18.461205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217823, -0.240768, -0.945825,
		0.234103, -0.953692, 0.188857,
		-0.947496, -0.180283, 0.264101,
		21.933401, 34.370285, 18.540434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.301256, 33.914864, 18.001598>,  <22.596647, 34.496483, 18.355564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.301256, 33.914864, 18.001598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.963957, 34.086357, 18.131287>,  <21.761578, 34.189251, 18.209099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.963957, 34.086357, 18.131287>,  <22.301256, 33.914864, 18.001598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.963957, 34.086357, 18.131287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322886, 0.078211, -0.943201,
		-0.429736, -0.900041, 0.072479,
		-0.843251, 0.428730, 0.324221,
		21.710981, 34.214977, 18.228554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.803770, 33.542877, 17.627846>,  <22.301256, 33.914864, 18.001598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.803770, 33.542877, 17.627846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.646654, 33.901360, 17.710331>,  <21.552383, 34.116451, 17.759821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.646654, 33.901360, 17.710331>,  <21.803770, 33.542877, 17.627846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.646654, 33.901360, 17.710331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527584, -0.035940, -0.848743,
		-0.753240, -0.442172, 0.486942,
		-0.392791, 0.896210, 0.206211,
		21.528816, 34.170223, 17.772194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.166357, 33.415043, 17.540983>,  <21.803770, 33.542877, 17.627846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.166357, 33.415043, 17.540983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.187580, 33.813793, 17.517605>,  <21.200314, 34.053043, 17.503578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.187580, 33.813793, 17.517605>,  <21.166357, 33.415043, 17.540983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.187580, 33.813793, 17.517605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684382, -0.006322, -0.729096,
		-0.727190, 0.078685, 0.681911,
		0.053058, 0.996880, -0.058448,
		21.203497, 34.112858, 17.500071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.500813, 33.626541, 17.489918>,  <21.166357, 33.415043, 17.540983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.500813, 33.626541, 17.489918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.756727, 33.884003, 17.321930>,  <20.910276, 34.038479, 17.221136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.756727, 33.884003, 17.321930>,  <20.500813, 33.626541, 17.489918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.756727, 33.884003, 17.321930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640678, 0.144844, -0.754024,
		-0.424503, 0.751482, 0.505046,
		0.639788, 0.643657, -0.419971,
		20.948664, 34.077099, 17.195938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.988739, 34.265129, 17.329159>,  <20.500813, 33.626541, 17.489918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.988739, 34.265129, 17.329159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.321865, 34.313644, 17.113121>,  <20.521742, 34.342754, 16.983498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.321865, 34.313644, 17.113121>,  <19.988739, 34.265129, 17.329159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.321865, 34.313644, 17.113121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551987, 0.255209, -0.793838,
		0.041552, 0.959248, 0.279493,
		0.832817, 0.121291, -0.540097,
		20.571711, 34.350033, 16.951092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.064852, 34.901634, 17.084526>,  <19.988739, 34.265129, 17.329159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.064852, 34.901634, 17.084526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.296272, 34.702271, 16.826263>,  <20.435125, 34.582653, 16.671307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.296272, 34.702271, 16.826263>,  <20.064852, 34.901634, 17.084526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.296272, 34.702271, 16.826263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484474, 0.426833, -0.763609,
		0.656174, 0.754590, 0.005480,
		0.578551, -0.498405, -0.645656,
		20.469837, 34.552750, 16.632566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.147833, 35.332542, 16.549225>,  <20.064852, 34.901634, 17.084526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.147833, 35.332542, 16.549225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.242075, 34.973648, 16.399845>,  <20.298620, 34.758312, 16.310217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.242075, 34.973648, 16.399845>,  <20.147833, 35.332542, 16.549225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.242075, 34.973648, 16.399845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398366, 0.261341, -0.879207,
		0.886451, 0.355916, -0.295853,
		0.235605, -0.897232, -0.373451,
		20.312756, 34.704479, 16.287809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.462301, 35.503899, 15.912031>,  <20.147833, 35.332542, 16.549225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.462301, 35.503899, 15.912031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.321758, 35.131203, 15.875354>,  <20.237432, 34.907585, 15.853348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.321758, 35.131203, 15.875354>,  <20.462301, 35.503899, 15.912031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.321758, 35.131203, 15.875354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348648, 0.221106, -0.910800,
		0.868903, -0.288048, -0.402537,
		-0.351357, -0.931741, -0.091692,
		20.216351, 34.851681, 15.847846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.581337, 35.360695, 15.269732>,  <20.462301, 35.503899, 15.912031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.581337, 35.360695, 15.269732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.314398, 35.073143, 15.347554>,  <20.154234, 34.900612, 15.394248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.314398, 35.073143, 15.347554>,  <20.581337, 35.360695, 15.269732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.314398, 35.073143, 15.347554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293935, 0.014211, -0.955720,
		0.684287, -0.694984, -0.220789,
		-0.667348, -0.718884, 0.194556,
		20.114193, 34.857479, 15.405921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.507298, 35.057884, 14.666750>,  <20.581337, 35.360695, 15.269732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.507298, 35.057884, 14.666750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.186640, 34.906609, 14.851937>,  <19.994246, 34.815842, 14.963050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.186640, 34.906609, 14.851937>,  <20.507298, 35.057884, 14.666750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.186640, 34.906609, 14.851937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460188, -0.103922, -0.881718,
		0.381571, -0.919876, -0.090731,
		-0.801642, -0.378191, 0.462969,
		19.946148, 34.793152, 14.990829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.378904, 34.565029, 14.312633>,  <20.507298, 35.057884, 14.666750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.378904, 34.565029, 14.312633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.065773, 34.726044, 14.502429>,  <19.877893, 34.822651, 14.616307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.065773, 34.726044, 14.502429>,  <20.378904, 34.565029, 14.312633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.065773, 34.726044, 14.502429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471926, 0.112904, -0.874379,
		-0.405543, -0.908414, 0.101583,
		-0.782829, 0.402538, 0.474491,
		19.830925, 34.846806, 14.644776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.765564, 34.403992, 13.931405>,  <20.378904, 34.565029, 14.312633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.765564, 34.403992, 13.931405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.685196, 34.732437, 14.145097>,  <19.636974, 34.929504, 14.273312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.685196, 34.732437, 14.145097>,  <19.765564, 34.403992, 13.931405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.685196, 34.732437, 14.145097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499073, 0.383470, -0.777095,
		-0.842945, -0.422755, 0.332749,
		-0.200922, 0.821115, 0.534230,
		19.624920, 34.978771, 14.305366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.038019, 34.494663, 14.134868>,  <19.765564, 34.403992, 13.931405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.038019, 34.494663, 14.134868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.240772, 34.834690, 14.077651>,  <19.362425, 35.038704, 14.043322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.240772, 34.834690, 14.077651>,  <19.038019, 34.494663, 14.134868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.240772, 34.834690, 14.077651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395547, 0.081928, -0.914784,
		-0.765906, 0.520268, 0.377768,
		0.506883, 0.850064, -0.143041,
		19.392838, 35.089710, 14.034739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.770502, 34.957222, 14.632995>,  <19.038019, 34.494663, 14.134868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.770502, 34.957222, 14.632995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.781395, 35.314312, 14.812903>,  <18.787931, 35.528568, 14.920849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.781395, 35.314312, 14.812903>,  <18.770502, 34.957222, 14.632995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.781395, 35.314312, 14.812903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975271, -0.074994, 0.207900,
		0.219329, -0.444312, 0.868609,
		0.027232, 0.892728, 0.449772,
		18.789564, 35.582130, 14.947835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.024736, 34.581051, 14.391092>,  <18.770502, 34.957222, 14.632995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.024736, 34.581051, 14.391092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.925404, 34.474297, 14.018619>,  <17.865805, 34.410244, 13.795135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.925404, 34.474297, 14.018619>,  <18.024736, 34.581051, 14.391092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.925404, 34.474297, 14.018619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673815, -0.643026, 0.363993,
		-0.695921, 0.717836, -0.020149,
		-0.248331, -0.266887, -0.931184,
		17.850904, 34.394230, 13.739264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.327221, 34.724163, 14.631400>,  <18.024736, 34.581051, 14.391092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.327221, 34.724163, 14.631400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.029013, 34.903900, 14.434508>,  <16.850088, 35.011742, 14.316374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.029013, 34.903900, 14.434508>,  <17.327221, 34.724163, 14.631400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.029013, 34.903900, 14.434508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297061, 0.437099, 0.848940,
		0.596620, 0.779124, -0.192383,
		-0.745520, 0.449345, -0.492229,
		16.805357, 35.038704, 14.286839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.433605, 35.514225, 14.547834>,  <17.327221, 34.724163, 14.631400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.433605, 35.514225, 14.547834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.070297, 35.363426, 14.620408>,  <16.852312, 35.272945, 14.663952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.070297, 35.363426, 14.620408>,  <17.433605, 35.514225, 14.547834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.070297, 35.363426, 14.620408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096737, 0.232669, 0.967733,
		-0.407046, 0.896515, -0.174857,
		-0.908270, -0.376997, 0.181434,
		16.797815, 35.250328, 14.674838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.144417, 35.988209, 14.970247>,  <17.433605, 35.514225, 14.547834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.144417, 35.988209, 14.970247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.946651, 35.655231, 15.070325>,  <16.827991, 35.455444, 15.130371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.946651, 35.655231, 15.070325>,  <17.144417, 35.988209, 14.970247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.946651, 35.655231, 15.070325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097339, 0.233002, 0.967593,
		-0.863759, 0.502745, -0.034170,
		-0.494414, -0.832441, 0.250194,
		16.798326, 35.405499, 15.145383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.636709, 36.191044, 15.466359>,  <17.144417, 35.988209, 14.970247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.636709, 36.191044, 15.466359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.751974, 35.811592, 15.518617>,  <16.821133, 35.583923, 15.549972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.751974, 35.811592, 15.518617>,  <16.636709, 36.191044, 15.466359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.751974, 35.811592, 15.518617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072789, 0.157736, 0.984795,
		-0.954811, -0.274273, 0.114503,
		0.288163, -0.948628, 0.130644,
		16.838423, 35.527004, 15.557810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.359482, 35.893364, 16.035387>,  <16.636709, 36.191044, 15.466359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.359482, 35.893364, 16.035387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.679743, 35.662086, 15.972589>,  <16.871899, 35.523319, 15.934909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.679743, 35.662086, 15.972589>,  <16.359482, 35.893364, 16.035387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.679743, 35.662086, 15.972589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171899, -0.029336, 0.984678,
		-0.573941, -0.815372, 0.075903,
		0.800651, -0.578194, -0.156998,
		16.919939, 35.488628, 15.925489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.351107, 35.404716, 16.556320>,  <16.359482, 35.893364, 16.035387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.351107, 35.404716, 16.556320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.724215, 35.356491, 16.420437>,  <16.948080, 35.327557, 16.338907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.724215, 35.356491, 16.420437>,  <16.351107, 35.404716, 16.556320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.724215, 35.356491, 16.420437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327505, -0.110268, 0.938393,
		-0.150601, -0.986562, -0.063368,
		0.932770, -0.120569, -0.339710,
		17.004045, 35.320324, 16.318523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.600174, 34.860569, 16.911827>,  <16.351107, 35.404716, 16.556320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.600174, 34.860569, 16.911827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.929764, 35.037502, 16.770180>,  <17.127518, 35.143661, 16.685190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.929764, 35.037502, 16.770180>,  <16.600174, 34.860569, 16.911827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.929764, 35.037502, 16.770180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520507, -0.343926, 0.781529,
		0.223908, -0.828283, -0.513627,
		0.823977, 0.442337, -0.354119,
		17.176956, 35.170204, 16.663944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.141573, 34.362194, 16.991407>,  <16.600174, 34.860569, 16.911827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.141573, 34.362194, 16.991407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.284668, 34.735641, 16.999245>,  <17.370525, 34.959709, 17.003946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.284668, 34.735641, 16.999245>,  <17.141573, 34.362194, 16.991407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.284668, 34.735641, 16.999245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486060, -0.204080, 0.849763,
		0.797351, -0.294469, -0.526801,
		0.357738, 0.933616, 0.019594,
		17.391989, 35.015728, 17.005123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.757538, 34.281708, 17.318874>,  <17.141573, 34.362194, 16.991407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.757538, 34.281708, 17.318874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.692318, 34.674862, 17.353161>,  <17.653187, 34.910755, 17.373734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.692318, 34.674862, 17.353161>,  <17.757538, 34.281708, 17.318874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.692318, 34.674862, 17.353161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304900, -0.032430, 0.951832,
		0.938324, 0.181329, -0.294395,
		-0.163048, 0.982888, 0.085717,
		17.643404, 34.969727, 17.378876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.370756, 34.624409, 17.553680>,  <17.757538, 34.281708, 17.318874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.370756, 34.624409, 17.553680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.082989, 34.887283, 17.643604>,  <17.910328, 35.045010, 17.697559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.082989, 34.887283, 17.643604>,  <18.370756, 34.624409, 17.553680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.082989, 34.887283, 17.643604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360372, 0.076474, 0.929668,
		0.593777, 0.749835, -0.291850,
		-0.719417, 0.657190, 0.224811,
		17.867163, 35.084442, 17.711048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.629044, 35.176796, 17.864614>,  <18.370756, 34.624409, 17.553680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.629044, 35.176796, 17.864614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.251022, 35.226463, 17.985584>,  <18.024210, 35.256264, 18.058167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.251022, 35.226463, 17.985584>,  <18.629044, 35.176796, 17.864614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.251022, 35.226463, 17.985584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325074, 0.258654, 0.909629,
		0.034721, 0.957957, -0.284804,
		-0.945051, 0.124166, 0.302426,
		17.967506, 35.263714, 18.076313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.624838, 35.762653, 18.285223>,  <18.629044, 35.176796, 17.864614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.624838, 35.762653, 18.285223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.266146, 35.622974, 18.393990>,  <18.050930, 35.539165, 18.459249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.266146, 35.622974, 18.393990>,  <18.624838, 35.762653, 18.285223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.266146, 35.622974, 18.393990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201596, 0.224668, 0.953354,
		-0.394002, 0.909716, -0.131069,
		-0.896728, -0.349201, 0.271915,
		17.997128, 35.518215, 18.475563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.483427, 36.183640, 18.750429>,  <18.624838, 35.762653, 18.285223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.483427, 36.183640, 18.750429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.255884, 35.858463, 18.800270>,  <18.119358, 35.663357, 18.830173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.255884, 35.858463, 18.800270>,  <18.483427, 36.183640, 18.750429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.255884, 35.858463, 18.800270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220916, -0.005102, 0.975279,
		-0.792212, 0.582319, 0.182495,
		-0.568855, -0.812944, 0.124601,
		18.085228, 35.614578, 18.837650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.038034, 36.442150, 19.289101>,  <18.483427, 36.183640, 18.750429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.038034, 36.442150, 19.289101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.058323, 36.042694, 19.284363>,  <18.070496, 35.803020, 19.281519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.058323, 36.042694, 19.284363>,  <18.038034, 36.442150, 19.289101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.058323, 36.042694, 19.284363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380248, 0.008342, 0.924847,
		-0.923493, -0.051412, 0.380155,
		0.050719, -0.998643, -0.011846,
		18.073538, 35.743103, 19.280809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.938107, 36.208920, 19.913244>,  <18.038034, 36.442150, 19.289101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.938107, 36.208920, 19.913244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.089827, 35.860634, 19.788033>,  <18.180859, 35.651661, 19.712906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.089827, 35.860634, 19.788033>,  <17.938107, 36.208920, 19.913244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.089827, 35.860634, 19.788033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543338, -0.064238, 0.837052,
		-0.748943, -0.487572, 0.448728,
		0.379298, -0.870716, -0.313028,
		18.203615, 35.599419, 19.694124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.861137, 35.740273, 20.609451>,  <17.938107, 36.208920, 19.913244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.861137, 35.740273, 20.609451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.116392, 35.571060, 20.352135>,  <18.269545, 35.469532, 20.197744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.116392, 35.571060, 20.352135>,  <17.861137, 35.740273, 20.609451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.116392, 35.571060, 20.352135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453297, -0.468931, 0.758041,
		-0.622338, -0.775335, -0.107480,
		0.638136, -0.423037, -0.643290,
		18.307833, 35.444149, 20.159147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.028599, 35.037430, 20.835081>,  <17.861137, 35.740273, 20.609451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.028599, 35.037430, 20.835081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.345951, 35.136307, 20.612572>,  <18.536362, 35.195633, 20.479065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.345951, 35.136307, 20.612572>,  <18.028599, 35.037430, 20.835081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.345951, 35.136307, 20.612572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603009, -0.194203, 0.773735,
		0.083234, -0.949305, -0.303138,
		0.793380, 0.247196, -0.556275,
		18.583965, 35.210464, 20.445688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.494675, 34.493984, 20.928659>,  <18.028599, 35.037430, 20.835081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.494675, 34.493984, 20.928659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.728146, 34.791485, 20.798332>,  <18.868227, 34.969986, 20.720137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.728146, 34.791485, 20.798332>,  <18.494675, 34.493984, 20.928659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.728146, 34.791485, 20.798332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576847, -0.097407, 0.811024,
		0.571463, -0.661321, -0.485885,
		0.583676, 0.743751, -0.325817,
		18.903248, 35.014610, 20.700586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.325323, 34.248840, 21.003609>,  <18.494675, 34.493984, 20.928659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.325323, 34.248840, 21.003609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.320442, 34.647377, 20.969780>,  <19.317514, 34.886497, 20.949482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.320442, 34.647377, 20.969780>,  <19.325323, 34.248840, 21.003609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.320442, 34.647377, 20.969780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712846, 0.067979, 0.698019,
		0.701215, -0.051771, -0.711068,
		-0.012200, 0.996343, -0.084573,
		19.316782, 34.946281, 20.944408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.020313, 34.453655, 20.981569>,  <19.325323, 34.248840, 21.003609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.020313, 34.453655, 20.981569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.828836, 34.785271, 21.097191>,  <19.713951, 34.984238, 21.166565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.828836, 34.785271, 21.097191>,  <20.020313, 34.453655, 20.981569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.828836, 34.785271, 21.097191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619768, 0.085876, 0.780072,
		0.621884, 0.552563, -0.554918,
		-0.478693, 0.829035, 0.289056,
		19.685228, 35.033981, 21.183908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.595844, 34.849689, 21.123110>,  <20.020313, 34.453655, 20.981569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.595844, 34.849689, 21.123110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.290886, 35.035831, 21.302975>,  <20.107910, 35.147518, 21.410892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.290886, 35.035831, 21.302975>,  <20.595844, 34.849689, 21.123110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.290886, 35.035831, 21.302975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568285, 0.149113, 0.809208,
		0.309517, 0.872474, -0.378137,
		-0.762398, 0.465354, 0.449661,
		20.062166, 35.175438, 21.437874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.806969, 35.462891, 21.493832>,  <20.595844, 34.849689, 21.123110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.806969, 35.462891, 21.493832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.478582, 35.362648, 21.699047>,  <20.281551, 35.302502, 21.822176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.478582, 35.362648, 21.699047>,  <20.806969, 35.462891, 21.493832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.478582, 35.362648, 21.699047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447048, 0.276839, 0.850593,
		-0.355193, 0.927662, -0.115243,
		-0.820966, -0.250605, 0.513041,
		20.232292, 35.287468, 21.852959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.789148, 35.930511, 21.988617>,  <20.806969, 35.462891, 21.493832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.789148, 35.930511, 21.988617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.528328, 35.666695, 22.138191>,  <20.371836, 35.508404, 22.227936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.528328, 35.666695, 22.138191>,  <20.789148, 35.930511, 21.988617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.528328, 35.666695, 22.138191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113503, 0.402731, 0.908254,
		-0.749632, 0.634670, -0.187741,
		-0.652050, -0.659547, 0.373937,
		20.332712, 35.468830, 22.250372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.388096, 36.323200, 22.437595>,  <20.789148, 35.930511, 21.988617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.388096, 36.323200, 22.437595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.347679, 35.950905, 22.578175>,  <20.323429, 35.727528, 22.662523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.347679, 35.950905, 22.578175>,  <20.388096, 36.323200, 22.437595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.347679, 35.950905, 22.578175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225931, 0.322562, 0.919189,
		-0.968889, 0.172280, 0.177690,
		-0.101042, -0.930738, 0.351450,
		20.317366, 35.671684, 22.683609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.091129, 36.386616, 23.018148>,  <20.388096, 36.323200, 22.437595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.091129, 36.386616, 23.018148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.240360, 36.015831, 23.033924>,  <20.329899, 35.793362, 23.043388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.240360, 36.015831, 23.033924>,  <20.091129, 36.386616, 23.018148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.240360, 36.015831, 23.033924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500036, 0.236691, 0.833031,
		-0.781523, -0.291064, 0.551818,
		0.373076, -0.926962, 0.039438,
		20.352283, 35.737743, 23.045755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.990702, 36.165081, 23.652411>,  <20.091129, 36.386616, 23.018148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.990702, 36.165081, 23.652411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.312361, 35.961975, 23.528786>,  <20.505356, 35.840111, 23.454611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.312361, 35.961975, 23.528786>,  <19.990702, 36.165081, 23.652411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.312361, 35.961975, 23.528786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462619, 0.208105, 0.861787,
		-0.373272, -0.835980, 0.402251,
		0.804147, -0.507770, -0.309061,
		20.553604, 35.809643, 23.436068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.219431, 36.837837, 23.624653>,  <19.990702, 36.165081, 23.652411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.219431, 36.837837, 23.624653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.020437, 36.993080, 23.314327>,  <19.901041, 37.086227, 23.128132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.020437, 36.993080, 23.314327>,  <20.219431, 36.837837, 23.624653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.020437, 36.993080, 23.314327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847486, -0.026566, 0.530153,
		0.185145, 0.921232, 0.342131,
		-0.497483, 0.388106, -0.775812,
		19.871193, 37.109512, 23.081583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.856091, 37.526661, 23.727339>,  <20.219431, 36.837837, 23.624653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.856091, 37.526661, 23.727339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.657810, 37.347050, 23.429977>,  <19.538841, 37.239281, 23.251560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.657810, 37.347050, 23.429977>,  <19.856091, 37.526661, 23.727339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.657810, 37.347050, 23.429977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739170, -0.231268, 0.632568,
		-0.455969, 0.863067, -0.217272,
		-0.495701, -0.449033, -0.743404,
		19.509100, 37.212341, 23.206957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.246782, 37.859463, 23.591097>,  <19.856091, 37.526661, 23.727339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.246782, 37.859463, 23.591097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.111464, 37.512455, 23.445240>,  <19.030272, 37.304249, 23.357727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.111464, 37.512455, 23.445240>,  <19.246782, 37.859463, 23.591097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.111464, 37.512455, 23.445240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708261, -0.020411, 0.705656,
		-0.619613, 0.496983, -0.607526,
		-0.338299, -0.867520, -0.364640,
		19.009974, 37.252197, 23.335848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.540833, 37.795189, 23.433577>,  <19.246782, 37.859463, 23.591097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.540833, 37.795189, 23.433577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.678957, 37.436642, 23.544777>,  <18.761831, 37.221512, 23.611496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.678957, 37.436642, 23.544777>,  <18.540833, 37.795189, 23.433577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.678957, 37.436642, 23.544777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746900, -0.083125, 0.659720,
		-0.568244, -0.435446, -0.698202,
		0.345310, -0.896369, 0.277999,
		18.782551, 37.167732, 23.628176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.190634, 37.217430, 23.339596>,  <18.540833, 37.795189, 23.433577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.190634, 37.217430, 23.339596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.360203, 37.071095, 23.671005>,  <18.461945, 36.983292, 23.869850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.360203, 37.071095, 23.671005>,  <18.190634, 37.217430, 23.339596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.360203, 37.071095, 23.671005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899932, -0.067074, 0.430841,
		-0.102056, -0.928250, -0.357683,
		0.423920, -0.365860, 0.828516,
		18.487379, 36.961342, 23.919561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.713696, 25.817904, 26.235134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.053417, 25.920483, 26.419708>,  <33.257248, 25.982029, 26.530453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.053417, 25.920483, 26.419708>,  <32.713696, 25.817904, 26.235134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053417, 25.920483, 26.419708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114618, 0.763655, -0.635369,
		-0.515316, 0.592509, 0.619179,
		0.849301, 0.256447, 0.461436,
		33.308208, 25.997417, 26.558140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627258, 26.607265, 26.275028>,  <32.713696, 25.817904, 26.235134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627258, 26.607265, 26.275028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.019527, 26.534618, 26.304134>,  <33.254890, 26.491030, 26.321598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.019527, 26.534618, 26.304134>,  <32.627258, 26.607265, 26.275028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019527, 26.534618, 26.304134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172458, 0.626770, -0.759880,
		0.092399, 0.757743, 0.645978,
		0.980674, -0.181616, 0.072766,
		33.313728, 26.480133, 26.325964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929626, 27.307688, 26.128002>,  <32.627258, 26.607265, 26.275028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929626, 27.307688, 26.128002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.227016, 27.045948, 26.072758>,  <33.405449, 26.888905, 26.039612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.227016, 27.045948, 26.072758>,  <32.929626, 27.307688, 26.128002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227016, 27.045948, 26.072758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252895, 0.466265, -0.847727,
		0.619104, 0.595336, 0.512137,
		0.743474, -0.654348, -0.138109,
		33.450058, 26.849644, 26.031324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542557, 27.769979, 26.048309>,  <32.929626, 27.307688, 26.128002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542557, 27.769979, 26.048309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.669979, 27.412865, 25.920906>,  <33.746433, 27.198595, 25.844463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.669979, 27.412865, 25.920906>,  <33.542557, 27.769979, 26.048309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669979, 27.412865, 25.920906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389889, 0.429686, -0.814467,
		0.864007, 0.135272, 0.484968,
		0.318558, -0.892789, -0.318510,
		33.765545, 27.145027, 25.825354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284691, 27.801981, 25.814226>,  <33.542557, 27.769979, 26.048309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284691, 27.801981, 25.814226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.110050, 27.494339, 25.627525>,  <34.005264, 27.309753, 25.515505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.110050, 27.494339, 25.627525>,  <34.284691, 27.801981, 25.814226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110050, 27.494339, 25.627525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262210, 0.387502, -0.883792,
		0.860595, -0.508254, 0.032482,
		-0.436604, -0.769104, -0.466751,
		33.979069, 27.263607, 25.487499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856480, 27.569756, 25.446390>,  <34.284691, 27.801981, 25.814226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856480, 27.569756, 25.446390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.515743, 27.422440, 25.297401>,  <34.311302, 27.334049, 25.208008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.515743, 27.422440, 25.297401>,  <34.856480, 27.569756, 25.446390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515743, 27.422440, 25.297401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243386, 0.351377, -0.904045,
		0.463831, -0.860753, -0.209678,
		-0.851836, -0.368292, -0.372474,
		34.260193, 27.311953, 25.185659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027508, 27.367838, 24.747967>,  <34.856480, 27.569756, 25.446390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027508, 27.367838, 24.747967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.628620, 27.392593, 24.764549>,  <34.389286, 27.407446, 24.774500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.628620, 27.392593, 24.764549>,  <35.027508, 27.367838, 24.747967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628620, 27.392593, 24.764549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004016, 0.511079, -0.859525,
		-0.074382, -0.857303, -0.509410,
		-0.997222, 0.061888, 0.041458,
		34.329453, 27.411160, 24.776987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944660, 27.549112, 24.064539>,  <35.027508, 27.367838, 24.747967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944660, 27.549112, 24.064539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.581421, 27.621162, 24.215755>,  <34.363476, 27.664392, 24.306486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.581421, 27.621162, 24.215755>,  <34.944660, 27.549112, 24.064539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581421, 27.621162, 24.215755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078173, 0.813979, -0.575610,
		-0.411399, -0.552263, -0.725091,
		-0.908097, 0.180123, 0.378043,
		34.308990, 27.675200, 24.329168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399822, 27.668270, 23.455105>,  <34.944660, 27.549112, 24.064539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399822, 27.668270, 23.455105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.309456, 27.876102, 23.784710>,  <34.255234, 28.000801, 23.982473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.309456, 27.876102, 23.784710>,  <34.399822, 27.668270, 23.455105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.309456, 27.876102, 23.784710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114152, 0.825934, -0.552089,
		-0.967435, -0.218791, -0.127284,
		-0.225920, 0.519580, 0.824013,
		34.241680, 28.031977, 24.031914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908737, 28.061003, 23.256355>,  <34.399822, 27.668270, 23.455105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908737, 28.061003, 23.256355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.019783, 28.247795, 23.592178>,  <34.086411, 28.359871, 23.793673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.019783, 28.247795, 23.592178>,  <33.908737, 28.061003, 23.256355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019783, 28.247795, 23.592178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067630, 0.881241, -0.467805,
		-0.958309, 0.073091, 0.276229,
		0.277616, 0.466983, 0.839557,
		34.103069, 28.387890, 23.844046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372108, 28.493168, 23.381903>,  <33.908737, 28.061003, 23.256355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372108, 28.493168, 23.381903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.680588, 28.637714, 23.591537>,  <33.865677, 28.724442, 23.717319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.680588, 28.637714, 23.591537>,  <33.372108, 28.493168, 23.381903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680588, 28.637714, 23.591537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183611, 0.914545, -0.360409,
		-0.609542, 0.181718, 0.771646,
		0.771198, 0.361367, 0.524088,
		33.911945, 28.746124, 23.748764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108337, 29.091614, 23.605747>,  <33.372108, 28.493168, 23.381903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108337, 29.091614, 23.605747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.504894, 29.139851, 23.626175>,  <33.742828, 29.168793, 23.638432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.504894, 29.139851, 23.626175>,  <33.108337, 29.091614, 23.605747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504894, 29.139851, 23.626175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066470, 0.799336, -0.597197,
		-0.112840, 0.588659, 0.800468,
		0.991388, 0.120594, 0.051069,
		33.802311, 29.176029, 23.641495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.260384, 29.805452, 23.763187>,  <33.108337, 29.091614, 23.605747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.260384, 29.805452, 23.763187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.627979, 29.716785, 23.632763>,  <33.848537, 29.663586, 23.554508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.627979, 29.716785, 23.632763>,  <33.260384, 29.805452, 23.763187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627979, 29.716785, 23.632763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027212, 0.789361, -0.613326,
		0.393336, 0.572515, 0.719384,
		0.918992, -0.221667, -0.326063,
		33.903675, 29.650286, 23.534945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602627, 30.509428, 23.852890>,  <33.260384, 29.805452, 23.763187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602627, 30.509428, 23.852890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.811810, 30.269733, 23.610424>,  <33.937317, 30.125916, 23.464945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.811810, 30.269733, 23.610424>,  <33.602627, 30.509428, 23.852890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811810, 30.269733, 23.610424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147323, 0.636909, -0.756732,
		0.839533, 0.485037, 0.244792,
		0.522953, -0.599238, -0.606163,
		33.968697, 30.089962, 23.428576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215836, 30.940374, 23.563124>,  <33.602627, 30.509428, 23.852890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215836, 30.940374, 23.563124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.146236, 30.656357, 23.290195>,  <34.104477, 30.485947, 23.126438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.146236, 30.656357, 23.290195>,  <34.215836, 30.940374, 23.563124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146236, 30.656357, 23.290195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119731, 0.703005, -0.701033,
		0.977440, -0.040284, -0.207336,
		-0.173999, -0.710043, -0.682322,
		34.094036, 30.443344, 23.085499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658466, 31.097696, 23.017673>,  <34.215836, 30.940374, 23.563124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658466, 31.097696, 23.017673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.385151, 30.852341, 22.859249>,  <34.221161, 30.705128, 22.764194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.385151, 30.852341, 22.859249>,  <34.658466, 31.097696, 23.017673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385151, 30.852341, 22.859249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109900, 0.622663, -0.774734,
		0.721828, -0.485842, -0.492872,
		-0.683291, -0.613391, -0.396061,
		34.180164, 30.668324, 22.740431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804092, 31.161121, 22.287157>,  <34.658466, 31.097696, 23.017673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804092, 31.161121, 22.287157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.429451, 31.030094, 22.336906>,  <34.204666, 30.951479, 22.366756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.429451, 31.030094, 22.336906>,  <34.804092, 31.161121, 22.287157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429451, 31.030094, 22.336906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290701, 0.528295, -0.797746,
		0.195607, -0.783329, -0.590028,
		-0.936606, -0.327566, 0.124376,
		34.148468, 30.931824, 22.374220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613548, 30.897432, 21.691589>,  <34.804092, 31.161121, 22.287157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613548, 30.897432, 21.691589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.267647, 30.967743, 21.879761>,  <34.060104, 31.009930, 21.992664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.267647, 30.967743, 21.879761>,  <34.613548, 30.897432, 21.691589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267647, 30.967743, 21.879761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303020, 0.564373, -0.767895,
		-0.400478, -0.806589, -0.434778,
		-0.864752, 0.175779, 0.470431,
		34.008221, 31.020477, 22.020889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059326, 31.006853, 21.184856>,  <34.613548, 30.897432, 21.691589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059326, 31.006853, 21.184856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.850170, 31.138821, 21.499241>,  <33.724678, 31.218000, 21.687872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.850170, 31.138821, 21.499241>,  <34.059326, 31.006853, 21.184856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850170, 31.138821, 21.499241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545191, 0.579354, -0.605901,
		-0.655249, -0.745320, -0.123071,
		-0.522892, 0.329919, 0.785963,
		33.693302, 31.237797, 21.735029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431091, 31.199097, 20.919243>,  <34.059326, 31.006853, 21.184856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431091, 31.199097, 20.919243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.503193, 31.426685, 21.240185>,  <33.546455, 31.563238, 21.432751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.503193, 31.426685, 21.240185>,  <33.431091, 31.199097, 20.919243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503193, 31.426685, 21.240185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452375, 0.772285, -0.446019,
		-0.873421, -0.282568, 0.396598,
		0.180256, 0.568973, 0.802357,
		33.557270, 31.597378, 21.480892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736668, 31.579859, 21.081991>,  <33.431091, 31.199097, 20.919243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736668, 31.579859, 21.081991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.030209, 31.781719, 21.263885>,  <33.206333, 31.902836, 21.373022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.030209, 31.781719, 21.263885>,  <32.736668, 31.579859, 21.081991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.030209, 31.781719, 21.263885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326866, 0.849148, -0.414858,
		-0.595498, 0.155806, 0.788103,
		0.733853, 0.504652, 0.454738,
		33.250366, 31.933115, 21.400307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505775, 32.235870, 21.121798>,  <32.736668, 31.579859, 21.081991>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505775, 32.235870, 21.121798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.882301, 32.334824, 21.213650>,  <33.108215, 32.394196, 21.268761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.882301, 32.334824, 21.213650>,  <32.505775, 32.235870, 21.121798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882301, 32.334824, 21.213650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122860, 0.884774, -0.449534,
		-0.314377, 0.394940, 0.863244,
		0.941315, 0.247381, 0.229630,
		33.164696, 32.409039, 21.282539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.854145, 32.341473, 21.180592>,  <32.505775, 32.235870, 21.121798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.854145, 32.341473, 21.180592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.469593, 32.333897, 21.070766>,  <31.238861, 32.329353, 21.004871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.469593, 32.333897, 21.070766>,  <31.854145, 32.341473, 21.180592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.469593, 32.333897, 21.070766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227735, -0.505437, 0.832268,
		-0.154535, 0.862656, 0.481606,
		-0.961382, -0.018936, -0.274564,
		31.181179, 32.328217, 20.988398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.479176, 32.459068, 21.736816>,  <31.854145, 32.341473, 21.180592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.479176, 32.459068, 21.736816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.252668, 32.257069, 21.476257>,  <31.116764, 32.135868, 21.319921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.252668, 32.257069, 21.476257>,  <31.479176, 32.459068, 21.736816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252668, 32.257069, 21.476257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314742, -0.597940, 0.737160,
		-0.761761, 0.622452, 0.179650,
		-0.566267, -0.504996, -0.651399,
		31.082788, 32.105568, 21.280838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.888046, 32.375011, 22.106148>,  <31.479176, 32.459068, 21.736816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.888046, 32.375011, 22.106148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.873667, 32.100948, 21.815144>,  <30.865040, 31.936512, 21.640541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.873667, 32.100948, 21.815144>,  <30.888046, 32.375011, 22.106148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.873667, 32.100948, 21.815144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368005, -0.667749, 0.647057,
		-0.929129, 0.290987, -0.228137,
		-0.035947, -0.685155, -0.727510,
		30.862883, 31.895401, 21.596891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.304615, 31.940533, 22.275726>,  <30.888046, 32.375011, 22.106148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.304615, 31.940533, 22.275726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.474495, 31.700161, 22.004871>,  <30.576424, 31.555939, 21.842358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.474495, 31.700161, 22.004871>,  <30.304615, 31.940533, 22.275726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.474495, 31.700161, 22.004871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109773, -0.776604, 0.620351,
		-0.898654, -0.189132, -0.395791,
		0.424701, -0.600928, -0.677137,
		30.601906, 31.519882, 21.801731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.839514, 31.276655, 22.202948>,  <30.304615, 31.940533, 22.275726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.839514, 31.276655, 22.202948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.221054, 31.216179, 22.099174>,  <30.449978, 31.179893, 22.036911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.221054, 31.216179, 22.099174>,  <29.839514, 31.276655, 22.202948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.221054, 31.216179, 22.099174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004964, -0.855934, 0.517062,
		-0.300234, -0.494489, -0.815684,
		0.953853, -0.151191, -0.259434,
		30.507210, 31.170822, 22.021343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.875166, 30.497444, 22.200638>,  <29.839514, 31.276655, 22.202948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.875166, 30.497444, 22.200638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.263744, 30.592308, 22.197895>,  <30.496891, 30.649227, 22.196249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.263744, 30.592308, 22.197895>,  <29.875166, 30.497444, 22.200638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.263744, 30.592308, 22.197895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218582, -0.883361, 0.414603,
		0.092273, -0.404263, -0.909977,
		0.971446, 0.237162, -0.006854,
		30.555178, 30.663456, 22.195839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.197384, 29.907951, 22.009464>,  <29.875166, 30.497444, 22.200638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.197384, 29.907951, 22.009464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.491375, 30.111805, 22.188385>,  <30.667770, 30.234118, 22.295738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.491375, 30.111805, 22.188385>,  <30.197384, 29.907951, 22.009464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.491375, 30.111805, 22.188385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331755, -0.845567, 0.418277,
		0.591391, -0.159030, -0.790548,
		0.734980, 0.509634, 0.447302,
		30.711868, 30.264694, 22.322575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.863745, 29.611208, 21.813728>,  <30.197384, 29.907951, 22.009464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.863745, 29.611208, 21.813728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.958654, 29.796558, 22.155251>,  <31.015600, 29.907768, 22.360165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.958654, 29.796558, 22.155251>,  <30.863745, 29.611208, 21.813728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.958654, 29.796558, 22.155251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405794, -0.845828, 0.346275,
		0.882628, 0.264307, -0.388728,
		0.237274, 0.463375, 0.853806,
		31.029837, 29.935572, 22.411392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.505413, 29.283899, 21.976974>,  <30.863745, 29.611208, 21.813728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.505413, 29.283899, 21.976974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.411879, 29.469421, 22.318783>,  <31.355759, 29.580734, 22.523869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.411879, 29.469421, 22.318783>,  <31.505413, 29.283899, 21.976974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.411879, 29.469421, 22.318783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107503, -0.861165, 0.496829,
		0.966314, 0.208040, 0.151511,
		-0.233836, 0.463805, 0.854521,
		31.341728, 29.608562, 22.575138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034828, 29.057705, 22.402674>,  <31.505413, 29.283899, 21.976974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034828, 29.057705, 22.402674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.724388, 29.185566, 22.620110>,  <31.538124, 29.262281, 22.750570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.724388, 29.185566, 22.620110>,  <32.034828, 29.057705, 22.402674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.724388, 29.185566, 22.620110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139507, -0.753619, 0.642336,
		0.614982, 0.574353, 0.540292,
		-0.776103, 0.319651, 0.543588,
		31.491558, 29.281462, 22.783186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244480, 28.990126, 22.990576>,  <32.034828, 29.057705, 22.402674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244480, 28.990126, 22.990576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.847914, 28.985031, 23.042625>,  <31.609974, 28.981974, 23.073856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.847914, 28.985031, 23.042625>,  <32.244480, 28.990126, 22.990576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.847914, 28.985031, 23.042625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102170, -0.696503, 0.710243,
		0.081587, 0.717441, 0.691825,
		-0.991416, -0.012737, 0.130126,
		31.550489, 28.981211, 23.081663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126984, 28.886929, 23.740992>,  <32.244480, 28.990126, 22.990576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126984, 28.886929, 23.740992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.781107, 28.771683, 23.576408>,  <31.573582, 28.702536, 23.477659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.781107, 28.771683, 23.576408>,  <32.126984, 28.886929, 23.740992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.781107, 28.771683, 23.576408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058504, -0.755800, 0.652184,
		-0.498883, 0.588010, 0.636678,
		-0.864692, -0.288115, -0.411457,
		31.521700, 28.685247, 23.452971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.725750, 28.619825, 24.265957>,  <32.126984, 28.886929, 23.740992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.725750, 28.619825, 24.265957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.567156, 28.463341, 23.933750>,  <31.472000, 28.369450, 23.734426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.567156, 28.463341, 23.933750>,  <31.725750, 28.619825, 24.265957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.567156, 28.463341, 23.933750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186416, -0.851504, 0.490092,
		-0.898916, 0.349135, 0.264679,
		-0.396484, -0.391211, -0.830515,
		31.448212, 28.345978, 23.684595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.137278, 28.448606, 24.441164>,  <31.725750, 28.619825, 24.265957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.137278, 28.448606, 24.441164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.130173, 28.189873, 24.136196>,  <31.125910, 28.034632, 23.953215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.130173, 28.189873, 24.136196>,  <31.137278, 28.448606, 24.441164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.130173, 28.189873, 24.136196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148989, -0.752316, 0.641734,
		-0.988679, 0.124992, -0.083007,
		-0.017764, -0.646837, -0.762422,
		31.124844, 27.995821, 23.907469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.473692, 27.986446, 24.613245>,  <31.137278, 28.448606, 24.441164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.473692, 27.986446, 24.613245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.716663, 27.826714, 24.338562>,  <30.862446, 27.730873, 24.173752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.716663, 27.826714, 24.338562>,  <30.473692, 27.986446, 24.613245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.716663, 27.826714, 24.338562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239099, -0.916282, 0.321340,
		-0.757537, -0.031000, -0.652056,
		0.607429, -0.399333, -0.686705,
		30.898891, 27.706913, 24.132551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.210798, 27.312681, 24.510485>,  <30.473692, 27.986446, 24.613245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.210798, 27.312681, 24.510485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.581017, 27.279457, 24.362717>,  <30.803146, 27.259523, 24.274055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.581017, 27.279457, 24.362717>,  <30.210798, 27.312681, 24.510485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.581017, 27.279457, 24.362717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146945, -0.820382, 0.552613,
		-0.348964, -0.565751, -0.747094,
		0.925544, -0.083061, -0.369418,
		30.858679, 27.254539, 24.251890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.206518, 26.699909, 24.280218>,  <30.210798, 27.312681, 24.510485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.206518, 26.699909, 24.280218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.590395, 26.790955, 24.346165>,  <30.820721, 26.845583, 24.385733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.590395, 26.790955, 24.346165>,  <30.206518, 26.699909, 24.280218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.590395, 26.790955, 24.346165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078693, -0.780767, 0.619847,
		0.269809, -0.581889, -0.767208,
		0.959693, 0.227614, 0.164867,
		30.878304, 26.859240, 24.395624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.596865, 26.078325, 24.150095>,  <30.206518, 26.699909, 24.280218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.596865, 26.078325, 24.150095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.809786, 26.310040, 24.397022>,  <30.937538, 26.449068, 24.545179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.809786, 26.310040, 24.397022>,  <30.596865, 26.078325, 24.150095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.809786, 26.310040, 24.397022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175481, -0.788880, 0.588961,
		0.828166, -0.205179, -0.521576,
		0.532303, 0.579284, 0.617319,
		30.969477, 26.483826, 24.582218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<31.238848, 25.637396, 24.406622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.211246, 25.962772, 24.637638>,  <31.194687, 26.157997, 24.776249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.211246, 25.962772, 24.637638>,  <31.238848, 25.637396, 24.406622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.211246, 25.962772, 24.637638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311776, -0.532341, 0.787025,
		0.947647, 0.234369, -0.216879,
		-0.069001, 0.813440, 0.577542,
		31.190546, 26.206804, 24.810900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826002, 25.527992, 24.849649>,  <31.238848, 25.637396, 24.406622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826002, 25.527992, 24.849649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.577883, 25.785770, 25.028500>,  <31.429012, 25.940437, 25.135809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.577883, 25.785770, 25.028500>,  <31.826002, 25.527992, 24.849649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.577883, 25.785770, 25.028500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079442, -0.515495, 0.853202,
		0.780334, 0.564759, 0.268564,
		-0.620297, 0.644447, 0.447124,
		31.391794, 25.979105, 25.162638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178310, 25.866684, 25.521231>,  <31.826002, 25.527992, 24.849649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178310, 25.866684, 25.521231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.780577, 25.888081, 25.557961>,  <31.541935, 25.900919, 25.579998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.780577, 25.888081, 25.557961>,  <32.178310, 25.866684, 25.521231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.780577, 25.888081, 25.557961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050988, -0.517977, 0.853873,
		0.093240, 0.853720, 0.512317,
		-0.994337, 0.053493, 0.091826,
		31.482275, 25.904129, 25.585508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.989025, 26.021910, 26.167273>,  <32.178310, 25.866684, 25.521231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.989025, 26.021910, 26.167273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.631781, 25.872322, 26.067276>,  <31.417433, 25.782570, 26.007278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.631781, 25.872322, 26.067276>,  <31.989025, 26.021910, 26.167273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.631781, 25.872322, 26.067276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038385, -0.490356, 0.870676,
		-0.448191, 0.787209, 0.423589,
		-0.893113, -0.373970, -0.249990,
		31.363846, 25.760132, 25.992279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.584488, 26.248720, 26.759480>,  <31.989025, 26.021910, 26.167273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.584488, 26.248720, 26.759480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.372343, 25.961746, 26.578812>,  <31.245056, 25.789562, 26.470411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.372343, 25.961746, 26.578812>,  <31.584488, 26.248720, 26.759480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.372343, 25.961746, 26.578812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205200, -0.408297, 0.889487,
		-0.822563, 0.564432, 0.069328,
		-0.530361, -0.717433, -0.451671,
		31.213234, 25.746517, 26.443310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005713, 26.193161, 27.234158>,  <31.584488, 26.248720, 26.759480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.005713, 26.193161, 27.234158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.948715, 25.867340, 27.009232>,  <30.914516, 25.671848, 26.874275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.948715, 25.867340, 27.009232>,  <31.005713, 26.193161, 27.234158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.948715, 25.867340, 27.009232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542135, -0.411088, 0.732869,
		-0.828121, 0.409281, -0.383019,
		-0.142495, -0.814552, -0.562316,
		30.905966, 25.622974, 26.840536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.223343, 25.978914, 27.297485>,  <31.005713, 26.193161, 27.234158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.223343, 25.978914, 27.297485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.461622, 25.673882, 27.196598>,  <30.604589, 25.490862, 27.136066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.461622, 25.673882, 27.196598>,  <30.223343, 25.978914, 27.297485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.461622, 25.673882, 27.196598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383056, -0.545725, 0.745287,
		-0.705984, -0.347351, -0.617198,
		0.595697, -0.762582, -0.252218,
		30.640331, 25.445107, 27.120934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.822067, 25.328110, 27.284702>,  <30.223343, 25.978914, 27.297485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.822067, 25.328110, 27.284702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.205542, 25.216400, 27.306332>,  <30.435627, 25.149374, 27.319309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.205542, 25.216400, 27.306332>,  <29.822067, 25.328110, 27.284702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205542, 25.216400, 27.306332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258971, -0.778225, 0.572100,
		-0.117693, -0.562469, -0.818399,
		0.958688, -0.279274, 0.054072,
		30.493149, 25.132618, 27.322554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.812061, 24.697077, 27.021570>,  <29.822067, 25.328110, 27.284702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.812061, 24.697077, 27.021570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.120611, 24.767834, 27.266090>,  <30.305742, 24.810287, 27.412802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.120611, 24.767834, 27.266090>,  <29.812061, 24.697077, 27.021570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.120611, 24.767834, 27.266090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322940, -0.718904, 0.615538,
		0.548351, -0.672224, -0.497420,
		0.771376, 0.176894, 0.611299,
		30.352024, 24.820902, 27.449480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106325, 23.965378, 27.158108>,  <29.812061, 24.697077, 27.021570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.106325, 23.965378, 27.158108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.283777, 24.182114, 27.443653>,  <30.390247, 24.312155, 27.614981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.283777, 24.182114, 27.443653>,  <30.106325, 23.965378, 27.158108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.283777, 24.182114, 27.443653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035610, -0.785251, 0.618153,
		0.895503, -0.299651, -0.329065,
		0.443629, 0.541840, 0.713865,
		30.416866, 24.344666, 27.657812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.705570, 23.539509, 27.356337>,  <30.106325, 23.965378, 27.158108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.705570, 23.539509, 27.356337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.630302, 23.816017, 27.635403>,  <30.585142, 23.981922, 27.802843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.630302, 23.816017, 27.635403>,  <30.705570, 23.539509, 27.356337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.630302, 23.816017, 27.635403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035907, -0.705037, 0.708261,
		0.981480, 0.158324, 0.107845,
		-0.188170, 0.691271, 0.697665,
		30.573851, 24.023399, 27.844702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.139118, 23.389215, 27.911617>,  <30.705570, 23.539509, 27.356337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.139118, 23.389215, 27.911617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.827520, 23.587692, 28.064960>,  <30.640562, 23.706778, 28.156967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.827520, 23.587692, 28.064960>,  <31.139118, 23.389215, 27.911617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.827520, 23.587692, 28.064960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042073, -0.651369, 0.757593,
		0.625619, 0.574031, 0.528289,
		-0.778993, 0.496192, 0.383358,
		30.593822, 23.736549, 28.179968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.342041, 23.412127, 28.619410>,  <31.139118, 23.389215, 27.911617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.342041, 23.412127, 28.619410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.955374, 23.514542, 28.619785>,  <30.723373, 23.575991, 28.620010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.955374, 23.514542, 28.619785>,  <31.342041, 23.412127, 28.619410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.955374, 23.514542, 28.619785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166008, -0.629546, 0.759021,
		0.194930, 0.733564, 0.651065,
		-0.966666, 0.256038, 0.000940,
		30.665375, 23.591352, 28.620068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.132372, 23.564531, 29.307232>,  <31.342041, 23.412127, 28.619410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.132372, 23.564531, 29.307232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.786728, 23.487148, 29.121376>,  <30.579342, 23.440718, 29.009863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.786728, 23.487148, 29.121376>,  <31.132372, 23.564531, 29.307232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.786728, 23.487148, 29.121376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286619, -0.569716, 0.770243,
		-0.413722, 0.798748, 0.436848,
		-0.864109, -0.193457, -0.464640,
		30.527494, 23.429111, 28.981983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.635712, 23.577490, 29.859125>,  <31.132372, 23.564531, 29.307232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.635712, 23.577490, 29.859125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.395481, 23.417332, 29.582287>,  <30.251343, 23.321238, 29.416183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.395481, 23.417332, 29.582287>,  <30.635712, 23.577490, 29.859125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.395481, 23.417332, 29.582287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366405, -0.631532, 0.683311,
		-0.710673, 0.663966, 0.232576,
		-0.600575, -0.400394, -0.692094,
		30.215309, 23.297213, 29.374659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.916035, 23.664661, 30.095503>,  <30.635712, 23.577490, 29.859125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.916035, 23.664661, 30.095503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.906738, 23.384743, 29.809917>,  <29.901161, 23.216791, 29.638567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.906738, 23.384743, 29.809917>,  <29.916035, 23.664661, 30.095503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.906738, 23.384743, 29.809917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438101, -0.634802, 0.636469,
		-0.898625, 0.327580, -0.291829,
		-0.023241, -0.699798, -0.713962,
		29.899767, 23.174803, 29.595728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.177401, 23.399332, 29.914816>,  <29.916035, 23.664661, 30.095503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.177401, 23.399332, 29.914816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.445379, 23.116203, 29.825233>,  <29.606167, 22.946325, 29.771484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.445379, 23.116203, 29.825233>,  <29.177401, 23.399332, 29.914816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.445379, 23.116203, 29.825233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458596, -0.631786, 0.624929,
		-0.583829, -0.315967, -0.747869,
		0.669951, -0.707821, -0.223954,
		29.646364, 22.903856, 29.758047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.797749, 22.857468, 30.031487>,  <29.177401, 23.399332, 29.914816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.797749, 22.857468, 30.031487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.160500, 22.690464, 30.008648>,  <29.378151, 22.590261, 29.994946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.160500, 22.690464, 30.008648>,  <28.797749, 22.857468, 30.031487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.160500, 22.690464, 30.008648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271257, -0.682073, 0.679114,
		-0.322478, -0.600386, -0.731809,
		0.906878, -0.417508, -0.057094,
		29.432564, 22.565212, 29.991520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.722231, 22.041414, 29.988276>,  <28.797749, 22.857468, 30.031487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.722231, 22.041414, 29.988276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.085340, 22.147236, 30.118477>,  <29.303207, 22.210730, 30.196598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.085340, 22.147236, 30.118477>,  <28.722231, 22.041414, 29.988276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.085340, 22.147236, 30.118477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024738, -0.808433, 0.588068,
		0.418725, -0.525782, -0.740421,
		0.907776, 0.264555, 0.325504,
		29.357674, 22.226603, 30.216127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.041716, 21.444040, 30.107597>,  <28.722231, 22.041414, 29.988276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.041716, 21.444040, 30.107597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.234743, 21.701420, 30.345287>,  <29.350559, 21.855846, 30.487902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.234743, 21.701420, 30.345287>,  <29.041716, 21.444040, 30.107597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.234743, 21.701420, 30.345287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069272, -0.648285, 0.758240,
		0.873116, -0.407064, -0.268268,
		0.482566, 0.643448, 0.594226,
		29.379513, 21.894455, 30.523556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.381464, 20.960367, 30.486122>,  <29.041716, 21.444040, 30.107597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.381464, 20.960367, 30.486122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.435179, 21.303978, 30.683723>,  <29.467407, 21.510145, 30.802284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.435179, 21.303978, 30.683723>,  <29.381464, 20.960367, 30.486122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.435179, 21.303978, 30.683723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256641, -0.511657, 0.819965,
		0.957132, 0.016669, -0.289171,
		0.134288, 0.859028, 0.494001,
		29.475466, 21.561686, 30.831924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.913183, 20.881180, 30.756575>,  <29.381464, 20.960367, 30.486122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.913183, 20.881180, 30.756575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.720804, 21.151001, 30.980598>,  <29.605377, 21.312893, 31.115013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.720804, 21.151001, 30.980598>,  <29.913183, 20.881180, 30.756575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.720804, 21.151001, 30.980598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184323, -0.546724, 0.816773,
		0.857154, 0.496058, 0.138611,
		-0.480949, 0.674551, 0.560062,
		29.576519, 21.353367, 31.148617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.193670, 20.776566, 31.387697>,  <29.913183, 20.881180, 30.756575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.193670, 20.776566, 31.387697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.864769, 20.993149, 31.457806>,  <29.667427, 21.123098, 31.499870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.864769, 20.993149, 31.457806>,  <30.193670, 20.776566, 31.387697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.864769, 20.993149, 31.457806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159830, -0.515269, 0.841993,
		0.546216, 0.664319, 0.510224,
		-0.822255, 0.541459, 0.175270,
		29.618092, 21.155586, 31.510387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.165199, 20.841856, 32.089340>,  <30.193670, 20.776566, 31.387697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.165199, 20.841856, 32.089340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.796764, 20.917133, 31.952999>,  <29.575703, 20.962299, 31.871193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.796764, 20.917133, 31.952999>,  <30.165199, 20.841856, 32.089340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.796764, 20.917133, 31.952999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386458, -0.548521, 0.741468,
		-0.047428, 0.814683, 0.577964,
		-0.921087, 0.188192, -0.340856,
		29.520439, 20.973591, 31.850742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785765, 21.338036, 31.978811>,  <30.165199, 20.841856, 32.089340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785765, 21.338036, 31.978811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.097397, 21.299572, 32.226612>,  <31.284376, 21.276495, 32.375294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.097397, 21.299572, 32.226612>,  <30.785765, 21.338036, 31.978811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.097397, 21.299572, 32.226612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297348, 0.926624, -0.230113,
		-0.551920, 0.363485, 0.750508,
		0.779082, -0.096158, 0.619504,
		31.331121, 21.270725, 32.412464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.795994, 21.959442, 32.302082>,  <30.785765, 21.338036, 31.978811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.795994, 21.959442, 32.302082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.168772, 21.814827, 32.313175>,  <31.392439, 21.728058, 32.319832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.168772, 21.814827, 32.313175>,  <30.795994, 21.959442, 32.302082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.168772, 21.814827, 32.313175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362545, 0.930414, -0.053777,
		-0.006357, 0.060170, 0.998168,
		0.931945, -0.361539, 0.027729,
		31.448355, 21.706366, 32.321495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.145039, 22.408766, 32.758457>,  <30.795994, 21.959442, 32.302082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.145039, 22.408766, 32.758457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.397423, 22.219532, 32.512505>,  <31.548853, 22.105991, 32.364933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.397423, 22.219532, 32.512505>,  <31.145039, 22.408766, 32.758457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.397423, 22.219532, 32.512505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265300, 0.876353, -0.402021,
		0.729046, 0.090530, 0.678451,
		0.630958, -0.473085, -0.614884,
		31.586710, 22.077606, 32.328041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.792919, 22.794210, 32.737186>,  <31.145039, 22.408766, 32.758457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.792919, 22.794210, 32.737186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.806711, 22.568806, 32.407032>,  <31.814987, 22.433563, 32.208939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.806711, 22.568806, 32.407032>,  <31.792919, 22.794210, 32.737186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806711, 22.568806, 32.407032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367166, 0.775266, -0.513956,
		0.929516, -0.285333, 0.233634,
		0.034480, -0.563513, -0.825387,
		31.817055, 22.399752, 32.159416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466866, 23.013393, 32.394989>,  <31.792919, 22.794210, 32.737186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.466866, 23.013393, 32.394989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.262424, 22.819427, 32.111122>,  <32.139759, 22.703049, 31.940802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.262424, 22.819427, 32.111122>,  <32.466866, 23.013393, 32.394989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262424, 22.819427, 32.111122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303315, 0.670783, -0.676794,
		0.804222, -0.561165, -0.195758,
		-0.511104, -0.484916, -0.709668,
		32.109093, 22.673952, 31.898222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890785, 22.960213, 31.855553>,  <32.466866, 23.013393, 32.394989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890785, 22.960213, 31.855553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.544022, 22.919483, 31.660374>,  <32.335960, 22.895046, 31.543266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.544022, 22.919483, 31.660374>,  <32.890785, 22.960213, 31.855553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544022, 22.919483, 31.660374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297977, 0.678878, -0.671069,
		0.399587, -0.727156, -0.558188,
		-0.866914, -0.101823, -0.487947,
		32.283947, 22.888937, 31.513990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.075417, 23.082060, 31.244093>,  <32.890785, 22.960213, 31.855553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.075417, 23.082060, 31.244093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.679657, 23.123352, 31.203228>,  <32.442204, 23.148129, 31.178709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.679657, 23.123352, 31.203228>,  <33.075417, 23.082060, 31.244093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679657, 23.123352, 31.203228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142863, 0.818436, -0.556555,
		0.026160, -0.565249, -0.824506,
		-0.989397, 0.103232, -0.102164,
		32.382839, 23.154322, 31.172579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950558, 23.110260, 30.460646>,  <33.075417, 23.082060, 31.244093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950558, 23.110260, 30.460646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.634918, 23.274174, 30.643684>,  <32.445534, 23.372522, 30.753508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.634918, 23.274174, 30.643684>,  <32.950558, 23.110260, 30.460646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634918, 23.274174, 30.643684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003013, 0.747529, -0.664222,
		-0.614255, -0.522760, -0.591111,
		-0.789102, 0.409782, 0.457599,
		32.398186, 23.397108, 30.780964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.405373, 23.156233, 29.951662>,  <32.950558, 23.110260, 30.460646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.405373, 23.156233, 29.951662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.300030, 23.412418, 30.240231>,  <32.236824, 23.566130, 30.413372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.300030, 23.412418, 30.240231>,  <32.405373, 23.156233, 29.951662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300030, 23.412418, 30.240231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044795, 0.738895, -0.672330,
		-0.963658, -0.209378, -0.165901,
		-0.263355, 0.640465, 0.721421,
		32.221024, 23.604557, 30.456657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.841240, 23.469728, 29.733202>,  <32.405373, 23.156233, 29.951662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.841240, 23.469728, 29.733202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.960653, 23.749519, 29.992928>,  <32.032303, 23.917393, 30.148764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.960653, 23.749519, 29.992928>,  <31.841240, 23.469728, 29.733202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960653, 23.749519, 29.992928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166377, 0.631781, -0.757081,
		-0.939785, 0.334046, 0.072232,
		0.298535, 0.699475, 0.649316,
		32.050213, 23.959362, 30.187723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.620459, 24.065960, 29.504890>,  <31.841240, 23.469728, 29.733202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.620459, 24.065960, 29.504890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.920565, 24.183449, 29.741814>,  <32.100628, 24.253942, 29.883966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.920565, 24.183449, 29.741814>,  <31.620459, 24.065960, 29.504890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920565, 24.183449, 29.741814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306287, 0.639534, -0.705113,
		-0.585908, 0.710438, 0.389858,
		0.750267, 0.293723, 0.592307,
		32.145645, 24.271566, 29.919506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601147, 24.708372, 29.464645>,  <31.620459, 24.065960, 29.504890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601147, 24.708372, 29.464645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.977495, 24.637959, 29.580421>,  <32.203304, 24.595711, 29.649887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.977495, 24.637959, 29.580421>,  <31.601147, 24.708372, 29.464645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.977495, 24.637959, 29.580421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332541, 0.642976, -0.689926,
		-0.064655, 0.745382, 0.663495,
		0.940870, -0.176032, 0.289441,
		32.259758, 24.585150, 29.667253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.901169, 25.350737, 29.532011>,  <31.601147, 24.708372, 29.464645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.901169, 25.350737, 29.532011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.227856, 25.120224, 29.520168>,  <32.423866, 24.981916, 29.513063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.227856, 25.120224, 29.520168>,  <31.901169, 25.350737, 29.532011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227856, 25.120224, 29.520168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446282, 0.663337, -0.600680,
		0.365799, 0.477372, 0.798941,
		0.816715, -0.576281, -0.029606,
		32.472870, 24.947340, 29.511286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.535038, 25.806147, 29.565323>,  <31.901169, 25.350737, 29.532011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.535038, 25.806147, 29.565323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.672894, 25.456814, 29.427616>,  <32.755608, 25.247215, 29.344992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.672894, 25.456814, 29.427616>,  <32.535038, 25.806147, 29.565323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672894, 25.456814, 29.427616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453935, 0.476048, -0.753208,
		0.821687, 0.103307, 0.560498,
		0.344636, -0.873330, -0.344268,
		32.776283, 25.194815, 29.324335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283428, 25.865280, 29.346172>,  <32.535038, 25.806147, 29.565323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283428, 25.865280, 29.346172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.144840, 25.545959, 29.149124>,  <33.061687, 25.354366, 29.030895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.144840, 25.545959, 29.149124>,  <33.283428, 25.865280, 29.346172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144840, 25.545959, 29.149124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404142, 0.346882, -0.846370,
		0.846540, -0.492327, 0.202445,
		-0.346466, -0.798303, -0.492619,
		33.040901, 25.306469, 29.001339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747524, 25.769123, 28.831026>,  <33.283428, 25.865280, 29.346172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747524, 25.769123, 28.831026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.436001, 25.561672, 28.689896>,  <33.249088, 25.437202, 28.605217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.436001, 25.561672, 28.689896>,  <33.747524, 25.769123, 28.831026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436001, 25.561672, 28.689896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385113, 0.048651, -0.921586,
		0.495125, -0.853615, 0.161841,
		-0.778806, -0.518627, -0.352827,
		33.202358, 25.406084, 28.584047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037746, 25.446827, 28.304083>,  <33.747524, 25.769123, 28.831026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037746, 25.446827, 28.304083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.646694, 25.417786, 28.225121>,  <33.412064, 25.400360, 28.177744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.646694, 25.417786, 28.225121>,  <34.037746, 25.446827, 28.304083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646694, 25.417786, 28.225121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184447, 0.155142, -0.970521,
		0.101084, -0.985221, -0.138281,
		-0.977631, -0.072599, -0.197403,
		33.353405, 25.396004, 28.165899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972626, 24.905121, 27.768761>,  <34.037746, 25.446827, 28.304083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972626, 24.905121, 27.768761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.624516, 25.099682, 27.737694>,  <33.415649, 25.216419, 27.719053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.624516, 25.099682, 27.737694>,  <33.972626, 24.905121, 27.768761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624516, 25.099682, 27.737694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215026, 0.233300, -0.948333,
		-0.443153, -0.842011, -0.307625,
		-0.870275, 0.486404, -0.077666,
		33.363434, 25.245604, 27.714394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683247, 24.707939, 27.157318>,  <33.972626, 24.905121, 27.768761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683247, 24.707939, 27.157318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.524059, 25.064747, 27.243034>,  <33.428547, 25.278831, 27.294464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.524059, 25.064747, 27.243034>,  <33.683247, 24.707939, 27.157318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524059, 25.064747, 27.243034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259568, 0.333525, -0.906303,
		-0.879913, -0.305055, -0.364272,
		-0.397966, 0.892022, 0.214291,
		33.404671, 25.332354, 27.307322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443840, 24.957106, 26.504511>,  <33.683247, 24.707939, 27.157318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443840, 24.957106, 26.504511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.470936, 25.289627, 26.725182>,  <33.487194, 25.489140, 26.857584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.470936, 25.289627, 26.725182>,  <33.443840, 24.957106, 26.504511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470936, 25.289627, 26.725182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170302, 0.535196, -0.827383,
		-0.983061, 0.149996, -0.105320,
		0.067737, 0.831304, 0.551675,
		33.491257, 25.539019, 26.890684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<18.801600, 34.348721, 15.422526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.165163, 34.458679, 15.297107>,  <19.383301, 34.524654, 15.221855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.165163, 34.458679, 15.297107>,  <18.801600, 34.348721, 15.422526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.165163, 34.458679, 15.297107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362199, -0.147864, 0.920298,
		0.206623, -0.950036, -0.233963,
		0.908911, 0.274896, -0.313550,
		19.437836, 34.541149, 15.203042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.209335, 33.930767, 15.744274>,  <18.801600, 34.348721, 15.422526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.209335, 33.930767, 15.744274> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.482193, 34.205242, 15.643218>,  <19.645908, 34.369926, 15.582584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.482193, 34.205242, 15.643218>,  <19.209335, 33.930767, 15.744274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.482193, 34.205242, 15.643218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436876, -0.105399, 0.893325,
		0.586359, -0.719750, -0.371676,
		0.682145, 0.686186, -0.252640,
		19.686836, 34.411098, 15.567426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.009039, 33.608822, 15.755477>,  <19.209335, 33.930767, 15.744274>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.009039, 33.608822, 15.755477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.066833, 34.003696, 15.782577>,  <20.101511, 34.240620, 15.798837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.066833, 34.003696, 15.782577>,  <20.009039, 33.608822, 15.755477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.066833, 34.003696, 15.782577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741041, -0.153324, 0.653720,
		0.655730, -0.044248, -0.753697,
		0.144486, 0.987185, 0.067750,
		20.110180, 34.299850, 15.802901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.700350, 33.642780, 15.721859>,  <20.009039, 33.608822, 15.755477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.700350, 33.642780, 15.721859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.578178, 33.980854, 15.897302>,  <20.504875, 34.183697, 16.002567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.578178, 33.980854, 15.897302>,  <20.700350, 33.642780, 15.721859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.578178, 33.980854, 15.897302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865409, 0.054237, 0.498121,
		0.397216, 0.531716, -0.747996,
		-0.305428, 0.845184, 0.438608,
		20.486549, 34.234409, 16.028885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.270576, 34.064003, 15.765625>,  <20.700350, 33.642780, 15.721859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.270576, 34.064003, 15.765625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.019188, 34.197353, 16.046734>,  <20.868355, 34.277363, 16.215399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.019188, 34.197353, 16.046734>,  <21.270576, 34.064003, 15.765625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.019188, 34.197353, 16.046734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698804, -0.154814, 0.698359,
		0.341613, 0.929997, -0.135666,
		-0.628469, 0.333373, 0.702773,
		20.830647, 34.297367, 16.257566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.730621, 34.395889, 16.256886>,  <21.270576, 34.064003, 15.765625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.730621, 34.395889, 16.256886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.385836, 34.352356, 16.454945>,  <21.178965, 34.326237, 16.573780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.385836, 34.352356, 16.454945>,  <21.730621, 34.395889, 16.256886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.385836, 34.352356, 16.454945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497235, 0.008987, 0.867569,
		-0.098874, 0.994019, 0.046372,
		-0.861964, -0.108838, 0.495149,
		21.127247, 34.319706, 16.603489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.841885, 34.965492, 16.754339>,  <21.730621, 34.395889, 16.256886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.841885, 34.965492, 16.754339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.559881, 34.714973, 16.887432>,  <21.390678, 34.564663, 16.967287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.559881, 34.714973, 16.887432>,  <21.841885, 34.965492, 16.754339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.559881, 34.714973, 16.887432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432770, -0.008241, 0.901467,
		-0.561848, 0.779538, 0.276854,
		-0.705009, -0.626301, 0.332731,
		21.348379, 34.527084, 16.987251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.452944, 35.388317, 17.370712>,  <21.841885, 34.965492, 16.754339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.452944, 35.388317, 17.370712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.405951, 34.994709, 17.424244>,  <21.377754, 34.758545, 17.456364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.405951, 34.994709, 17.424244>,  <21.452944, 35.388317, 17.370712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.405951, 34.994709, 17.424244> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120057, 0.119702, 0.985524,
		-0.985791, 0.131851, 0.104075,
		-0.117484, -0.984016, 0.133831,
		21.370705, 34.699505, 17.464394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.973005, 35.305069, 17.974594>,  <21.452944, 35.388317, 17.370712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.973005, 35.305069, 17.974594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.158968, 34.953594, 17.931198>,  <21.270546, 34.742710, 17.905161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.158968, 34.953594, 17.931198>,  <20.973005, 35.305069, 17.974594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.158968, 34.953594, 17.931198> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128716, -0.054156, 0.990202,
		-0.875954, -0.474315, 0.087924,
		0.464906, -0.878688, -0.108490,
		21.298439, 34.689987, 17.898651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.822800, 35.039631, 18.579216>,  <20.973005, 35.305069, 17.974594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.822800, 35.039631, 18.579216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.093807, 34.777100, 18.446426>,  <21.256411, 34.619583, 18.366753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.093807, 34.777100, 18.446426>,  <20.822800, 35.039631, 18.579216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.093807, 34.777100, 18.446426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214319, -0.255600, 0.942728,
		-0.703590, -0.709862, -0.032510,
		0.677516, -0.656327, -0.331974,
		21.297062, 34.580200, 18.346834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.708260, 34.405090, 18.983818>,  <20.822800, 35.039631, 18.579216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.708260, 34.405090, 18.983818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.081394, 34.404373, 18.839699>,  <21.305275, 34.403942, 18.753227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.081394, 34.404373, 18.839699>,  <20.708260, 34.405090, 18.983818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.081394, 34.404373, 18.839699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354961, -0.166988, 0.919846,
		-0.061813, -0.985957, -0.155137,
		0.932835, -0.001791, -0.360299,
		21.361244, 34.403835, 18.731609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.965639, 33.822983, 19.222033>,  <20.708260, 34.405090, 18.983818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.965639, 33.822983, 19.222033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.281294, 34.054317, 19.139290>,  <21.470688, 34.193119, 19.089645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.281294, 34.054317, 19.139290>,  <20.965639, 33.822983, 19.222033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.281294, 34.054317, 19.139290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383336, -0.200595, 0.901563,
		0.479912, -0.790752, -0.379994,
		0.789138, 0.578336, -0.206856,
		21.518036, 34.227818, 19.077232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.557905, 33.454937, 19.366913>,  <20.965639, 33.822983, 19.222033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.557905, 33.454937, 19.366913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.689819, 33.829208, 19.417099>,  <21.768967, 34.053772, 19.447210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.689819, 33.829208, 19.417099>,  <21.557905, 33.454937, 19.366913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.689819, 33.829208, 19.417099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336356, -0.240634, 0.910472,
		0.882104, -0.258058, -0.394080,
		0.329784, 0.935682, 0.125465,
		21.788755, 34.109913, 19.454739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.158051, 33.399918, 19.782940>,  <21.557905, 33.454937, 19.366913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.158051, 33.399918, 19.782940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.094702, 33.794624, 19.796837>,  <22.056692, 34.031448, 19.805176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.094702, 33.794624, 19.796837>,  <22.158051, 33.399918, 19.782940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.094702, 33.794624, 19.796837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437956, 0.038668, 0.898165,
		0.884937, 0.157461, -0.438285,
		-0.158373, 0.986768, 0.034742,
		22.047190, 34.090656, 19.807259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.829714, 33.802391, 19.849581>,  <22.158051, 33.399918, 19.782940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.829714, 33.802391, 19.849581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.536461, 34.024845, 20.006157>,  <22.360510, 34.158318, 20.100103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.536461, 34.024845, 20.006157>,  <22.829714, 33.802391, 19.849581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.536461, 34.024845, 20.006157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594416, 0.244341, 0.766138,
		0.330434, 0.794360, -0.509712,
		-0.733132, 0.556139, 0.391442,
		22.316521, 34.191689, 20.123589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.094719, 34.507252, 19.966755>,  <22.829714, 33.802391, 19.849581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.094719, 34.507252, 19.966755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.776241, 34.500931, 20.208691>,  <22.585155, 34.497139, 20.353851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.776241, 34.500931, 20.208691>,  <23.094719, 34.507252, 19.966755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.776241, 34.500931, 20.208691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498566, 0.549233, 0.670652,
		-0.342797, 0.835520, -0.429415,
		-0.796192, -0.015806, 0.604837,
		22.537384, 34.496189, 20.390142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.148277, 35.173992, 20.292168>,  <23.094719, 34.507252, 19.966755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.148277, 35.173992, 20.292168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.875252, 34.980843, 20.511600>,  <22.711437, 34.864952, 20.643261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.875252, 34.980843, 20.511600>,  <23.148277, 35.173992, 20.292168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.875252, 34.980843, 20.511600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363471, 0.426920, 0.828027,
		-0.634032, 0.764574, -0.115889,
		-0.682563, -0.482873, 0.548581,
		22.670483, 34.835979, 20.676174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.927412, 35.662766, 20.806206>,  <23.148277, 35.173992, 20.292168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.927412, 35.662766, 20.806206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.853550, 35.289688, 20.930134>,  <22.809233, 35.065842, 21.004490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.853550, 35.289688, 20.930134>,  <22.927412, 35.662766, 20.806206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.853550, 35.289688, 20.930134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135139, 0.288149, 0.948002,
		-0.973468, 0.216921, 0.072836,
		-0.184654, -0.932693, 0.309818,
		22.798155, 35.009880, 21.023079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.548101, 35.792973, 21.384668>,  <22.927412, 35.662766, 20.806206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.548101, 35.792973, 21.384668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.669262, 35.413719, 21.423233>,  <22.741959, 35.186169, 21.446373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.669262, 35.413719, 21.423233>,  <22.548101, 35.792973, 21.384668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.669262, 35.413719, 21.423233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183393, 0.157263, 0.970379,
		-0.935211, -0.276246, 0.221516,
		0.302899, -0.948133, 0.096413,
		22.760132, 35.129280, 21.452156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.114956, 35.485813, 21.907356>,  <22.548101, 35.792973, 21.384668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.114956, 35.485813, 21.907356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.459604, 35.283600, 21.889259>,  <22.666393, 35.162270, 21.878401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.459604, 35.283600, 21.889259>,  <22.114956, 35.485813, 21.907356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.459604, 35.283600, 21.889259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168420, 0.200684, 0.965070,
		-0.478798, -0.839142, 0.258056,
		0.861619, -0.505535, -0.045241,
		22.718090, 35.131939, 21.875687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.063095, 34.982063, 22.500729>,  <22.114956, 35.485813, 21.907356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.063095, 34.982063, 22.500729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.452158, 35.022930, 22.417305>,  <22.685596, 35.047451, 22.367250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.452158, 35.022930, 22.417305>,  <22.063095, 34.982063, 22.500729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.452158, 35.022930, 22.417305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205191, 0.042546, 0.977797,
		0.108774, -0.993857, 0.020419,
		0.972659, 0.102169, -0.208558,
		22.743956, 35.053581, 22.354738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.340014, 34.966995, 22.911091>,  <22.063095, 34.982063, 22.500729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.340014, 34.966995, 22.911091> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.101555, 35.209911, 23.121159>,  <20.958479, 35.355659, 23.247200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.101555, 35.209911, 23.121159>,  <21.340014, 34.966995, 22.911091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.101555, 35.209911, 23.121159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780907, -0.286622, -0.555006,
		-0.186526, -0.740974, 0.645109,
		-0.596148, 0.607293, 0.525169,
		20.922710, 35.392097, 23.278709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.784302, 34.552826, 23.169735>,  <21.340014, 34.966995, 22.911091>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.784302, 34.552826, 23.169735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.645975, 34.925461, 23.124905>,  <20.562979, 35.149040, 23.098005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.645975, 34.925461, 23.124905>,  <20.784302, 34.552826, 23.169735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.645975, 34.925461, 23.124905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545555, -0.296808, -0.783757,
		-0.763401, -0.209890, 0.610872,
		-0.345814, 0.931585, -0.112077,
		20.542231, 35.204937, 23.091282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.027027, 34.514091, 23.231010>,  <20.784302, 34.552826, 23.169735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.027027, 34.514091, 23.231010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.159273, 34.831078, 23.025997>,  <20.238621, 35.021271, 22.902990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.159273, 34.831078, 23.025997>,  <20.027027, 34.514091, 23.231010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.159273, 34.831078, 23.025997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708445, -0.150409, -0.689552,
		-0.623538, 0.591076, 0.511692,
		0.330615, 0.792468, -0.512531,
		20.258457, 35.068817, 22.872238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.550127, 34.545181, 22.731241>,  <20.027027, 34.514091, 23.231010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.550127, 34.545181, 22.731241> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.780874, 34.844444, 22.600101>,  <19.919323, 35.024002, 22.521418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.780874, 34.844444, 22.600101>,  <19.550127, 34.545181, 22.731241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.780874, 34.844444, 22.600101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538139, 0.046137, -0.841592,
		-0.614517, 0.661916, 0.429227,
		0.576867, 0.748157, -0.327851,
		19.953934, 35.068890, 22.501747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.111483, 35.077522, 22.496290>,  <19.550127, 34.545181, 22.731241>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.111483, 35.077522, 22.496290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.455990, 35.160126, 22.310574>,  <19.662695, 35.209686, 22.199142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.455990, 35.160126, 22.310574>,  <19.111483, 35.077522, 22.496290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.455990, 35.160126, 22.310574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487386, 0.077210, -0.869766,
		-0.143764, 0.975394, 0.167147,
		0.861270, 0.206506, -0.464294,
		19.714371, 35.222076, 22.171286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.054228, 35.611271, 22.097937>,  <19.111483, 35.077522, 22.496290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.054228, 35.611271, 22.097937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.380657, 35.497108, 21.896912>,  <19.576515, 35.428612, 21.776297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.380657, 35.497108, 21.896912>,  <19.054228, 35.611271, 22.097937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.380657, 35.497108, 21.896912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465815, 0.189919, -0.864261,
		0.342114, 0.939400, 0.022039,
		0.816072, -0.285410, -0.502561,
		19.625479, 35.411484, 21.746143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.266792, 36.200478, 21.561619>,  <19.054228, 35.611271, 22.097937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.266792, 36.200478, 21.561619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.365242, 35.832073, 21.440849>,  <19.424313, 35.611031, 21.368387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.365242, 35.832073, 21.440849>,  <19.266792, 36.200478, 21.561619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.365242, 35.832073, 21.440849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456690, 0.164559, -0.874274,
		0.854901, 0.353068, -0.380115,
		0.246127, -0.921013, -0.301924,
		19.439079, 35.555771, 21.350273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.381830, 36.215092, 20.862049>,  <19.266792, 36.200478, 21.561619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.381830, 36.215092, 20.862049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.340235, 35.817677, 20.880211>,  <19.315277, 35.579227, 20.891108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.340235, 35.817677, 20.880211>,  <19.381830, 36.215092, 20.862049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.340235, 35.817677, 20.880211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510291, 0.014113, -0.859886,
		0.853691, -0.112589, -0.508463,
		-0.103989, -0.993541, 0.045405,
		19.309038, 35.519615, 20.893833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.627316, 35.983288, 20.229845>,  <19.381830, 36.215092, 20.862049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.627316, 35.983288, 20.229845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.390757, 35.698387, 20.381081>,  <19.248821, 35.527447, 20.471821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.390757, 35.698387, 20.381081>,  <19.627316, 35.983288, 20.229845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.390757, 35.698387, 20.381081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518381, -0.023351, -0.854831,
		0.617682, -0.701537, -0.355407,
		-0.591397, -0.712250, 0.378087,
		19.213337, 35.484711, 20.494507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.653728, 35.407719, 19.755886>,  <19.627316, 35.983288, 20.229845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.653728, 35.407719, 19.755886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.310061, 35.384724, 19.959267>,  <19.103859, 35.370926, 20.081295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.310061, 35.384724, 19.959267>,  <19.653728, 35.407719, 19.755886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.310061, 35.384724, 19.959267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473895, -0.285398, -0.833049,
		0.193001, -0.956683, 0.217962,
		-0.859170, -0.057488, 0.508450,
		19.052309, 35.367477, 20.111801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.222658, 34.990276, 19.381044>,  <19.653728, 35.407719, 19.755886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.222658, 34.990276, 19.381044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.935436, 35.122955, 19.625790>,  <18.763103, 35.202560, 19.772636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.935436, 35.122955, 19.625790>,  <19.222658, 34.990276, 19.381044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.935436, 35.122955, 19.625790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614042, 0.111935, -0.781296,
		-0.327641, -0.936722, 0.123300,
		-0.718055, 0.331696, 0.611861,
		18.720020, 35.222466, 19.809347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.715012, 34.467323, 19.446850>,  <19.222658, 34.990276, 19.381044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.715012, 34.467323, 19.446850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.567696, 34.836452, 19.492035>,  <18.479305, 35.057930, 19.519146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.567696, 34.836452, 19.492035>,  <18.715012, 34.467323, 19.446850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.567696, 34.836452, 19.492035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664567, -0.176339, -0.726123,
		-0.650163, -0.342496, 0.678221,
		-0.368291, 0.922822, 0.112963,
		18.457209, 35.113300, 19.525923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.070013, 34.405445, 19.397886>,  <18.715012, 34.467323, 19.446850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.070013, 34.405445, 19.397886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.087387, 34.797646, 19.321232>,  <18.097811, 35.032967, 19.275240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.087387, 34.797646, 19.321232>,  <18.070013, 34.405445, 19.397886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.087387, 34.797646, 19.321232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608941, -0.126083, -0.783131,
		-0.792025, 0.150709, 0.591594,
		0.043435, 0.980505, -0.191634,
		18.100418, 35.091797, 19.263742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.370680, 34.644138, 19.153862>,  <18.070013, 34.405445, 19.397886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.370680, 34.644138, 19.153862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.597200, 34.953274, 19.039299>,  <17.733112, 35.138756, 18.970562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.597200, 34.953274, 19.039299>,  <17.370680, 34.644138, 19.153862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.597200, 34.953274, 19.039299> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461432, 0.009355, -0.887126,
		-0.682923, 0.634538, 0.361909,
		0.566300, 0.772835, -0.286407,
		17.767090, 35.185123, 18.953377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.015940, 34.738644, 18.610420>,  <17.370680, 34.644138, 19.153862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.015940, 34.738644, 18.610420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.304512, 35.015476, 18.600945>,  <17.477655, 35.181576, 18.595259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.304512, 35.015476, 18.600945>,  <17.015940, 34.738644, 18.610420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.304512, 35.015476, 18.600945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246109, 0.224270, -0.942939,
		-0.647275, 0.686097, 0.332123,
		0.721433, 0.692079, -0.023690,
		17.520943, 35.223099, 18.593838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.703920, 35.306568, 18.325390>,  <17.015940, 34.738644, 18.610420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.703920, 35.306568, 18.325390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.098202, 35.328262, 18.261585>,  <17.334770, 35.341278, 18.223303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.098202, 35.328262, 18.261585>,  <16.703920, 35.306568, 18.325390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.098202, 35.328262, 18.261585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164183, 0.096839, -0.981665,
		-0.037790, 0.993821, 0.104359,
		0.985706, 0.054231, -0.159509,
		17.393913, 35.344532, 18.213732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.916393, 35.927006, 17.928669>,  <16.703920, 35.306568, 18.325390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.916393, 35.927006, 17.928669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.216576, 35.670055, 17.866482>,  <17.396685, 35.515884, 17.829168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.216576, 35.670055, 17.866482>,  <16.916393, 35.927006, 17.928669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.216576, 35.670055, 17.866482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032503, 0.199075, -0.979445,
		0.660122, 0.740083, 0.128518,
		0.750455, -0.642376, -0.155469,
		17.441711, 35.477341, 17.819841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.408693, 36.301521, 17.407829>,  <16.916393, 35.927006, 17.928669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.408693, 36.301521, 17.407829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.490767, 35.910797, 17.383385>,  <17.540010, 35.676361, 17.368719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.490767, 35.910797, 17.383385>,  <17.408693, 36.301521, 17.407829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.490767, 35.910797, 17.383385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058088, 0.050175, -0.997050,
		0.976998, 0.208127, -0.046446,
		0.205183, -0.976814, -0.061110,
		17.552320, 35.617752, 17.365051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.958872, 36.207390, 16.904556>,  <17.408693, 36.301521, 17.407829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.958872, 36.207390, 16.904556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.787678, 35.847389, 16.937588>,  <17.684961, 35.631390, 16.957407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.787678, 35.847389, 16.937588>,  <17.958872, 36.207390, 16.904556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.787678, 35.847389, 16.937588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146594, -0.021032, -0.988973,
		0.891818, -0.435371, -0.122934,
		-0.427985, -0.900005, 0.082580,
		17.659283, 35.577389, 16.962362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.176964, 35.959213, 16.358459>,  <17.958872, 36.207390, 16.904556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.176964, 35.959213, 16.358459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.875105, 35.714230, 16.452606>,  <17.693989, 35.567238, 16.509094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.875105, 35.714230, 16.452606>,  <18.176964, 35.959213, 16.358459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.875105, 35.714230, 16.452606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206563, -0.118712, -0.971205,
		0.622766, -0.781536, -0.036926,
		-0.754648, -0.612461, 0.235366,
		17.648710, 35.530491, 16.523216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.206282, 35.359852, 15.892749>,  <18.176964, 35.959213, 16.358459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.206282, 35.359852, 15.892749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.828180, 35.377609, 16.022072>,  <17.601320, 35.388264, 16.099667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.828180, 35.377609, 16.022072>,  <18.206282, 35.359852, 15.892749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.828180, 35.377609, 16.022072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324247, -0.015702, -0.945842,
		-0.036921, -0.998890, 0.029240,
		-0.945251, 0.044403, 0.323308,
		17.544605, 35.390926, 16.119064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<30.372135, 28.400536, 22.984570> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.743744, 28.488159, 23.103855>,  <30.966709, 28.540733, 23.175426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.743744, 28.488159, 23.103855>,  <30.372135, 28.400536, 22.984570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.743744, 28.488159, 23.103855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077924, 0.903680, -0.421060,
		-0.361726, 0.367936, 0.856608,
		0.929022, 0.219058, 0.298214,
		31.022451, 28.553877, 23.193319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.240055, 29.093676, 23.104090>,  <30.372135, 28.400536, 22.984570>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.240055, 29.093676, 23.104090> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637190, 29.052456, 23.128284>,  <30.875471, 29.027723, 23.142801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637190, 29.052456, 23.128284>,  <30.240055, 29.093676, 23.104090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.637190, 29.052456, 23.128284> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118062, 0.924012, -0.363681,
		-0.018413, 0.368216, 0.929558,
		0.992836, -0.103049, 0.060486,
		30.935041, 29.021542, 23.146431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.459564, 29.583771, 23.468927>,  <30.240055, 29.093676, 23.104090>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.459564, 29.583771, 23.468927> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.811604, 29.519272, 23.290298>,  <31.022827, 29.480572, 23.183121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.811604, 29.519272, 23.290298>,  <30.459564, 29.583771, 23.468927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.811604, 29.519272, 23.290298> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042072, 0.910380, -0.411629,
		0.472925, 0.381062, 0.794439,
		0.880097, -0.161247, -0.446574,
		31.075632, 29.470898, 23.156326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.830870, 30.178885, 23.638279>,  <30.459564, 29.583771, 23.468927>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.830870, 30.178885, 23.638279> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.978378, 29.997822, 23.313538>,  <31.066883, 29.889183, 23.118692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.978378, 29.997822, 23.313538>,  <30.830870, 30.178885, 23.638279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.978378, 29.997822, 23.313538> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031999, 0.866713, -0.497780,
		0.928969, 0.209545, 0.305135,
		0.368772, -0.452658, -0.811855,
		31.089010, 29.862024, 23.069981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356516, 30.660866, 23.389444>,  <30.830870, 30.178885, 23.638279>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356516, 30.660866, 23.389444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.252039, 30.426888, 23.082298>,  <31.189352, 30.286501, 22.898010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.252039, 30.426888, 23.082298>,  <31.356516, 30.660866, 23.389444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252039, 30.426888, 23.082298> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175194, 0.810994, -0.558208,
		0.949256, -0.011273, -0.314304,
		-0.261191, -0.584946, -0.767866,
		31.173681, 30.251404, 22.851938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.636181, 30.988100, 22.922817>,  <31.356516, 30.660866, 23.389444>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.636181, 30.988100, 22.922817> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.375587, 30.760204, 22.722431>,  <31.219231, 30.623466, 22.602200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.375587, 30.760204, 22.722431>,  <31.636181, 30.988100, 22.922817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.375587, 30.760204, 22.722431> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144772, 0.741554, -0.655087,
		0.744717, -0.354257, -0.565596,
		-0.651489, -0.569737, -0.500962,
		31.180143, 30.589283, 22.572142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828556, 30.957973, 22.273067>,  <31.636181, 30.988100, 22.922817>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828556, 30.957973, 22.273067> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.442896, 30.855495, 22.245411>,  <31.211500, 30.794008, 22.228817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.442896, 30.855495, 22.245411>,  <31.828556, 30.957973, 22.273067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442896, 30.855495, 22.245411> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143463, 0.722445, -0.676381,
		0.223234, -0.642214, -0.733299,
		-0.964150, -0.256193, -0.069141,
		31.153650, 30.778637, 22.224669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671066, 30.820795, 21.548746>,  <31.828556, 30.957973, 22.273067>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.671066, 30.820795, 21.548746> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.309259, 30.901714, 21.698906>,  <31.092176, 30.950266, 21.789001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.309259, 30.901714, 21.698906>,  <31.671066, 30.820795, 21.548746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.309259, 30.901714, 21.698906> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156811, 0.660850, -0.733953,
		-0.396562, -0.722739, -0.566027,
		-0.904516, 0.202299, 0.375402,
		31.037905, 30.962404, 21.811527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.307983, 30.819241, 20.995562>,  <31.671066, 30.820795, 21.548746>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.307983, 30.819241, 20.995562> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.104935, 31.048630, 21.252762>,  <30.983105, 31.186262, 21.407082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.104935, 31.048630, 21.252762>,  <31.307983, 30.819241, 20.995562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.104935, 31.048630, 21.252762> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086491, 0.708616, -0.700273,
		-0.857227, -0.411089, -0.310111,
		-0.507624, 0.573471, 0.643000,
		30.952648, 31.220671, 21.445662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.800007, 31.067465, 20.617212>,  <31.307983, 30.819241, 20.995562>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.800007, 31.067465, 20.617212> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.833612, 31.325851, 20.920704>,  <30.853775, 31.480883, 21.102798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.833612, 31.325851, 20.920704>,  <30.800007, 31.067465, 20.617212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.833612, 31.325851, 20.920704> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171622, 0.759423, -0.627552,
		-0.981574, -0.077492, 0.174663,
		0.084013, 0.645965, 0.758730,
		30.858816, 31.519642, 21.148323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.300474, 31.534658, 20.417732>,  <30.800007, 31.067465, 20.617212>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.300474, 31.534658, 20.417732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.540695, 31.695942, 20.693924>,  <30.684828, 31.792711, 20.859638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.540695, 31.695942, 20.693924>,  <30.300474, 31.534658, 20.417732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.540695, 31.695942, 20.693924> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055270, 0.840546, -0.538914,
		-0.797672, 0.361809, 0.482508,
		0.600554, 0.403208, 0.690477,
		30.720861, 31.816904, 20.901068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.895281, 32.086975, 20.760803>,  <30.300474, 31.534658, 20.417732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.895281, 32.086975, 20.760803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.293314, 32.126514, 20.758263>,  <30.532133, 32.150238, 20.756739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.293314, 32.126514, 20.758263>,  <29.895281, 32.086975, 20.760803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.293314, 32.126514, 20.758263> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081868, 0.784675, -0.614478,
		-0.055757, 0.611976, 0.788908,
		0.995082, 0.098848, -0.006351,
		30.591839, 32.156170, 20.756357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.135668, 32.799046, 21.059879>,  <29.895281, 32.086975, 20.760803>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.135668, 32.799046, 21.059879> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.342440, 32.634705, 20.759483>,  <30.466503, 32.536098, 20.579247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.342440, 32.634705, 20.759483>,  <30.135668, 32.799046, 21.059879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.342440, 32.634705, 20.759483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090431, 0.846176, -0.525175,
		0.851237, 0.339392, 0.400261,
		0.516931, -0.410852, -0.750988,
		30.497519, 32.511448, 20.534187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.505478, 33.258896, 20.859196>,  <30.135668, 32.799046, 21.059879>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.505478, 33.258896, 20.859196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.332672, 33.581360, 20.697468>,  <29.228989, 33.774837, 20.600431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.332672, 33.581360, 20.697468>,  <29.505478, 33.258896, 20.859196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.332672, 33.581360, 20.697468> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619389, 0.060649, 0.782738,
		0.655530, 0.588587, 0.473123,
		-0.432015, 0.806156, -0.404322,
		29.203068, 33.823208, 20.576172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.498020, 33.617199, 21.523653>,  <29.505478, 33.258896, 20.859196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.498020, 33.617199, 21.523653> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.283249, 33.927589, 21.656055>,  <29.154387, 34.113823, 21.735497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.283249, 33.927589, 21.656055>,  <29.498020, 33.617199, 21.523653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.283249, 33.927589, 21.656055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375085, -0.131865, 0.917564,
		0.755658, 0.616822, -0.220256,
		-0.536929, 0.775978, 0.331006,
		29.122169, 34.160381, 21.755358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.021275, 34.197731, 21.828568>,  <29.498020, 33.617199, 21.523653>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.021275, 34.197731, 21.828568> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.640556, 34.225994, 21.947960>,  <29.412125, 34.242954, 22.019596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.640556, 34.225994, 21.947960>,  <30.021275, 34.197731, 21.828568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.640556, 34.225994, 21.947960> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269514, -0.271947, 0.923800,
		0.146447, 0.959715, 0.239794,
		-0.951796, 0.070660, 0.298482,
		29.355017, 34.247192, 22.037504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.007828, 34.678364, 22.468147>,  <30.021275, 34.197731, 21.828568>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.007828, 34.678364, 22.468147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.706535, 34.415264, 22.469070>,  <29.525759, 34.257404, 22.469624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.706535, 34.415264, 22.469070>,  <30.007828, 34.678364, 22.468147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.706535, 34.415264, 22.469070> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384831, -0.437843, 0.812526,
		-0.533428, 0.612910, 0.582920,
		-0.753233, -0.657750, 0.002309,
		29.480566, 34.217937, 22.469763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.701164, 34.581329, 23.217400>,  <30.007828, 34.678364, 22.468147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.701164, 34.581329, 23.217400> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.565876, 34.254829, 23.030064>,  <29.484703, 34.058929, 22.917662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.565876, 34.254829, 23.030064>,  <29.701164, 34.581329, 23.217400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.565876, 34.254829, 23.030064> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222441, -0.552907, 0.803003,
		-0.914399, 0.167415, 0.368573,
		-0.338221, -0.816251, -0.468338,
		29.464409, 34.009953, 22.889563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.276922, 34.304813, 23.742678>,  <29.701164, 34.581329, 23.217400>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.276922, 34.304813, 23.742678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.358269, 34.034096, 23.459667>,  <29.407076, 33.871666, 23.289860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.358269, 34.034096, 23.459667>,  <29.276922, 34.304813, 23.742678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.358269, 34.034096, 23.459667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082178, -0.708280, 0.701133,
		-0.975648, -0.200730, -0.088422,
		0.203366, -0.676792, -0.707527,
		29.419279, 33.831059, 23.247410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.896067, 33.735767, 23.894058>,  <29.276922, 34.304813, 23.742678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.896067, 33.735767, 23.894058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.202404, 33.589203, 23.682690>,  <29.386206, 33.501263, 23.555868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.202404, 33.589203, 23.682690>,  <28.896067, 33.735767, 23.894058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.202404, 33.589203, 23.682690> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043749, -0.790176, 0.611317,
		-0.641539, -0.491290, -0.589120,
		0.765842, -0.366410, -0.528421,
		29.432158, 33.479279, 23.524164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.840746, 32.975292, 23.844881>,  <28.896067, 33.735767, 23.894058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.840746, 32.975292, 23.844881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.229282, 33.033215, 23.769489>,  <29.462404, 33.067970, 23.724255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.229282, 33.033215, 23.769489>,  <28.840746, 32.975292, 23.844881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.229282, 33.033215, 23.769489> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234818, -0.707472, 0.666591,
		-0.036816, -0.691746, -0.721202,
		0.971341, 0.144810, -0.188481,
		29.520685, 33.076656, 23.712944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.226448, 32.312355, 23.531759>,  <28.840746, 32.975292, 23.844881>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.226448, 32.312355, 23.531759> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.538952, 32.521278, 23.668480>,  <29.726454, 32.646633, 23.750513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.538952, 32.521278, 23.668480>,  <29.226448, 32.312355, 23.531759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.538952, 32.521278, 23.668480> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312921, -0.801520, 0.509555,
		0.540107, -0.291137, -0.789635,
		0.781259, 0.522308, 0.341803,
		29.773329, 32.677971, 23.771021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.906794, 32.030869, 23.358225>,  <29.226448, 32.312355, 23.531759>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.906794, 32.030869, 23.358225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.998293, 32.272633, 23.663475>,  <30.053192, 32.417690, 23.846624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.998293, 32.272633, 23.663475>,  <29.906794, 32.030869, 23.358225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.998293, 32.272633, 23.663475> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301405, -0.789363, 0.534846,
		0.925651, 0.107665, -0.362738,
		0.228748, 0.604412, 0.763125,
		30.066917, 32.453957, 23.892412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.480085, 31.707914, 23.597176>,  <29.906794, 32.030869, 23.358225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.480085, 31.707914, 23.597176> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.341841, 31.931843, 23.898415>,  <30.258894, 32.066200, 24.079157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.341841, 31.931843, 23.898415>,  <30.480085, 31.707914, 23.597176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.341841, 31.931843, 23.898415> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241020, -0.722669, 0.647811,
		0.906897, 0.405403, 0.114835,
		-0.345612, 0.559820, 0.753096,
		30.238157, 32.099789, 24.124344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.993435, 31.674700, 24.140776>,  <30.480085, 31.707914, 23.597176>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.993435, 31.674700, 24.140776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.650520, 31.767944, 24.324394>,  <30.444773, 31.823891, 24.434565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.650520, 31.767944, 24.324394>,  <30.993435, 31.674700, 24.140776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.650520, 31.767944, 24.324394> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283127, -0.531229, 0.798521,
		0.430002, 0.814527, 0.389414,
		-0.857285, 0.233112, 0.459044,
		30.393335, 31.837877, 24.462107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.191790, 31.645838, 24.849277>,  <30.993435, 31.674700, 24.140776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.191790, 31.645838, 24.849277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793406, 31.664974, 24.879669>,  <30.554375, 31.676456, 24.897903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793406, 31.664974, 24.879669>,  <31.191790, 31.645838, 24.849277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.793406, 31.664974, 24.879669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027191, -0.645756, 0.763059,
		0.085570, 0.762043, 0.641847,
		-0.995961, 0.047843, 0.075978,
		30.494617, 31.679327, 24.902462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.020744, 31.755053, 25.529825>,  <31.191790, 31.645838, 24.849277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.020744, 31.755053, 25.529825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.727486, 31.557236, 25.343094>,  <30.551531, 31.438545, 25.231054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.727486, 31.557236, 25.343094>,  <31.020744, 31.755053, 25.529825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.727486, 31.557236, 25.343094> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106449, -0.594529, 0.796997,
		-0.671690, 0.634008, 0.383232,
		-0.733145, -0.494540, -0.466828,
		30.507542, 31.408875, 25.203045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525776, 31.773306, 26.020123>,  <31.020744, 31.755053, 25.529825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.525776, 31.773306, 26.020123> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.428019, 31.470825, 25.777328>,  <30.369364, 31.289337, 25.631651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.428019, 31.470825, 25.777328>,  <30.525776, 31.773306, 26.020123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.428019, 31.470825, 25.777328> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117117, -0.598367, 0.792616,
		-0.962578, 0.264797, 0.057672,
		-0.244391, -0.756201, -0.606987,
		30.354702, 31.243965, 25.595232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.302380, 32.279373, 26.435394>,  <30.525776, 31.773306, 26.020123>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.302380, 32.279373, 26.435394> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.621836, 32.389469, 26.649467>,  <30.813509, 32.455524, 26.777912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.621836, 32.389469, 26.649467>,  <30.302380, 32.279373, 26.435394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.621836, 32.389469, 26.649467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449091, 0.319424, -0.834437,
		-0.400617, 0.906760, 0.131498,
		0.798638, 0.275235, 0.535185,
		30.861427, 32.472038, 26.810022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.429108, 32.977936, 26.211637>,  <30.302380, 32.279373, 26.435394>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.429108, 32.977936, 26.211637> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.775232, 32.873337, 26.382687>,  <30.982906, 32.810577, 26.485315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.775232, 32.873337, 26.382687>,  <30.429108, 32.977936, 26.211637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.775232, 32.873337, 26.382687> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491256, 0.273027, -0.827118,
		0.099535, 0.925784, 0.364714,
		0.865310, -0.261495, 0.427621,
		31.034824, 32.794888, 26.510973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.846643, 33.542099, 26.095846>,  <30.429108, 32.977936, 26.211637>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.846643, 33.542099, 26.095846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.102177, 33.239174, 26.150066>,  <31.255497, 33.057419, 26.182598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.102177, 33.239174, 26.150066>,  <30.846643, 33.542099, 26.095846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.102177, 33.239174, 26.150066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573632, 0.351458, -0.739881,
		0.512677, 0.550418, 0.658940,
		0.638834, -0.757309, 0.135552,
		31.293827, 33.011982, 26.190733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.545082, 33.760410, 26.313297>,  <30.846643, 33.542099, 26.095846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.545082, 33.760410, 26.313297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582468, 33.401299, 26.141132>,  <31.604900, 33.185833, 26.037834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582468, 33.401299, 26.141132>,  <31.545082, 33.760410, 26.313297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.582468, 33.401299, 26.141132> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586509, 0.398982, -0.704855,
		0.804532, -0.186560, 0.563847,
		0.093467, -0.897780, -0.430413,
		31.610508, 33.131966, 26.012009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282589, 33.727871, 26.217793>,  <31.545082, 33.760410, 26.313297>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282589, 33.727871, 26.217793> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.214478, 33.381950, 26.028847>,  <32.173611, 33.174400, 25.915480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.214478, 33.381950, 26.028847>,  <32.282589, 33.727871, 26.217793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.214478, 33.381950, 26.028847> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777623, 0.176498, -0.603449,
		0.605234, -0.470074, 0.642434,
		-0.170278, -0.864800, -0.472363,
		32.163395, 33.122509, 25.887138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036575, 33.407665, 25.986061>,  <32.282589, 33.727871, 26.217793>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036575, 33.407665, 25.986061> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735435, 33.295628, 25.747814>,  <32.554752, 33.228405, 25.604866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735435, 33.295628, 25.747814>,  <33.036575, 33.407665, 25.986061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735435, 33.295628, 25.747814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554182, 0.218471, -0.803214,
		0.355098, -0.934783, -0.009255,
		-0.752853, -0.280091, -0.595619,
		32.509579, 33.211601, 25.569128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391850, 32.919285, 25.567028>,  <33.036575, 33.407665, 25.986061>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391850, 32.919285, 25.567028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.075413, 33.062645, 25.368744>,  <32.885551, 33.148663, 25.249773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.075413, 33.062645, 25.368744>,  <33.391850, 32.919285, 25.567028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075413, 33.062645, 25.368744> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596784, 0.274327, -0.754051,
		-0.134267, -0.892352, -0.430905,
		-0.791089, 0.358401, -0.495708,
		32.838085, 33.170166, 25.220032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582726, 32.780815, 24.896223>,  <33.391850, 32.919285, 25.567028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582726, 32.780815, 24.896223> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301197, 33.062630, 24.859875>,  <33.132278, 33.231720, 24.838066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301197, 33.062630, 24.859875>,  <33.582726, 32.780815, 24.896223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301197, 33.062630, 24.859875> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526378, 0.431342, -0.732714,
		-0.477029, -0.563534, -0.674442,
		-0.703825, 0.704537, -0.090870,
		33.090050, 33.273991, 24.832613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459488, 32.870102, 24.182785>,  <33.582726, 32.780815, 24.896223>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459488, 32.870102, 24.182785> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305851, 33.219849, 24.301418>,  <33.213669, 33.429695, 24.372599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305851, 33.219849, 24.301418>,  <33.459488, 32.870102, 24.182785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305851, 33.219849, 24.301418> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354891, 0.436356, -0.826829,
		-0.852366, -0.212320, -0.477904,
		-0.384089, 0.874365, 0.296584,
		33.190624, 33.482159, 24.390394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175995, 33.114868, 23.560078>,  <33.459488, 32.870102, 24.182785>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175995, 33.114868, 23.560078> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218033, 33.429810, 23.803070>,  <33.243256, 33.618774, 23.948866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218033, 33.429810, 23.803070>,  <33.175995, 33.114868, 23.560078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218033, 33.429810, 23.803070> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436114, 0.512498, -0.739696,
		-0.893733, 0.342671, -0.289513,
		0.105097, 0.787352, 0.607480,
		33.249561, 33.666016, 23.985313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981594, 33.777721, 23.157778>,  <33.175995, 33.114868, 23.560078>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.981594, 33.777721, 23.157778> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224571, 33.885746, 23.456596>,  <33.370358, 33.950562, 23.635887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224571, 33.885746, 23.456596>,  <32.981594, 33.777721, 23.157778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224571, 33.885746, 23.456596> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557182, 0.525441, -0.643009,
		-0.566178, 0.806834, 0.168705,
		0.607446, 0.270058, 0.747046,
		33.406803, 33.966763, 23.680710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904739, 34.482498, 23.207952>,  <32.981594, 33.777721, 23.157778>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904739, 34.482498, 23.207952> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252525, 34.330044, 23.333656>,  <33.461197, 34.238571, 23.409079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252525, 34.330044, 23.333656>,  <32.904739, 34.482498, 23.207952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252525, 34.330044, 23.333656> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480803, 0.506944, -0.715428,
		0.113363, 0.773139, 0.624023,
		0.869470, -0.381135, 0.314258,
		33.513367, 34.215702, 23.427935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<29.352043, 31.700920, 30.268465> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.743670, 31.619827, 30.261215>,  <29.978645, 31.571171, 30.256865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.743670, 31.619827, 30.261215>,  <29.352043, 31.700920, 30.268465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.743670, 31.619827, 30.261215> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090358, 0.512700, -0.853800,
		0.182387, 0.834289, 0.520286,
		0.979066, -0.202734, -0.018125,
		30.037390, 31.559008, 30.255777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.518360, 32.254444, 29.883930>,  <29.352043, 31.700920, 30.268465>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.518360, 32.254444, 29.883930> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.822134, 31.994469, 29.895531>,  <30.004398, 31.838484, 29.902491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.822134, 31.994469, 29.895531>,  <29.518360, 32.254444, 29.883930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.822134, 31.994469, 29.895531> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317488, 0.331331, -0.888494,
		0.567857, 0.683959, 0.457972,
		0.759434, -0.649938, 0.029000,
		30.049965, 31.799488, 29.904230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.170189, 32.652588, 29.877544>,  <29.518360, 32.254444, 29.883930>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.170189, 32.652588, 29.877544> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.234297, 32.288624, 29.724503>,  <30.272762, 32.070248, 29.632677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.234297, 32.288624, 29.724503>,  <30.170189, 32.652588, 29.877544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.234297, 32.288624, 29.724503> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074247, 0.397629, -0.914537,
		0.984277, 0.118166, 0.131286,
		0.160271, -0.909905, -0.382603,
		30.282377, 32.015652, 29.609722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764040, 32.747459, 29.418034>,  <30.170189, 32.652588, 29.877544>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764040, 32.747459, 29.418034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.589363, 32.408504, 29.297218>,  <30.484556, 32.205132, 29.224730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.589363, 32.408504, 29.297218>,  <30.764040, 32.747459, 29.418034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.589363, 32.408504, 29.297218> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148397, 0.263291, -0.953235,
		0.887287, -0.461092, 0.010773,
		-0.436692, -0.847391, -0.302039,
		30.458355, 32.154285, 29.206606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.179953, 32.498028, 28.921764>,  <30.764040, 32.747459, 29.418034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.179953, 32.498028, 28.921764> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.850128, 32.289112, 28.834763>,  <30.652233, 32.163761, 28.782560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.850128, 32.289112, 28.834763>,  <31.179953, 32.498028, 28.921764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.850128, 32.289112, 28.834763> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213586, 0.068635, -0.974510,
		0.523906, -0.850001, 0.054960,
		-0.824563, -0.522291, -0.217506,
		30.602760, 32.132423, 28.769510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.407322, 31.907337, 28.531511>,  <31.179953, 32.498028, 28.921764>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.407322, 31.907337, 28.531511> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.016041, 31.956341, 28.464443>,  <30.781273, 31.985743, 28.424202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.016041, 31.956341, 28.464443>,  <31.407322, 31.907337, 28.531511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.016041, 31.956341, 28.464443> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166940, -0.016276, -0.985833,
		-0.123501, -0.992334, -0.004530,
		-0.978202, 0.122507, -0.167671,
		30.722580, 31.993093, 28.414143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318449, 31.565889, 27.948624>,  <31.407322, 31.907337, 28.531511>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.318449, 31.565889, 27.948624> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.006588, 31.816227, 27.957222>,  <30.819471, 31.966429, 27.962381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.006588, 31.816227, 27.957222>,  <31.318449, 31.565889, 27.948624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.006588, 31.816227, 27.957222> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060762, 0.109772, -0.992098,
		-0.623257, -0.772186, -0.123611,
		-0.779653, 0.625843, 0.021497,
		30.772692, 32.003979, 27.963671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.889845, 31.317818, 27.346975>,  <31.318449, 31.565889, 27.948624>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.889845, 31.317818, 27.346975> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.804802, 31.698433, 27.435860>,  <30.753777, 31.926802, 27.489191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.804802, 31.698433, 27.435860>,  <30.889845, 31.317818, 27.346975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.804802, 31.698433, 27.435860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189403, 0.263228, -0.945959,
		-0.958606, -0.159028, -0.236187,
		-0.212605, 0.951536, 0.222212,
		30.741020, 31.983894, 27.502523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467720, 31.600670, 26.812376>,  <30.889845, 31.317818, 27.346975>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.467720, 31.600670, 26.812376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.628363, 31.916927, 26.997242>,  <30.724749, 32.106682, 27.108162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.628363, 31.916927, 26.997242>,  <30.467720, 31.600670, 26.812376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628363, 31.916927, 26.997242> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207850, 0.412791, -0.886793,
		-0.891914, 0.452202, 0.001444,
		0.401606, 0.790643, 0.462164,
		30.748844, 32.154121, 27.135891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.915674, 31.383842, 26.363939>,  <30.467720, 31.600670, 26.812376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.915674, 31.383842, 26.363939> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.056416, 31.124359, 26.094013>,  <30.140860, 30.968670, 25.932056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.056416, 31.124359, 26.094013>,  <29.915674, 31.383842, 26.363939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.056416, 31.124359, 26.094013> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000598, -0.720760, 0.693184,
		-0.936055, -0.244302, -0.253214,
		0.351853, -0.648707, -0.674818,
		30.161972, 30.929747, 25.891567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.483751, 30.678244, 26.405220>,  <29.915674, 31.383842, 26.363939>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.483751, 30.678244, 26.405220> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.823761, 30.577835, 26.219986>,  <30.027767, 30.517590, 26.108847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.823761, 30.577835, 26.219986>,  <29.483751, 30.678244, 26.405220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.823761, 30.577835, 26.219986> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109313, -0.944070, 0.311098,
		-0.515275, -0.213820, -0.829923,
		0.850025, -0.251022, -0.463083,
		30.078768, 30.502529, 26.081060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.321888, 29.946005, 26.108250>,  <29.483751, 30.678244, 26.405220>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.321888, 29.946005, 26.108250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.716251, 30.007935, 26.133606>,  <29.952869, 30.045092, 26.148819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.716251, 30.007935, 26.133606>,  <29.321888, 29.946005, 26.108250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.716251, 30.007935, 26.133606> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117963, -0.912015, 0.392827,
		0.118630, -0.379813, -0.917425,
		0.985906, 0.154823, 0.063389,
		30.012024, 30.054382, 26.152622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.638182, 29.420504, 25.791571>,  <29.321888, 29.946005, 26.108250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.638182, 29.420504, 25.791571> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.950712, 29.544487, 26.008255>,  <30.138231, 29.618877, 26.138266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.950712, 29.544487, 26.008255>,  <29.638182, 29.420504, 25.791571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.950712, 29.544487, 26.008255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051596, -0.897069, 0.438868,
		0.621985, -0.314950, -0.716897,
		0.781328, 0.309958, 0.541713,
		30.185110, 29.637474, 26.170769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.975821, 28.805353, 25.949696>,  <29.638182, 29.420504, 25.791571>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.975821, 28.805353, 25.949696> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.143246, 29.070614, 26.197899>,  <30.243702, 29.229771, 26.346821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.143246, 29.070614, 26.197899>,  <29.975821, 28.805353, 25.949696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.143246, 29.070614, 26.197899> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047191, -0.698198, 0.714347,
		0.906960, -0.269718, -0.323536,
		0.418565, 0.663152, 0.620510,
		30.268816, 29.269560, 26.384052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.609230, 28.475576, 26.294313>,  <29.975821, 28.805353, 25.949696>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.609230, 28.475576, 26.294313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.472776, 28.768394, 26.530190>,  <30.390903, 28.944086, 26.671715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.472776, 28.768394, 26.530190>,  <30.609230, 28.475576, 26.294313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.472776, 28.768394, 26.530190> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066570, -0.644561, 0.761650,
		0.937654, 0.220569, 0.268614,
		-0.341135, 0.732046, 0.589692,
		30.370436, 28.988008, 26.707096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.798388, 28.135582, 26.970640>,  <30.609230, 28.475576, 26.294313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.798388, 28.135582, 26.970640> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.580114, 28.452690, 27.079262>,  <30.449150, 28.642956, 27.144434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.580114, 28.452690, 27.079262>,  <30.798388, 28.135582, 26.970640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.580114, 28.452690, 27.079262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271692, -0.473922, 0.837604,
		0.792724, 0.383289, 0.474002,
		-0.545684, 0.792772, 0.271553,
		30.416409, 28.690521, 27.160728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973293, 28.321386, 27.733051>,  <30.798388, 28.135582, 26.970640>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973293, 28.321386, 27.733051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.601339, 28.447533, 27.657310>,  <30.378166, 28.523220, 27.611866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.601339, 28.447533, 27.657310>,  <30.973293, 28.321386, 27.733051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.601339, 28.447533, 27.657310> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345583, -0.572611, 0.743430,
		0.126026, 0.756744, 0.641449,
		-0.929887, 0.315366, -0.189354,
		30.322372, 28.542143, 27.600504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.735205, 28.523396, 28.354708>,  <30.973293, 28.321386, 27.733051>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.735205, 28.523396, 28.354708> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.405014, 28.449574, 28.141342>,  <30.206900, 28.405279, 28.013323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.405014, 28.449574, 28.141342>,  <30.735205, 28.523396, 28.354708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.405014, 28.449574, 28.141342> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372328, -0.532223, 0.760336,
		-0.424220, 0.826243, 0.370621,
		-0.825475, -0.184557, -0.533413,
		30.157372, 28.394207, 27.981318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.170599, 28.706894, 28.771667>,  <30.735205, 28.523396, 28.354708>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.170599, 28.706894, 28.771667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.031258, 28.446541, 28.501854>,  <29.947653, 28.290329, 28.339966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.031258, 28.446541, 28.501854>,  <30.170599, 28.706894, 28.771667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.031258, 28.446541, 28.501854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558652, -0.433683, 0.706985,
		-0.752700, 0.623113, -0.212541,
		-0.348356, -0.650884, -0.674536,
		29.926750, 28.251276, 28.299494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.470110, 28.766016, 28.822968>,  <30.170599, 28.706894, 28.771667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.470110, 28.766016, 28.822968> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.530554, 28.414577, 28.641758>,  <29.566820, 28.203714, 28.533031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.530554, 28.414577, 28.641758>,  <29.470110, 28.766016, 28.822968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.530554, 28.414577, 28.641758> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557073, -0.454274, 0.695201,
		-0.816599, 0.147316, -0.558089,
		0.151111, -0.878597, -0.453026,
		29.575888, 28.150999, 28.505850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.877409, 28.327139, 28.914600>,  <29.470110, 28.766016, 28.822968>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.877409, 28.327139, 28.914600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.119137, 28.031116, 28.796539>,  <29.264174, 27.853504, 28.725702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.119137, 28.031116, 28.796539>,  <28.877409, 28.327139, 28.914600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.119137, 28.031116, 28.796539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477884, -0.633101, 0.608942,
		-0.637519, -0.226939, -0.736253,
		0.604315, -0.740056, -0.295163,
		29.300432, 27.809099, 28.707993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.444540, 27.731913, 28.802206>,  <28.877409, 28.327139, 28.914600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.444540, 27.731913, 28.802206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.810715, 27.574261, 28.834805>,  <29.030418, 27.479670, 28.854362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.810715, 27.574261, 28.834805>,  <28.444540, 27.731913, 28.802206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.810715, 27.574261, 28.834805> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362449, -0.719313, 0.592637,
		-0.174954, -0.572059, -0.801336,
		0.915435, -0.394128, 0.081496,
		29.085346, 27.456022, 28.859253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.353668, 27.036089, 28.668556>,  <28.444540, 27.731913, 28.802206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.353668, 27.036089, 28.668556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.708845, 27.073036, 28.848789>,  <28.921951, 27.095205, 28.956930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.708845, 27.073036, 28.848789>,  <28.353668, 27.036089, 28.668556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.708845, 27.073036, 28.848789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208477, -0.792398, 0.573274,
		0.409993, -0.602971, -0.684347,
		0.887943, 0.092368, 0.450583,
		28.975227, 27.100746, 28.983965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.599602, 25.901724, 29.618155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.380470, 26.208916, 29.750877>,  <34.248993, 26.393230, 29.830511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.380470, 26.208916, 29.750877>,  <34.599602, 25.901724, 29.618155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380470, 26.208916, 29.750877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313709, 0.556256, -0.769524,
		-0.775548, -0.317473, -0.545652,
		-0.547825, 0.767979, 0.331809,
		34.216122, 26.439310, 29.850420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303391, 26.197336, 29.022779>,  <34.599602, 25.901724, 29.618155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303391, 26.197336, 29.022779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.259258, 26.499710, 29.280891>,  <34.232780, 26.681135, 29.435759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.259258, 26.499710, 29.280891>,  <34.303391, 26.197336, 29.022779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259258, 26.499710, 29.280891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113337, 0.654578, -0.747451,
		-0.987412, -0.009330, -0.157893,
		-0.110327, 0.755937, 0.645281,
		34.226162, 26.726492, 29.474476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797104, 26.605621, 28.710480>,  <34.303391, 26.197336, 29.022779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797104, 26.605621, 28.710480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.017147, 26.823147, 28.963982>,  <34.149174, 26.953663, 29.116083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.017147, 26.823147, 28.963982>,  <33.797104, 26.605621, 28.710480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017147, 26.823147, 28.963982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325349, 0.559375, -0.762396,
		-0.769110, 0.625591, 0.130785,
		0.550107, 0.543816, 0.633757,
		34.182178, 26.986292, 29.154108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649025, 27.277376, 28.474306>,  <33.797104, 26.605621, 28.710480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.649025, 27.277376, 28.474306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.984360, 27.362907, 28.674892>,  <34.185562, 27.414227, 28.795244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.984360, 27.362907, 28.674892>,  <33.649025, 27.277376, 28.474306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984360, 27.362907, 28.674892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315303, 0.560212, -0.765994,
		-0.444717, 0.800275, 0.402226,
		0.838338, 0.213828, 0.501465,
		34.235863, 27.427055, 28.825333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661930, 27.954302, 28.363796>,  <33.649025, 27.277376, 28.474306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661930, 27.954302, 28.363796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.034885, 27.855301, 28.469170>,  <34.258659, 27.795900, 28.532394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.034885, 27.855301, 28.469170>,  <33.661930, 27.954302, 28.363796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034885, 27.855301, 28.469170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361421, 0.627255, -0.689874,
		0.005504, 0.738440, 0.674296,
		0.932386, -0.247502, 0.263436,
		34.314602, 27.781050, 28.548201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019962, 28.560713, 28.415068>,  <33.661930, 27.954302, 28.363796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019962, 28.560713, 28.415068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.311211, 28.292347, 28.358906>,  <34.485958, 28.131327, 28.325209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.311211, 28.292347, 28.358906>,  <34.019962, 28.560713, 28.415068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311211, 28.292347, 28.358906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402562, 0.584345, -0.704617,
		0.554785, 0.456524, 0.695558,
		0.728120, -0.670916, -0.140406,
		34.529648, 28.091072, 28.316784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662605, 28.976952, 28.326735>,  <34.019962, 28.560713, 28.415068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662605, 28.976952, 28.326735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.740227, 28.617832, 28.168594>,  <34.786800, 28.402361, 28.073711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.740227, 28.617832, 28.168594>,  <34.662605, 28.976952, 28.326735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740227, 28.617832, 28.168594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361186, 0.440087, -0.822112,
		0.912079, 0.016737, 0.409672,
		0.194051, -0.897799, -0.395349,
		34.798443, 28.348492, 28.049990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315117, 29.046518, 28.103619>,  <34.662605, 28.976952, 28.326735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315117, 29.046518, 28.103619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.180367, 28.727440, 27.903542>,  <35.099514, 28.535992, 27.783495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.180367, 28.727440, 27.903542>,  <35.315117, 29.046518, 28.103619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180367, 28.727440, 27.903542> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391158, 0.364659, -0.844997,
		0.856451, -0.480315, 0.189181,
		-0.336879, -0.797698, -0.500192,
		35.079304, 28.488131, 27.753485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956268, 28.808510, 27.671972>,  <35.315117, 29.046518, 28.103619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956268, 28.808510, 27.671972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.620277, 28.648045, 27.525822>,  <35.418682, 28.551765, 27.438131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.620277, 28.648045, 27.525822>,  <35.956268, 28.808510, 27.671972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620277, 28.648045, 27.525822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403642, -0.011946, -0.914839,
		0.362637, -0.915927, 0.171962,
		-0.839980, -0.401166, -0.365375,
		35.368282, 28.527695, 27.416210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166542, 28.251165, 27.312700>,  <35.956268, 28.808510, 27.671972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166542, 28.251165, 27.312700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.819256, 28.399197, 27.180492>,  <35.610882, 28.488014, 27.101168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.819256, 28.399197, 27.180492>,  <36.166542, 28.251165, 27.312700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819256, 28.399197, 27.180492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343210, -0.033149, -0.938673,
		-0.358337, -0.928410, -0.098233,
		-0.868217, 0.370076, -0.330518,
		35.558792, 28.510220, 27.081337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289268, 28.314232, 26.635340>,  <36.166542, 28.251165, 27.312700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289268, 28.314232, 26.635340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.928444, 28.486431, 26.647774>,  <35.711948, 28.589750, 26.655235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.928444, 28.486431, 26.647774>,  <36.289268, 28.314232, 26.635340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928444, 28.486431, 26.647774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180764, 0.442206, -0.878509,
		-0.391942, -0.786846, -0.476713,
		-0.902057, 0.430497, 0.031086,
		35.657825, 28.615580, 26.657099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966377, 28.291567, 26.020710>,  <36.289268, 28.314232, 26.635340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966377, 28.291567, 26.020710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.751122, 28.595097, 26.167454>,  <35.621967, 28.777214, 26.255501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.751122, 28.595097, 26.167454>,  <35.966377, 28.291567, 26.020710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751122, 28.595097, 26.167454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166978, 0.522616, -0.836057,
		-0.826149, -0.388660, -0.407949,
		-0.538142, 0.758826, 0.366861,
		35.589680, 28.822744, 26.277512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329723, 28.470140, 25.544392>,  <35.966377, 28.291567, 26.020710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329723, 28.470140, 25.544392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.456650, 28.789009, 25.749847>,  <35.532806, 28.980331, 25.873121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.456650, 28.789009, 25.749847>,  <35.329723, 28.470140, 25.544392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.456650, 28.789009, 25.749847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055765, 0.525010, -0.849267,
		-0.946680, 0.298126, 0.122137,
		0.317312, 0.797174, 0.513642,
		35.551842, 29.028162, 25.903940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185898, 28.988541, 25.160887>,  <35.329723, 28.470140, 25.544392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185898, 28.988541, 25.160887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.429691, 29.170303, 25.420746>,  <35.575966, 29.279362, 25.576662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.429691, 29.170303, 25.420746>,  <35.185898, 28.988541, 25.160887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429691, 29.170303, 25.420746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306107, 0.621011, -0.721556,
		-0.731320, 0.638639, 0.239398,
		0.609483, 0.454407, 0.649650,
		35.612537, 29.306625, 25.615641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462711, 29.017284, 24.910593>,  <35.185898, 28.988541, 25.160887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462711, 29.017284, 24.910593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.335964, 28.817020, 24.588367>,  <34.259914, 28.696861, 24.395033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.335964, 28.817020, 24.588367>,  <34.462711, 29.017284, 24.910593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335964, 28.817020, 24.588367> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021114, -0.852842, 0.521742,
		-0.948234, 0.148316, 0.280811,
		-0.316870, -0.500662, -0.805563,
		34.240902, 28.666822, 24.346699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876759, 28.688089, 25.096176>,  <34.462711, 29.017284, 24.910593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876759, 28.688089, 25.096176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.984020, 28.471764, 24.777275>,  <34.048378, 28.341969, 24.585934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.984020, 28.471764, 24.777275>,  <33.876759, 28.688089, 25.096176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984020, 28.471764, 24.777275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253236, -0.838031, 0.483297,
		-0.929496, 0.072294, -0.361677,
		0.268157, -0.540813, -0.797254,
		34.064468, 28.309521, 24.538099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398045, 28.183329, 25.096107>,  <33.876759, 28.688089, 25.096176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.398045, 28.183329, 25.096107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.664593, 28.030441, 24.840027>,  <33.824520, 27.938709, 24.686378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.664593, 28.030441, 24.840027>,  <33.398045, 28.183329, 25.096107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664593, 28.030441, 24.840027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070558, -0.887088, 0.456176,
		-0.742276, -0.258810, -0.618096,
		0.666369, -0.382221, -0.640203,
		33.864502, 27.915775, 24.647966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059486, 27.604712, 24.788029>,  <33.398045, 28.183329, 25.096107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059486, 27.604712, 24.788029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.455574, 27.550266, 24.775780>,  <33.693226, 27.517599, 24.768431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.455574, 27.550266, 24.775780>,  <33.059486, 27.604712, 24.788029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455574, 27.550266, 24.775780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091759, -0.800713, 0.591979,
		-0.105096, -0.583380, -0.805371,
		0.990220, -0.136115, -0.030621,
		33.752640, 27.509432, 24.766594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153500, 26.851603, 24.648232>,  <33.059486, 27.604712, 24.788029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.153500, 26.851603, 24.648232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.494072, 26.993969, 24.802315>,  <33.698418, 27.079388, 24.894764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.494072, 26.993969, 24.802315>,  <33.153500, 26.851603, 24.648232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494072, 26.993969, 24.802315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058243, -0.665771, 0.743879,
		0.521216, -0.655801, -0.546131,
		0.851435, 0.355914, 0.385207,
		33.749504, 27.100742, 24.917877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580830, 26.267326, 24.772772>,  <33.153500, 26.851603, 24.648232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.580830, 26.267326, 24.772772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.719498, 26.561764, 25.005318>,  <33.802700, 26.738426, 25.144844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.719498, 26.561764, 25.005318>,  <33.580830, 26.267326, 24.772772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719498, 26.561764, 25.005318> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066721, -0.598878, 0.798056,
		0.935610, -0.315453, -0.158502,
		0.346672, 0.736094, 0.581364,
		33.823498, 26.782593, 25.179728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058872, 25.997417, 25.201454>,  <33.580830, 26.267326, 24.772772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058872, 25.997417, 25.201454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.944103, 26.344631, 25.363537>,  <33.875244, 26.552959, 25.460787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.944103, 26.344631, 25.363537>,  <34.058872, 25.997417, 25.201454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944103, 26.344631, 25.363537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037839, -0.432933, 0.900632,
		0.957207, 0.243076, 0.157062,
		-0.286920, 0.868034, 0.405209,
		33.858028, 26.605042, 25.485100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483181, 26.111614, 25.799232>,  <34.058872, 25.997417, 25.201454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483181, 26.111614, 25.799232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.157085, 26.327515, 25.883190>,  <33.961430, 26.457054, 25.933565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.157085, 26.327515, 25.883190>,  <34.483181, 26.111614, 25.799232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157085, 26.327515, 25.883190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011454, -0.347333, 0.937672,
		0.579010, 0.766832, 0.276978,
		-0.815240, 0.539749, 0.209892,
		33.912514, 26.489439, 25.946157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535885, 26.162611, 26.522919>,  <34.483181, 26.111614, 25.799232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535885, 26.162611, 26.522919> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.154961, 26.266891, 26.459503>,  <33.926407, 26.329460, 26.421453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.154961, 26.266891, 26.459503>,  <34.535885, 26.162611, 26.522919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154961, 26.266891, 26.459503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240776, -0.322923, 0.915285,
		0.187420, 0.909811, 0.370294,
		-0.952313, 0.260701, -0.158539,
		33.869267, 26.345102, 26.411942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285393, 26.366005, 27.267317>,  <34.535885, 26.162611, 26.522919>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285393, 26.366005, 27.267317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.978096, 26.251125, 27.038467>,  <33.793720, 26.182198, 26.901157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.978096, 26.251125, 27.038467>,  <34.285393, 26.366005, 27.267317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978096, 26.251125, 27.038467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330358, -0.587656, 0.738596,
		-0.548335, 0.756424, 0.356583,
		-0.768240, -0.287198, -0.572123,
		33.747623, 26.164967, 26.866831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664024, 26.609459, 27.603292>,  <34.285393, 26.366005, 27.267317>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664024, 26.609459, 27.603292> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.599945, 26.288414, 27.373459>,  <33.561497, 26.095787, 27.235558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.599945, 26.288414, 27.373459>,  <33.664024, 26.609459, 27.603292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.599945, 26.288414, 27.373459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295551, -0.516395, 0.803732,
		-0.941799, 0.298577, -0.154487,
		-0.160200, -0.802613, -0.574585,
		33.551884, 26.047630, 27.201084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920059, 26.474697, 27.717474>,  <33.664024, 26.609459, 27.603292>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920059, 26.474697, 27.717474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.040527, 26.114433, 27.592182>,  <33.112808, 25.898275, 27.517006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.040527, 26.114433, 27.592182>,  <32.920059, 26.474697, 27.717474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040527, 26.114433, 27.592182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649673, -0.434250, 0.623981,
		-0.698014, 0.015575, -0.715915,
		0.301167, -0.900658, -0.313231,
		33.130878, 25.844236, 27.498213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282825, 25.963501, 27.692688>,  <32.920059, 26.474697, 27.717474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282825, 25.963501, 27.692688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.621624, 25.751701, 27.711590>,  <32.824902, 25.624622, 27.722931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.621624, 25.751701, 27.711590>,  <32.282825, 25.963501, 27.692688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621624, 25.751701, 27.711590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374833, -0.531821, 0.759386,
		-0.376964, -0.660907, -0.648923,
		0.846993, -0.529499, 0.047252,
		32.875721, 25.592852, 27.725765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100780, 25.278339, 27.758497>,  <32.282825, 25.963501, 27.692688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100780, 25.278339, 27.758497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.481754, 25.305508, 27.877327>,  <32.710339, 25.321808, 27.948626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.481754, 25.305508, 27.877327>,  <32.100780, 25.278339, 27.758497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.481754, 25.305508, 27.877327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228120, -0.487464, 0.842817,
		0.202058, -0.870497, -0.448784,
		0.952436, 0.067921, 0.297073,
		32.767487, 25.325884, 27.966450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738031, 24.690351, 27.316046>,  <32.100780, 25.278339, 27.758497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738031, 24.690351, 27.316046> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.356050, 24.808174, 27.330479>,  <31.126862, 24.878868, 27.339138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.356050, 24.808174, 27.330479>,  <31.738031, 24.690351, 27.316046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.356050, 24.808174, 27.330479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133164, 0.534000, -0.834932,
		-0.265203, -0.792515, -0.549169,
		-0.954952, 0.294556, 0.036084,
		31.069565, 24.896542, 27.341303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.332760, 24.405283, 26.804173>,  <31.738031, 24.690351, 27.316046>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.332760, 24.405283, 26.804173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.111944, 24.729172, 26.883774>,  <30.979456, 24.923506, 26.931536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.111944, 24.729172, 26.883774>,  <31.332760, 24.405283, 26.804173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111944, 24.729172, 26.883774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047012, 0.268512, -0.962128,
		-0.832493, -0.521775, -0.186296,
		-0.552037, 0.809723, 0.199005,
		30.946333, 24.972088, 26.943476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.846981, 24.477516, 26.213753>,  <31.332760, 24.405283, 26.804173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.846981, 24.477516, 26.213753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.850077, 24.838989, 26.385006>,  <30.851934, 25.055874, 26.487757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.850077, 24.838989, 26.385006>,  <30.846981, 24.477516, 26.213753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.850077, 24.838989, 26.385006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051428, 0.427218, -0.902685,
		-0.998647, 0.029006, -0.043168,
		0.007741, 0.903683, 0.428132,
		30.852400, 25.110094, 26.513445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.383760, 24.884211, 25.964460>,  <30.846981, 24.477516, 26.213753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.383760, 24.884211, 25.964460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.649920, 25.152420, 26.095699>,  <30.809614, 25.313345, 26.174442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.649920, 25.152420, 26.095699>,  <30.383760, 24.884211, 25.964460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.649920, 25.152420, 26.095699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020384, 0.455674, -0.889913,
		-0.746212, 0.585458, 0.316872,
		0.665397, 0.670523, 0.328095,
		30.849539, 25.353577, 26.194128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.188951, 25.457457, 25.571432>,  <30.383760, 24.884211, 25.964460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.188951, 25.457457, 25.571432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.543674, 25.556396, 25.727581>,  <30.756508, 25.615761, 25.821270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.543674, 25.556396, 25.727581>,  <30.188951, 25.457457, 25.571432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.543674, 25.556396, 25.727581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124963, 0.684896, -0.717846,
		-0.444923, 0.685373, 0.576461,
		0.886807, 0.247350, 0.390372,
		30.809717, 25.630602, 25.844692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.238235, 26.148129, 25.685452>,  <30.188951, 25.457457, 25.571432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.238235, 26.148129, 25.685452> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.633095, 26.084408, 25.680309>,  <30.870010, 26.046175, 25.677223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.633095, 26.084408, 25.680309>,  <30.238235, 26.148129, 25.685452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.633095, 26.084408, 25.680309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090904, 0.625823, -0.774650,
		0.131451, 0.763524, 0.632260,
		0.987146, -0.159304, -0.012858,
		30.929239, 26.036617, 25.676453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.589989, 26.815399, 25.650797>,  <30.238235, 26.148129, 25.685452>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.589989, 26.815399, 25.650797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.856939, 26.554848, 25.506401>,  <31.017109, 26.398516, 25.419764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.856939, 26.554848, 25.506401>,  <30.589989, 26.815399, 25.650797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856939, 26.554848, 25.506401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048661, 0.521838, -0.851656,
		0.743130, 0.550808, 0.379958,
		0.667375, -0.651380, -0.360991,
		31.057152, 26.359434, 25.398104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.254549, 27.181576, 25.626024>,  <30.589989, 26.815399, 25.650797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.254549, 27.181576, 25.626024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.190977, 26.890102, 25.359562>,  <31.152834, 26.715219, 25.199684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.190977, 26.890102, 25.359562>,  <31.254549, 27.181576, 25.626024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190977, 26.890102, 25.359562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179250, 0.642222, -0.745265,
		0.970881, -0.237855, 0.028547,
		-0.158931, -0.728681, -0.666156,
		31.143297, 26.671497, 25.159716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794334, 27.289816, 25.090158>,  <31.254549, 27.181576, 25.626024>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.794334, 27.289816, 25.090158> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.552441, 27.014526, 24.929836>,  <31.407305, 26.849354, 24.833643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.552441, 27.014526, 24.929836>,  <31.794334, 27.289816, 25.090158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.552441, 27.014526, 24.929836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057092, 0.539420, -0.840099,
		0.794378, -0.485155, -0.365499,
		-0.604735, -0.688223, -0.400805,
		31.371019, 26.808060, 24.809595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135933, 27.076195, 24.562370>,  <31.794334, 27.289816, 25.090158>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135933, 27.076195, 24.562370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.748045, 27.003254, 24.497379>,  <31.515312, 26.959490, 24.458385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.748045, 27.003254, 24.497379>,  <32.135933, 27.076195, 24.562370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.748045, 27.003254, 24.497379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036050, 0.551098, -0.833661,
		0.241560, -0.814272, -0.527835,
		-0.969716, -0.182351, -0.162478,
		31.457130, 26.948549, 24.448635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106750, 27.167873, 23.791245>,  <32.135933, 27.076195, 24.562370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106750, 27.167873, 23.791245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.732677, 27.190083, 23.931164>,  <31.508234, 27.203407, 24.015116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.732677, 27.190083, 23.931164>,  <32.106750, 27.167873, 23.791245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.732677, 27.190083, 23.931164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241834, 0.621465, -0.745183,
		-0.258761, -0.781472, -0.567753,
		-0.935178, 0.055522, 0.349798,
		31.452124, 27.206739, 24.036102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.736759, 27.079477, 23.276218>,  <32.106750, 27.167873, 23.791245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.736759, 27.079477, 23.276218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.474936, 27.264412, 23.515484>,  <31.317842, 27.375372, 23.659044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.474936, 27.264412, 23.515484>,  <31.736759, 27.079477, 23.276218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.474936, 27.264412, 23.515484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102165, 0.729858, -0.675921,
		-0.749078, -0.503541, -0.430499,
		-0.654557, 0.462336, 0.598165,
		31.278568, 27.403112, 23.694933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.239563, 27.294222, 22.895382>,  <31.736759, 27.079477, 23.276218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.239563, 27.294222, 22.895382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.202049, 27.538780, 23.209682>,  <31.179541, 27.685514, 23.398262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.202049, 27.538780, 23.209682>,  <31.239563, 27.294222, 22.895382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.202049, 27.538780, 23.209682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070373, 0.783183, -0.617797,
		-0.993102, -0.113234, -0.030424,
		-0.093783, 0.611394, 0.785749,
		31.173914, 27.722198, 23.445408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.844931, 27.780287, 22.693180>,  <31.239563, 27.294222, 22.895382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.844931, 27.780287, 22.693180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.996899, 27.975151, 23.007717>,  <31.088079, 28.092070, 23.196440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.996899, 27.975151, 23.007717>,  <30.844931, 27.780287, 22.693180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996899, 27.975151, 23.007717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076294, 0.863688, -0.498219,
		-0.921868, 0.129290, 0.365300,
		0.379920, 0.487162, 0.786342,
		31.110874, 28.121300, 23.243620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<48.288143, 34.013828, 15.259656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<48.514397, 34.206528, 15.527381>,  <48.650150, 34.322147, 15.688016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<48.514397, 34.206528, 15.527381>,  <48.288143, 34.013828, 15.259656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.514397, 34.206528, 15.527381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470128, -0.478442, 0.741669,
		0.677522, -0.734177, -0.044142,
		0.565636, 0.481745, 0.669311,
		48.684086, 34.351051, 15.728174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.460533, 33.543354, 15.807237>,  <48.288143, 34.013828, 15.259656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.460533, 33.543354, 15.807237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<48.535217, 33.892559, 15.987456>,  <48.580029, 34.102081, 16.095589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<48.535217, 33.892559, 15.987456>,  <48.460533, 33.543354, 15.807237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.535217, 33.892559, 15.987456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406900, -0.348705, 0.844297,
		0.894187, -0.340970, 0.290119,
		0.186714, 0.873009, 0.450548,
		48.591232, 34.154461, 16.122622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.725319, 33.316143, 16.431759>,  <48.460533, 33.543354, 15.807237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.725319, 33.316143, 16.431759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<48.545372, 33.673080, 16.446419>,  <48.437405, 33.887241, 16.455214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<48.545372, 33.673080, 16.446419>,  <48.725319, 33.316143, 16.431759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.545372, 33.673080, 16.446419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365749, -0.221515, 0.903969,
		0.814767, 0.393264, 0.426026,
		-0.449869, 0.892342, 0.036648,
		48.410412, 33.940784, 16.457413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.804882, 33.429260, 17.106159>,  <48.725319, 33.316143, 16.431759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.804882, 33.429260, 17.106159> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<48.530468, 33.700863, 17.001625>,  <48.365818, 33.863827, 16.938904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<48.530468, 33.700863, 17.001625>,  <48.804882, 33.429260, 17.106159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.530468, 33.700863, 17.001625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371256, -0.017795, 0.928360,
		0.625716, 0.733912, 0.264295,
		-0.686038, 0.679011, -0.261335,
		48.324657, 33.904568, 16.923225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.619930, 33.825016, 17.785784>,  <48.804882, 33.429260, 17.106159>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.619930, 33.825016, 17.785784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<48.324429, 33.885914, 17.523163>,  <48.147129, 33.922455, 17.365591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<48.324429, 33.885914, 17.523163>,  <48.619930, 33.825016, 17.785784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.324429, 33.885914, 17.523163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665810, -0.013691, 0.745996,
		0.104587, 0.988248, 0.111482,
		-0.738755, 0.152247, -0.656553,
		48.102802, 33.931587, 17.326197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.099968, 34.196064, 18.142437>,  <48.619930, 33.825016, 17.785784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.099968, 34.196064, 18.142437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.897133, 34.022991, 17.844269>,  <47.775433, 33.919147, 17.665369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.897133, 34.022991, 17.844269>,  <48.099968, 34.196064, 18.142437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.897133, 34.022991, 17.844269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818158, -0.030366, 0.574192,
		-0.271080, 0.901033, -0.338608,
		-0.507084, -0.432686, -0.745419,
		47.745007, 33.893185, 17.620644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.345371, 34.428070, 18.239481>,  <48.099968, 34.196064, 18.142437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.345371, 34.428070, 18.239481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.291740, 34.134003, 17.973682>,  <47.259563, 33.957561, 17.814203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.291740, 34.134003, 17.973682>,  <47.345371, 34.428070, 18.239481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.291740, 34.134003, 17.973682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882999, -0.215747, 0.416852,
		-0.449819, 0.642637, -0.620226,
		-0.134073, -0.735167, -0.664495,
		47.251518, 33.913452, 17.774334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.634998, 34.427624, 17.971836>,  <47.345371, 34.428070, 18.239481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.634998, 34.427624, 17.971836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.754097, 34.048897, 17.923042>,  <46.825558, 33.821659, 17.893766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.754097, 34.048897, 17.923042>,  <46.634998, 34.427624, 17.971836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.754097, 34.048897, 17.923042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894456, -0.321345, 0.310944,
		-0.333608, 0.016533, -0.942567,
		0.297748, -0.946818, -0.121991,
		46.843422, 33.764851, 17.886448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.098434, 34.244335, 17.623032>,  <46.634998, 34.427624, 17.971836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.098434, 34.244335, 17.623032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.266659, 33.909279, 17.762447>,  <46.367596, 33.708244, 17.846096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.266659, 33.909279, 17.762447>,  <46.098434, 34.244335, 17.623032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.266659, 33.909279, 17.762447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906087, -0.368227, 0.208364,
		-0.046194, -0.403437, -0.913841,
		0.420563, -0.837644, 0.348538,
		46.392826, 33.657986, 17.867008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.865211, 33.579597, 17.264185>,  <46.098434, 34.244335, 17.623032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.865211, 33.579597, 17.264185> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.998150, 33.494156, 17.631645>,  <46.077911, 33.442890, 17.852121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.998150, 33.494156, 17.631645>,  <45.865211, 33.579597, 17.264185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.998150, 33.494156, 17.631645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890090, -0.393147, 0.230596,
		0.311909, -0.894320, -0.320787,
		0.332344, -0.213605, 0.918652,
		46.097855, 33.430073, 17.907240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.425541, 33.070583, 17.490915>,  <45.865211, 33.579597, 17.264185>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.425541, 33.070583, 17.490915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.626556, 33.144436, 17.828758>,  <45.747166, 33.188747, 18.031464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.626556, 33.144436, 17.828758>,  <45.425541, 33.070583, 17.490915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.626556, 33.144436, 17.828758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828231, -0.177380, 0.531573,
		0.247964, -0.966667, 0.063781,
		0.502541, 0.184636, 0.844607,
		45.777317, 33.199825, 18.082140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.293053, 32.481861, 18.000620>,  <45.425541, 33.070583, 17.490915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.293053, 32.481861, 18.000620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.408024, 32.806446, 18.204155>,  <45.477005, 33.001198, 18.326277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.408024, 32.806446, 18.204155>,  <45.293053, 32.481861, 18.000620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.408024, 32.806446, 18.204155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774846, -0.115295, 0.621547,
		0.563028, -0.572920, 0.595619,
		0.287425, 0.811461, 0.508839,
		45.494251, 33.049885, 18.356808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.503525, 32.288536, 18.670818>,  <45.293053, 32.481861, 18.000620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.503525, 32.288536, 18.670818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.401234, 32.675072, 18.682121>,  <45.339859, 32.906994, 18.688904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.401234, 32.675072, 18.682121>,  <45.503525, 32.288536, 18.670818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.401234, 32.675072, 18.682121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706921, -0.206858, 0.676367,
		0.659443, 0.152991, 0.736022,
		-0.255730, 0.966335, 0.028259,
		45.324516, 32.964973, 18.690599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.334202, 32.435318, 19.327671>,  <45.503525, 32.288536, 18.670818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.334202, 32.435318, 19.327671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.155369, 32.755280, 19.167538>,  <45.048069, 32.947258, 19.071457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.155369, 32.755280, 19.167538>,  <45.334202, 32.435318, 19.327671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.155369, 32.755280, 19.167538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674900, -0.007931, 0.737867,
		0.587047, 0.600076, 0.543401,
		-0.447086, 0.799904, -0.400335,
		45.021244, 32.995251, 19.047438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.031288, 32.687561, 19.932352>,  <45.334202, 32.435318, 19.327671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.031288, 32.687561, 19.932352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.855461, 32.920120, 19.658489>,  <44.749966, 33.059658, 19.494171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.855461, 32.920120, 19.658489>,  <45.031288, 32.687561, 19.932352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.855461, 32.920120, 19.658489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791193, 0.110214, 0.601554,
		0.425203, 0.806118, 0.411554,
		-0.439564, 0.581401, -0.684658,
		44.723591, 33.094540, 19.453093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.824448, 33.207092, 20.294559>,  <45.031288, 32.687561, 19.932352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.824448, 33.207092, 20.294559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.615894, 33.263271, 19.957886>,  <44.490761, 33.296978, 19.755880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.615894, 33.263271, 19.957886>,  <44.824448, 33.207092, 20.294559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.615894, 33.263271, 19.957886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795746, 0.276155, 0.539005,
		0.308136, 0.950796, -0.032225,
		-0.521383, 0.140444, -0.841686,
		44.459480, 33.305405, 19.705379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.455086, 33.841633, 20.353350>,  <44.824448, 33.207092, 20.294559>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.455086, 33.841633, 20.353350> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.260864, 33.573082, 20.129391>,  <44.144333, 33.411949, 19.995014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.260864, 33.573082, 20.129391>,  <44.455086, 33.841633, 20.353350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.260864, 33.573082, 20.129391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787403, 0.057633, 0.613739,
		-0.379784, 0.738868, -0.556631,
		-0.485552, -0.671381, -0.559898,
		44.115200, 33.371666, 19.961422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.801910, 34.090202, 20.461737>,  <44.455086, 33.841633, 20.353350>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.801910, 34.090202, 20.461737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.759251, 33.718494, 20.320267>,  <43.733654, 33.495472, 20.235384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.759251, 33.718494, 20.320267>,  <43.801910, 34.090202, 20.461737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.759251, 33.718494, 20.320267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795275, -0.133777, 0.591305,
		-0.596795, 0.344333, -0.724756,
		-0.106650, -0.929268, -0.353676,
		43.727257, 33.439713, 20.214165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.157875, 34.041569, 20.113939>,  <43.801910, 34.090202, 20.461737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.157875, 34.041569, 20.113939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.255138, 33.670132, 20.226078>,  <43.313496, 33.447269, 20.293362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.255138, 33.670132, 20.226078>,  <43.157875, 34.041569, 20.113939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.255138, 33.670132, 20.226078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730377, 0.014912, 0.682882,
		-0.638299, -0.370805, -0.674595,
		0.243156, -0.928591, 0.280345,
		43.328087, 33.391556, 20.310183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.470295, 33.674911, 20.158758>,  <43.157875, 34.041569, 20.113939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.470295, 33.674911, 20.158758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.748497, 33.476631, 20.366817>,  <42.915417, 33.357662, 20.491653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.748497, 33.476631, 20.366817>,  <42.470295, 33.674911, 20.158758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.748497, 33.476631, 20.366817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581746, 0.036401, 0.812555,
		-0.421721, -0.867728, -0.263057,
		0.695502, -0.495704, 0.520149,
		42.957150, 33.327919, 20.522861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.078754, 33.289692, 20.580994>,  <42.470295, 33.674911, 20.158758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.078754, 33.289692, 20.580994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.443432, 33.305950, 20.744537>,  <42.662239, 33.315704, 20.842665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.443432, 33.305950, 20.744537>,  <42.078754, 33.289692, 20.580994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.443432, 33.305950, 20.744537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406541, -0.054919, 0.911980,
		0.059522, -0.997663, -0.033546,
		0.911691, 0.040645, 0.408860,
		42.716938, 33.318146, 20.867195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.459393, 33.560883, 20.284758>,  <42.078754, 33.289692, 20.580994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.459393, 33.560883, 20.284758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.158642, 33.765251, 20.118080>,  <40.978191, 33.887875, 20.018074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.158642, 33.765251, 20.118080>,  <41.459393, 33.560883, 20.284758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.158642, 33.765251, 20.118080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646841, 0.449374, -0.616165,
		-0.127564, -0.732816, -0.668362,
		-0.751880, 0.510925, -0.416692,
		40.933079, 33.918530, 19.993073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.542156, 33.460182, 19.530865>,  <41.459393, 33.560883, 20.284758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.542156, 33.460182, 19.530865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.316334, 33.788536, 19.565338>,  <41.180840, 33.985546, 19.586021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.316334, 33.788536, 19.565338>,  <41.542156, 33.460182, 19.530865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.316334, 33.788536, 19.565338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591332, 0.475101, -0.651618,
		-0.575846, -0.316914, -0.753636,
		-0.564560, 0.820881, 0.086184,
		41.146965, 34.034801, 19.591194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.394585, 33.675865, 18.847113>,  <41.542156, 33.460182, 19.530865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.394585, 33.675865, 18.847113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.340611, 33.993961, 19.083549>,  <41.308228, 34.184818, 19.225412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.340611, 33.993961, 19.083549>,  <41.394585, 33.675865, 18.847113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.340611, 33.993961, 19.083549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614966, 0.534964, -0.579337,
		-0.776923, 0.285330, -0.561229,
		-0.134935, 0.795236, 0.591093,
		41.300129, 34.232533, 19.260878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.510357, 34.202404, 18.411295>,  <41.394585, 33.675865, 18.847113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.510357, 34.202404, 18.411295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.536060, 34.378426, 18.769562>,  <41.551483, 34.484039, 18.984522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.536060, 34.378426, 18.769562>,  <41.510357, 34.202404, 18.411295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.536060, 34.378426, 18.769562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519967, 0.751297, -0.406431,
		-0.851765, 0.491836, -0.180534,
		0.064263, 0.440056, 0.895668,
		41.555340, 34.510441, 19.038261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.129047, 34.826458, 18.284441>,  <41.510357, 34.202404, 18.411295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.129047, 34.826458, 18.284441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.393341, 34.860992, 18.582695>,  <41.551918, 34.881714, 18.761648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.393341, 34.860992, 18.582695>,  <41.129047, 34.826458, 18.284441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.393341, 34.860992, 18.582695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522784, 0.659893, -0.539665,
		-0.538633, 0.746383, 0.390880,
		0.660736, 0.086335, 0.745637,
		41.591560, 34.886894, 18.806387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.289471, 35.481686, 18.359215>,  <41.129047, 34.826458, 18.284441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.289471, 35.481686, 18.359215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.603008, 35.346645, 18.567680>,  <41.791130, 35.265621, 18.692760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.603008, 35.346645, 18.567680>,  <41.289471, 35.481686, 18.359215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.603008, 35.346645, 18.567680> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595722, 0.645673, -0.477726,
		-0.175221, 0.684932, 0.707224,
		0.783845, -0.337601, 0.521165,
		41.838161, 35.245365, 18.724030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.578171, 36.054096, 18.667368>,  <41.289471, 35.481686, 18.359215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.578171, 36.054096, 18.667368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.862991, 35.773251, 18.665398>,  <42.033882, 35.604744, 18.664215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.862991, 35.773251, 18.665398>,  <41.578171, 36.054096, 18.667368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.862991, 35.773251, 18.665398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625262, 0.637270, -0.450482,
		0.319427, 0.317687, 0.892772,
		0.712049, -0.702113, -0.004924,
		42.076607, 35.562618, 18.663921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.160530, 36.408028, 18.699318>,  <41.578171, 36.054096, 18.667368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.160530, 36.408028, 18.699318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.296375, 36.049961, 18.583836>,  <42.377880, 35.835121, 18.514547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.296375, 36.049961, 18.583836>,  <42.160530, 36.408028, 18.699318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.296375, 36.049961, 18.583836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767384, 0.441190, -0.465267,
		0.543862, -0.063538, 0.836765,
		0.339610, -0.895162, -0.288704,
		42.398258, 35.781414, 18.497225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.850590, 36.298363, 18.915434>,  <42.160530, 36.408028, 18.699318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.850590, 36.298363, 18.915434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.788677, 36.063549, 18.597584>,  <42.751530, 35.922661, 18.406874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.788677, 36.063549, 18.597584>,  <42.850590, 36.298363, 18.915434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.788677, 36.063549, 18.597584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758549, 0.444699, -0.476283,
		0.632965, -0.676483, 0.376466,
		-0.154784, -0.587039, -0.794624,
		42.742241, 35.887436, 18.359196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.474247, 36.055080, 18.753439>,  <42.850590, 36.298363, 18.915434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.474247, 36.055080, 18.753439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.282360, 35.970173, 18.412895>,  <43.167229, 35.919228, 18.208569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.282360, 35.970173, 18.412895>,  <43.474247, 36.055080, 18.753439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.282360, 35.970173, 18.412895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868177, 0.025648, -0.495592,
		0.127033, -0.976875, 0.171981,
		-0.479720, -0.212267, -0.851359,
		43.138443, 35.906494, 18.157488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.814056, 35.519669, 18.418991>,  <43.474247, 36.055080, 18.753439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.814056, 35.519669, 18.418991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.620369, 35.688038, 18.112175>,  <43.504154, 35.789059, 17.928085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.620369, 35.688038, 18.112175>,  <43.814056, 35.519669, 18.418991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.620369, 35.688038, 18.112175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850630, 0.021236, -0.525336,
		-0.204836, -0.906849, -0.368331,
		-0.484222, 0.420921, -0.767043,
		43.475101, 35.814316, 17.882063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.169010, 35.210835, 17.906395>,  <43.814056, 35.519669, 18.418991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.169010, 35.210835, 17.906395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.990555, 35.523666, 17.732353>,  <43.883480, 35.711365, 17.627928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.990555, 35.523666, 17.732353>,  <44.169010, 35.210835, 17.906395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.990555, 35.523666, 17.732353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704708, 0.007299, -0.709460,
		-0.551676, -0.623140, -0.554392,
		-0.446139, 0.782076, -0.435105,
		43.856712, 35.758289, 17.601822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.121979, 35.022995, 17.249697>,  <44.169010, 35.210835, 17.906395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.121979, 35.022995, 17.249697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.081715, 35.420963, 17.249012>,  <44.057556, 35.659744, 17.248602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.081715, 35.420963, 17.249012>,  <44.121979, 35.022995, 17.249697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.081715, 35.420963, 17.249012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728820, 0.072569, -0.680849,
		-0.677266, -0.069785, -0.732422,
		-0.100664, 0.994919, -0.001712,
		44.051514, 35.719440, 17.248499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.195644, 35.255249, 16.530195>,  <44.121979, 35.022995, 17.249697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.195644, 35.255249, 16.530195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.281197, 35.601677, 16.710941>,  <44.332527, 35.809532, 16.819389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.281197, 35.601677, 16.710941>,  <44.195644, 35.255249, 16.530195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.281197, 35.601677, 16.710941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630532, 0.230913, -0.741019,
		-0.746114, 0.443403, -0.496697,
		0.213877, 0.866067, 0.451867,
		44.345360, 35.861496, 16.846502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.138580, 35.891521, 16.020815>,  <44.195644, 35.255249, 16.530195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.138580, 35.891521, 16.020815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.405884, 35.938213, 16.314701>,  <44.566265, 35.966228, 16.491034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.405884, 35.938213, 16.314701>,  <44.138580, 35.891521, 16.020815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.405884, 35.938213, 16.314701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705935, 0.212087, -0.675777,
		-0.234708, 0.970254, 0.059324,
		0.668257, 0.116732, 0.734715,
		44.606361, 35.973232, 16.535116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.687260, 36.136425, 15.572543>,  <44.138580, 35.891521, 16.020815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.687260, 36.136425, 15.572543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.823936, 36.108974, 15.947465>,  <44.905941, 36.092503, 16.172419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.823936, 36.108974, 15.947465>,  <44.687260, 36.136425, 15.572543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.823936, 36.108974, 15.947465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882571, 0.366177, -0.294928,
		-0.322979, 0.928011, 0.185688,
		0.341691, -0.068627, 0.937303,
		44.926445, 36.088387, 16.228657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.921741, 36.720818, 15.673493>,  <44.687260, 36.136425, 15.572543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.921741, 36.720818, 15.673493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.111546, 36.469288, 15.919881>,  <45.225426, 36.318371, 16.067713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.111546, 36.469288, 15.919881>,  <44.921741, 36.720818, 15.673493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.111546, 36.469288, 15.919881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878565, 0.295023, -0.375612,
		0.054470, 0.719400, 0.692457,
		0.474506, -0.628829, 0.615970,
		45.253899, 36.280640, 16.104671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.523083, 37.139149, 15.922975>,  <44.921741, 36.720818, 15.673493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.523083, 37.139149, 15.922975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.608826, 36.752575, 15.979632>,  <45.660271, 36.520630, 16.013628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.608826, 36.752575, 15.979632>,  <45.523083, 37.139149, 15.922975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.608826, 36.752575, 15.979632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911560, 0.145843, -0.384434,
		0.350870, 0.211525, 0.912221,
		0.214358, -0.966430, 0.141645,
		45.673134, 36.462646, 16.022125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.138855, 37.053802, 16.359486>,  <45.523083, 37.139149, 15.922975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.138855, 37.053802, 16.359486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.113811, 36.708954, 16.158356>,  <46.098785, 36.502045, 16.037678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.113811, 36.708954, 16.158356>,  <46.138855, 37.053802, 16.359486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.113811, 36.708954, 16.158356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981102, 0.039254, -0.189467,
		0.183081, -0.505183, 0.843369,
		-0.062610, -0.862119, -0.502823,
		46.095028, 36.450317, 16.007509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.726486, 36.864689, 16.406809>,  <46.138855, 37.053802, 16.359486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.726486, 36.864689, 16.406809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.622017, 36.583946, 16.141724>,  <46.559338, 36.415501, 15.982673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.622017, 36.583946, 16.141724>,  <46.726486, 36.864689, 16.406809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.622017, 36.583946, 16.141724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964544, -0.216792, -0.150522,
		-0.038026, -0.678528, 0.733590,
		-0.261170, -0.701856, -0.662714,
		46.543667, 36.373390, 15.942909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.950043, 36.133896, 16.594706>,  <46.726486, 36.864689, 16.406809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.950043, 36.133896, 16.594706> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.920013, 36.208160, 16.202808>,  <46.901997, 36.252720, 15.967670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.920013, 36.208160, 16.202808>,  <46.950043, 36.133896, 16.594706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.920013, 36.208160, 16.202808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983690, -0.147264, -0.103286,
		-0.163457, -0.971516, -0.171577,
		-0.075077, 0.185662, -0.979741,
		46.897491, 36.263859, 15.908886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<28.919376, 26.351570, 28.487358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.037922, 26.531967, 28.824112>,  <29.109049, 26.640205, 29.026165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.037922, 26.531967, 28.824112>,  <28.919376, 26.351570, 28.487358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.037922, 26.531967, 28.824112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209328, -0.829382, 0.517983,
		0.931853, -0.329742, -0.151392,
		0.296363, 0.450994, 0.841887,
		29.126831, 26.667265, 29.076677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.318237, 25.806438, 28.832567>,  <28.919376, 26.351570, 28.487358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.318237, 25.806438, 28.832567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.240870, 26.087830, 29.106125>,  <29.194448, 26.256664, 29.270260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.240870, 26.087830, 29.106125>,  <29.318237, 25.806438, 28.832567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.240870, 26.087830, 29.106125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013917, -0.698953, 0.715032,
		0.981017, 0.128784, 0.144982,
		-0.193421, 0.703477, 0.683893,
		29.182844, 26.298872, 29.311293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.758774, 25.614050, 29.350145>,  <29.318237, 25.806438, 28.832567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.758774, 25.614050, 29.350145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.495018, 25.851059, 29.535240>,  <29.336765, 25.993263, 29.646297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.495018, 25.851059, 29.535240>,  <29.758774, 25.614050, 29.350145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.495018, 25.851059, 29.535240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034166, -0.638485, 0.768876,
		0.751025, 0.491179, 0.441254,
		-0.659389, 0.592520, 0.462736,
		29.297201, 26.028814, 29.674061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.985821, 25.724527, 30.119419>,  <29.758774, 25.614050, 29.350145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.985821, 25.724527, 30.119419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.596157, 25.793938, 30.061592>,  <29.362358, 25.835583, 30.026896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.596157, 25.793938, 30.061592>,  <29.985821, 25.724527, 30.119419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.596157, 25.793938, 30.061592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222468, -0.626811, 0.746737,
		0.038962, 0.759604, 0.649218,
		-0.974161, 0.173525, -0.144565,
		29.303909, 25.845995, 30.018223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.745472, 25.981056, 30.727118>,  <29.985821, 25.724527, 30.119419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.745472, 25.981056, 30.727118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.429707, 25.828808, 30.534470>,  <29.240248, 25.737459, 30.418880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.429707, 25.828808, 30.534470>,  <29.745472, 25.981056, 30.727118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.429707, 25.828808, 30.534470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370095, -0.330854, 0.868082,
		-0.489754, 0.863519, 0.120315,
		-0.789412, -0.380619, -0.481621,
		29.192883, 25.714622, 30.389984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.239622, 26.096725, 31.228773>,  <29.745472, 25.981056, 30.727118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.239622, 26.096725, 31.228773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.095638, 25.836315, 30.961460>,  <29.009249, 25.680069, 30.801073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.095638, 25.836315, 30.961460>,  <29.239622, 26.096725, 31.228773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.095638, 25.836315, 30.961460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562787, -0.419782, 0.712077,
		-0.744111, 0.632418, -0.215283,
		-0.359958, -0.651023, -0.668280,
		28.987650, 25.641008, 30.760977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.589252, 26.072392, 31.460426>,  <29.239622, 26.096725, 31.228773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.589252, 26.072392, 31.460426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.695498, 25.738522, 31.267441>,  <28.759245, 25.538200, 31.151649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.695498, 25.738522, 31.267441>,  <28.589252, 26.072392, 31.460426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.695498, 25.738522, 31.267441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428855, -0.550493, 0.716269,
		-0.863443, 0.016658, -0.504171,
		0.265611, -0.834674, -0.482463,
		28.775181, 25.488119, 31.122702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.081577, 25.544971, 31.695787>,  <28.589252, 26.072392, 31.460426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.081577, 25.544971, 31.695787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.366510, 25.323006, 31.523903>,  <28.537470, 25.189827, 31.420773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.366510, 25.323006, 31.523903>,  <28.081577, 25.544971, 31.695787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.366510, 25.323006, 31.523903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225290, -0.760650, 0.608816,
		-0.664699, -0.336870, -0.666853,
		0.712334, -0.554915, -0.429710,
		28.580210, 25.156530, 31.394989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.775795, 24.930035, 31.560968>,  <28.081577, 25.544971, 31.695787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.775795, 24.930035, 31.560968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.169018, 24.858616, 31.577572>,  <28.404951, 24.815763, 31.587534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.169018, 24.858616, 31.577572>,  <27.775795, 24.930035, 31.560968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.169018, 24.858616, 31.577572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175995, -0.855975, 0.486141,
		-0.051268, -0.485209, -0.872894,
		0.983055, -0.178549, 0.041510,
		28.463934, 24.805052, 31.590025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.867208, 24.278316, 31.282337>,  <27.775795, 24.930035, 31.560968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.867208, 24.278316, 31.282337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.189238, 24.359909, 31.505138>,  <28.382456, 24.408865, 31.638819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.189238, 24.359909, 31.505138>,  <27.867208, 24.278316, 31.282337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.189238, 24.359909, 31.505138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044971, -0.915323, 0.400202,
		0.591469, -0.347240, -0.727728,
		0.805072, 0.203981, 0.557001,
		28.430759, 24.421103, 31.672239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.147240, 23.684946, 31.334129>,  <27.867208, 24.278316, 31.282337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.147240, 23.684946, 31.334129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.316729, 23.886292, 31.635349>,  <28.418421, 24.007099, 31.816082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.316729, 23.886292, 31.635349>,  <28.147240, 23.684946, 31.334129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.316729, 23.886292, 31.635349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079800, -0.807394, 0.584591,
		0.902271, -0.307797, -0.301941,
		0.423721, 0.503365, 0.753050,
		28.443844, 24.037300, 31.861265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.755281, 23.226400, 31.590443>,  <28.147240, 23.684946, 31.334129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.755281, 23.226400, 31.590443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.644850, 23.471935, 31.886276>,  <28.578590, 23.619257, 32.063778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.644850, 23.471935, 31.886276>,  <28.755281, 23.226400, 31.590443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.644850, 23.471935, 31.886276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163811, -0.788283, 0.593107,
		0.947073, 0.042592, 0.318181,
		-0.276078, 0.613837, 0.739584,
		28.562027, 23.656086, 32.108150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.594574, 23.056700, 32.273979>,  <28.755281, 23.226400, 31.590443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.594574, 23.056700, 32.273979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.330135, 22.956081, 31.991226>,  <28.171473, 22.895710, 31.821575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.330135, 22.956081, 31.991226>,  <28.594574, 23.056700, 32.273979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.330135, 22.956081, 31.991226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712823, -0.504610, -0.487086,
		-0.234174, -0.825890, 0.512902,
		-0.661095, -0.251545, -0.706880,
		28.131807, 22.880617, 31.779161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.425240, 22.353907, 32.264870>,  <28.594574, 23.056700, 32.273979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.425240, 22.353907, 32.264870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.399406, 22.526268, 31.904835>,  <28.383907, 22.629684, 31.688814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.399406, 22.526268, 31.904835>,  <28.425240, 22.353907, 32.264870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.399406, 22.526268, 31.904835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702499, -0.620974, -0.347688,
		-0.708748, -0.654762, -0.262606,
		-0.064581, 0.430904, -0.900084,
		28.380032, 22.655539, 31.634809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.174168, 22.351318, 31.935829>,  <28.425240, 22.353907, 32.264870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.174168, 22.351318, 31.935829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.280731, 22.051682, 31.693214>,  <29.344669, 21.871899, 31.547646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.280731, 22.051682, 31.693214>,  <29.174168, 22.351318, 31.935829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.280731, 22.051682, 31.693214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021151, 0.633670, -0.773314,
		0.963628, 0.193189, 0.184660,
		0.266409, -0.749093, -0.606536,
		29.360655, 21.826954, 31.511253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.485147, 22.733847, 31.425398>,  <29.174168, 22.351318, 31.935829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.485147, 22.733847, 31.425398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.523022, 22.373730, 31.255455>,  <29.545746, 22.157660, 31.153488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.523022, 22.373730, 31.255455>,  <29.485147, 22.733847, 31.425398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.523022, 22.373730, 31.255455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265662, 0.434151, -0.860777,
		0.959405, -0.031364, 0.280283,
		0.094688, -0.900294, -0.424858,
		29.551428, 22.103642, 31.127998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.084646, 22.763575, 31.129955>,  <29.485147, 22.733847, 31.425398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.084646, 22.763575, 31.129955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.880213, 22.476059, 30.941429>,  <29.757553, 22.303551, 30.828314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.880213, 22.476059, 30.941429>,  <30.084646, 22.763575, 31.129955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.880213, 22.476059, 30.941429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281519, 0.378113, -0.881917,
		0.812121, -0.583418, 0.009105,
		-0.511083, -0.718787, -0.471317,
		29.726889, 22.260424, 30.800034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.543772, 22.469563, 30.681444>,  <30.084646, 22.763575, 31.129955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.543772, 22.469563, 30.681444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.176657, 22.391891, 30.542904>,  <29.956388, 22.345289, 30.459780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.176657, 22.391891, 30.542904>,  <30.543772, 22.469563, 30.681444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.176657, 22.391891, 30.542904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243741, 0.413080, -0.877471,
		0.313458, -0.889753, -0.331790,
		-0.917788, -0.194179, -0.346352,
		29.901320, 22.333637, 30.438999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637539, 22.142941, 30.054516>,  <30.543772, 22.469563, 30.681444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.637539, 22.142941, 30.054516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.258051, 22.265461, 30.023254>,  <30.030357, 22.338974, 30.004498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.258051, 22.265461, 30.023254>,  <30.637539, 22.142941, 30.054516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.258051, 22.265461, 30.023254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169502, 0.284224, -0.943656,
		-0.266830, -0.908513, -0.321568,
		-0.948721, 0.306302, -0.078155,
		29.973434, 22.357351, 29.999807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.402407, 21.930988, 29.336182>,  <30.637539, 22.142941, 30.054516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.402407, 21.930988, 29.336182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.195017, 22.234940, 29.493034>,  <30.070583, 22.417311, 29.587147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.195017, 22.234940, 29.493034>,  <30.402407, 21.930988, 29.336182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.195017, 22.234940, 29.493034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131513, 0.523991, -0.841509,
		-0.844919, -0.384730, -0.371610,
		-0.518475, 0.759879, 0.392133,
		30.039474, 22.462904, 29.610674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.116026, 22.173508, 28.722080>,  <30.402407, 21.930988, 29.336182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.116026, 22.173508, 28.722080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.035870, 22.459263, 28.990257>,  <29.987776, 22.630716, 29.151163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.035870, 22.459263, 28.990257>,  <30.116026, 22.173508, 28.722080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.035870, 22.459263, 28.990257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302370, 0.696015, -0.651257,
		-0.931888, 0.072216, -0.355484,
		-0.200391, 0.714386, 0.670444,
		29.975752, 22.673578, 29.191391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.612736, 22.646315, 28.455715>,  <30.116026, 22.173508, 28.722080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.612736, 22.646315, 28.455715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.810265, 22.845642, 28.740761>,  <29.928782, 22.965239, 28.911789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.810265, 22.845642, 28.740761>,  <29.612736, 22.646315, 28.455715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.810265, 22.845642, 28.740761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226047, 0.717771, -0.658565,
		-0.839669, 0.486298, 0.241807,
		0.493821, 0.498317, 0.712616,
		29.958410, 22.995136, 28.954546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.349110, 23.309765, 28.457157>,  <29.612736, 22.646315, 28.455715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.349110, 23.309765, 28.457157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.714540, 23.340874, 28.616821>,  <29.933800, 23.359539, 28.712620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.714540, 23.340874, 28.616821>,  <29.349110, 23.309765, 28.457157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.714540, 23.340874, 28.616821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168352, 0.821157, -0.545307,
		-0.370184, 0.565379, 0.737096,
		0.913576, 0.077772, 0.399161,
		29.988613, 23.364206, 28.736570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.368433, 23.994980, 28.636181>,  <29.349110, 23.309765, 28.457157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.368433, 23.994980, 28.636181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.748400, 23.872078, 28.613365>,  <29.976379, 23.798336, 28.599676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.748400, 23.872078, 28.613365>,  <29.368433, 23.994980, 28.636181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.748400, 23.872078, 28.613365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236439, 0.825973, -0.511728,
		0.204344, 0.472612, 0.857252,
		0.949916, -0.307256, -0.057038,
		30.033375, 23.779902, 28.596254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.706707, 24.579338, 28.662052>,  <29.368433, 23.994980, 28.636181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.706707, 24.579338, 28.662052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.976503, 24.325768, 28.510685>,  <30.138382, 24.173626, 28.419865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.976503, 24.325768, 28.510685>,  <29.706707, 24.579338, 28.662052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.976503, 24.325768, 28.510685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355217, 0.727988, -0.586391,
		0.647210, 0.261097, 0.716203,
		0.674492, -0.633926, -0.378416,
		30.178850, 24.135590, 28.397160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.400726, 24.824930, 28.903728>,  <29.706707, 24.579338, 28.662052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.400726, 24.824930, 28.903728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.445328, 24.593506, 28.580536>,  <30.472090, 24.454651, 28.386621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.445328, 24.593506, 28.580536>,  <30.400726, 24.824930, 28.903728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.445328, 24.593506, 28.580536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297141, 0.795265, -0.528452,
		0.948300, -0.181159, 0.260591,
		0.111505, -0.578563, -0.807980,
		30.478779, 24.419937, 28.338142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.876289, 25.196146, 28.517931>,  <30.400726, 24.824930, 28.903728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.876289, 25.196146, 28.517931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.764904, 24.916954, 28.254028>,  <30.698072, 24.749439, 28.095686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.764904, 24.916954, 28.254028>,  <30.876289, 25.196146, 28.517931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.764904, 24.916954, 28.254028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286899, 0.595115, -0.750684,
		0.916596, -0.398321, 0.034533,
		-0.278462, -0.697981, -0.659758,
		30.681366, 24.707560, 28.056101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.500036, 24.891031, 28.089994>,  <30.876289, 25.196146, 28.517931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.500036, 24.891031, 28.089994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.147917, 24.885159, 27.900318>,  <30.936646, 24.881636, 27.786512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.147917, 24.885159, 27.900318>,  <31.500036, 24.891031, 28.089994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.147917, 24.885159, 27.900318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418419, 0.447068, -0.790605,
		0.223599, -0.894380, -0.387412,
		-0.880300, -0.014678, -0.474190,
		30.883827, 24.880754, 27.758060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285629, 24.632952, 28.083193>,  <31.500036, 24.891031, 28.089994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285629, 24.632952, 28.083193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.576145, 24.864861, 28.230907>,  <32.750454, 25.004005, 28.319536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.576145, 24.864861, 28.230907>,  <32.285629, 24.632952, 28.083193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576145, 24.864861, 28.230907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125243, -0.416625, 0.900410,
		0.675887, -0.700206, -0.229977,
		0.726286, 0.579772, 0.369287,
		32.794029, 25.038792, 28.341694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628731, 24.202091, 28.436068>,  <32.285629, 24.632952, 28.083193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628731, 24.202091, 28.436068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.768436, 24.538227, 28.601883>,  <32.852261, 24.739908, 28.701372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.768436, 24.538227, 28.601883>,  <32.628731, 24.202091, 28.436068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.768436, 24.538227, 28.601883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002027, -0.443076, 0.896482,
		0.937021, -0.312272, -0.156456,
		0.349268, 0.840339, 0.414538,
		32.873219, 24.790329, 28.726244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111401, 24.028456, 28.886930>,  <32.628731, 24.202091, 28.436068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111401, 24.028456, 28.886930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.024128, 24.397102, 29.015320>,  <32.971764, 24.618290, 29.092354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.024128, 24.397102, 29.015320>,  <33.111401, 24.028456, 28.886930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024128, 24.397102, 29.015320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026710, -0.323133, 0.945977,
		0.975543, 0.214967, 0.045885,
		-0.218181, 0.921615, 0.320971,
		32.958675, 24.673588, 29.111610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557266, 24.205507, 29.466391>,  <33.111401, 24.028456, 28.886930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557266, 24.205507, 29.466391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.222279, 24.423550, 29.481911>,  <33.021286, 24.554375, 29.491222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.222279, 24.423550, 29.481911>,  <33.557266, 24.205507, 29.466391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222279, 24.423550, 29.481911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194647, -0.363880, 0.910881,
		0.510643, 0.755283, 0.410842,
		-0.837470, 0.545105, 0.038799,
		32.971039, 24.587082, 29.493551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455399, 24.365183, 30.125326>,  <33.557266, 24.205507, 29.466391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455399, 24.365183, 30.125326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.084717, 24.436085, 29.992783>,  <32.862309, 24.478626, 29.913258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.084717, 24.436085, 29.992783>,  <33.455399, 24.365183, 30.125326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084717, 24.436085, 29.992783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375778, -0.430722, 0.820530,
		0.002720, 0.884906, 0.465761,
		-0.926706, 0.177255, -0.331357,
		32.806705, 24.489262, 29.893375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120163, 24.700424, 30.668003>,  <33.455399, 24.365183, 30.125326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120163, 24.700424, 30.668003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.815842, 24.574451, 30.441025>,  <32.633247, 24.498867, 30.304838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.815842, 24.574451, 30.441025>,  <33.120163, 24.700424, 30.668003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815842, 24.574451, 30.441025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328642, -0.567006, 0.755314,
		-0.559620, 0.761131, 0.327879,
		-0.760802, -0.314934, -0.567448,
		32.587601, 24.479971, 30.270790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561909, 24.643572, 31.203484>,  <33.120163, 24.700424, 30.668003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561909, 24.643572, 31.203484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.420151, 24.422859, 30.901505>,  <32.335098, 24.290432, 30.720318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.420151, 24.422859, 30.901505>,  <32.561909, 24.643572, 31.203484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420151, 24.422859, 30.901505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315875, -0.689250, 0.652041,
		-0.880131, 0.469546, 0.069971,
		-0.354391, -0.551780, -0.754948,
		32.313835, 24.257326, 30.675020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346897, 25.109821, 31.802691>,  <32.561909, 24.643572, 31.203484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346897, 25.109821, 31.802691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.675678, 25.145359, 32.027725>,  <32.872948, 25.166681, 32.162746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.675678, 25.145359, 32.027725>,  <32.346897, 25.109821, 31.802691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675678, 25.145359, 32.027725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355291, 0.692038, -0.628373,
		-0.445159, 0.716373, 0.537255,
		0.821950, 0.088844, 0.562587,
		32.922264, 25.172012, 32.196503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.420227, 25.880651, 31.890608>,  <32.346897, 25.109821, 31.802691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.420227, 25.880651, 31.890608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.775433, 25.698849, 31.918468>,  <32.988556, 25.589767, 31.935184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.775433, 25.698849, 31.918468>,  <32.420227, 25.880651, 31.890608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775433, 25.698849, 31.918468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390519, 0.665522, -0.636062,
		0.242742, 0.592032, 0.768488,
		0.888015, -0.454509, 0.069650,
		33.041836, 25.562496, 31.939363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.968597, 26.413809, 31.939247>,  <32.420227, 25.880651, 31.890608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.968597, 26.413809, 31.939247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.189606, 26.100708, 31.824696>,  <33.322212, 25.912848, 31.755964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.189606, 26.100708, 31.824696>,  <32.968597, 26.413809, 31.939247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189606, 26.100708, 31.824696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475697, 0.578275, -0.662805,
		0.684419, 0.229987, 0.691865,
		0.552525, -0.782754, -0.286378,
		33.355362, 25.865881, 31.738783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615047, 26.638115, 31.925026>,  <32.968597, 26.413809, 31.939247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615047, 26.638115, 31.925026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.637188, 26.314007, 31.691650>,  <33.650475, 26.119541, 31.551626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.637188, 26.314007, 31.691650>,  <33.615047, 26.638115, 31.925026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637188, 26.314007, 31.691650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592500, 0.496987, -0.633994,
		0.803666, -0.310591, 0.507595,
		0.055355, -0.810270, -0.583437,
		33.653793, 26.070927, 31.516619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296440, 26.627989, 31.582802>,  <33.615047, 26.638115, 31.925026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296440, 26.627989, 31.582802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.075684, 26.395409, 31.343693>,  <33.943230, 26.255861, 31.200228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.075684, 26.395409, 31.343693>,  <34.296440, 26.627989, 31.582802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075684, 26.395409, 31.343693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252371, 0.566755, -0.784282,
		0.794810, -0.583700, -0.166047,
		-0.551893, -0.581450, -0.597771,
		33.910114, 26.220974, 31.164362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780666, 26.457531, 31.023628>,  <34.296440, 26.627989, 31.582802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780666, 26.457531, 31.023628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.411472, 26.378460, 30.891556>,  <34.189957, 26.331017, 30.812313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.411472, 26.378460, 30.891556>,  <34.780666, 26.457531, 31.023628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411472, 26.378460, 30.891556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227544, 0.411600, -0.882502,
		0.310350, -0.889669, -0.334922,
		-0.922988, -0.197675, -0.330179,
		34.134575, 26.319157, 30.792501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874184, 26.066849, 30.436256>,  <34.780666, 26.457531, 31.023628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874184, 26.066849, 30.436256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.504429, 26.211185, 30.386772>,  <34.282578, 26.297787, 30.357082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.504429, 26.211185, 30.386772>,  <34.874184, 26.066849, 30.436256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504429, 26.211185, 30.386772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265440, 0.375560, -0.887973,
		-0.273957, -0.853667, -0.442944,
		-0.924386, 0.360842, -0.123710,
		34.227112, 26.319439, 30.349659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<29.233435, 26.215506, 34.018261> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.100069, 25.949059, 33.751392>,  <29.020050, 25.789190, 33.591270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.100069, 25.949059, 33.751392>,  <29.233435, 26.215506, 34.018261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.100069, 25.949059, 33.751392> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533191, 0.450395, -0.716136,
		0.777524, -0.594501, 0.205001,
		-0.333413, -0.666118, -0.667176,
		29.000046, 25.749224, 33.551239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.781658, 25.941168, 33.666595>,  <29.233435, 26.215506, 34.018261>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.781658, 25.941168, 33.666595> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.463026, 25.930584, 33.425014>,  <29.271847, 25.924232, 33.280067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.463026, 25.930584, 33.425014>,  <29.781658, 25.941168, 33.666595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.463026, 25.930584, 33.425014> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478550, 0.582845, -0.656720,
		0.369388, -0.812152, -0.451620,
		-0.796582, -0.026462, -0.603952,
		29.224052, 25.922646, 33.243828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.116486, 26.007065, 33.022896>,  <29.781658, 25.941168, 33.666595>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.116486, 26.007065, 33.022896> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.731462, 26.099277, 32.965858>,  <29.500448, 26.154606, 32.931637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.731462, 26.099277, 32.965858>,  <30.116486, 26.007065, 33.022896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.731462, 26.099277, 32.965858> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267401, 0.721266, -0.638962,
		-0.044453, -0.653169, -0.755907,
		-0.962560, 0.230533, -0.142596,
		29.442694, 26.168438, 32.923080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.124195, 26.257261, 32.256985>,  <30.116486, 26.007065, 33.022896>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.124195, 26.257261, 32.256985> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.772228, 26.365829, 32.412971>,  <29.561049, 26.430971, 32.506565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.772228, 26.365829, 32.412971>,  <30.124195, 26.257261, 32.256985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.772228, 26.365829, 32.412971> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016087, 0.837317, -0.546481,
		-0.474855, -0.474584, -0.741136,
		-0.879917, 0.271422, 0.389969,
		29.508253, 26.447256, 32.529961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.653002, 26.487051, 31.663618>,  <30.124195, 26.257261, 32.256985>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.653002, 26.487051, 31.663618> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.548847, 26.666714, 32.005486>,  <29.486355, 26.774511, 32.210606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.548847, 26.666714, 32.005486>,  <29.653002, 26.487051, 31.663618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.548847, 26.666714, 32.005486> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070667, 0.891695, -0.447086,
		-0.962915, -0.056019, -0.263927,
		-0.260388, 0.449157, 0.854667,
		29.470730, 26.801460, 32.261887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.323551, 27.055492, 31.452133>,  <29.653002, 26.487051, 31.663618>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.323551, 27.055492, 31.452133> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.388048, 27.148666, 31.835747>,  <29.426746, 27.204571, 32.065914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.388048, 27.148666, 31.835747>,  <29.323551, 27.055492, 31.452133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.388048, 27.148666, 31.835747> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127339, 0.968535, -0.213832,
		-0.978665, -0.087644, 0.185830,
		0.161241, 0.232934, 0.959033,
		29.436420, 27.218546, 32.123455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.830633, 27.646019, 31.618725>,  <29.323551, 27.055492, 31.452133>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.830633, 27.646019, 31.618725> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.143240, 27.630775, 31.867813>,  <29.330803, 27.621630, 32.017265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.143240, 27.630775, 31.867813>,  <28.830633, 27.646019, 31.618725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.143240, 27.630775, 31.867813> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134952, 0.984828, -0.109095,
		-0.609115, 0.169297, 0.774802,
		0.781516, -0.038110, 0.622720,
		29.377695, 27.619343, 32.054630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.706945, 28.174290, 32.197052>,  <28.830633, 27.646019, 31.618725>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.706945, 28.174290, 32.197052> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.099342, 28.103661, 32.164860>,  <29.334780, 28.061283, 32.145546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.099342, 28.103661, 32.164860>,  <28.706945, 28.174290, 32.197052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.099342, 28.103661, 32.164860> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169634, 0.981729, -0.086214,
		0.094231, 0.070924, 0.993021,
		0.980992, -0.176574, -0.080478,
		29.393641, 28.050688, 32.140717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.061174, 28.776737, 32.515766>,  <28.706945, 28.174290, 32.197052>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.061174, 28.776737, 32.515766> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.382387, 28.607353, 32.348042>,  <29.575115, 28.505722, 32.247406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.382387, 28.607353, 32.348042>,  <29.061174, 28.776737, 32.515766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.382387, 28.607353, 32.348042> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419743, 0.901380, -0.106444,
		0.423035, -0.090525, 0.901580,
		0.803030, -0.423462, -0.419312,
		29.623297, 28.480314, 32.222248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.652714, 29.181982, 32.759525>,  <29.061174, 28.776737, 32.515766>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.652714, 29.181982, 32.759525> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.764828, 29.007542, 32.417473>,  <29.832096, 28.902878, 32.212242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.764828, 29.007542, 32.417473>,  <29.652714, 29.181982, 32.759525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.764828, 29.007542, 32.417473> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410612, 0.859697, -0.303840,
		0.867661, -0.265966, 0.420030,
		0.280287, -0.436100, -0.855135,
		29.848913, 28.876711, 32.160931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.274548, 29.426273, 32.734646>,  <29.652714, 29.181982, 32.759525>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.274548, 29.426273, 32.734646> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.212690, 29.301502, 32.359673>,  <30.175575, 29.226639, 32.134689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.212690, 29.301502, 32.359673>,  <30.274548, 29.426273, 32.734646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.212690, 29.301502, 32.359673> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530021, 0.774556, -0.345165,
		0.833764, -0.550239, 0.045548,
		-0.154644, -0.311928, -0.937436,
		30.166298, 29.207924, 32.078442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.825027, 29.655914, 32.438343>,  <30.274548, 29.426273, 32.734646>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.825027, 29.655914, 32.438343> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.563231, 29.590843, 32.142998>,  <30.406153, 29.551800, 31.965792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.563231, 29.590843, 32.142998>,  <30.825027, 29.655914, 32.438343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.563231, 29.590843, 32.142998> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348870, 0.801421, -0.485814,
		0.670769, -0.575553, -0.467769,
		-0.654491, -0.162679, -0.738361,
		30.366882, 29.542040, 31.921490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.429903, 29.225248, 32.166279>,  <30.825027, 29.655914, 32.438343>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.429903, 29.225248, 32.166279> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.817839, 29.187153, 32.256027>,  <32.050598, 29.164295, 32.309875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.817839, 29.187153, 32.256027>,  <31.429903, 29.225248, 32.166279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.817839, 29.187153, 32.256027> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222503, -0.721776, 0.655387,
		0.099526, -0.685543, -0.721198,
		0.969839, -0.095240, 0.224371,
		32.108791, 29.158581, 32.323338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.536722, 28.529285, 32.248466>,  <31.429903, 29.225248, 32.166279>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.536722, 28.529285, 32.248466> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.854044, 28.680897, 32.439049>,  <32.044437, 28.771864, 32.553398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.854044, 28.680897, 32.439049>,  <31.536722, 28.529285, 32.248466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854044, 28.680897, 32.439049> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052540, -0.822275, 0.566660,
		0.606555, -0.424501, -0.672227,
		0.793303, 0.379029, 0.476452,
		32.092033, 28.794605, 32.581985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878592, 27.949493, 32.431366>,  <31.536722, 28.529285, 32.248466>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878592, 27.949493, 32.431366> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.048294, 28.220039, 32.672211>,  <32.150116, 28.382366, 32.816719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.048294, 28.220039, 32.672211>,  <31.878592, 27.949493, 32.431366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048294, 28.220039, 32.672211> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100999, -0.696113, 0.710793,
		0.899893, -0.240745, -0.363641,
		0.424255, 0.676365, 0.602111,
		32.175571, 28.422949, 32.852844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514332, 27.568991, 32.586845>,  <31.878592, 27.949493, 32.431366>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514332, 27.568991, 32.586845> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.443470, 27.856689, 32.855560>,  <32.400955, 28.029308, 33.016788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.443470, 27.856689, 32.855560>,  <32.514332, 27.568991, 32.586845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443470, 27.856689, 32.855560> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257081, -0.625068, 0.737020,
		0.950014, 0.303269, -0.074172,
		-0.177153, 0.719248, 0.671789,
		32.390324, 28.072464, 33.057098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069893, 27.712309, 32.999725>,  <32.514332, 27.568991, 32.586845>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069893, 27.712309, 32.999725> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.778614, 27.852013, 33.235603>,  <32.603848, 27.935835, 33.377129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.778614, 27.852013, 33.235603>,  <33.069893, 27.712309, 32.999725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778614, 27.852013, 33.235603> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360601, -0.536442, 0.763018,
		0.582830, 0.768275, 0.264693,
		-0.728201, 0.349261, 0.589695,
		32.560154, 27.956791, 33.412514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342319, 27.604872, 33.599010>,  <33.069893, 27.712309, 32.999725>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342319, 27.604872, 33.599010> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.965683, 27.672459, 33.715534>,  <32.739700, 27.713011, 33.785450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.965683, 27.672459, 33.715534>,  <33.342319, 27.604872, 33.599010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965683, 27.672459, 33.715534> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172077, -0.502173, 0.847474,
		0.289482, 0.848099, 0.443765,
		-0.941589, 0.168966, 0.291309,
		32.683205, 27.723148, 33.802925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477772, 27.633579, 34.306049>,  <33.342319, 27.604872, 33.599010>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477772, 27.633579, 34.306049> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.081280, 27.584831, 34.285610>,  <32.843384, 27.555582, 34.273346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.081280, 27.584831, 34.285610>,  <33.477772, 27.633579, 34.306049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081280, 27.584831, 34.285610> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029264, -0.579528, 0.814427,
		-0.128869, 0.805788, 0.578012,
		-0.991230, -0.121869, -0.051103,
		32.783913, 27.548271, 34.270279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161987, 27.787363, 34.987442>,  <33.477772, 27.633579, 34.306049>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161987, 27.787363, 34.987442> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.889179, 27.566936, 34.795120>,  <32.725494, 27.434681, 34.679726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.889179, 27.566936, 34.795120>,  <33.161987, 27.787363, 34.987442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889179, 27.566936, 34.795120> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108928, -0.573559, 0.811889,
		-0.723175, 0.606098, 0.331152,
		-0.682020, -0.551067, -0.480805,
		32.684574, 27.401617, 34.650879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716087, 27.464943, 35.505070>,  <33.161987, 27.787363, 34.987442>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716087, 27.464943, 35.505070> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.620693, 27.245529, 35.184513>,  <32.563457, 27.113880, 34.992180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.620693, 27.245529, 35.184513>,  <32.716087, 27.464943, 35.505070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620693, 27.245529, 35.184513> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149421, -0.794653, 0.588388,
		-0.959582, 0.260068, 0.107553,
		-0.238488, -0.548535, -0.801394,
		32.549149, 27.080969, 34.944096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.918253, 27.083817, 35.603703>,  <32.716087, 27.464943, 35.505070>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.918253, 27.083817, 35.603703> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.143158, 26.870644, 35.350769>,  <32.278103, 26.742741, 35.199009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.143158, 26.870644, 35.350769>,  <31.918253, 27.083817, 35.603703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.143158, 26.870644, 35.350769> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275172, -0.841646, 0.464663,
		-0.779834, -0.087263, -0.619874,
		0.562263, -0.532932, -0.632332,
		32.311836, 26.710764, 35.161068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.511019, 26.458994, 35.418343>,  <31.918253, 27.083817, 35.603703>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.511019, 26.458994, 35.418343> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.881079, 26.367188, 35.297401>,  <32.103115, 26.312103, 35.224834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.881079, 26.367188, 35.297401>,  <31.511019, 26.458994, 35.418343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.881079, 26.367188, 35.297401> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173975, -0.964296, 0.199664,
		-0.337388, -0.132116, -0.932049,
		0.925150, -0.229517, -0.302357,
		32.158623, 26.298332, 35.206696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.398815, 25.889158, 35.034679>,  <31.511019, 26.458994, 35.418343>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.398815, 25.889158, 35.034679> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.784128, 25.864197, 35.139133>,  <32.015316, 25.849220, 35.201805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.784128, 25.864197, 35.139133>,  <31.398815, 25.889158, 35.034679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.784128, 25.864197, 35.139133> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089468, -0.991631, 0.093074,
		0.253138, -0.113020, -0.960806,
		0.963284, -0.062401, 0.261131,
		32.073112, 25.845476, 35.217472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.803865, 25.323128, 34.605053>,  <31.398815, 25.889158, 35.034679>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.803865, 25.323128, 34.605053> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.035072, 25.376598, 34.927052>,  <32.173798, 25.408680, 35.120251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.035072, 25.376598, 34.927052>,  <31.803865, 25.323128, 34.605053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035072, 25.376598, 34.927052> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057453, -0.977377, 0.203552,
		0.813999, -0.163906, -0.557262,
		0.578019, 0.133675, 0.805000,
		32.208477, 25.416700, 35.168552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133179, 24.753117, 34.565125>,  <31.803865, 25.323128, 34.605053>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133179, 24.753117, 34.565125> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.148407, 24.891483, 34.940121>,  <32.157543, 24.974503, 35.165119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.148407, 24.891483, 34.940121>,  <32.133179, 24.753117, 34.565125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.148407, 24.891483, 34.940121> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120256, -0.929769, 0.347949,
		0.992013, -0.125986, 0.006201,
		0.038071, 0.345916, 0.937493,
		32.159828, 24.995258, 35.221367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755062, 24.514210, 35.108612>,  <32.133179, 24.753117, 34.565125>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755062, 24.514210, 35.108612> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.737553, 24.167267, 34.910309>,  <32.727047, 23.959101, 34.791328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.737553, 24.167267, 34.910309>,  <32.755062, 24.514210, 35.108612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.737553, 24.167267, 34.910309> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219844, 0.475706, -0.851688,
		0.974553, -0.146269, 0.169860,
		-0.043772, -0.867358, -0.495757,
		32.724422, 23.907059, 34.761581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384254, 24.449701, 34.726318>,  <32.755062, 24.514210, 35.108612>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384254, 24.449701, 34.726318> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.110771, 24.229347, 34.534874>,  <32.946682, 24.097134, 34.420006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.110771, 24.229347, 34.534874>,  <33.384254, 24.449701, 34.726318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110771, 24.229347, 34.534874> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331654, 0.349646, -0.876215,
		0.650041, -0.757807, -0.056351,
		-0.683705, -0.550887, -0.478614,
		32.905659, 24.064081, 34.391289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639263, 24.364725, 34.213158>,  <33.384254, 24.449701, 34.726318>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639263, 24.364725, 34.213158> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.269897, 24.270267, 34.092136>,  <33.048279, 24.213593, 34.019524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.269897, 24.270267, 34.092136>,  <33.639263, 24.364725, 34.213158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269897, 24.270267, 34.092136> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212407, 0.342133, -0.915329,
		0.319651, -0.909498, -0.265777,
		-0.923421, -0.236133, -0.302547,
		32.992870, 24.199425, 34.001369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660698, 24.093493, 33.531418>,  <33.639263, 24.364725, 34.213158>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660698, 24.093493, 33.531418> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.264633, 24.149349, 33.535126>,  <33.026997, 24.182863, 33.537350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.264633, 24.149349, 33.535126>,  <33.660698, 24.093493, 33.531418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264633, 24.149349, 33.535126> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033444, 0.300431, -0.953217,
		-0.135896, -0.943526, -0.302145,
		-0.990159, 0.139644, 0.009272,
		32.967587, 24.191242, 33.537907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370331, 23.794477, 32.838936>,  <33.660698, 24.093493, 33.531418>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370331, 23.794477, 32.838936> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.142941, 24.079456, 33.003498>,  <33.006508, 24.250444, 33.102238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.142941, 24.079456, 33.003498>,  <33.370331, 23.794477, 32.838936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142941, 24.079456, 33.003498> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008261, 0.504990, -0.863086,
		-0.822661, -0.487241, -0.292958,
		-0.568472, 0.712447, 0.411410,
		32.972401, 24.293190, 33.126923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.823910, 23.921087, 32.377945>,  <33.370331, 23.794477, 32.838936>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.823910, 23.921087, 32.377945> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.850922, 24.257309, 32.592945>,  <32.867130, 24.459042, 32.721947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.850922, 24.257309, 32.592945>,  <32.823910, 23.921087, 32.377945>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.850922, 24.257309, 32.592945> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005699, 0.539047, -0.842257,
		-0.997701, 0.053817, 0.041194,
		0.067534, 0.840555, 0.537501,
		32.871181, 24.509476, 32.754196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347042, 24.435360, 32.146214>,  <32.823910, 23.921087, 32.377945>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347042, 24.435360, 32.146214> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.616199, 24.649330, 32.350590>,  <32.777695, 24.777712, 32.473217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.616199, 24.649330, 32.350590>,  <32.347042, 24.435360, 32.146214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616199, 24.649330, 32.350590> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131380, 0.593309, -0.794181,
		-0.727976, 0.601529, 0.328957,
		0.672897, 0.534927, 0.510944,
		32.818069, 24.809809, 32.503872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.935003, 24.395937, 31.423580>,  <32.347042, 24.435360, 32.146214>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.935003, 24.395937, 31.423580> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.022373, 24.159988, 31.112621>,  <32.074795, 24.018419, 30.926046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.022373, 24.159988, 31.112621>,  <31.935003, 24.395937, 31.423580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.022373, 24.159988, 31.112621> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376167, -0.785961, 0.490677,
		-0.900438, 0.185254, -0.393564,
		0.218425, -0.589870, -0.777395,
		32.087902, 23.983027, 30.879402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.328123, 23.926903, 31.310911>,  <31.935003, 24.395937, 31.423580>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.328123, 23.926903, 31.310911> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.643089, 23.750885, 31.138245>,  <31.832069, 23.645275, 31.034645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.643089, 23.750885, 31.138245>,  <31.328123, 23.926903, 31.310911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.643089, 23.750885, 31.138245> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315150, -0.889224, 0.331604,
		-0.529768, -0.125071, -0.838870,
		0.787417, -0.440043, -0.431667,
		31.879314, 23.618872, 31.008745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.100756, 23.328386, 30.962740>,  <31.328123, 23.926903, 31.310911>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.100756, 23.328386, 30.962740> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.490332, 23.250950, 31.010002>,  <31.724077, 23.204489, 31.038359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.490332, 23.250950, 31.010002>,  <31.100756, 23.328386, 30.962740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490332, 23.250950, 31.010002> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222674, -0.915130, 0.336085,
		0.043065, -0.353637, -0.934391,
		0.973941, -0.193591, 0.118156,
		31.782515, 23.192873, 31.045448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.208565, 22.716087, 30.751062>,  <31.100756, 23.328386, 30.962740>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.208565, 22.716087, 30.751062> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.508541, 22.788303, 31.005619>,  <31.688526, 22.831633, 31.158354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.508541, 22.788303, 31.005619>,  <31.208565, 22.716087, 30.751062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.508541, 22.788303, 31.005619> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114224, -0.912244, 0.393401,
		0.651569, -0.367718, -0.663507,
		0.749941, 0.180539, 0.636392,
		31.733524, 22.842464, 31.196537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.383953, 22.105135, 30.937801>,  <31.208565, 22.716087, 30.751062>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.383953, 22.105135, 30.937801> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.577637, 22.290215, 31.234840>,  <31.693848, 22.401262, 31.413063>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.577637, 22.290215, 31.234840>,  <31.383953, 22.105135, 30.937801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.577637, 22.290215, 31.234840> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007899, -0.846383, 0.532516,
		0.874917, -0.263715, -0.406171,
		0.484208, 0.462699, 0.742598,
		31.722898, 22.429024, 31.457621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945776, 21.719353, 31.066376>,  <31.383953, 22.105135, 30.937801>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945776, 21.719353, 31.066376> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.895834, 21.934505, 31.399864>,  <31.865868, 22.063597, 31.599958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.895834, 21.934505, 31.399864>,  <31.945776, 21.719353, 31.066376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.895834, 21.934505, 31.399864> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046186, -0.836237, 0.546420,
		0.991099, 0.106730, 0.079567,
		-0.124857, 0.537881, 0.833723,
		31.858377, 22.095869, 31.649981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.343555, 21.418787, 31.540426>,  <31.945776, 21.719353, 31.066376>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.343555, 21.418787, 31.540426> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.114758, 21.620407, 31.799271>,  <31.977478, 21.741379, 31.954576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.114758, 21.620407, 31.799271>,  <32.343555, 21.418787, 31.540426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114758, 21.620407, 31.799271> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019913, -0.780148, 0.625279,
		0.820014, 0.370543, 0.436205,
		-0.571997, 0.504051, 0.647110,
		31.943159, 21.771622, 31.993404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646656, 21.224899, 32.271847>,  <32.343555, 21.418787, 31.540426>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646656, 21.224899, 32.271847> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.278519, 21.378609, 32.300953>,  <32.057636, 21.470835, 32.318417>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.278519, 21.378609, 32.300953>,  <32.646656, 21.224899, 32.271847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.278519, 21.378609, 32.300953> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266746, -0.752806, 0.601772,
		0.286022, 0.534430, 0.795346,
		-0.920347, 0.384275, 0.072762,
		32.002415, 21.493891, 32.322781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446724, 21.190891, 32.967411>,  <32.646656, 21.224899, 32.271847>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446724, 21.190891, 32.967411> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.091621, 21.219212, 32.785480>,  <31.878559, 21.236204, 32.676323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.091621, 21.219212, 32.785480>,  <32.446724, 21.190891, 32.967411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.091621, 21.219212, 32.785480> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369396, -0.699135, 0.612174,
		-0.274644, 0.711476, 0.646817,
		-0.887760, 0.070801, -0.454830,
		31.825293, 21.240452, 32.649033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.429981, 32.586590, 21.364042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.032383, 32.562752, 21.327316>,  <33.793823, 32.548450, 21.305281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.032383, 32.562752, 21.327316>,  <34.429981, 32.586590, 21.364042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032383, 32.562752, 21.327316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018247, -0.736852, 0.675808,
		-0.107928, 0.673423, 0.731337,
		-0.993991, -0.059594, -0.091815,
		33.734184, 32.544872, 21.299772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164810, 32.580112, 22.057796>,  <34.429981, 32.586590, 21.364042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164810, 32.580112, 22.057796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883099, 32.389606, 21.847210>,  <33.714073, 32.275303, 21.720858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883099, 32.389606, 21.847210>,  <34.164810, 32.580112, 22.057796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883099, 32.389606, 21.847210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111000, -0.806331, 0.580955,
		-0.701194, 0.350715, 0.620746,
		-0.704277, -0.476265, -0.526465,
		33.671814, 32.246727, 21.689270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771255, 32.256203, 22.578896>,  <34.164810, 32.580112, 22.057796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771255, 32.256203, 22.578896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693394, 32.061741, 22.238129>,  <33.646679, 31.945063, 22.033669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693394, 32.061741, 22.238129>,  <33.771255, 32.256203, 22.578896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693394, 32.061741, 22.238129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052561, -0.872451, 0.485867,
		-0.979463, 0.049798, 0.195378,
		-0.194653, -0.486158, -0.851916,
		33.634998, 31.915894, 21.982553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140240, 31.833685, 22.704813>,  <33.771255, 32.256203, 22.578896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140240, 31.833685, 22.704813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322308, 31.656681, 22.395748>,  <33.431549, 31.550478, 22.210310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322308, 31.656681, 22.395748>,  <33.140240, 31.833685, 22.704813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322308, 31.656681, 22.395748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182302, -0.803067, 0.567317,
		-0.871541, -0.399085, -0.284864,
		0.455172, -0.442509, -0.772660,
		33.458858, 31.523928, 22.163950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891361, 31.182047, 22.647400>,  <33.140240, 31.833685, 22.704813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891361, 31.182047, 22.647400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239239, 31.137928, 22.454956>,  <33.447964, 31.111458, 22.339489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239239, 31.137928, 22.454956>,  <32.891361, 31.182047, 22.647400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239239, 31.137928, 22.454956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244281, -0.750795, 0.613705,
		-0.428904, -0.651262, -0.626019,
		0.869695, -0.110295, -0.481110,
		33.500149, 31.104839, 22.310623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928566, 30.554258, 22.324585>,  <32.891361, 31.182047, 22.647400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928566, 30.554258, 22.324585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311893, 30.664742, 22.353802>,  <33.541889, 30.731031, 22.371332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311893, 30.664742, 22.353802>,  <32.928566, 30.554258, 22.324585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311893, 30.664742, 22.353802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205444, -0.843875, 0.495649,
		0.198541, -0.459983, -0.865446,
		0.958319, 0.276207, 0.073043,
		33.599388, 30.747604, 22.375715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341633, 29.973188, 22.098980>,  <32.928566, 30.554258, 22.324585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341633, 29.973188, 22.098980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598869, 30.183342, 22.321838>,  <33.753212, 30.309435, 22.455553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598869, 30.183342, 22.321838>,  <33.341633, 29.973188, 22.098980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598869, 30.183342, 22.321838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246700, -0.830886, 0.498766,
		0.724967, -0.183303, -0.663945,
		0.643088, 0.525385, 0.557144,
		33.791794, 30.340958, 22.488981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845242, 29.475370, 22.275684>,  <33.341633, 29.973188, 22.098980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845242, 29.475370, 22.275684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.947380, 29.774414, 22.520920>,  <34.008663, 29.953840, 22.668060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.947380, 29.774414, 22.520920>,  <33.845242, 29.475370, 22.275684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947380, 29.774414, 22.520920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407792, -0.658225, 0.632808,
		0.876643, 0.088426, -0.472946,
		0.255348, 0.747610, 0.613088,
		34.023983, 29.998697, 22.704845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585045, 29.395212, 22.520210>,  <33.845242, 29.475370, 22.275684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585045, 29.395212, 22.520210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404991, 29.606083, 22.808506>,  <34.296959, 29.732605, 22.981483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404991, 29.606083, 22.808506>,  <34.585045, 29.395212, 22.520210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404991, 29.606083, 22.808506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269203, -0.689466, 0.672433,
		0.851417, 0.496709, 0.168434,
		-0.450133, 0.527177, 0.720739,
		34.269951, 29.764236, 23.024727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088867, 29.358614, 23.082884>,  <34.585045, 29.395212, 22.520210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088867, 29.358614, 23.082884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.722172, 29.439522, 23.220688>,  <34.502155, 29.488066, 23.303370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.722172, 29.439522, 23.220688>,  <35.088867, 29.358614, 23.082884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722172, 29.439522, 23.220688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119813, -0.683455, 0.720093,
		0.381108, 0.701411, 0.602312,
		-0.916734, 0.202268, 0.344508,
		34.447151, 29.500202, 23.324039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164448, 29.348471, 23.738966>,  <35.088867, 29.358614, 23.082884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164448, 29.348471, 23.738966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.769218, 29.295250, 23.707939>,  <34.532082, 29.263317, 23.689323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.769218, 29.295250, 23.707939>,  <35.164448, 29.348471, 23.738966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.769218, 29.295250, 23.707939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029129, -0.656003, 0.754195,
		-0.151234, 0.742937, 0.652052,
		-0.988069, -0.133054, -0.077569,
		34.472797, 29.255333, 23.684668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837868, 29.420700, 24.414846>,  <35.164448, 29.348471, 23.738966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837868, 29.420700, 24.414846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.568607, 29.212093, 24.205124>,  <34.407051, 29.086929, 24.079290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.568607, 29.212093, 24.205124>,  <34.837868, 29.420700, 24.414846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568607, 29.212093, 24.205124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021591, -0.722548, 0.690983,
		-0.739193, 0.453813, 0.497641,
		-0.673147, -0.521515, -0.524305,
		34.366665, 29.055639, 24.047832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991402, 29.680511, 25.159784>,  <34.837868, 29.420700, 24.414846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991402, 29.680511, 25.159784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.361820, 29.654587, 25.308506>,  <35.584072, 29.639032, 25.397739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.361820, 29.654587, 25.308506>,  <34.991402, 29.680511, 25.159784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361820, 29.654587, 25.308506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277628, 0.784318, -0.554768,
		-0.255657, 0.616964, 0.744308,
		0.926046, -0.064810, 0.371803,
		35.639633, 29.635143, 25.420048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072002, 30.368517, 25.294514>,  <34.991402, 29.680511, 25.159784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072002, 30.368517, 25.294514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.422333, 30.175594, 25.287384>,  <35.632530, 30.059841, 25.283106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.422333, 30.175594, 25.287384>,  <35.072002, 30.368517, 25.294514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422333, 30.175594, 25.287384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439535, 0.812321, -0.383332,
		0.199361, 0.327896, 0.923439,
		0.875822, -0.482305, -0.017823,
		35.685078, 30.030903, 25.282038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526318, 30.877033, 25.361082>,  <35.072002, 30.368517, 25.294514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526318, 30.877033, 25.361082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.774220, 30.602459, 25.208920>,  <35.922962, 30.437714, 25.117622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.774220, 30.602459, 25.208920>,  <35.526318, 30.877033, 25.361082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774220, 30.602459, 25.208920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500574, 0.719078, -0.482029,
		0.604423, 0.108319, 0.789265,
		0.619756, -0.686435, -0.380405,
		35.960148, 30.396528, 25.094797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228718, 31.158798, 25.436777>,  <35.526318, 30.877033, 25.361082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228718, 31.158798, 25.436777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247002, 30.872707, 25.157818>,  <36.257973, 30.701054, 24.990442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247002, 30.872707, 25.157818>,  <36.228718, 31.158798, 25.436777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247002, 30.872707, 25.157818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594504, 0.580513, -0.556390,
		0.802792, -0.389173, 0.451740,
		0.045708, -0.715227, -0.697396,
		36.260715, 30.658140, 24.948599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952484, 31.081051, 25.313185>,  <36.228718, 31.158798, 25.436777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952484, 31.081051, 25.313185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757786, 30.920853, 25.002655>,  <36.640968, 30.824734, 24.816338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757786, 30.920853, 25.002655>,  <36.952484, 31.081051, 25.313185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757786, 30.920853, 25.002655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517829, 0.583439, -0.625661,
		0.703515, -0.706541, -0.076596,
		-0.486744, -0.400498, -0.776326,
		36.611763, 30.800703, 24.769758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420937, 30.926104, 24.901394>,  <36.952484, 31.081051, 25.313185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420937, 30.926104, 24.901394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094753, 30.966194, 24.673363>,  <36.899044, 30.990250, 24.536545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094753, 30.966194, 24.673363>,  <37.420937, 30.926104, 24.901394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094753, 30.966194, 24.673363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478810, 0.670204, -0.567069,
		0.325232, -0.735378, -0.594511,
		-0.815454, 0.100229, -0.570078,
		36.850117, 30.996264, 24.502338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637329, 31.008223, 24.242899>,  <37.420937, 30.926104, 24.901394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637329, 31.008223, 24.242899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.263874, 31.148899, 24.215664>,  <37.039803, 31.233305, 24.199324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.263874, 31.148899, 24.215664>,  <37.637329, 31.008223, 24.242899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263874, 31.148899, 24.215664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304006, 0.677356, -0.669902,
		-0.189479, -0.646144, -0.739321,
		-0.933637, 0.351690, -0.068087,
		36.983784, 31.254406, 24.195238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610352, 31.073637, 23.580355>,  <37.637329, 31.008223, 24.242899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610352, 31.073637, 23.580355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326241, 31.305843, 23.739605>,  <37.155773, 31.445168, 23.835155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326241, 31.305843, 23.739605>,  <37.610352, 31.073637, 23.580355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326241, 31.305843, 23.739605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173183, 0.692313, -0.700507,
		-0.682282, -0.428608, -0.592272,
		-0.710281, 0.580515, 0.398125,
		37.113155, 31.479998, 23.859043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354279, 31.320911, 22.986475>,  <37.610352, 31.073637, 23.580355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.354279, 31.320911, 22.986475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213696, 31.592602, 23.244198>,  <37.129345, 31.755615, 23.398832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213696, 31.592602, 23.244198>,  <37.354279, 31.320911, 22.986475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213696, 31.592602, 23.244198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095604, 0.710654, -0.697015,
		-0.931311, -0.183370, -0.314698,
		-0.351453, 0.679225, 0.644309,
		37.108261, 31.796370, 23.437490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946163, 31.728134, 22.611380>,  <37.354279, 31.320911, 22.986475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946163, 31.728134, 22.611380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.046787, 31.945686, 22.931606>,  <37.107162, 32.076218, 23.123743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.046787, 31.945686, 22.931606>,  <36.946163, 31.728134, 22.611380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046787, 31.945686, 22.931606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071119, 0.835321, -0.545144,
		-0.965224, 0.080203, 0.248816,
		0.251564, 0.543881, 0.800568,
		37.122257, 32.108852, 23.171776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505207, 32.325603, 22.583265>,  <36.946163, 31.728134, 22.611380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505207, 32.325603, 22.583265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.812790, 32.421192, 22.820446>,  <36.997341, 32.478546, 22.962755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.812790, 32.421192, 22.820446>,  <36.505207, 32.325603, 22.583265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812790, 32.421192, 22.820446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033984, 0.910914, -0.411194,
		-0.638394, 0.336342, 0.692335,
		0.768959, 0.238976, 0.592952,
		37.043476, 32.492886, 22.998331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306694, 32.937927, 22.757792>,  <36.505207, 32.325603, 22.583265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306694, 32.937927, 22.757792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.697876, 32.916882, 22.838631>,  <36.932583, 32.904255, 22.887135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.697876, 32.916882, 22.838631>,  <36.306694, 32.937927, 22.757792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697876, 32.916882, 22.838631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139552, 0.884598, -0.444985,
		-0.155363, 0.463376, 0.872436,
		0.977951, -0.052616, 0.202099,
		36.991261, 32.901096, 22.899260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461823, 33.639168, 22.964888>,  <36.306694, 32.937927, 22.757792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461823, 33.639168, 22.964888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.808498, 33.485992, 22.837013>,  <37.016506, 33.394085, 22.760288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.808498, 33.485992, 22.837013>,  <36.461823, 33.639168, 22.964888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808498, 33.485992, 22.837013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077384, 0.736308, -0.672207,
		0.492803, 0.557858, 0.667787,
		0.866693, -0.382942, -0.319686,
		37.068508, 33.371109, 22.741108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970249, 34.197231, 23.072495>,  <36.461823, 33.639168, 22.964888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970249, 34.197231, 23.072495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098446, 33.944378, 22.790306>,  <37.175362, 33.792664, 22.620993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098446, 33.944378, 22.790306>,  <36.970249, 34.197231, 23.072495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098446, 33.944378, 22.790306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127347, 0.766747, -0.629191,
		0.938653, 0.111810, 0.326235,
		0.320490, -0.632137, -0.705471,
		37.194592, 33.754738, 22.578665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688210, 34.524052, 23.669172>,  <36.970249, 34.197231, 23.072495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688210, 34.524052, 23.669172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478806, 34.861057, 23.719948>,  <36.353165, 35.063259, 23.750414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478806, 34.861057, 23.719948>,  <36.688210, 34.524052, 23.669172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478806, 34.861057, 23.719948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037221, -0.126229, 0.991303,
		0.851209, 0.523677, 0.034723,
		-0.523505, 0.842513, 0.126939,
		36.321754, 35.113811, 23.758030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872665, 34.828564, 24.270367>,  <36.688210, 34.524052, 23.669172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872665, 34.828564, 24.270367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503029, 34.976986, 24.233772>,  <36.281246, 35.066040, 24.211815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503029, 34.976986, 24.233772>,  <36.872665, 34.828564, 24.270367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503029, 34.976986, 24.233772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164980, -0.171395, 0.971291,
		0.344722, 0.912656, 0.219602,
		-0.924093, 0.371055, -0.091486,
		36.225800, 35.088303, 24.206326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792183, 35.158527, 24.854042>,  <36.872665, 34.828564, 24.270367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792183, 35.158527, 24.854042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.433239, 35.061325, 24.706696>,  <36.217873, 35.003002, 24.618288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.433239, 35.061325, 24.706696>,  <36.792183, 35.158527, 24.854042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433239, 35.061325, 24.706696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262319, -0.377522, 0.888068,
		-0.354877, 0.893545, 0.275026,
		-0.897358, -0.243010, -0.368368,
		36.164032, 34.988422, 24.596186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314289, 35.423855, 25.280985>,  <36.792183, 35.158527, 24.854042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314289, 35.423855, 25.280985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126251, 35.130203, 25.085003>,  <36.013428, 34.954010, 24.967413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126251, 35.130203, 25.085003>,  <36.314289, 35.423855, 25.280985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126251, 35.130203, 25.085003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275856, -0.405098, 0.871664,
		-0.838397, 0.544926, -0.012079,
		-0.470099, -0.734133, -0.489954,
		35.985222, 34.909962, 24.938017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785686, 35.354389, 25.592007>,  <36.314289, 35.423855, 25.280985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785686, 35.354389, 25.592007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821205, 35.007839, 25.395432>,  <35.842518, 34.799908, 25.277487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821205, 35.007839, 25.395432>,  <35.785686, 35.354389, 25.592007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821205, 35.007839, 25.395432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301850, -0.493592, 0.815631,
		-0.949211, 0.075912, -0.305346,
		0.088800, -0.866374, -0.491437,
		35.847847, 34.747929, 25.248001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090561, 34.998734, 25.720657>,  <35.785686, 35.354389, 25.592007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090561, 34.998734, 25.720657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.334267, 34.708210, 25.593369>,  <35.480492, 34.533894, 25.516996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.334267, 34.708210, 25.593369>,  <35.090561, 34.998734, 25.720657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334267, 34.708210, 25.593369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236676, -0.549574, 0.801219,
		-0.756822, -0.412841, -0.506738,
		0.609266, -0.726313, -0.318220,
		35.517048, 34.490314, 25.497902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710403, 34.351070, 25.698399>,  <35.090561, 34.998734, 25.720657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710403, 34.351070, 25.698399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.093864, 34.250511, 25.751740>,  <35.323940, 34.190174, 25.783745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.093864, 34.250511, 25.751740>,  <34.710403, 34.351070, 25.698399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093864, 34.250511, 25.751740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253821, -0.543464, 0.800138,
		-0.128678, -0.800904, -0.584804,
		0.958653, -0.251396, 0.133354,
		35.381462, 34.175091, 25.791746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732548, 33.555923, 25.901665>,  <34.710403, 34.351070, 25.698399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732548, 33.555923, 25.901665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088837, 33.705406, 26.005161>,  <35.302612, 33.795097, 26.067259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088837, 33.705406, 26.005161>,  <34.732548, 33.555923, 25.901665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088837, 33.705406, 26.005161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145702, -0.773948, 0.616259,
		0.430554, -0.511219, -0.743827,
		0.890727, 0.373709, 0.258741,
		35.356056, 33.817520, 26.082783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181255, 32.944778, 26.019417>,  <34.732548, 33.555923, 25.901665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181255, 32.944778, 26.019417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.314510, 33.267395, 26.214764>,  <35.394463, 33.460964, 26.331972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.314510, 33.267395, 26.214764>,  <35.181255, 32.944778, 26.019417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314510, 33.267395, 26.214764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024092, -0.510504, 0.859538,
		0.942569, -0.298113, -0.150638,
		0.333141, 0.806544, 0.488368,
		35.414452, 33.509357, 26.361275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593399, 32.651657, 26.517769>,  <35.181255, 32.944778, 26.019417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593399, 32.651657, 26.517769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520164, 33.020954, 26.652882>,  <35.476223, 33.242535, 26.733950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520164, 33.020954, 26.652882>,  <35.593399, 32.651657, 26.517769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520164, 33.020954, 26.652882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072467, -0.355331, 0.931927,
		0.980422, 0.146149, 0.131962,
		-0.183091, 0.923244, 0.337784,
		35.465237, 33.297928, 26.754217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982380, 32.768814, 27.094881>,  <35.593399, 32.651657, 26.517769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982380, 32.768814, 27.094881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.722980, 33.067677, 27.153137>,  <35.567341, 33.246994, 27.188091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.722980, 33.067677, 27.153137>,  <35.982380, 32.768814, 27.094881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722980, 33.067677, 27.153137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017928, -0.176281, 0.984177,
		0.761005, 0.640848, 0.100923,
		-0.648498, 0.747154, 0.145639,
		35.528431, 33.291824, 27.196829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257454, 32.958046, 27.768772>,  <35.982380, 32.768814, 27.094881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257454, 32.958046, 27.768772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888874, 33.095181, 27.695683>,  <35.667725, 33.177460, 27.651829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888874, 33.095181, 27.695683>,  <36.257454, 32.958046, 27.768772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888874, 33.095181, 27.695683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255190, -0.179515, 0.950080,
		0.292921, 0.922083, 0.252904,
		-0.921453, 0.342837, -0.182723,
		35.612438, 33.198032, 27.640865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075153, 33.248077, 28.377600>,  <36.257454, 32.958046, 27.768772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075153, 33.248077, 28.377600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742504, 33.136894, 28.185287>,  <35.542915, 33.070187, 28.069901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742504, 33.136894, 28.185287>,  <36.075153, 33.248077, 28.377600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742504, 33.136894, 28.185287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420339, -0.250744, 0.872034,
		-0.362938, 0.927291, 0.091688,
		-0.831619, -0.277954, -0.480781,
		35.493019, 33.053509, 28.041054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614929, 33.449593, 28.857227>,  <36.075153, 33.248077, 28.377600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614929, 33.449593, 28.857227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.404385, 33.221188, 28.605232>,  <35.278057, 33.084145, 28.454035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.404385, 33.221188, 28.605232>,  <35.614929, 33.449593, 28.857227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404385, 33.221188, 28.605232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438682, -0.452324, 0.776506,
		-0.728353, 0.685090, -0.012406,
		-0.526365, -0.571012, -0.629988,
		35.246475, 33.049885, 28.416235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019436, 33.270741, 29.247808>,  <35.614929, 33.449593, 28.857227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019436, 33.270741, 29.247808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.969112, 33.002254, 28.955605>,  <34.938919, 32.841164, 28.780283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.969112, 33.002254, 28.955605>,  <35.019436, 33.270741, 29.247808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969112, 33.002254, 28.955605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497225, -0.594531, 0.631902,
		-0.858452, 0.442725, -0.258949,
		-0.125806, -0.671214, -0.730510,
		34.931370, 32.800892, 28.736452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314701, 33.091034, 29.238234>,  <35.019436, 33.270741, 29.247808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314701, 33.091034, 29.238234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511967, 32.780781, 29.080658>,  <34.630325, 32.594627, 28.986113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511967, 32.780781, 29.080658>,  <34.314701, 33.091034, 29.238234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511967, 32.780781, 29.080658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494154, -0.622450, 0.606933,
		-0.715965, -0.104646, -0.690249,
		0.493158, -0.775632, -0.393941,
		34.659916, 32.548092, 28.962477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776852, 32.699165, 29.065323>,  <34.314701, 33.091034, 29.238234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776852, 32.699165, 29.065323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072338, 32.429684, 29.057144>,  <34.249630, 32.267994, 29.052237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072338, 32.429684, 29.057144>,  <33.776852, 32.699165, 29.065323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072338, 32.429684, 29.057144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558332, -0.628647, 0.541357,
		-0.377567, -0.388496, -0.840544,
		0.738721, -0.673701, -0.020446,
		34.293953, 32.227573, 29.051010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479664, 32.121178, 29.025097>,  <33.776852, 32.699165, 29.065323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479664, 32.121178, 29.025097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845188, 31.986809, 29.116402>,  <34.064503, 31.906187, 29.171185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845188, 31.986809, 29.116402>,  <33.479664, 32.121178, 29.025097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845188, 31.986809, 29.116402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405072, -0.794536, 0.452358,
		0.029407, -0.505834, -0.862130,
		0.913812, -0.335922, 0.228264,
		34.119331, 31.886032, 29.184881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414570, 31.325472, 28.868700>,  <33.479664, 32.121178, 29.025097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414570, 31.325472, 28.868700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713436, 31.408924, 29.121117>,  <33.892757, 31.458996, 29.272566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713436, 31.408924, 29.121117>,  <33.414570, 31.325472, 28.868700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713436, 31.408924, 29.121117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328607, -0.709329, 0.623593,
		0.577716, -0.673294, -0.461432,
		0.747169, 0.208630, 0.631041,
		33.937588, 31.471514, 29.310429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694798, 30.673792, 29.009464>,  <33.414570, 31.325472, 28.868700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694798, 30.673792, 29.009464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755287, 30.924904, 29.314888>,  <33.791580, 31.075571, 29.498142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755287, 30.924904, 29.314888>,  <33.694798, 30.673792, 29.009464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755287, 30.924904, 29.314888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415543, -0.660501, 0.625350,
		0.896914, -0.411862, 0.160984,
		0.151227, 0.627781, 0.763558,
		33.800655, 31.113237, 29.543955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836678, 30.237104, 29.506447>,  <33.694798, 30.673792, 29.009464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836678, 30.237104, 29.506447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731693, 30.568993, 29.703499>,  <33.668705, 30.768126, 29.821730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731693, 30.568993, 29.703499>,  <33.836678, 30.237104, 29.506447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731693, 30.568993, 29.703499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359917, -0.557860, 0.747831,
		0.895308, 0.018967, 0.445044,
		-0.262457, 0.829718, 0.492630,
		33.652958, 30.817907, 29.851288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961876, 30.063240, 30.092999>,  <33.836678, 30.237104, 29.506447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961876, 30.063240, 30.092999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732208, 30.375935, 30.190342>,  <33.594410, 30.563551, 30.248749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732208, 30.375935, 30.190342>,  <33.961876, 30.063240, 30.092999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732208, 30.375935, 30.190342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397058, -0.525807, 0.752244,
		0.716015, 0.335286, 0.612295,
		-0.574166, 0.781735, 0.243358,
		33.559959, 30.610455, 30.263350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065365, 30.065062, 30.722841>,  <33.961876, 30.063240, 30.092999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065365, 30.065062, 30.722841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740459, 30.293606, 30.675892>,  <33.545517, 30.430733, 30.647722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740459, 30.293606, 30.675892>,  <34.065365, 30.065062, 30.722841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740459, 30.293606, 30.675892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397391, -0.394771, 0.828394,
		0.426975, 0.719517, 0.547711,
		-0.812264, 0.571359, -0.117372,
		33.496780, 30.465014, 30.640680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809727, 30.235905, 31.409483>,  <34.065365, 30.065062, 30.722841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809727, 30.235905, 31.409483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478878, 30.307171, 31.196270>,  <33.280369, 30.349932, 31.068342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478878, 30.307171, 31.196270>,  <33.809727, 30.235905, 31.409483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478878, 30.307171, 31.196270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560237, -0.336874, 0.756737,
		-0.044739, 0.924539, 0.378452,
		-0.827123, 0.178167, -0.533032,
		33.230740, 30.360620, 31.036360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379589, 30.309158, 31.936893>,  <33.809727, 30.235905, 31.409483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379589, 30.309158, 31.936893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150097, 30.226772, 31.619804>,  <33.012402, 30.177341, 31.429550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150097, 30.226772, 31.619804>,  <33.379589, 30.309158, 31.936893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150097, 30.226772, 31.619804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504723, -0.673346, 0.540241,
		-0.645046, 0.710060, 0.282367,
		-0.573734, -0.205963, -0.792723,
		32.977978, 30.164984, 31.381989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.823914, 30.489664, 32.163399>,  <33.379589, 30.309158, 31.936893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.823914, 30.489664, 32.163399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729172, 30.239693, 31.865845>,  <32.672329, 30.089710, 31.687311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729172, 30.239693, 31.865845>,  <32.823914, 30.489664, 32.163399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729172, 30.239693, 31.865845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605001, -0.504226, 0.616222,
		-0.760181, 0.596005, -0.258655,
		-0.236851, -0.624927, -0.743887,
		32.658115, 30.052214, 31.642679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.198101, 30.334593, 32.336300>,  <32.823914, 30.489664, 32.163399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.198101, 30.334593, 32.336300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299294, 30.049343, 32.074780>,  <32.360008, 29.878193, 31.917868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299294, 30.049343, 32.074780>,  <32.198101, 30.334593, 32.336300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299294, 30.049343, 32.074780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520031, -0.670087, 0.529671,
		-0.815823, 0.205997, -0.540368,
		0.252984, -0.713126, -0.653798,
		32.375187, 29.835405, 31.878639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.656340, 30.020794, 32.276066>,  <32.198101, 30.334593, 32.336300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.656340, 30.020794, 32.276066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962416, 29.780621, 32.183144>,  <32.146061, 29.636517, 32.127388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962416, 29.780621, 32.183144>,  <31.656340, 30.020794, 32.276066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962416, 29.780621, 32.183144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241109, -0.601841, 0.761350,
		-0.596933, -0.526580, -0.605298,
		0.765205, -0.600417, -0.232296,
		32.191971, 29.600491, 32.113449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.225864, 30.019785, 31.661983>,  <31.656340, 30.020794, 32.276066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.225864, 30.019785, 31.661983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.829443, 29.976383, 31.630890>,  <30.591591, 29.950342, 31.612234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.829443, 29.976383, 31.630890>,  <31.225864, 30.019785, 31.661983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.829443, 29.976383, 31.630890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037165, 0.783673, -0.620061,
		0.128199, -0.611623, -0.780693,
		-0.991052, -0.108506, -0.077735,
		30.532127, 29.943830, 31.607569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039206, 29.872646, 30.942024>,  <31.225864, 30.019785, 31.661983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.039206, 29.872646, 30.942024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.724659, 30.043030, 31.120995>,  <30.535931, 30.145260, 31.228376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.724659, 30.043030, 31.120995>,  <31.039206, 29.872646, 30.942024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.724659, 30.043030, 31.120995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024563, 0.702136, -0.711619,
		-0.617275, -0.570582, -0.541672,
		-0.786365, 0.425959, 0.447426,
		30.488750, 30.170818, 31.255222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.549833, 30.046150, 30.351944>,  <31.039206, 29.872646, 30.942024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.549833, 30.046150, 30.351944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.381731, 30.271523, 30.636459>,  <30.280870, 30.406746, 30.807169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.381731, 30.271523, 30.636459>,  <30.549833, 30.046150, 30.351944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.381731, 30.271523, 30.636459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159251, 0.725906, -0.669103,
		-0.893322, -0.394467, -0.215339,
		-0.420255, 0.563432, 0.711288,
		30.255655, 30.440552, 30.849846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818438, 30.270073, 30.221886>,  <30.549833, 30.046150, 30.351944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.818438, 30.270073, 30.221886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.963152, 30.538082, 30.481171>,  <30.049980, 30.698889, 30.636742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.963152, 30.538082, 30.481171>,  <29.818438, 30.270073, 30.221886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.963152, 30.538082, 30.481171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049790, 0.708206, -0.704248,
		-0.930931, 0.222512, 0.289579,
		0.361785, 0.670025, 0.648212,
		30.071688, 30.739090, 30.675634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.375181, 30.867165, 30.134665>,  <29.818438, 30.270073, 30.221886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.375181, 30.867165, 30.134665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.710386, 30.999638, 30.308125>,  <29.911510, 31.079123, 30.412201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.710386, 30.999638, 30.308125>,  <29.375181, 30.867165, 30.134665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.710386, 30.999638, 30.308125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021992, 0.773592, -0.633303,
		-0.545206, 0.540253, 0.640997,
		0.838014, 0.331184, 0.433648,
		29.961790, 31.098993, 30.438219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
