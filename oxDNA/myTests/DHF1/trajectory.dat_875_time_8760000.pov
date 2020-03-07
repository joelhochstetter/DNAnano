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
	<4.095723, 0.873857, 2.085302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.900276, 0.986313, 1.754917>,  <3.783008, 1.053786, 1.556686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.900276, 0.986313, 1.754917>,  <4.095723, 0.873857, 2.085302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.900276, 0.986313, 1.754917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799809, -0.522616, 0.295259,
		-0.348652, 0.804881, 0.480216,
		-0.488617, 0.281139, -0.825963,
		3.753691, 1.070655, 1.507128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.537413, 1.373944, 2.176984>,  <4.095723, 0.873857, 2.085302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.537413, 1.373944, 2.176984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.458183, 1.138672, 1.863344>,  <3.410645, 0.997509, 1.675161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.458183, 1.138672, 1.863344>,  <3.537413, 1.373944, 2.176984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.458183, 1.138672, 1.863344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766420, -0.405741, 0.497970,
		-0.611037, 0.699584, -0.370426,
		-0.198075, -0.588180, -0.784099,
		3.398761, 0.962218, 1.628115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.037473, 1.847426, 2.459070>,  <3.537413, 1.373944, 2.176984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.037473, 1.847426, 2.459070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.637787, 1.860863, 2.450658>,  <2.397975, 1.868924, 2.445611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.637787, 1.860863, 2.450658>,  <3.037473, 1.847426, 2.459070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.637787, 1.860863, 2.450658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032403, -0.997989, -0.054471,
		-0.022818, -0.053747, 0.998294,
		-0.999214, 0.033591, -0.021030,
		2.338022, 1.870940, 2.444349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.751173, 1.340430, 2.893971>,  <3.037473, 1.847426, 2.459070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.751173, 1.340430, 2.893971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.479462, 1.413101, 2.609556>,  <2.316435, 1.456704, 2.438908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.479462, 1.413101, 2.609556>,  <2.751173, 1.340430, 2.893971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.479462, 1.413101, 2.609556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260893, -0.965364, 0.002580,
		-0.685940, 0.187257, 0.703151,
		-0.679280, 0.181678, -0.711036,
		2.275678, 1.467605, 2.396245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.186377, 0.980968, 3.106822>,  <2.751173, 1.340430, 2.893971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.186377, 0.980968, 3.106822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.123688, 1.048820, 2.717635>,  <2.086074, 1.089532, 2.484123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.123688, 1.048820, 2.717635>,  <2.186377, 0.980968, 3.106822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.123688, 1.048820, 2.717635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402058, -0.910773, -0.094027,
		-0.902102, 0.376453, 0.210941,
		-0.156723, 0.169632, -0.972966,
		2.076671, 1.099710, 2.425745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.467114, 0.825371, 2.925035>,  <2.186377, 0.980968, 3.106822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.467114, 0.825371, 2.925035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.644508, 0.807182, 2.566984>,  <1.750945, 0.796269, 2.352154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.644508, 0.807182, 2.566984>,  <1.467114, 0.825371, 2.925035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.644508, 0.807182, 2.566984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394694, -0.906569, -0.149496,
		-0.804697, 0.419601, -0.419997,
		0.443485, -0.045471, -0.895127,
		1.777554, 0.793541, 2.298446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.960887, 0.593995, 2.484190>,  <1.467114, 0.825371, 2.925035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.960887, 0.593995, 2.484190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.307213, 0.486389, 2.315432>,  <1.515008, 0.421826, 2.214177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.307213, 0.486389, 2.315432>,  <0.960887, 0.593995, 2.484190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.307213, 0.486389, 2.315432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281706, -0.958922, 0.033321,
		-0.413529, 0.090001, -0.906032,
		0.865815, -0.269014, -0.421895,
		1.566957, 0.405685, 2.188863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.772186, 0.118362, 1.929510>,  <0.960887, 0.593995, 2.484190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.772186, 0.118362, 1.929510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.156342, 0.049934, 2.017499>,  <1.386835, 0.008878, 2.070292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.156342, 0.049934, 2.017499>,  <0.772186, 0.118362, 1.929510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.156342, 0.049934, 2.017499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170383, -0.985127, -0.022238,
		0.220505, -0.016122, -0.975253,
		0.960389, -0.171070, 0.219972,
		1.444458, -0.001387, 2.083491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.316188, -1.390788, 2.863725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.402290, -1.456207, 2.478619>,  <3.453952, -1.495459, 2.247555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.402290, -1.456207, 2.478619>,  <3.316188, -1.390788, 2.863725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.402290, -1.456207, 2.478619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887248, 0.379132, -0.262775,
		0.407991, 0.910775, -0.063497,
		0.215255, -0.163547, -0.962766,
		3.466867, -1.505271, 2.189789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.239479, -0.762230, 2.445301>,  <3.316188, -1.390788, 2.863725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.239479, -0.762230, 2.445301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.184624, -1.093933, 2.228588>,  <3.151711, -1.292955, 2.098561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.184624, -1.093933, 2.228588>,  <3.239479, -0.762230, 2.445301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.184624, -1.093933, 2.228588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929294, 0.297066, -0.219465,
		0.342938, 0.473377, -0.811361,
		-0.137138, -0.829256, -0.541782,
		3.143482, -1.342710, 2.066054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.442435, -0.730403, 2.490018>,  <3.239479, -0.762230, 2.445301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.442435, -0.730403, 2.490018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.142853, -0.610245, 2.253771>,  <1.963104, -0.538150, 2.112022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.142853, -0.610245, 2.253771>,  <2.442435, -0.730403, 2.490018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.142853, -0.610245, 2.253771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380799, 0.924572, -0.012638,
		0.542273, -0.234372, -0.806852,
		-0.748955, 0.300395, -0.590618,
		1.918166, -0.520126, 2.076585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.696397, -0.303324, 2.063317>,  <2.442435, -0.730403, 2.490018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.696397, -0.303324, 2.063317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.308441, -0.209129, 2.038459>,  <2.075668, -0.152613, 2.023544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.308441, -0.209129, 2.038459>,  <2.696397, -0.303324, 2.063317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.308441, -0.209129, 2.038459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234247, 0.971812, 0.026633,
		0.066665, 0.011274, -0.997712,
		-0.969889, 0.235486, -0.062145,
		2.017474, -0.138483, 2.019815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.693973, 0.282798, 1.588372>,  <2.696397, -0.303324, 2.063317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.693973, 0.282798, 1.588372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.339470, 0.311340, 1.771437>,  <2.126768, 0.328466, 1.881276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.339470, 0.311340, 1.771437>,  <2.693973, 0.282798, 1.588372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.339470, 0.311340, 1.771437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035374, 0.995604, -0.086729,
		-0.461841, -0.060675, -0.884885,
		-0.886257, 0.071357, 0.457664,
		2.073593, 0.332747, 1.908736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.363687, 0.743695, 1.174388>,  <2.693973, 0.282798, 1.588372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.363687, 0.743695, 1.174388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.192764, 0.754295, 1.535875>,  <2.090210, 0.760655, 1.752767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.192764, 0.754295, 1.535875>,  <2.363687, 0.743695, 1.174388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.192764, 0.754295, 1.535875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129361, 0.991078, 0.032104,
		-0.894804, 0.130624, -0.426923,
		-0.427308, 0.026500, 0.903718,
		2.064572, 0.762245, 1.806990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.839903, 1.241691, 1.142634>,  <2.363687, 0.743695, 1.174388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.839903, 1.241691, 1.142634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.911827, 1.210472, 1.534874>,  <1.954982, 1.191741, 1.770218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.911827, 1.210472, 1.534874>,  <1.839903, 1.241691, 1.142634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.911827, 1.210472, 1.534874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151323, 0.987177, 0.050822,
		-0.971993, 0.139249, 0.189315,
		0.179811, -0.078047, 0.980600,
		1.965770, 1.187058, 1.829054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.545367, 1.795453, 1.377312>,  <1.839903, 1.241691, 1.142634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.545367, 1.795453, 1.377312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.808884, 1.685028, 1.657250>,  <1.966993, 1.618773, 1.825213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.808884, 1.685028, 1.657250>,  <1.545367, 1.795453, 1.377312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.808884, 1.685028, 1.657250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359768, 0.932584, 0.029207,
		-0.660728, 0.232541, 0.713697,
		0.658791, -0.276063, 0.699846,
		2.006521, 1.602209, 1.867204>
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
