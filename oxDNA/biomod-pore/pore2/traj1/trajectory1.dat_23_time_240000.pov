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
	location <18.5, 18.5, 82.5562>
	look_at <18.5, 18.5, 18.5>
	direction <0, 0, -64.0562>
	angle 67.0682
}


# declare cpy_camera_pos = <18.5, 18.5, 82.5562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 29.6
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
	<22.991161, 16.111313, -1.996775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.878025, 16.475193, -2.118396>,  <22.810143, 16.693521, -2.191368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.878025, 16.475193, -2.118396>,  <22.991161, 16.111313, -1.996775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.878025, 16.475193, -2.118396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932868, 0.334620, 0.133366,
		0.223065, -0.245919, -0.943274,
		-0.282841, 0.909700, -0.304052,
		22.793173, 16.748102, -2.209611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.013248, 16.412518, -1.189932>,  <22.991161, 16.111313, -1.996775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.013248, 16.412518, -1.189932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.739052, 16.208691, -0.981915>,  <22.574533, 16.086395, -0.857104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.739052, 16.208691, -0.981915>,  <23.013248, 16.412518, -1.189932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.739052, 16.208691, -0.981915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419602, 0.860208, 0.289787,
		-0.595011, -0.019566, -0.803479,
		-0.685489, -0.509568, 0.520043,
		22.533405, 16.055820, -0.825902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.294477, 16.744394, -1.289721>,  <23.013248, 16.412518, -1.189932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.294477, 16.744394, -1.289721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.230885, 16.569630, -0.935583>,  <22.192730, 16.464771, -0.723101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.230885, 16.569630, -0.935583>,  <22.294477, 16.744394, -1.289721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.230885, 16.569630, -0.935583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751423, 0.635207, 0.178537,
		-0.640382, -0.636883, -0.429291,
		-0.158981, -0.436912, 0.885344,
		22.183189, 16.438557, -0.669980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.316450, 17.264715, -1.757217>,  <22.294477, 16.744394, -1.289721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.316450, 17.264715, -1.757217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.195698, 17.290478, -1.376750>,  <22.123245, 17.305935, -1.148470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.195698, 17.290478, -1.376750>,  <22.316450, 17.264715, -1.757217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.195698, 17.290478, -1.376750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806308, 0.549582, 0.218694,
		-0.508660, 0.832953, -0.217839,
		-0.301883, 0.064404, 0.951167,
		22.105133, 17.309799, -1.091400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.803213, 17.708221, -1.588408>,  <22.316450, 17.264715, -1.757217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.803213, 17.708221, -1.588408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.728363, 17.898384, -1.932262>,  <22.683453, 18.012482, -2.138574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.728363, 17.898384, -1.932262>,  <22.803213, 17.708221, -1.588408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.728363, 17.898384, -1.932262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155527, 0.849718, 0.503777,
		0.969946, 0.227966, -0.085067,
		-0.187127, 0.475406, -0.859635,
		22.672224, 18.041006, -2.190152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.164087, 18.378777, -1.592266>,  <22.803213, 17.708221, -1.588408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.164087, 18.378777, -1.592266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.824875, 18.361057, -1.803503>,  <22.621347, 18.350426, -1.930246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.824875, 18.361057, -1.803503>,  <23.164087, 18.378777, -1.592266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.824875, 18.361057, -1.803503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420034, 0.663800, 0.618822,
		0.323136, 0.746597, -0.581529,
		-0.848030, -0.044299, -0.528094,
		22.570465, 18.347767, -1.961931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.951593, 19.127991, -1.749222>,  <23.164087, 18.378777, -1.592266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.951593, 19.127991, -1.749222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.662758, 18.852367, -1.773843>,  <22.489456, 18.686993, -1.788615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.662758, 18.852367, -1.773843>,  <22.951593, 19.127991, -1.749222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.662758, 18.852367, -1.773843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529950, 0.493765, 0.689456,
		-0.444684, 0.530466, -0.721707,
		-0.722087, -0.689059, -0.061551,
		22.446133, 18.645649, -1.792308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.285875, 19.393469, -1.889227>,  <22.951593, 19.127991, -1.749222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.285875, 19.393469, -1.889227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.237484, 19.073254, -1.654449>,  <22.208450, 18.881124, -1.513583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.237484, 19.073254, -1.654449>,  <22.285875, 19.393469, -1.889227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.237484, 19.073254, -1.654449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454476, 0.570344, 0.684222,
		-0.882506, -0.183978, -0.432823,
		-0.120976, -0.800538, 0.586945,
		22.201191, 18.833092, -1.478366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.152132, 19.990171, -2.358492>,  <22.285875, 19.393469, -1.889227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.152132, 19.990171, -2.358492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.061886, 20.004261, -2.747923>,  <22.007738, 20.012714, -2.981582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.061886, 20.004261, -2.747923>,  <22.152132, 19.990171, -2.358492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.061886, 20.004261, -2.747923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316528, -0.947778, 0.039061,
		-0.921362, 0.316978, 0.224982,
		-0.225615, 0.035224, -0.973580,
		21.994202, 20.014828, -3.039997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.647005, 20.493174, -1.979573>,  <22.152132, 19.990171, -2.358492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.647005, 20.493174, -1.979573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.574516, 20.101215, -2.012948>,  <21.531023, 19.866039, -2.032973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.574516, 20.101215, -2.012948>,  <21.647005, 20.493174, -1.979573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.574516, 20.101215, -2.012948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129710, -0.060285, 0.989718,
		-0.974851, 0.190179, -0.116177,
		-0.181220, -0.979897, -0.083437,
		21.520151, 19.807247, -2.037979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.386055, 20.352129, -1.355871>,  <21.647005, 20.493174, -1.979573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.386055, 20.352129, -1.355871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.364017, 19.974030, -1.484540>,  <21.350796, 19.747169, -1.561742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.364017, 19.974030, -1.484540>,  <21.386055, 20.352129, -1.355871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.364017, 19.974030, -1.484540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206313, -0.304433, 0.929922,
		-0.976934, 0.117598, -0.178244,
		-0.055094, -0.945246, -0.321673,
		21.347490, 19.690456, -1.581042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.771261, 20.001831, -1.148949>,  <21.386055, 20.352129, -1.355871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.771261, 20.001831, -1.148949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.090015, 19.764385, -1.193836>,  <21.281269, 19.621918, -1.220768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.090015, 19.764385, -1.193836>,  <20.771261, 20.001831, -1.148949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.090015, 19.764385, -1.193836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045838, -0.244628, 0.968533,
		-0.602388, -0.766667, -0.222151,
		0.796886, -0.593615, -0.112218,
		21.329081, 19.586300, -1.227501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.619152, 19.260485, -0.940212>,  <20.771261, 20.001831, -1.148949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.619152, 19.260485, -0.940212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.006065, 19.352440, -0.897288>,  <21.238213, 19.407614, -0.871533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.006065, 19.352440, -0.897288>,  <20.619152, 19.260485, -0.940212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.006065, 19.352440, -0.897288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013182, -0.467953, 0.883655,
		0.253358, -0.853330, -0.455673,
		0.967283, 0.229888, 0.107311,
		21.296249, 19.421406, -0.865095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.133421, 18.580544, -0.732573>,  <20.619152, 19.260485, -0.940212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.133421, 18.580544, -0.732573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.247295, 18.940109, -0.599365>,  <21.315620, 19.155849, -0.519440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.247295, 18.940109, -0.599365>,  <21.133421, 18.580544, -0.732573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.247295, 18.940109, -0.599365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089461, -0.370793, 0.924397,
		0.954437, -0.233371, -0.185978,
		0.284687, 0.898916, 0.333021,
		21.332701, 19.209784, -0.499459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.903337, 18.611101, -0.352262>,  <21.133421, 18.580544, -0.732573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.903337, 18.611101, -0.352262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.656918, 18.897072, -0.219983>,  <21.509066, 19.068655, -0.140616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.656918, 18.897072, -0.219983>,  <21.903337, 18.611101, -0.352262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.656918, 18.897072, -0.219983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171132, -0.288322, 0.942117,
		0.768893, 0.636984, 0.055273,
		-0.616050, 0.714928, 0.330697,
		21.472103, 19.111549, -0.120774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.266315, 19.072151, 0.094172>,  <21.903337, 18.611101, -0.352262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.266315, 19.072151, 0.094172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.878723, 19.023132, 0.180014>,  <21.646168, 18.993721, 0.231519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.878723, 19.023132, 0.180014>,  <22.266315, 19.072151, 0.094172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.878723, 19.023132, 0.180014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241339, -0.282379, 0.928449,
		-0.053179, 0.951443, 0.303196,
		-0.968983, -0.122547, 0.214604,
		21.588028, 18.986368, 0.244395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.942604, 19.539730, 0.694940>,  <22.266315, 19.072151, 0.094172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.942604, 19.539730, 0.694940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.753716, 19.188328, 0.666004>,  <21.640383, 18.977486, 0.648643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.753716, 19.188328, 0.666004>,  <21.942604, 19.539730, 0.694940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.753716, 19.188328, 0.666004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059840, -0.113826, 0.991697,
		-0.879448, 0.463970, 0.106321,
		-0.472219, -0.878508, -0.072340,
		21.612049, 18.924776, 0.644302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.284264, 19.561581, 1.091373>,  <21.942604, 19.539730, 0.694940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.284264, 19.561581, 1.091373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.442265, 19.195087, 1.064565>,  <21.537066, 18.975191, 1.048481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.442265, 19.195087, 1.064565>,  <21.284264, 19.561581, 1.091373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.442265, 19.195087, 1.064565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196733, 0.013104, 0.980369,
		-0.897368, -0.400433, 0.185429,
		0.395002, -0.916232, -0.067019,
		21.560764, 18.920218, 1.044459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.034016, 18.962898, 1.454466>,  <21.284264, 19.561581, 1.091373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.034016, 18.962898, 1.454466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.430397, 18.913731, 1.432911>,  <21.668226, 18.884230, 1.419979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.430397, 18.913731, 1.432911>,  <21.034016, 18.962898, 1.454466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.430397, 18.913731, 1.432911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054898, 0.004859, 0.998480,
		-0.122471, -0.992405, 0.011563,
		0.990953, -0.122920, -0.053886,
		21.727682, 18.876856, 1.416745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.360493, 18.280758, 1.746790>,  <21.034016, 18.962898, 1.454466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.360493, 18.280758, 1.746790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.602398, 18.598450, 1.770317>,  <21.747541, 18.789064, 1.784433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.602398, 18.598450, 1.770317>,  <21.360493, 18.280758, 1.746790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.602398, 18.598450, 1.770317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099004, -0.148255, 0.983981,
		0.790228, -0.589252, -0.168291,
		0.604763, 0.794231, 0.058817,
		21.783827, 18.836720, 1.787962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.974548, 18.166407, 2.046142>,  <21.360493, 18.280758, 1.746790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.974548, 18.166407, 2.046142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.869221, 18.546566, 2.112359>,  <21.806025, 18.774662, 2.152088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.869221, 18.546566, 2.112359>,  <21.974548, 18.166407, 2.046142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.869221, 18.546566, 2.112359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157746, -0.126869, 0.979296,
		0.951725, 0.283979, -0.116516,
		-0.263317, 0.950400, 0.165541,
		21.790226, 18.831686, 2.162021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.428482, 18.436544, 2.502990>,  <21.974548, 18.166407, 2.046142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.428482, 18.436544, 2.502990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.117924, 18.683414, 2.554074>,  <21.931589, 18.831535, 2.584724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.117924, 18.683414, 2.554074>,  <22.428482, 18.436544, 2.502990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.117924, 18.683414, 2.554074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215396, 0.069408, 0.974057,
		0.592298, 0.783760, -0.186825,
		-0.776394, 0.617174, 0.127708,
		21.885006, 18.868567, 2.592386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.672600, 19.110987, 2.524466>,  <22.428482, 18.436544, 2.502990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.672600, 19.110987, 2.524466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.337765, 19.018196, 2.722647>,  <22.136864, 18.962523, 2.841555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.337765, 19.018196, 2.722647>,  <22.672600, 19.110987, 2.524466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.337765, 19.018196, 2.722647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476258, 0.136626, 0.868626,
		-0.269191, 0.963079, -0.003888,
		-0.837087, -0.231975, 0.495453,
		22.086639, 18.948605, 2.871283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.535820, 19.546881, 3.093777>,  <22.672600, 19.110987, 2.524466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.535820, 19.546881, 3.093777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.408260, 19.184017, 3.203589>,  <22.331724, 18.966299, 3.269477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.408260, 19.184017, 3.203589>,  <22.535820, 19.546881, 3.093777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.408260, 19.184017, 3.203589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507256, 0.081322, 0.857950,
		-0.800622, 0.412856, 0.434228,
		-0.318897, -0.907159, 0.274532,
		22.312592, 18.911869, 3.285949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.553934, 19.556713, 3.735057>,  <22.535820, 19.546881, 3.093777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.553934, 19.556713, 3.735057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.595680, 19.167301, 3.653722>,  <22.620728, 18.933655, 3.604921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.595680, 19.167301, 3.653722>,  <22.553934, 19.556713, 3.735057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.595680, 19.167301, 3.653722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570961, -0.108754, 0.813742,
		-0.814316, -0.201024, 0.544498,
		0.104365, -0.973531, -0.203337,
		22.626989, 18.875242, 3.592721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.381681, 19.482019, 4.339296>,  <22.553934, 19.556713, 3.735057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.381681, 19.482019, 4.339296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.084675, 19.725494, 4.227461>,  <21.906471, 19.871580, 4.160360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.084675, 19.725494, 4.227461>,  <22.381681, 19.482019, 4.339296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.084675, 19.725494, 4.227461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582043, -0.379731, 0.719048,
		0.331509, 0.696636, 0.636239,
		-0.742514, 0.608690, -0.279587,
		21.861921, 19.908102, 4.143585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.112379, 19.992367, 4.887377>,  <22.381681, 19.482019, 4.339296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.112379, 19.992367, 4.887377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.836178, 19.868149, 4.626067>,  <21.670458, 19.793617, 4.469281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.836178, 19.868149, 4.626067>,  <22.112379, 19.992367, 4.887377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.836178, 19.868149, 4.626067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582278, -0.297179, 0.756728,
		-0.429139, 0.902909, 0.024379,
		-0.690501, -0.310546, -0.653276,
		21.629028, 19.774984, 4.430085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.394695, 20.415134, 4.942625>,  <22.112379, 19.992367, 4.887377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.394695, 20.415134, 4.942625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.347996, 20.040878, 4.809392>,  <21.319977, 19.816324, 4.729452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.347996, 20.040878, 4.809392>,  <21.394695, 20.415134, 4.942625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.347996, 20.040878, 4.809392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438400, -0.252383, 0.862617,
		-0.891165, 0.246734, -0.380720,
		-0.116749, -0.935642, -0.333083,
		21.312971, 19.760185, 4.709467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.748377, 20.126114, 5.225320>,  <21.394695, 20.415134, 4.942625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.748377, 20.126114, 5.225320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.004910, 19.827469, 5.154590>,  <21.158829, 19.648283, 5.112152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.004910, 19.827469, 5.154590>,  <20.748377, 20.126114, 5.225320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.004910, 19.827469, 5.154590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380077, -0.509341, 0.772083,
		-0.666511, -0.427952, -0.610426,
		0.641329, -0.746612, -0.176826,
		21.197309, 19.603485, 5.101542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.349781, 19.572508, 5.160277>,  <20.748377, 20.126114, 5.225320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.349781, 19.572508, 5.160277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.698307, 19.435825, 5.301158>,  <20.907423, 19.353815, 5.385687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.698307, 19.435825, 5.301158>,  <20.349781, 19.572508, 5.160277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.698307, 19.435825, 5.301158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475082, -0.407617, 0.779836,
		-0.122910, -0.846809, -0.517501,
		0.871315, -0.341705, 0.352204,
		20.959702, 19.333313, 5.406819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.349112, 18.931015, 5.443915>,  <20.349781, 19.572508, 5.160277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.349112, 18.931015, 5.443915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.696545, 19.048046, 5.603897>,  <20.905005, 19.118265, 5.699886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.696545, 19.048046, 5.603897>,  <20.349112, 18.931015, 5.443915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.696545, 19.048046, 5.603897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215385, -0.503982, 0.836428,
		0.446290, -0.812650, -0.374733,
		0.868582, 0.292577, 0.399954,
		20.957119, 19.135818, 5.723883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.745209, 18.328564, 5.859248>,  <20.349112, 18.931015, 5.443915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.745209, 18.328564, 5.859248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.858162, 18.683907, 6.004068>,  <20.925934, 18.897112, 6.090961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.858162, 18.683907, 6.004068>,  <20.745209, 18.328564, 5.859248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.858162, 18.683907, 6.004068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383939, -0.241207, 0.891297,
		0.879120, -0.390692, 0.272963,
		0.282382, 0.888358, 0.362052,
		20.942877, 18.950415, 6.112684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.182854, 18.200235, 6.435289>,  <20.745209, 18.328564, 5.859248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.182854, 18.200235, 6.435289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.987217, 18.546345, 6.479267>,  <20.869835, 18.754011, 6.505654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.987217, 18.546345, 6.479267>,  <21.182854, 18.200235, 6.435289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.987217, 18.546345, 6.479267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270580, -0.270346, 0.923959,
		0.829201, 0.422153, 0.366350,
		-0.489093, 0.865275, 0.109945,
		20.840488, 18.805927, 6.512250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.333473, 18.221045, 7.200884>,  <21.182854, 18.200235, 6.435289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.333473, 18.221045, 7.200884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.707291, 18.356789, 7.158062>,  <21.931581, 18.438234, 7.132369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.707291, 18.356789, 7.158062>,  <21.333473, 18.221045, 7.200884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.707291, 18.356789, 7.158062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072656, 0.112536, 0.990988,
		0.348351, -0.933900, 0.080513,
		0.934544, 0.339362, -0.107056,
		21.987654, 18.458597, 7.125945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.896738, 17.831659, 7.461628>,  <21.333473, 18.221045, 7.200884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.896738, 17.831659, 7.461628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.998623, 18.216633, 7.499231>,  <22.059753, 18.447617, 7.521793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.998623, 18.216633, 7.499231>,  <21.896738, 17.831659, 7.461628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.998623, 18.216633, 7.499231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029411, -0.104879, 0.994050,
		0.966569, -0.250434, -0.055021,
		0.254714, 0.962436, 0.094008,
		22.075037, 18.505363, 7.527433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.337576, 17.944054, 8.082749>,  <21.896738, 17.831659, 7.461628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.337576, 17.944054, 8.082749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.200699, 18.314484, 8.019141>,  <22.118572, 18.536741, 7.980976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.200699, 18.314484, 8.019141>,  <22.337576, 17.944054, 8.082749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.200699, 18.314484, 8.019141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100015, 0.204174, 0.973812,
		0.934292, 0.317326, -0.162488,
		-0.342191, 0.926077, -0.159021,
		22.098042, 18.592306, 7.971435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.845804, 18.372440, 8.391055>,  <22.337576, 17.944054, 8.082749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.845804, 18.372440, 8.391055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.511696, 18.590206, 8.360245>,  <22.311232, 18.720865, 8.341759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.511696, 18.590206, 8.360245>,  <22.845804, 18.372440, 8.391055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.511696, 18.590206, 8.360245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137527, 0.342497, 0.929399,
		0.532361, 0.765707, -0.360950,
		-0.835271, 0.544416, -0.077026,
		22.261114, 18.753531, 8.337137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.075167, 19.002718, 8.761859>,  <22.845804, 18.372440, 8.391055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.075167, 19.002718, 8.761859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.677719, 19.038601, 8.734510>,  <22.439251, 19.060131, 8.718102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.677719, 19.038601, 8.734510>,  <23.075167, 19.002718, 8.761859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.677719, 19.038601, 8.734510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018492, 0.468415, 0.883315,
		0.111264, 0.878943, -0.463767,
		-0.993619, 0.089705, -0.068371,
		22.379633, 19.065512, 8.713999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.935722, 19.620424, 9.042096>,  <23.075167, 19.002718, 8.761859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.935722, 19.620424, 9.042096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.613903, 19.384365, 9.068708>,  <22.420811, 19.242729, 9.084676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.613903, 19.384365, 9.068708>,  <22.935722, 19.620424, 9.042096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.613903, 19.384365, 9.068708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133770, 0.289225, 0.947869,
		-0.578625, 0.753707, -0.311640,
		-0.804549, -0.590149, 0.066530,
		22.372538, 19.207321, 9.088667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.376873, 20.090660, 9.298693>,  <22.935722, 19.620424, 9.042096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.376873, 20.090660, 9.298693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.250038, 19.714775, 9.349919>,  <22.173937, 19.489244, 9.380655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.250038, 19.714775, 9.349919>,  <22.376873, 20.090660, 9.298693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.250038, 19.714775, 9.349919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612903, 0.306089, 0.728464,
		-0.723744, 0.152494, -0.673008,
		-0.317087, -0.939710, 0.128066,
		22.154913, 19.432861, 9.388339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.672716, 20.178873, 9.372086>,  <22.376873, 20.090660, 9.298693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.672716, 20.178873, 9.372086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.772373, 19.832039, 9.544638>,  <21.832167, 19.623938, 9.648169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.772373, 19.832039, 9.544638>,  <21.672716, 20.178873, 9.372086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.772373, 19.832039, 9.544638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430924, 0.299649, 0.851184,
		-0.867313, -0.397959, -0.298993,
		0.249143, -0.867087, 0.431380,
		21.847116, 19.571913, 9.674051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.118395, 20.107334, 9.707350>,  <21.672716, 20.178873, 9.372086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.118395, 20.107334, 9.707350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.356895, 19.852123, 9.902246>,  <21.499996, 19.698997, 10.019185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.356895, 19.852123, 9.902246>,  <21.118395, 20.107334, 9.707350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.356895, 19.852123, 9.902246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514795, 0.161844, 0.841898,
		-0.616010, -0.752815, -0.231952,
		0.596254, -0.638025, 0.487243,
		21.535772, 19.660715, 10.048419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.693239, 19.687792, 10.049020>,  <21.118395, 20.107334, 9.707350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.693239, 19.687792, 10.049020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.033012, 19.640263, 10.254677>,  <21.236877, 19.611746, 10.378071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.033012, 19.640263, 10.254677>,  <20.693239, 19.687792, 10.049020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.033012, 19.640263, 10.254677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519365, -0.015811, 0.854406,
		-0.093398, -0.992789, -0.075145,
		0.849433, -0.118828, 0.514143,
		21.287842, 19.604616, 10.408920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.515417, 19.250662, 10.590343>,  <20.693239, 19.687792, 10.049020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.515417, 19.250662, 10.590343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.848515, 19.447788, 10.691274>,  <21.048374, 19.566063, 10.751832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.848515, 19.447788, 10.691274>,  <20.515417, 19.250662, 10.590343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.848515, 19.447788, 10.691274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307172, 0.032072, 0.951113,
		0.460631, -0.869543, 0.178087,
		0.832745, 0.492815, 0.252326,
		21.098339, 19.595633, 10.766972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.671238, 18.930338, 11.179449>,  <20.515417, 19.250662, 10.590343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.671238, 18.930338, 11.179449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.840328, 19.292511, 11.163959>,  <20.941782, 19.509815, 11.154664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.840328, 19.292511, 11.163959>,  <20.671238, 18.930338, 11.179449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.840328, 19.292511, 11.163959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376558, 0.214354, 0.901253,
		0.824323, -0.366399, 0.431560,
		0.422725, 0.905430, -0.038727,
		20.967146, 19.564140, 11.152341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.896120, 18.959436, 11.764952>,  <20.671238, 18.930338, 11.179449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.896120, 18.959436, 11.764952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.892467, 19.341965, 11.648079>,  <20.890276, 19.571482, 11.577955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.892467, 19.341965, 11.648079>,  <20.896120, 18.959436, 11.764952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.892467, 19.341965, 11.648079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262623, 0.279643, 0.923487,
		0.964855, 0.085168, 0.248597,
		-0.009133, 0.956319, -0.292182,
		20.889729, 19.628860, 11.560424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.290524, 19.346443, 12.215808>,  <20.896120, 18.959436, 11.764952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.290524, 19.346443, 12.215808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.065834, 19.639523, 12.062122>,  <20.931021, 19.815371, 11.969911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.065834, 19.639523, 12.062122>,  <21.290524, 19.346443, 12.215808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.065834, 19.639523, 12.062122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155313, 0.362758, 0.918850,
		0.812616, 0.575813, -0.089972,
		-0.561724, 0.732698, -0.384214,
		20.897316, 19.859331, 11.946858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.503061, 19.996704, 12.535204>,  <21.290524, 19.346443, 12.215808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.503061, 19.996704, 12.535204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.129147, 20.065208, 12.410725>,  <20.904799, 20.106312, 12.336037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.129147, 20.065208, 12.410725>,  <21.503061, 19.996704, 12.535204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.129147, 20.065208, 12.410725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243142, 0.330178, 0.912066,
		0.258954, 0.928252, -0.267005,
		-0.934786, 0.171263, -0.311198,
		20.848711, 20.116587, 12.317366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.359131, 20.649853, 12.611922>,  <21.503061, 19.996704, 12.535204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.359131, 20.649853, 12.611922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.009846, 20.455048, 12.619052>,  <20.800274, 20.338165, 12.623330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.009846, 20.455048, 12.619052>,  <21.359131, 20.649853, 12.611922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.009846, 20.455048, 12.619052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231781, 0.447199, 0.863881,
		-0.428693, 0.750221, -0.503380,
		-0.873213, -0.487014, 0.017824,
		20.747883, 20.308943, 12.624399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.966167, 21.138393, 12.865979>,  <21.359131, 20.649853, 12.611922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.966167, 21.138393, 12.865979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.746300, 20.807110, 12.909679>,  <20.614380, 20.608339, 12.935900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.746300, 20.807110, 12.909679>,  <20.966167, 21.138393, 12.865979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.746300, 20.807110, 12.909679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364782, 0.355612, 0.860508,
		-0.751530, 0.433142, -0.497584,
		-0.549669, -0.828208, 0.109251,
		20.581398, 20.558647, 12.942454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.357094, 21.331192, 13.099604>,  <20.966167, 21.138393, 12.865979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.357094, 21.331192, 13.099604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.319401, 20.948509, 13.209753>,  <20.296785, 20.718899, 13.275843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.319401, 20.948509, 13.209753>,  <20.357094, 21.331192, 13.099604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.319401, 20.948509, 13.209753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398805, 0.289717, 0.870068,
		-0.912181, -0.027829, -0.408842,
		-0.094235, -0.956707, 0.275372,
		20.291130, 20.661497, 13.292365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.681648, 21.280352, 13.391554>,  <20.357094, 21.331192, 13.099604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.681648, 21.280352, 13.391554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.869385, 20.960243, 13.540836>,  <19.982027, 20.768177, 13.630405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.869385, 20.960243, 13.540836>,  <19.681648, 21.280352, 13.391554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.869385, 20.960243, 13.540836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232451, 0.295767, 0.926547,
		-0.851873, -0.521617, -0.047209,
		0.469340, -0.800273, 0.373206,
		20.010187, 20.720161, 13.652798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.201164, 20.847712, 13.802202>,  <19.681648, 21.280352, 13.391554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.201164, 20.847712, 13.802202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.557899, 20.735012, 13.943760>,  <19.771940, 20.667393, 14.028694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.557899, 20.735012, 13.943760>,  <19.201164, 20.847712, 13.802202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.557899, 20.735012, 13.943760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206517, 0.442450, 0.872691,
		-0.402460, -0.851385, 0.336408,
		0.891839, -0.281749, 0.353894,
		19.825451, 20.650488, 14.049928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.077608, 20.713432, 14.466710>,  <19.201164, 20.847712, 13.802202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.077608, 20.713432, 14.466710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.476395, 20.744545, 14.468042>,  <19.715666, 20.763212, 14.468842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.476395, 20.744545, 14.468042>,  <19.077608, 20.713432, 14.466710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.476395, 20.744545, 14.468042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040320, 0.479276, 0.876738,
		0.066598, -0.874211, 0.480957,
		0.996965, 0.077781, 0.003330,
		19.775484, 20.767879, 14.469041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.285692, 20.654322, 15.239862>,  <19.077608, 20.713432, 14.466710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.285692, 20.654322, 15.239862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.600727, 20.827133, 15.064110>,  <19.789749, 20.930820, 14.958658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.600727, 20.827133, 15.064110>,  <19.285692, 20.654322, 15.239862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.600727, 20.827133, 15.064110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157061, 0.548753, 0.821098,
		0.595853, -0.715695, 0.364335,
		0.787586, 0.432031, -0.439384,
		19.837004, 20.956741, 14.932295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.784552, 20.688944, 15.781784>,  <19.285692, 20.654322, 15.239862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.784552, 20.688944, 15.781784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.895191, 20.955601, 15.504921>,  <19.961575, 21.115595, 15.338803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.895191, 20.955601, 15.504921>,  <19.784552, 20.688944, 15.781784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.895191, 20.955601, 15.504921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065498, 0.705505, 0.705672,
		0.958750, -0.240525, 0.151479,
		0.276601, 0.666641, -0.692157,
		19.978172, 21.155594, 15.297274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.221874, 21.053150, 16.090029>,  <19.784552, 20.688944, 15.781784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.221874, 21.053150, 16.090029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.098251, 21.309372, 15.808838>,  <20.024078, 21.463104, 15.640123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.098251, 21.309372, 15.808838>,  <20.221874, 21.053150, 16.090029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.098251, 21.309372, 15.808838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250980, 0.658027, 0.709936,
		0.917329, 0.395844, -0.042602,
		-0.309058, 0.640552, -0.702976,
		20.005533, 21.501537, 15.597945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.533302, 21.716177, 16.196718>,  <20.221874, 21.053150, 16.090029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.533302, 21.716177, 16.196718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.217587, 21.802818, 15.966900>,  <20.028156, 21.854803, 15.829008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.217587, 21.802818, 15.966900>,  <20.533302, 21.716177, 16.196718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.217587, 21.802818, 15.966900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349982, 0.610132, 0.710810,
		0.504514, 0.762117, -0.405764,
		-0.789290, 0.216604, -0.574547,
		19.980799, 21.867800, 15.794536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.462885, 22.419701, 16.139330>,  <20.533302, 21.716177, 16.196718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.462885, 22.419701, 16.139330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.086651, 22.303127, 16.069630>,  <19.860910, 22.233183, 16.027809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.086651, 22.303127, 16.069630>,  <20.462885, 22.419701, 16.139330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.086651, 22.303127, 16.069630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315037, 0.557549, 0.768043,
		-0.126681, 0.777306, -0.616236,
		-0.940587, -0.291433, -0.174249,
		19.804474, 22.215698, 16.017355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.085674, 23.016020, 16.355255>,  <20.462885, 22.419701, 16.139330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.085674, 23.016020, 16.355255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.794666, 22.745052, 16.311771>,  <19.620062, 22.582472, 16.285681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.794666, 22.745052, 16.311771>,  <20.085674, 23.016020, 16.355255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.794666, 22.745052, 16.311771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442270, 0.341919, 0.829149,
		-0.524510, 0.651303, -0.548355,
		-0.727521, -0.677418, -0.108711,
		19.576410, 22.541826, 16.279158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.360781, 23.353691, 16.242607>,  <20.085674, 23.016020, 16.355255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.360781, 23.353691, 16.242607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.307568, 22.985641, 16.389940>,  <19.275639, 22.764811, 16.478340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.307568, 22.985641, 16.389940>,  <19.360781, 23.353691, 16.242607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.307568, 22.985641, 16.389940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429548, 0.388448, 0.815228,
		-0.893191, -0.049763, -0.446915,
		-0.133035, -0.920126, 0.368334,
		19.267656, 22.709604, 16.500441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.671227, 23.293602, 16.435795>,  <19.360781, 23.353691, 16.242607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.671227, 23.293602, 16.435795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.861149, 23.007603, 16.641060>,  <18.975103, 22.836002, 16.764219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.861149, 23.007603, 16.641060>,  <18.671227, 23.293602, 16.435795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.861149, 23.007603, 16.641060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522250, 0.240421, 0.818201,
		-0.708388, -0.656486, -0.259255,
		0.474807, -0.714999, 0.513161,
		19.003592, 22.793102, 16.795008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.134993, 22.940414, 16.905876>,  <18.671227, 23.293602, 16.435795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.134993, 22.940414, 16.905876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.489178, 22.847046, 17.066610>,  <18.701689, 22.791025, 17.163050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.489178, 22.847046, 17.066610>,  <18.134993, 22.940414, 16.905876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.489178, 22.847046, 17.066610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368533, 0.174035, 0.913179,
		-0.283087, -0.956675, 0.068079,
		0.885463, -0.233420, 0.401833,
		18.754816, 22.777020, 17.187160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.819862, 22.739458, 17.531647>,  <18.134993, 22.940414, 16.905876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.819862, 22.739458, 17.531647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.218803, 22.751930, 17.557909>,  <18.458168, 22.759415, 17.573668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.218803, 22.751930, 17.557909>,  <17.819862, 22.739458, 17.531647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.218803, 22.751930, 17.557909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069519, 0.145527, 0.986909,
		0.021217, -0.988863, 0.147309,
		0.997355, 0.031180, 0.065657,
		18.518009, 22.761284, 17.577606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.128525, 22.279573, 18.137381>,  <17.819862, 22.739458, 17.531647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.128525, 22.279573, 18.137381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.380867, 22.583149, 18.072844>,  <18.532272, 22.765295, 18.034121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.380867, 22.583149, 18.072844>,  <18.128525, 22.279573, 18.137381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.380867, 22.583149, 18.072844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072433, 0.264640, 0.961623,
		0.772513, -0.594957, 0.221922,
		0.630854, 0.758941, -0.161343,
		18.570124, 22.810831, 18.024441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.610279, 22.140305, 18.587757>,  <18.128525, 22.279573, 18.137381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.610279, 22.140305, 18.587757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.635353, 22.525616, 18.483326>,  <18.650396, 22.756804, 18.420668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.635353, 22.525616, 18.483326>,  <18.610279, 22.140305, 18.587757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.635353, 22.525616, 18.483326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271100, 0.268191, 0.924434,
		0.960508, 0.012832, 0.277956,
		0.062683, 0.963280, -0.261079,
		18.654158, 22.814600, 18.405003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.145245, 22.409920, 19.049963>,  <18.610279, 22.140305, 18.587757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.145245, 22.409920, 19.049963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.902378, 22.703140, 18.927334>,  <18.756659, 22.879072, 18.853756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.902378, 22.703140, 18.927334>,  <19.145245, 22.409920, 19.049963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.902378, 22.703140, 18.927334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174396, 0.253479, 0.951491,
		0.775199, 0.631178, -0.026063,
		-0.607167, 0.733050, -0.306571,
		18.720228, 22.923056, 18.835361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.325327, 23.074295, 19.503586>,  <19.145245, 22.409920, 19.049963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.325327, 23.074295, 19.503586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.967663, 23.140648, 19.337233>,  <18.753065, 23.180460, 19.237421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.967663, 23.140648, 19.337233>,  <19.325327, 23.074295, 19.503586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.967663, 23.140648, 19.337233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344321, 0.338998, 0.875513,
		0.286216, 0.926047, -0.246002,
		-0.894161, 0.165882, -0.415885,
		18.699415, 23.190413, 19.212467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.200521, 23.809025, 19.470631>,  <19.325327, 23.074295, 19.503586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.200521, 23.809025, 19.470631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.844879, 23.626186, 19.461199>,  <18.631495, 23.516483, 19.455540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.844879, 23.626186, 19.461199>,  <19.200521, 23.809025, 19.470631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.844879, 23.626186, 19.461199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237265, 0.416230, 0.877757,
		-0.391405, 0.786013, -0.478525,
		-0.889104, -0.457096, -0.023579,
		18.578148, 23.489058, 19.454124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.801056, 24.362612, 19.606569>,  <19.200521, 23.809025, 19.470631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.801056, 24.362612, 19.606569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.604225, 24.024044, 19.687992>,  <18.486126, 23.820904, 19.736847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.604225, 24.024044, 19.687992>,  <18.801056, 24.362612, 19.606569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.604225, 24.024044, 19.687992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334124, 0.399545, 0.853654,
		-0.803879, 0.352049, -0.479416,
		-0.492076, -0.846419, 0.203558,
		18.456602, 23.770119, 19.749060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.190613, 24.579334, 19.773630>,  <18.801056, 24.362612, 19.606569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.190613, 24.579334, 19.773630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.171204, 24.212273, 19.931393>,  <18.159559, 23.992035, 20.026051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.171204, 24.212273, 19.931393>,  <18.190613, 24.579334, 19.773630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.171204, 24.212273, 19.931393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554608, 0.353158, 0.753452,
		-0.830696, -0.182183, -0.526074,
		-0.048521, -0.917654, 0.394407,
		18.156647, 23.936977, 20.049715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.468658, 24.495249, 20.017479>,  <18.190613, 24.579334, 19.773630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.468658, 24.495249, 20.017479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.642551, 24.191402, 20.210972>,  <17.746887, 24.009094, 20.327066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.642551, 24.191402, 20.210972>,  <17.468658, 24.495249, 20.017479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.642551, 24.191402, 20.210972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363763, 0.343257, 0.865939,
		-0.823824, -0.552413, -0.127096,
		0.434730, -0.759614, 0.483731,
		17.772970, 23.963518, 20.356091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.971298, 24.266706, 20.403234>,  <17.468658, 24.495249, 20.017479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.971298, 24.266706, 20.403234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.296322, 24.115925, 20.581066>,  <17.491337, 24.025455, 20.687765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.296322, 24.115925, 20.581066>,  <16.971298, 24.266706, 20.403234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.296322, 24.115925, 20.581066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383199, 0.229253, 0.894763,
		-0.439207, -0.897411, 0.041832,
		0.812561, -0.376957, 0.444577,
		17.540091, 24.002838, 20.714439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.764292, 23.807356, 20.894636>,  <16.971298, 24.266706, 20.403234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.764292, 23.807356, 20.894636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.126328, 23.943985, 20.995943>,  <17.343548, 24.025963, 21.056728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.126328, 23.943985, 20.995943>,  <16.764292, 23.807356, 20.894636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.126328, 23.943985, 20.995943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346362, 0.246677, 0.905088,
		0.246677, -0.906907, 0.341571,
		-0.905088, -0.341571, -0.253268,
		17.397854, 24.046455, 21.071924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.897449, 23.489218, 21.479403>,  <16.764292, 23.807356, 20.894636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.897449, 23.489218, 21.479403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.149410, 23.799843, 21.484703>,  <17.300587, 23.986217, 21.487883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.149410, 23.799843, 21.484703>,  <16.897449, 23.489218, 21.479403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.149410, 23.799843, 21.484703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290323, 0.219601, 0.931390,
		0.720372, -0.590532, 0.363780,
		0.629902, 0.776561, 0.013251,
		17.338381, 24.032810, 21.488678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.084810, 23.549816, 22.120697>,  <16.897449, 23.489218, 21.479403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.084810, 23.549816, 22.120697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.196877, 23.913902, 21.998705>,  <17.264116, 24.132355, 21.925510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.196877, 23.913902, 21.998705>,  <17.084810, 23.549816, 22.120697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.196877, 23.913902, 21.998705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385738, 0.397673, 0.832504,
		0.879040, -0.115598, 0.462520,
		0.280168, 0.910216, -0.304980,
		17.280928, 24.186968, 21.907211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.432701, 23.821951, 22.697691>,  <17.084810, 23.549816, 22.120697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.432701, 23.821951, 22.697691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.293983, 24.126274, 22.478271>,  <17.210752, 24.308868, 22.346621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.293983, 24.126274, 22.478271>,  <17.432701, 23.821951, 22.697691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.293983, 24.126274, 22.478271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371197, 0.425765, 0.825189,
		0.861363, 0.489791, 0.134756,
		-0.346796, 0.760808, -0.548547,
		17.189945, 24.354517, 22.313707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.808378, 24.530161, 22.848761>,  <17.432701, 23.821951, 22.697691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.808378, 24.530161, 22.848761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.422108, 24.560757, 22.749468>,  <17.190346, 24.579115, 22.689892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.422108, 24.560757, 22.749468>,  <17.808378, 24.530161, 22.848761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.422108, 24.560757, 22.749468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188305, 0.452107, 0.871860,
		0.178917, 0.888678, -0.422185,
		-0.965676, 0.076491, -0.248232,
		17.132404, 24.583704, 22.674999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.645771, 25.174597, 22.758120>,  <17.808378, 24.530161, 22.848761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.645771, 25.174597, 22.758120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.321846, 24.972660, 22.877678>,  <17.127491, 24.851498, 22.949413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.321846, 24.972660, 22.877678>,  <17.645771, 25.174597, 22.758120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.321846, 24.972660, 22.877678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078070, 0.412203, 0.907741,
		-0.581473, 0.758434, -0.294394,
		-0.809811, -0.504843, 0.298896,
		17.078903, 24.821207, 22.967346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.692354, 25.414745, 23.597370>,  <17.645771, 25.174597, 22.758120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.692354, 25.414745, 23.597370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.445404, 25.727596, 23.631128>,  <17.297234, 25.915306, 23.651382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.445404, 25.727596, 23.631128>,  <17.692354, 25.414745, 23.597370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.445404, 25.727596, 23.631128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397365, -0.217462, -0.891522,
		-0.678931, -0.583941, 0.445046,
		-0.617377, 0.782127, 0.084396,
		17.260191, 25.962234, 23.656446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.014013, 25.204187, 23.562912>,  <17.692354, 25.414745, 23.597370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.014013, 25.204187, 23.562912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.048992, 25.580402, 23.431618>,  <17.069979, 25.806131, 23.352840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.048992, 25.580402, 23.431618>,  <17.014013, 25.204187, 23.562912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.048992, 25.580402, 23.431618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415403, -0.265054, -0.870165,
		-0.905424, 0.212445, 0.367525,
		0.087448, 0.940539, -0.328236,
		17.075226, 25.862564, 23.333147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.336073, 25.535202, 23.337664>,  <17.014013, 25.204187, 23.562912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.336073, 25.535202, 23.337664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.669884, 25.650757, 23.150000>,  <16.870171, 25.720089, 23.037401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.669884, 25.650757, 23.150000>,  <16.336073, 25.535202, 23.337664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.669884, 25.650757, 23.150000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423860, -0.207402, -0.881661,
		-0.352003, 0.934629, -0.050636,
		0.834528, 0.288885, -0.469158,
		16.920242, 25.737423, 23.009253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.171820, 26.182434, 22.904587>,  <16.336073, 25.535202, 23.337664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.171820, 26.182434, 22.904587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.494904, 25.986458, 22.773401>,  <16.688755, 25.868872, 22.694691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.494904, 25.986458, 22.773401>,  <16.171820, 26.182434, 22.904587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.494904, 25.986458, 22.773401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407217, -0.061339, -0.911269,
		0.426351, 0.869595, -0.249057,
		0.807712, -0.489941, -0.327962,
		16.737217, 25.839476, 22.675013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.087219, 26.946268, 22.553886>,  <16.171820, 26.182434, 22.904587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.087219, 26.946268, 22.553886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.026363, 27.132355, 22.205076>,  <15.989850, 27.244007, 21.995790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.026363, 27.132355, 22.205076>,  <16.087219, 26.946268, 22.553886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.026363, 27.132355, 22.205076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286334, -0.823712, -0.489399,
		-0.945974, -0.324146, -0.007890,
		-0.152138, 0.465218, -0.872024,
		15.980722, 27.271919, 21.943468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.543431, 26.616531, 22.211021>,  <16.087219, 26.946268, 22.553886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.543431, 26.616531, 22.211021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.777070, 26.795792, 21.940321>,  <15.917253, 26.903347, 21.777901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.777070, 26.795792, 21.940321>,  <15.543431, 26.616531, 22.211021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.777070, 26.795792, 21.940321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104640, -0.785230, -0.610299,
		-0.804910, 0.427289, -0.411756,
		0.584097, 0.448149, -0.676751,
		15.952299, 26.930237, 21.737295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.199294, 26.400465, 21.611477>,  <15.543431, 26.616531, 22.211021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.199294, 26.400465, 21.611477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.572961, 26.493584, 21.503304>,  <15.797161, 26.549456, 21.438398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.572961, 26.493584, 21.503304>,  <15.199294, 26.400465, 21.611477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.572961, 26.493584, 21.503304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051774, -0.661428, -0.748219,
		-0.353057, 0.712964, -0.605832,
		0.934168, 0.232798, -0.270435,
		15.853211, 26.563423, 21.422173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.182877, 26.652235, 20.896933>,  <15.199294, 26.400465, 21.611477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.182877, 26.652235, 20.896933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.528029, 26.473068, 20.990574>,  <15.735122, 26.365568, 21.046759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.528029, 26.473068, 20.990574>,  <15.182877, 26.652235, 20.896933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.528029, 26.473068, 20.990574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139760, -0.656610, -0.741168,
		0.485696, 0.606823, -0.629179,
		0.862883, -0.447916, 0.234104,
		15.786894, 26.338694, 21.060804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.543203, 26.614363, 20.268318>,  <15.182877, 26.652235, 20.896933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.543203, 26.614363, 20.268318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.693152, 26.319824, 20.493622>,  <15.783121, 26.143101, 20.628805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.693152, 26.319824, 20.493622>,  <15.543203, 26.614363, 20.268318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.693152, 26.319824, 20.493622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001229, -0.607961, -0.793966,
		0.927076, 0.296943, -0.228812,
		0.374872, -0.736348, 0.563261,
		15.805614, 26.098919, 20.662600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.974571, 26.317503, 19.851068>,  <15.543203, 26.614363, 20.268318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.974571, 26.317503, 19.851068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.893336, 26.032536, 20.119759>,  <15.844595, 25.861555, 20.280973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.893336, 26.032536, 20.119759>,  <15.974571, 26.317503, 19.851068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.893336, 26.032536, 20.119759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104085, -0.666429, -0.738267,
		0.973613, -0.219850, 0.061191,
		-0.203088, -0.712417, 0.671727,
		15.832410, 25.818810, 20.321276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.375330, 25.711418, 19.661146>,  <15.974571, 26.317503, 19.851068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.375330, 25.711418, 19.661146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.096848, 25.541866, 19.892878>,  <15.929758, 25.440134, 20.031916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.096848, 25.541866, 19.892878>,  <16.375330, 25.711418, 19.661146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.096848, 25.541866, 19.892878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053259, -0.774316, -0.630553,
		0.715863, -0.469850, 0.516508,
		-0.696206, -0.423881, 0.579329,
		15.887985, 25.414701, 20.066677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.634129, 25.028221, 19.658361>,  <16.375330, 25.711418, 19.661146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.634129, 25.028221, 19.658361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.248871, 25.029140, 19.765951>,  <16.017715, 25.029692, 19.830505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.248871, 25.029140, 19.765951>,  <16.634129, 25.028221, 19.658361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.248871, 25.029140, 19.765951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142755, -0.851889, -0.503890,
		0.227979, -0.523717, 0.820821,
		-0.963144, 0.002300, 0.268976,
		15.959928, 25.029831, 19.846643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.461416, 24.336237, 19.931082>,  <16.634129, 25.028221, 19.658361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.461416, 24.336237, 19.931082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.150700, 24.532524, 19.773199>,  <15.964270, 24.650297, 19.678471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.150700, 24.532524, 19.773199>,  <16.461416, 24.336237, 19.931082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.150700, 24.532524, 19.773199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289410, -0.834817, -0.468319,
		-0.559318, -0.249555, 0.790497,
		-0.776792, 0.490717, -0.394705,
		15.917663, 24.679739, 19.654787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.084169, 23.796663, 19.894133>,  <16.461416, 24.336237, 19.931082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.084169, 23.796663, 19.894133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.934768, 24.095917, 19.674755>,  <15.845126, 24.275469, 19.543129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.934768, 24.095917, 19.674755>,  <16.084169, 23.796663, 19.894133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.934768, 24.095917, 19.674755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250513, -0.650617, -0.716897,
		-0.893161, -0.130371, 0.430425,
		-0.373505, 0.748132, -0.548446,
		15.822717, 24.320356, 19.510221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.563064, 23.572134, 19.631247>,  <16.084169, 23.796663, 19.894133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.563064, 23.572134, 19.631247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.590571, 23.883862, 19.382109>,  <15.607076, 24.070898, 19.232626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.590571, 23.883862, 19.382109>,  <15.563064, 23.572134, 19.631247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.590571, 23.883862, 19.382109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245505, -0.591903, -0.767710,
		-0.966953, 0.205706, 0.150622,
		0.068769, 0.779317, -0.622844,
		15.611202, 24.117657, 19.195255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.965246, 23.544991, 19.103235>,  <15.563064, 23.572134, 19.631247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.965246, 23.544991, 19.103235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.235593, 23.797253, 18.950668>,  <15.397801, 23.948610, 18.859129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.235593, 23.797253, 18.950668>,  <14.965246, 23.544991, 19.103235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.235593, 23.797253, 18.950668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012167, -0.526984, -0.849788,
		-0.736923, 0.569703, -0.363844,
		0.675867, 0.630655, -0.381415,
		15.438353, 23.986448, 18.836245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.728996, 23.773224, 18.396648>,  <14.965246, 23.544991, 19.103235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.728996, 23.773224, 18.396648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.125888, 23.822903, 18.393618>,  <15.364023, 23.852709, 18.391800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.125888, 23.822903, 18.393618>,  <14.728996, 23.773224, 18.396648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.125888, 23.822903, 18.393618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054166, -0.485957, -0.872303,
		-0.112017, 0.865113, -0.488908,
		0.992229, 0.124195, -0.007576,
		15.423556, 23.860161, 18.391344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.873665, 23.990086, 17.721621>,  <14.728996, 23.773224, 18.396648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.873665, 23.990086, 17.721621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.223619, 23.860558, 17.865686>,  <15.433591, 23.782841, 17.952126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.223619, 23.860558, 17.865686>,  <14.873665, 23.990086, 17.721621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.223619, 23.860558, 17.865686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160301, -0.508122, -0.846236,
		0.457038, 0.798092, -0.392639,
		0.874883, -0.323821, 0.360166,
		15.486083, 23.763411, 17.973736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.377831, 24.057026, 17.201717>,  <14.873665, 23.990086, 17.721621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.377831, 24.057026, 17.201717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.577100, 23.796852, 17.431067>,  <15.696662, 23.640747, 17.568676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.577100, 23.796852, 17.431067>,  <15.377831, 24.057026, 17.201717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.577100, 23.796852, 17.431067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312697, -0.482001, -0.818471,
		0.808729, 0.587033, -0.036731,
		0.498174, -0.650436, 0.573372,
		15.726552, 23.601721, 17.603079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.051889, 24.038620, 16.953274>,  <15.377831, 24.057026, 17.201717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.051889, 24.038620, 16.953274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.986424, 23.683357, 17.125036>,  <15.947145, 23.470200, 17.228094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.986424, 23.683357, 17.125036>,  <16.051889, 24.038620, 16.953274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.986424, 23.683357, 17.125036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421673, -0.456491, -0.783459,
		0.891855, 0.052846, 0.449223,
		-0.163664, -0.888157, 0.429407,
		15.937325, 23.416910, 17.253859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.664974, 23.802162, 17.104864>,  <16.051889, 24.038620, 16.953274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.664974, 23.802162, 17.104864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.431683, 23.477520, 17.091345>,  <16.291708, 23.282734, 17.083233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.431683, 23.477520, 17.091345>,  <16.664974, 23.802162, 17.104864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.431683, 23.477520, 17.091345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556580, -0.368963, -0.744369,
		0.591663, -0.452948, 0.666913,
		-0.583227, -0.811606, -0.033800,
		16.256714, 23.234037, 17.081205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.111992, 23.398552, 16.900915>,  <16.664974, 23.802162, 17.104864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.111992, 23.398552, 16.900915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.791683, 23.166904, 16.839743>,  <16.599499, 23.027916, 16.803040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.791683, 23.166904, 16.839743>,  <17.111992, 23.398552, 16.900915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.791683, 23.166904, 16.839743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469479, -0.448292, -0.760673,
		0.371961, -0.680924, 0.630863,
		-0.800771, -0.579118, -0.152932,
		16.551453, 22.993170, 16.793863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.402826, 22.765509, 16.761278>,  <17.111992, 23.398552, 16.900915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.402826, 22.765509, 16.761278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.027092, 22.759975, 16.624189>,  <16.801651, 22.756655, 16.541937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.027092, 22.759975, 16.624189>,  <17.402826, 22.765509, 16.761278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.027092, 22.759975, 16.624189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306368, -0.483130, -0.820197,
		-0.154231, -0.875439, 0.458060,
		-0.939335, -0.013835, -0.342721,
		16.745291, 22.755825, 16.521374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.377342, 22.091036, 16.565027>,  <17.402826, 22.765509, 16.761278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.377342, 22.091036, 16.565027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.092480, 22.281456, 16.358644>,  <16.921562, 22.395708, 16.234816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.092480, 22.281456, 16.358644>,  <17.377342, 22.091036, 16.565027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.092480, 22.281456, 16.358644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223197, -0.543283, -0.809337,
		-0.665596, -0.691533, 0.280648,
		-0.712154, 0.476052, -0.515956,
		16.878834, 22.424271, 16.203857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.130758, 21.551170, 16.073463>,  <17.377342, 22.091036, 16.565027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.130758, 21.551170, 16.073463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.042938, 21.917316, 15.938463>,  <16.990246, 22.137003, 15.857463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.042938, 21.917316, 15.938463>,  <17.130758, 21.551170, 16.073463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.042938, 21.917316, 15.938463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203346, -0.295409, -0.933479,
		-0.954174, -0.273575, -0.121279,
		-0.219550, 0.915363, -0.337502,
		16.977074, 22.191925, 15.837213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.841803, 21.448261, 15.464243>,  <17.130758, 21.551170, 16.073463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.841803, 21.448261, 15.464243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.908146, 21.842247, 15.444891>,  <16.947952, 22.078638, 15.433280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.908146, 21.842247, 15.444891>,  <16.841803, 21.448261, 15.464243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.908146, 21.842247, 15.444891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209535, -0.083137, -0.974261,
		-0.963632, 0.151453, -0.220173,
		0.165859, 0.984962, -0.048379,
		16.957903, 22.137735, 15.430377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.495142, 21.689993, 14.847950>,  <16.841803, 21.448261, 15.464243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.495142, 21.689993, 14.847950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.766315, 21.969292, 14.939917>,  <16.929020, 22.136871, 14.995096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.766315, 21.969292, 14.939917>,  <16.495142, 21.689993, 14.847950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.766315, 21.969292, 14.939917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256636, 0.068284, -0.964093,
		-0.688873, 0.712594, -0.132903,
		0.677932, 0.698245, 0.229916,
		16.969694, 22.178766, 15.008891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.318233, 22.188866, 14.407694>,  <16.495142, 21.689993, 14.847950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.318233, 22.188866, 14.407694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.707897, 22.204227, 14.496719>,  <16.941696, 22.213444, 14.550135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.707897, 22.204227, 14.496719>,  <16.318233, 22.188866, 14.407694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.707897, 22.204227, 14.496719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216677, 0.119130, -0.968947,
		-0.063725, 0.992136, 0.107731,
		0.974161, 0.038403, 0.222564,
		17.000145, 22.215748, 14.563489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.535757, 22.684986, 13.913179>,  <16.318233, 22.188866, 14.407694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.535757, 22.684986, 13.913179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.856991, 22.474945, 14.025835>,  <17.049730, 22.348921, 14.093429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.856991, 22.474945, 14.025835>,  <16.535757, 22.684986, 13.913179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.856991, 22.474945, 14.025835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333714, 0.004781, -0.942662,
		0.493650, 0.851024, 0.179074,
		0.803085, -0.525104, 0.281638,
		17.097916, 22.317413, 14.110327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.073086, 23.071831, 13.617127>,  <16.535757, 22.684986, 13.913179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.073086, 23.071831, 13.617127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.225597, 22.707851, 13.682388>,  <17.317104, 22.489464, 13.721545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.225597, 22.707851, 13.682388>,  <17.073086, 23.071831, 13.617127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.225597, 22.707851, 13.682388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310491, -0.040185, -0.949727,
		0.870759, 0.412769, 0.267209,
		0.381280, -0.909949, 0.163152,
		17.339981, 22.434866, 13.731334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.638578, 23.159187, 13.187880>,  <17.073086, 23.071831, 13.617127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.638578, 23.159187, 13.187880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.609943, 22.768848, 13.270435>,  <17.592762, 22.534645, 13.319969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.609943, 22.768848, 13.270435>,  <17.638578, 23.159187, 13.187880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.609943, 22.768848, 13.270435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375579, -0.218063, -0.900771,
		0.924021, 0.013033, 0.382118,
		-0.071586, -0.975848, 0.206390,
		17.588469, 22.476093, 13.332353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.253254, 22.866453, 12.961929>,  <17.638578, 23.159187, 13.187880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.253254, 22.866453, 12.961929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.019070, 22.544540, 13.001047>,  <17.878559, 22.351393, 13.024518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.019070, 22.544540, 13.001047>,  <18.253254, 22.866453, 12.961929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.019070, 22.544540, 13.001047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317392, -0.338535, -0.885809,
		0.745990, -0.487565, 0.453629,
		-0.585458, -0.804783, 0.097795,
		17.843431, 22.303106, 13.030386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.646132, 22.299423, 12.840146>,  <18.253254, 22.866453, 12.961929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.646132, 22.299423, 12.840146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.293415, 22.125942, 12.766010>,  <18.081785, 22.021854, 12.721529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.293415, 22.125942, 12.766010>,  <18.646132, 22.299423, 12.840146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.293415, 22.125942, 12.766010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319694, -0.260706, -0.910949,
		0.346763, -0.862516, 0.368540,
		-0.881789, -0.433703, -0.185338,
		18.028879, 21.995831, 12.710409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.771965, 21.629095, 12.757300>,  <18.646132, 22.299423, 12.840146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.771965, 21.629095, 12.757300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.433975, 21.712513, 12.560312>,  <18.231182, 21.762564, 12.442120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.433975, 21.712513, 12.560312>,  <18.771965, 21.629095, 12.757300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.433975, 21.712513, 12.560312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380734, -0.412112, -0.827771,
		-0.375578, -0.886947, 0.268825,
		-0.844975, 0.208542, -0.492471,
		18.180483, 21.775076, 12.412571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.717197, 21.025906, 12.339630>,  <18.771965, 21.629095, 12.757300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.717197, 21.025906, 12.339630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.483326, 21.301170, 12.167777>,  <18.343004, 21.466330, 12.064665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.483326, 21.301170, 12.167777>,  <18.717197, 21.025906, 12.339630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.483326, 21.301170, 12.167777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149906, -0.428821, -0.890865,
		-0.797295, -0.585274, 0.147562,
		-0.584678, 0.688162, -0.429633,
		18.307922, 21.507620, 12.038887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.370949, 20.639824, 11.814373>,  <18.717197, 21.025906, 12.339630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.370949, 20.639824, 11.814373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.303268, 21.026257, 11.736342>,  <18.262661, 21.258116, 11.689525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.303268, 21.026257, 11.736342>,  <18.370949, 20.639824, 11.814373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.303268, 21.026257, 11.736342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281019, -0.142423, -0.949076,
		-0.944669, -0.215405, -0.247389,
		-0.169201, 0.966083, -0.195075,
		18.252508, 21.316082, 11.677820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.883987, 20.680017, 11.187399>,  <18.370949, 20.639824, 11.814373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.883987, 20.680017, 11.187399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.076576, 21.029896, 11.209633>,  <18.192129, 21.239822, 11.222973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.076576, 21.029896, 11.209633>,  <17.883987, 20.680017, 11.187399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.076576, 21.029896, 11.209633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185148, -0.039515, -0.981916,
		-0.856683, 0.483055, -0.180974,
		0.481470, 0.874698, 0.055585,
		18.221018, 21.292305, 11.226308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.777164, 20.983042, 10.574671>,  <17.883987, 20.680017, 11.187399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.777164, 20.983042, 10.574671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.090012, 21.203148, 10.691629>,  <18.277719, 21.335213, 10.761805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.090012, 21.203148, 10.691629>,  <17.777164, 20.983042, 10.574671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.090012, 21.203148, 10.691629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332161, 0.028855, -0.942781,
		-0.527219, 0.834490, -0.160209,
		0.782119, 0.550267, 0.292398,
		18.324648, 21.368229, 10.779348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.830709, 21.576077, 10.138296>,  <17.777164, 20.983042, 10.574671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.830709, 21.576077, 10.138296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.197166, 21.508659, 10.283775>,  <18.417040, 21.468210, 10.371063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.197166, 21.508659, 10.283775>,  <17.830709, 21.576077, 10.138296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.197166, 21.508659, 10.283775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354945, -0.080526, -0.931412,
		0.186269, 0.982400, -0.013950,
		0.916143, -0.168542, 0.363698,
		18.472010, 21.458097, 10.392884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.298666, 21.921713, 9.787663>,  <17.830709, 21.576077, 10.138296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.298666, 21.921713, 9.787663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.576042, 21.693005, 9.963035>,  <18.742468, 21.555779, 10.068257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.576042, 21.693005, 9.963035>,  <18.298666, 21.921713, 9.787663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.576042, 21.693005, 9.963035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495265, -0.063696, -0.866404,
		0.523312, 0.817935, 0.239010,
		0.693438, -0.571773, 0.438428,
		18.784073, 21.521473, 10.094563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.888899, 22.077379, 9.320389>,  <18.298666, 21.921713, 9.787663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.888899, 22.077379, 9.320389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.045612, 21.759636, 9.506079>,  <19.139641, 21.568991, 9.617493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.045612, 21.759636, 9.506079>,  <18.888899, 22.077379, 9.320389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.045612, 21.759636, 9.506079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657367, -0.111338, -0.745300,
		0.643720, 0.597162, 0.478563,
		0.391782, -0.794356, 0.464225,
		19.163147, 21.521330, 9.645347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.659939, 22.163229, 9.387189>,  <18.888899, 22.077379, 9.320389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.659939, 22.163229, 9.387189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.559113, 21.776665, 9.407253>,  <19.498617, 21.544727, 9.419292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.559113, 21.776665, 9.407253>,  <19.659939, 22.163229, 9.387189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.559113, 21.776665, 9.407253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738664, -0.225633, -0.635189,
		0.625171, -0.123056, 0.770726,
		-0.252065, -0.966409, 0.050162,
		19.483494, 21.486742, 9.422302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.324078, 21.833456, 9.238062>,  <19.659939, 22.163229, 9.387189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.324078, 21.833456, 9.238062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.074772, 21.521828, 9.210978>,  <19.925188, 21.334850, 9.194727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.074772, 21.521828, 9.210978>,  <20.324078, 21.833456, 9.238062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.074772, 21.521828, 9.210978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615631, -0.435425, -0.656813,
		0.482222, -0.451054, 0.751007,
		-0.623266, -0.779073, -0.067711,
		19.887793, 21.288105, 9.190664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.733515, 21.239120, 9.402529>,  <20.324078, 21.833456, 9.238062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.733515, 21.239120, 9.402529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.429150, 21.139713, 9.162779>,  <20.246531, 21.080069, 9.018929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.429150, 21.139713, 9.162779>,  <20.733515, 21.239120, 9.402529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.429150, 21.139713, 9.162779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634820, -0.476222, -0.608454,
		-0.134223, -0.843475, 0.520128,
		-0.760913, -0.248519, -0.599375,
		20.200876, 21.065157, 8.982966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.802975, 20.463554, 9.183643>,  <20.733515, 21.239120, 9.402529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.802975, 20.463554, 9.183643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.554401, 20.662792, 8.941744>,  <20.405256, 20.782335, 8.796604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.554401, 20.662792, 8.941744>,  <20.802975, 20.463554, 9.183643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.554401, 20.662792, 8.941744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295294, -0.566055, -0.769664,
		-0.725687, -0.656875, 0.204682,
		-0.621434, 0.498094, -0.604750,
		20.367971, 20.812220, 8.760319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.680065, 19.951832, 8.696416>,  <20.802975, 20.463554, 9.183643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.680065, 19.951832, 8.696416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.552525, 20.277721, 8.502689>,  <20.476000, 20.473255, 8.386454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.552525, 20.277721, 8.502689>,  <20.680065, 19.951832, 8.696416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.552525, 20.277721, 8.502689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159911, -0.457419, -0.874755,
		-0.934218, -0.356363, 0.015565,
		-0.318850, 0.814723, -0.484316,
		20.456869, 20.522139, 8.357394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.207525, 19.717802, 8.181472>,  <20.680065, 19.951832, 8.696416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.207525, 19.717802, 8.181472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.374138, 20.065819, 8.075997>,  <20.474106, 20.274630, 8.012712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.374138, 20.065819, 8.075997>,  <20.207525, 19.717802, 8.181472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.374138, 20.065819, 8.075997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264373, -0.393430, -0.880522,
		-0.869833, 0.297053, -0.393891,
		0.416531, 0.870041, -0.263686,
		20.499098, 20.326832, 7.996891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.847492, 19.932922, 7.575677>,  <20.207525, 19.717802, 8.181472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.847492, 19.932922, 7.575677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.205997, 20.109715, 7.590468>,  <20.421101, 20.215790, 7.599343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.205997, 20.109715, 7.590468>,  <19.847492, 19.932922, 7.575677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.205997, 20.109715, 7.590468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180887, -0.288133, -0.940351,
		-0.404963, 0.849489, -0.338191,
		0.896262, 0.441981, 0.036979,
		20.474876, 20.242310, 7.601562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.413630, 19.665638, 8.144634>,  <19.847492, 19.932922, 7.575677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.413630, 19.665638, 8.144634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.108086, 19.516518, 7.933908>,  <18.924759, 19.427046, 7.807471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.108086, 19.516518, 7.933908>,  <19.413630, 19.665638, 8.144634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.108086, 19.516518, 7.933908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633037, 0.273919, 0.724039,
		-0.125616, 0.886560, -0.445233,
		-0.763862, -0.372800, -0.526817,
		18.878927, 19.404678, 7.775863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.921577, 20.256472, 8.092015>,  <19.413630, 19.665638, 8.144634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.921577, 20.256472, 8.092015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.729893, 19.907452, 8.054038>,  <18.614882, 19.698040, 8.031252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.729893, 19.907452, 8.054038>,  <18.921577, 20.256472, 8.092015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.729893, 19.907452, 8.054038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672480, 0.295498, 0.678566,
		-0.564027, 0.389024, -0.728377,
		-0.479213, -0.872549, -0.094942,
		18.586128, 19.645687, 8.025556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.309832, 20.398233, 8.344519>,  <18.921577, 20.256472, 8.092015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.309832, 20.398233, 8.344519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.240150, 20.007729, 8.293040>,  <18.198341, 19.773426, 8.262154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.240150, 20.007729, 8.293040>,  <18.309832, 20.398233, 8.344519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.240150, 20.007729, 8.293040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724111, 0.038434, 0.688612,
		-0.667320, 0.213150, -0.713618,
		-0.174205, -0.976263, -0.128696,
		18.187889, 19.714849, 8.254432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.619286, 20.300404, 8.171921>,  <18.309832, 20.398233, 8.344519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.619286, 20.300404, 8.171921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.739113, 19.956623, 8.337619>,  <17.811010, 19.750355, 8.437037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.739113, 19.956623, 8.337619>,  <17.619286, 20.300404, 8.171921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.739113, 19.956623, 8.337619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723626, 0.078290, 0.685737,
		-0.621790, -0.505184, -0.598469,
		0.299570, -0.859453, 0.414245,
		17.828983, 19.698788, 8.461892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.055931, 19.966413, 8.210791>,  <17.619286, 20.300404, 8.171921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.055931, 19.966413, 8.210791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.286015, 19.788963, 8.485696>,  <17.424065, 19.682493, 8.650639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.286015, 19.788963, 8.485696>,  <17.055931, 19.966413, 8.210791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.286015, 19.788963, 8.485696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744122, 0.065160, 0.664858,
		-0.339731, -0.893840, -0.292632,
		0.575208, -0.443627, 0.687263,
		17.458578, 19.655876, 8.691875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.549688, 19.438499, 8.527241>,  <17.055931, 19.966413, 8.210791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.549688, 19.438499, 8.527241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.859070, 19.487709, 8.775959>,  <17.044699, 19.517235, 8.925190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.859070, 19.487709, 8.775959>,  <16.549688, 19.438499, 8.527241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.859070, 19.487709, 8.775959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633847, 0.146824, 0.759395,
		0.002129, -0.981483, 0.191539,
		0.773456, 0.123023, 0.621797,
		17.091106, 19.524616, 8.962498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.500267, 18.928173, 9.121386>,  <16.549688, 19.438499, 8.527241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.500267, 18.928173, 9.121386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.716015, 19.251656, 9.215257>,  <16.845463, 19.445745, 9.271580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.716015, 19.251656, 9.215257>,  <16.500267, 18.928173, 9.121386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.716015, 19.251656, 9.215257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528038, 0.107731, 0.842360,
		0.655941, -0.578261, 0.485135,
		0.539368, 0.808708, 0.234679,
		16.877825, 19.494268, 9.285661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.692757, 18.833893, 9.851499>,  <16.500267, 18.928173, 9.121386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.692757, 18.833893, 9.851499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.759033, 19.222664, 9.784685>,  <16.798800, 19.455927, 9.744597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.759033, 19.222664, 9.784685>,  <16.692757, 18.833893, 9.851499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.759033, 19.222664, 9.784685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402647, 0.221287, 0.888205,
		0.900234, -0.079912, 0.428009,
		0.165691, 0.971929, -0.167034,
		16.808741, 19.514242, 9.734575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.924768, 19.036438, 10.386900>,  <16.692757, 18.833893, 9.851499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.924768, 19.036438, 10.386900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.795574, 19.381184, 10.230506>,  <16.718058, 19.588032, 10.136669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.795574, 19.381184, 10.230506>,  <16.924768, 19.036438, 10.386900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.795574, 19.381184, 10.230506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273016, 0.310713, 0.910450,
		0.906169, 0.400809, 0.134947,
		-0.322987, 0.861864, -0.390985,
		16.698679, 19.639744, 10.113211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.059973, 19.597363, 10.883403>,  <16.924768, 19.036438, 10.386900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.059973, 19.597363, 10.883403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.799908, 19.740795, 10.615460>,  <16.643869, 19.826855, 10.454695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.799908, 19.740795, 10.615460>,  <17.059973, 19.597363, 10.883403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.799908, 19.740795, 10.615460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365489, 0.625323, 0.689484,
		0.666112, 0.693102, -0.275505,
		-0.650163, 0.358580, -0.669857,
		16.604858, 19.848370, 10.414503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.081928, 20.338379, 10.864456>,  <17.059973, 19.597363, 10.883403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.081928, 20.338379, 10.864456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.716896, 20.229271, 10.742605>,  <16.497877, 20.163805, 10.669495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.716896, 20.229271, 10.742605>,  <17.081928, 20.338379, 10.864456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.716896, 20.229271, 10.742605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407335, 0.541264, 0.735603,
		-0.035768, 0.795380, -0.605055,
		-0.912578, -0.272771, -0.304627,
		16.443123, 20.147440, 10.651217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.736017, 20.919144, 10.968315>,  <17.081928, 20.338379, 10.864456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.736017, 20.919144, 10.968315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.450756, 20.640644, 10.935703>,  <16.279598, 20.473545, 10.916136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.450756, 20.640644, 10.935703>,  <16.736017, 20.919144, 10.968315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.450756, 20.640644, 10.935703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459899, 0.376917, 0.804006,
		-0.529059, 0.610876, -0.589005,
		-0.713154, -0.696250, -0.081530,
		16.236809, 20.431768, 10.911244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.153135, 21.317419, 11.174500>,  <16.736017, 20.919144, 10.968315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.153135, 21.317419, 11.174500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.021980, 20.940010, 11.193483>,  <15.943287, 20.713564, 11.204873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.021980, 20.940010, 11.193483>,  <16.153135, 21.317419, 11.174500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.021980, 20.940010, 11.193483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637773, 0.258138, 0.725679,
		-0.696946, 0.207674, -0.686395,
		-0.327889, -0.943523, 0.047459,
		15.923614, 20.656954, 11.207721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.378846, 21.314728, 11.108872>,  <16.153135, 21.317419, 11.174500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.378846, 21.314728, 11.108872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.466046, 20.975533, 11.302114>,  <15.518367, 20.772015, 11.418059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.466046, 20.975533, 11.302114>,  <15.378846, 21.314728, 11.108872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.466046, 20.975533, 11.302114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607908, 0.269265, 0.746956,
		-0.763494, -0.456521, -0.456799,
		0.218001, -0.847989, 0.483105,
		15.531446, 20.721136, 11.447046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.776765, 20.875267, 11.239641>,  <15.378846, 21.314728, 11.108872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.776765, 20.875267, 11.239641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.016391, 20.763775, 11.539889>,  <15.160167, 20.696880, 11.720038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.016391, 20.763775, 11.539889>,  <14.776765, 20.875267, 11.239641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.016391, 20.763775, 11.539889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695998, 0.282205, 0.660263,
		-0.395864, -0.917971, -0.024936,
		0.599065, -0.278729, 0.750621,
		15.196111, 20.680157, 11.765076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.324602, 20.714314, 11.802474>,  <14.776765, 20.875267, 11.239641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.324602, 20.714314, 11.802474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.683665, 20.712872, 11.978745>,  <14.899103, 20.712006, 12.084508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.683665, 20.712872, 11.978745>,  <14.324602, 20.714314, 11.802474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.683665, 20.712872, 11.978745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411386, 0.351719, 0.840866,
		-0.158028, -0.936098, 0.314240,
		0.897657, -0.003607, 0.440679,
		14.952963, 20.711790, 12.110950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.082499, 20.487959, 12.385579>,  <14.324602, 20.714314, 11.802474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.082499, 20.487959, 12.385579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.449285, 20.642715, 12.424546>,  <14.669356, 20.735569, 12.447927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.449285, 20.642715, 12.424546>,  <14.082499, 20.487959, 12.385579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.449285, 20.642715, 12.424546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267456, 0.414914, 0.869663,
		0.296044, -0.823506, 0.483938,
		0.916965, 0.386891, 0.097419,
		14.724374, 20.758783, 12.453772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.247441, 20.346838, 13.033418>,  <14.082499, 20.487959, 12.385579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.247441, 20.346838, 13.033418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.445329, 20.679955, 12.934048>,  <14.564061, 20.879824, 12.874426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.445329, 20.679955, 12.934048>,  <14.247441, 20.346838, 13.033418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.445329, 20.679955, 12.934048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378728, 0.463884, 0.800860,
		0.782188, -0.302115, 0.544893,
		0.494719, 0.832790, -0.248425,
		14.593744, 20.929790, 12.859520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.568967, 20.462141, 13.657135>,  <14.247441, 20.346838, 13.033418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.568967, 20.462141, 13.657135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.611119, 20.814228, 13.472046>,  <14.636411, 21.025480, 13.360992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.611119, 20.814228, 13.472046>,  <14.568967, 20.462141, 13.657135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.611119, 20.814228, 13.472046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195204, 0.474572, 0.858299,
		0.975085, -0.000122, 0.221832,
		0.105380, 0.880217, -0.462724,
		14.642734, 21.078293, 13.333229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.046359, 20.907547, 14.026224>,  <14.568967, 20.462141, 13.657135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.046359, 20.907547, 14.026224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.843917, 21.165844, 13.797533>,  <14.722451, 21.320822, 13.660318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.843917, 21.165844, 13.797533>,  <15.046359, 20.907547, 14.026224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.843917, 21.165844, 13.797533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225444, 0.540797, 0.810379,
		0.832486, 0.539029, -0.128121,
		-0.506105, 0.645745, -0.571727,
		14.692085, 21.359568, 13.626015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.364566, 21.565742, 14.044263>,  <15.046359, 20.907547, 14.026224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.364566, 21.565742, 14.044263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.980285, 21.630161, 13.953831>,  <14.749716, 21.668812, 13.899571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.980285, 21.630161, 13.953831>,  <15.364566, 21.565742, 14.044263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.980285, 21.630161, 13.953831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094141, 0.577165, 0.811183,
		0.261123, 0.800590, -0.539324,
		-0.960704, 0.161046, -0.226080,
		14.692074, 21.678474, 13.886006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.102723, 22.334805, 14.091038>,  <15.364566, 21.565742, 14.044263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.102723, 22.334805, 14.091038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.802516, 22.076218, 14.145893>,  <14.622392, 21.921066, 14.178806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.802516, 22.076218, 14.145893>,  <15.102723, 22.334805, 14.091038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.802516, 22.076218, 14.145893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316741, 0.534014, 0.783903,
		-0.579999, 0.544896, -0.605549,
		-0.750517, -0.646465, 0.137137,
		14.577361, 21.882278, 14.187035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.713664, 22.778421, 14.454089>,  <15.102723, 22.334805, 14.091038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.713664, 22.778421, 14.454089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.588115, 22.407043, 14.533558>,  <14.512785, 22.184216, 14.581239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.588115, 22.407043, 14.533558>,  <14.713664, 22.778421, 14.454089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.588115, 22.407043, 14.533558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371265, 0.312600, 0.874324,
		-0.873868, 0.200667, -0.442817,
		-0.313873, -0.928447, 0.198671,
		14.493953, 22.128510, 14.593159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.067370, 22.843008, 14.612311>,  <14.713664, 22.778421, 14.454089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.067370, 22.843008, 14.612311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.193925, 22.506168, 14.787020>,  <14.269857, 22.304064, 14.891845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.193925, 22.506168, 14.787020>,  <14.067370, 22.843008, 14.612311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.193925, 22.506168, 14.787020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412666, 0.292399, 0.862676,
		-0.854170, -0.453180, -0.254995,
		0.316387, -0.842099, 0.436770,
		14.288841, 22.253538, 14.918051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.502410, 22.565521, 15.008660>,  <14.067370, 22.843008, 14.612311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.502410, 22.565521, 15.008660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.808688, 22.357533, 15.160101>,  <13.992455, 22.232738, 15.250965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.808688, 22.357533, 15.160101>,  <13.502410, 22.565521, 15.008660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.808688, 22.357533, 15.160101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316920, 0.207214, 0.925540,
		-0.559706, -0.828669, -0.006126,
		0.765697, -0.519971, 0.378601,
		14.038397, 22.201542, 15.273681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.186879, 22.168468, 15.552938>,  <13.502410, 22.565521, 15.008660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.186879, 22.168468, 15.552938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.580926, 22.176697, 15.621201>,  <13.817354, 22.181633, 15.662158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.580926, 22.176697, 15.621201>,  <13.186879, 22.168468, 15.552938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.580926, 22.176697, 15.621201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171884, 0.126612, 0.976947,
		-0.001515, -0.991739, 0.128263,
		0.985116, 0.020566, 0.170656,
		13.876461, 22.182867, 15.672398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.317420, 21.502174, 15.966225>,  <13.186879, 22.168468, 15.552938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.317420, 21.502174, 15.966225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.623101, 21.750523, 16.036098>,  <13.806510, 21.899530, 16.078024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.623101, 21.750523, 16.036098>,  <13.317420, 21.502174, 15.966225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.623101, 21.750523, 16.036098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120304, -0.128872, 0.984337,
		0.633657, -0.773248, -0.023791,
		0.764203, 0.620869, 0.174685,
		13.852362, 21.936783, 16.088505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.659579, 21.258419, 16.552542>,  <13.317420, 21.502174, 15.966225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.659579, 21.258419, 16.552542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.758286, 21.645638, 16.534683>,  <13.817511, 21.877968, 16.523968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.758286, 21.645638, 16.534683>,  <13.659579, 21.258419, 16.552542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.758286, 21.645638, 16.534683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108338, 0.073342, 0.991405,
		0.963000, -0.239811, 0.122974,
		0.246769, 0.968045, -0.044648,
		13.832317, 21.936050, 16.521288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.243654, 21.391699, 17.060186>,  <13.659579, 21.258419, 16.552542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.243654, 21.391699, 17.060186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.110095, 21.766014, 17.014900>,  <14.029960, 21.990602, 16.987728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.110095, 21.766014, 17.014900>,  <14.243654, 21.391699, 17.060186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.110095, 21.766014, 17.014900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093083, 0.086786, 0.991869,
		0.938002, 0.341720, 0.058128,
		-0.333897, 0.935786, -0.113214,
		14.009926, 22.046749, 16.980936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.651939, 21.840044, 17.577570>,  <14.243654, 21.391699, 17.060186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.651939, 21.840044, 17.577570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.315843, 22.027218, 17.468002>,  <14.114184, 22.139523, 17.402262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.315843, 22.027218, 17.468002>,  <14.651939, 21.840044, 17.577570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.315843, 22.027218, 17.468002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105567, 0.354335, 0.929141,
		0.531835, 0.809620, -0.248329,
		-0.840242, 0.467934, -0.273917,
		14.063770, 22.167599, 17.385828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.703211, 22.499653, 17.846502>,  <14.651939, 21.840044, 17.577570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.703211, 22.499653, 17.846502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.312289, 22.453163, 17.775654>,  <14.077737, 22.425270, 17.733145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.312289, 22.453163, 17.775654>,  <14.703211, 22.499653, 17.846502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.312289, 22.453163, 17.775654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206821, 0.342421, 0.916500,
		-0.045868, 0.932330, -0.358686,
		-0.977303, -0.116222, -0.177119,
		14.019098, 22.418297, 17.722519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.398866, 23.111061, 18.080349>,  <14.703211, 22.499653, 17.846502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.398866, 23.111061, 18.080349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.095405, 22.851040, 18.063009>,  <13.913328, 22.695028, 18.052605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.095405, 22.851040, 18.063009>,  <14.398866, 23.111061, 18.080349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.095405, 22.851040, 18.063009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238020, 0.214617, 0.947252,
		-0.606459, 0.728953, -0.317544,
		-0.758653, -0.650052, -0.043349,
		13.867809, 22.656025, 18.050005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.925694, 23.425995, 18.424055>,  <14.398866, 23.111061, 18.080349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.925694, 23.425995, 18.424055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.779092, 23.054653, 18.448809>,  <13.691131, 22.831848, 18.463661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.779092, 23.054653, 18.448809>,  <13.925694, 23.425995, 18.424055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.779092, 23.054653, 18.448809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075380, 0.095921, 0.992531,
		-0.927357, 0.359104, -0.105135,
		-0.366506, -0.928355, 0.061883,
		13.669140, 22.776146, 18.467373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.287282, 23.358593, 18.823959>,  <13.925694, 23.425995, 18.424055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.287282, 23.358593, 18.823959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.437531, 22.990654, 18.869190>,  <13.527681, 22.769890, 18.896328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.437531, 22.990654, 18.869190>,  <13.287282, 23.358593, 18.823959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.437531, 22.990654, 18.869190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078779, 0.089880, 0.992832,
		-0.923418, -0.381840, -0.038703,
		0.375624, -0.919848, 0.113078,
		13.550219, 22.714699, 18.903114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.986977, 23.135710, 19.495115>,  <13.287282, 23.358593, 18.823959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.986977, 23.135710, 19.495115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.266091, 22.861588, 19.411736>,  <13.433560, 22.697115, 19.361708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.266091, 22.861588, 19.411736>,  <12.986977, 23.135710, 19.495115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.266091, 22.861588, 19.411736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189749, -0.103768, 0.976334,
		-0.690717, -0.720825, 0.057628,
		0.697786, -0.685306, -0.208450,
		13.475428, 22.655996, 19.349201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.878966, 22.544420, 19.974310>,  <12.986977, 23.135710, 19.495115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.878966, 22.544420, 19.974310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.263886, 22.562428, 19.867016>,  <13.494839, 22.573233, 19.802639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.263886, 22.562428, 19.867016>,  <12.878966, 22.544420, 19.974310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.263886, 22.562428, 19.867016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271985, -0.157230, 0.949370,
		0.000567, -0.986535, -0.163548,
		0.962302, 0.045021, -0.268233,
		13.552577, 22.575933, 19.786547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.056467, 21.879944, 20.224094>,  <12.878966, 22.544420, 19.974310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.056467, 21.879944, 20.224094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.373704, 22.117451, 20.169769>,  <13.564046, 22.259954, 20.137175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.373704, 22.117451, 20.169769>,  <13.056467, 21.879944, 20.224094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.373704, 22.117451, 20.169769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313244, -0.206366, 0.926980,
		0.522383, -0.777723, -0.349661,
		0.793091, 0.593768, -0.135815,
		13.611631, 22.295582, 20.129025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.748350, 21.484777, 20.375629>,  <13.056467, 21.879944, 20.224094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.748350, 21.484777, 20.375629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.797566, 21.880688, 20.404490>,  <13.827096, 22.118235, 20.421806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.797566, 21.880688, 20.404490>,  <13.748350, 21.484777, 20.375629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.797566, 21.880688, 20.404490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382257, -0.114362, 0.916952,
		0.915828, -0.085242, -0.392419,
		0.123041, 0.989775, 0.072152,
		13.834478, 22.177620, 20.426134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.178401, 20.844307, 20.717295>,  <13.748350, 21.484777, 20.375629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.178401, 20.844307, 20.717295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.031886, 20.489136, 20.828590>,  <13.943977, 20.276033, 20.895367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.031886, 20.489136, 20.828590>,  <14.178401, 20.844307, 20.717295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.031886, 20.489136, 20.828590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175019, -0.227940, -0.957816,
		0.913894, -0.399532, -0.071913,
		-0.366286, -0.887929, 0.278238,
		13.922000, 20.222757, 20.912062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.502544, 20.363922, 20.314596>,  <14.178401, 20.844307, 20.717295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.502544, 20.363922, 20.314596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.168513, 20.189320, 20.448526>,  <13.968095, 20.084558, 20.528885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.168513, 20.189320, 20.448526>,  <14.502544, 20.363922, 20.314596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.168513, 20.189320, 20.448526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188836, -0.344205, -0.919708,
		0.516707, -0.831255, 0.205010,
		-0.835077, -0.436506, 0.334824,
		13.917990, 20.058367, 20.548973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.586257, 19.619238, 20.102650>,  <14.502544, 20.363922, 20.314596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.586257, 19.619238, 20.102650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.201697, 19.667507, 20.201565>,  <13.970962, 19.696468, 20.260914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.201697, 19.667507, 20.201565>,  <14.586257, 19.619238, 20.102650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.201697, 19.667507, 20.201565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275092, -0.401295, -0.873663,
		-0.006193, -0.907965, 0.419001,
		-0.961398, 0.120674, 0.247288,
		13.913278, 19.703709, 20.275751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.251462, 18.959993, 20.027607>,  <14.586257, 19.619238, 20.102650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.251462, 18.959993, 20.027607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.984879, 19.254665, 19.981754>,  <13.824930, 19.431469, 19.954243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.984879, 19.254665, 19.981754>,  <14.251462, 18.959993, 20.027607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.984879, 19.254665, 19.981754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354719, -0.448558, -0.820348,
		-0.655753, -0.506062, 0.560258,
		-0.666455, 0.736680, -0.114634,
		13.784943, 19.475670, 19.947365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.632484, 18.640303, 19.839394>,  <14.251462, 18.959993, 20.027607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.632484, 18.640303, 19.839394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.588403, 19.019119, 19.718750>,  <13.561954, 19.246408, 19.646364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.588403, 19.019119, 19.718750>,  <13.632484, 18.640303, 19.839394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.588403, 19.019119, 19.718750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172082, -0.317053, -0.932666,
		-0.978899, -0.050882, 0.197909,
		-0.110204, 0.947042, -0.301607,
		13.555342, 19.303232, 19.628267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.092538, 18.607815, 19.443501>,  <13.632484, 18.640303, 19.839394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.092538, 18.607815, 19.443501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.229272, 18.966324, 19.330471>,  <13.311313, 19.181429, 19.262653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.229272, 18.966324, 19.330471>,  <13.092538, 18.607815, 19.443501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.229272, 18.966324, 19.330471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032301, -0.289302, -0.956693,
		-0.939205, 0.336158, -0.069943,
		0.341835, 0.896271, -0.282572,
		13.331822, 19.235205, 19.245699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.642341, 18.868160, 18.944447>,  <13.092538, 18.607815, 19.443501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.642341, 18.868160, 18.944447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.986377, 19.061329, 18.878679>,  <13.192799, 19.177229, 18.839218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.986377, 19.061329, 18.878679>,  <12.642341, 18.868160, 18.944447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.986377, 19.061329, 18.878679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062086, -0.220818, -0.973337,
		-0.506350, 0.847365, -0.159941,
		0.860090, 0.482919, -0.164420,
		13.244404, 19.206205, 18.829353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.533268, 19.186085, 18.270050>,  <12.642341, 18.868160, 18.944447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.533268, 19.186085, 18.270050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.925996, 19.248867, 18.312750>,  <13.161633, 19.286537, 18.338369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.925996, 19.248867, 18.312750>,  <12.533268, 19.186085, 18.270050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.925996, 19.248867, 18.312750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116235, -0.052533, -0.991831,
		-0.150066, 0.986207, -0.069822,
		0.981820, 0.156956, 0.106749,
		13.220542, 19.295954, 18.344774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.783038, 19.779068, 17.791473>,  <12.533268, 19.186085, 18.270050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.783038, 19.779068, 17.791473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.114152, 19.566925, 17.864677>,  <13.312820, 19.439640, 17.908600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.114152, 19.566925, 17.864677>,  <12.783038, 19.779068, 17.791473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.114152, 19.566925, 17.864677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267072, 0.085631, -0.959864,
		0.493400, 0.843438, 0.212527,
		0.827785, -0.530357, 0.183009,
		13.362488, 19.407818, 17.919580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.423832, 20.130882, 17.346041>,  <12.783038, 19.779068, 17.791473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.423832, 20.130882, 17.346041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.492660, 19.745422, 17.427792>,  <13.533957, 19.514147, 17.476841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.492660, 19.745422, 17.427792>,  <13.423832, 20.130882, 17.346041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.492660, 19.745422, 17.427792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167028, -0.175926, -0.970130,
		0.970821, 0.201066, 0.130685,
		0.172069, -0.963651, 0.204376,
		13.544280, 19.456327, 17.489105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.963341, 19.947313, 16.898769>,  <13.423832, 20.130882, 17.346041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.963341, 19.947313, 16.898769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.827035, 19.590187, 17.016588>,  <13.745252, 19.375912, 17.087280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.827035, 19.590187, 17.016588>,  <13.963341, 19.947313, 16.898769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.827035, 19.590187, 17.016588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185003, -0.370853, -0.910078,
		0.921767, -0.255629, 0.291547,
		-0.340763, -0.892817, 0.294548,
		13.724806, 19.322342, 17.104952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.433140, 19.505827, 16.632214>,  <13.963341, 19.947313, 16.898769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.433140, 19.505827, 16.632214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.105737, 19.280590, 16.677776>,  <13.909295, 19.145449, 16.705114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.105737, 19.280590, 16.677776>,  <14.433140, 19.505827, 16.632214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.105737, 19.280590, 16.677776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146354, -0.396108, -0.906465,
		0.555541, -0.725278, 0.406628,
		-0.818507, -0.563091, 0.113907,
		13.860185, 19.111664, 16.711948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.550053, 18.884132, 16.287842>,  <14.433140, 19.505827, 16.632214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.550053, 18.884132, 16.287842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.153272, 18.892826, 16.337738>,  <13.915203, 18.898043, 16.367676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.153272, 18.892826, 16.337738>,  <14.550053, 18.884132, 16.287842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.153272, 18.892826, 16.337738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122788, -0.405630, -0.905752,
		0.030911, -0.913779, 0.405034,
		-0.991951, 0.021736, 0.124740,
		13.855686, 18.899347, 16.375160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.219053, 18.179146, 16.190882>,  <14.550053, 18.884132, 16.287842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.219053, 18.179146, 16.190882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.954963, 18.465385, 16.099649>,  <13.796509, 18.637129, 16.044910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.954963, 18.465385, 16.099649>,  <14.219053, 18.179146, 16.190882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.954963, 18.465385, 16.099649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021092, -0.321222, -0.946769,
		-0.750771, -0.620270, 0.227173,
		-0.660225, 0.715598, -0.228082,
		13.756895, 18.680065, 16.031225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.803135, 17.808422, 15.766644>,  <14.219053, 18.179146, 16.190882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.803135, 17.808422, 15.766644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.704370, 18.187813, 15.687222>,  <13.645110, 18.415447, 15.639568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.704370, 18.187813, 15.687222>,  <13.803135, 17.808422, 15.766644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.704370, 18.187813, 15.687222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303081, -0.270207, -0.913854,
		-0.920421, -0.165465, 0.354183,
		-0.246914, 0.948477, -0.198555,
		13.630296, 18.472357, 15.627655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.174119, 17.759661, 15.361721>,  <13.803135, 17.808422, 15.766644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.174119, 17.759661, 15.361721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.344558, 18.113415, 15.285503>,  <13.446821, 18.325666, 15.239773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.344558, 18.113415, 15.285503>,  <13.174119, 17.759661, 15.361721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.344558, 18.113415, 15.285503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220690, -0.102646, -0.969928,
		-0.877346, 0.455335, 0.151438,
		0.426098, 0.884383, -0.190544,
		13.472387, 18.378729, 15.228340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.826414, 17.890287, 14.691674>,  <13.174119, 17.759661, 15.361721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.826414, 17.890287, 14.691674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.148532, 18.123608, 14.734125>,  <13.341803, 18.263599, 14.759596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.148532, 18.123608, 14.734125>,  <12.826414, 17.890287, 14.691674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.148532, 18.123608, 14.734125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147354, -0.023528, -0.988804,
		-0.574273, 0.811916, -0.104899,
		0.805294, 0.583300, 0.106127,
		13.390120, 18.298597, 14.765964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.740278, 18.525988, 14.247975>,  <12.826414, 17.890287, 14.691674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.740278, 18.525988, 14.247975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.131339, 18.471359, 14.311905>,  <13.365975, 18.438583, 14.350263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.131339, 18.471359, 14.311905>,  <12.740278, 18.525988, 14.247975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.131339, 18.471359, 14.311905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160695, -0.004686, -0.986993,
		0.135542, 0.990619, 0.017364,
		0.977653, -0.136569, 0.159823,
		13.424635, 18.430389, 14.359852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.042563, 18.958061, 13.801479>,  <12.740278, 18.525988, 14.247975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.042563, 18.958061, 13.801479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.342092, 18.705036, 13.880606>,  <13.521809, 18.553221, 13.928082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.342092, 18.705036, 13.880606>,  <13.042563, 18.958061, 13.801479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.342092, 18.705036, 13.880606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276613, 0.027051, -0.960601,
		0.602290, 0.774036, 0.195231,
		0.748820, -0.632564, 0.197816,
		13.566737, 18.515266, 13.939950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.691364, 19.250254, 13.432094>,  <13.042563, 18.958061, 13.801479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.691364, 19.250254, 13.432094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.799285, 18.874851, 13.518269>,  <13.864038, 18.649611, 13.569974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.799285, 18.874851, 13.518269>,  <13.691364, 19.250254, 13.432094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.799285, 18.874851, 13.518269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504889, -0.052632, -0.861578,
		0.819935, 0.341228, 0.459641,
		0.269803, -0.938506, 0.215437,
		13.880226, 18.593300, 13.582900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.355941, 19.210068, 13.221012>,  <13.691364, 19.250254, 13.432094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.355941, 19.210068, 13.221012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.259645, 18.822666, 13.246449>,  <14.201867, 18.590225, 13.261710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.259645, 18.822666, 13.246449>,  <14.355941, 19.210068, 13.221012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.259645, 18.822666, 13.246449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556833, -0.191481, -0.808253,
		0.794973, -0.159169, 0.585392,
		-0.240741, -0.968504, 0.063592,
		14.187423, 18.532114, 13.265526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.000880, 18.848972, 13.019003>,  <14.355941, 19.210068, 13.221012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.000880, 18.848972, 13.019003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.708249, 18.587063, 12.943041>,  <14.532671, 18.429916, 12.897464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.708249, 18.587063, 12.943041>,  <15.000880, 18.848972, 13.019003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.708249, 18.587063, 12.943041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405108, -0.193464, -0.893565,
		0.548346, -0.730644, 0.406789,
		-0.731577, -0.654776, -0.189905,
		14.488776, 18.390631, 12.886069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.382269, 18.185032, 12.728334>,  <15.000880, 18.848972, 13.019003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.382269, 18.185032, 12.728334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.993697, 18.157425, 12.637506>,  <14.760554, 18.140860, 12.583008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.993697, 18.157425, 12.637506>,  <15.382269, 18.185032, 12.728334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.993697, 18.157425, 12.637506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237305, -0.296561, -0.925061,
		-0.003494, -0.952517, 0.304466,
		-0.971429, -0.069019, -0.227073,
		14.702269, 18.136719, 12.569384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.326778, 17.480745, 12.445654>,  <15.382269, 18.185032, 12.728334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.326778, 17.480745, 12.445654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.014842, 17.698799, 12.322574>,  <14.827681, 17.829632, 12.248726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.014842, 17.698799, 12.322574>,  <15.326778, 17.480745, 12.445654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.014842, 17.698799, 12.322574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226803, -0.212094, -0.950567,
		-0.583447, -0.811077, 0.041761,
		-0.779840, 0.545134, -0.307700,
		14.780890, 17.862339, 12.230264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.011409, 17.145830, 11.956209>,  <15.326778, 17.480745, 12.445654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.011409, 17.145830, 11.956209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.889150, 17.517883, 11.874794>,  <14.815794, 17.741116, 11.825945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.889150, 17.517883, 11.874794>,  <15.011409, 17.145830, 11.956209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.889150, 17.517883, 11.874794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452166, -0.046331, -0.890730,
		-0.837929, -0.364283, -0.406414,
		-0.305648, 0.930135, -0.203538,
		14.797455, 17.796925, 11.813732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.876690, 17.121174, 11.289305>,  <15.011409, 17.145830, 11.956209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.876690, 17.121174, 11.289305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.877343, 17.518013, 11.339483>,  <14.877735, 17.756117, 11.369591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.877343, 17.518013, 11.339483>,  <14.876690, 17.121174, 11.289305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.877343, 17.518013, 11.339483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106587, 0.124559, -0.986471,
		-0.994302, 0.014983, -0.105541,
		0.001634, 0.992099, 0.125446,
		14.877833, 17.815643, 11.377117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.251798, 17.373926, 10.982530>,  <14.876690, 17.121174, 11.289305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.251798, 17.373926, 10.982530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.536736, 17.654457, 10.971901>,  <14.707700, 17.822775, 10.965524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.536736, 17.654457, 10.971901>,  <14.251798, 17.373926, 10.982530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.536736, 17.654457, 10.971901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097016, -0.135897, -0.985961,
		-0.695091, 0.699768, -0.164845,
		0.712346, 0.701325, -0.026572,
		14.750441, 17.864855, 10.963929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.089927, 17.735947, 10.337731>,  <14.251798, 17.373926, 10.982530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.089927, 17.735947, 10.337731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.469050, 17.830711, 10.423082>,  <14.696525, 17.887569, 10.474293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.469050, 17.830711, 10.423082>,  <14.089927, 17.735947, 10.337731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.469050, 17.830711, 10.423082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205353, 0.058342, -0.976948,
		-0.243899, 0.969778, 0.006646,
		0.947810, 0.236912, 0.213377,
		14.753393, 17.901785, 10.487095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.272111, 18.211790, 9.822540>,  <14.089927, 17.735947, 10.337731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.272111, 18.211790, 9.822540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.624103, 18.085381, 9.964395>,  <14.835298, 18.009535, 10.049507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.624103, 18.085381, 9.964395>,  <14.272111, 18.211790, 9.822540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.624103, 18.085381, 9.964395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373594, -0.000641, -0.927592,
		0.293368, 0.948751, 0.117501,
		0.879979, -0.316023, 0.354636,
		14.888096, 17.990574, 10.070786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.747984, 18.613127, 9.495146>,  <14.272111, 18.211790, 9.822540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.747984, 18.613127, 9.495146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.974538, 18.306412, 9.615975>,  <15.110470, 18.122383, 9.688473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.974538, 18.306412, 9.615975>,  <14.747984, 18.613127, 9.495146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.974538, 18.306412, 9.615975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407180, -0.058314, -0.911484,
		0.716528, 0.639250, 0.279191,
		0.566385, -0.766785, 0.302074,
		15.144453, 18.076376, 9.706597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.525270, 18.646826, 9.280938>,  <14.747984, 18.613127, 9.495146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.525270, 18.646826, 9.280938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.460786, 18.260830, 9.363695>,  <15.422095, 18.029232, 9.413349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.460786, 18.260830, 9.363695>,  <15.525270, 18.646826, 9.280938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.460786, 18.260830, 9.363695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542622, -0.261771, -0.798146,
		0.824362, -0.016405, 0.565825,
		-0.161210, -0.964991, 0.206892,
		15.412423, 17.971333, 9.425763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.150295, 18.327986, 9.256811>,  <15.525270, 18.646826, 9.280938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.150295, 18.327986, 9.256811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.895392, 18.019836, 9.248538>,  <15.742451, 17.834948, 9.243574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.895392, 18.019836, 9.248538>,  <16.150295, 18.327986, 9.256811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.895392, 18.019836, 9.248538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572998, -0.455698, -0.681185,
		0.515342, -0.445941, 0.731819,
		-0.637257, -0.770374, -0.020684,
		15.704215, 17.788725, 9.242332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.604300, 17.776230, 9.117190>,  <16.150295, 18.327986, 9.256811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.604300, 17.776230, 9.117190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.239201, 17.629704, 9.044856>,  <16.020142, 17.541788, 9.001455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.239201, 17.629704, 9.044856>,  <16.604300, 17.776230, 9.117190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.239201, 17.629704, 9.044856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387663, -0.637029, -0.666267,
		0.128868, -0.678237, 0.723455,
		-0.912749, -0.366317, -0.180835,
		15.965376, 17.519808, 8.990605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.614008, 17.002419, 9.207191>,  <16.604300, 17.776230, 9.117190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.614008, 17.002419, 9.207191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.299221, 17.053555, 8.965748>,  <16.110350, 17.084236, 8.820883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.299221, 17.053555, 8.965748>,  <16.614008, 17.002419, 9.207191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.299221, 17.053555, 8.965748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442148, -0.565484, -0.696228,
		-0.430335, -0.814791, 0.388494,
		-0.786967, 0.127840, -0.603606,
		16.063131, 17.091908, 8.784666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.393011, 16.342592, 8.949123>,  <16.614008, 17.002419, 9.207191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.393011, 16.342592, 8.949123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.220798, 16.593693, 8.689716>,  <16.117472, 16.744352, 8.534072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.220798, 16.593693, 8.689716>,  <16.393011, 16.342592, 8.949123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.220798, 16.593693, 8.689716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295220, -0.581054, -0.758434,
		-0.852930, -0.517983, 0.064836,
		-0.430529, 0.627750, -0.648517,
		16.091640, 16.782017, 8.495161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.118286, 15.828653, 8.372348>,  <16.393011, 16.342592, 8.949123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.118286, 15.828653, 8.372348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.086826, 16.207413, 8.247643>,  <16.067951, 16.434668, 8.172819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.086826, 16.207413, 8.247643>,  <16.118286, 15.828653, 8.372348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.086826, 16.207413, 8.247643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171113, -0.295269, -0.939966,
		-0.982107, -0.127274, -0.138804,
		-0.078649, 0.946899, -0.311764,
		16.063232, 16.491482, 8.154114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.607404, 15.789114, 7.775817>,  <16.118286, 15.828653, 8.372348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.607404, 15.789114, 7.775817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.845674, 16.109818, 7.756412>,  <15.988635, 16.302240, 7.744768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.845674, 16.109818, 7.756412>,  <15.607404, 15.789114, 7.775817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.845674, 16.109818, 7.756412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243377, -0.237720, -0.940349,
		-0.765467, 0.548334, -0.336733,
		0.595674, 0.801760, -0.048515,
		16.024376, 16.350346, 7.741857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.467599, 16.148565, 7.071815>,  <15.607404, 15.789114, 7.775817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.467599, 16.148565, 7.071815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.814763, 16.283939, 7.217251>,  <16.023062, 16.365164, 7.304512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.814763, 16.283939, 7.217251>,  <15.467599, 16.148565, 7.071815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.814763, 16.283939, 7.217251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477640, -0.367679, -0.797918,
		-0.136358, 0.866184, -0.480761,
		0.867909, 0.338433, 0.363588,
		16.075136, 16.385469, 7.326327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.738606, 16.550106, 6.539892>,  <15.467599, 16.148565, 7.071815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.738606, 16.550106, 6.539892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.046646, 16.432278, 6.766228>,  <16.231470, 16.361580, 6.902029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.046646, 16.432278, 6.766228>,  <15.738606, 16.550106, 6.539892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.046646, 16.432278, 6.766228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492777, -0.288596, -0.820904,
		0.405114, 0.911011, -0.077090,
		0.770100, -0.294571, 0.565840,
		16.277676, 16.343906, 6.935979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.316765, 16.806950, 6.199579>,  <15.738606, 16.550106, 6.539892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.316765, 16.806950, 6.199579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.448170, 16.503967, 6.425267>,  <16.527012, 16.322178, 6.560680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.448170, 16.503967, 6.425267>,  <16.316765, 16.806950, 6.199579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.448170, 16.503967, 6.425267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485779, -0.376806, -0.788693,
		0.810000, 0.533180, 0.244171,
		0.328510, -0.757454, 0.564220,
		16.546722, 16.276731, 6.594533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.051912, 16.603981, 6.198761>,  <16.316765, 16.806950, 6.199579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.051912, 16.603981, 6.198761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.818562, 16.279591, 6.216613>,  <16.678551, 16.084957, 6.227324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.818562, 16.279591, 6.216613>,  <17.051912, 16.603981, 6.198761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.818562, 16.279591, 6.216613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308966, -0.272403, -0.911228,
		0.751140, -0.517800, 0.409477,
		-0.583376, -0.810975, 0.044630,
		16.643549, 16.036299, 6.230002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.395798, 16.052544, 5.998065>,  <17.051912, 16.603981, 6.198761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.395798, 16.052544, 5.998065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.019733, 15.946041, 5.913015>,  <16.794096, 15.882140, 5.861986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.019733, 15.946041, 5.913015>,  <17.395798, 16.052544, 5.998065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.019733, 15.946041, 5.913015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286975, -0.282321, -0.915390,
		0.183700, -0.921630, 0.341836,
		-0.940159, -0.266256, -0.212622,
		16.737686, 15.866164, 5.849228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.220310, 16.502197, 5.474860>,  <17.395798, 16.052544, 5.998065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.220310, 16.502197, 5.474860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.870457, 16.502262, 5.280948>,  <16.660543, 16.502302, 5.164600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.870457, 16.502262, 5.280948>,  <17.220310, 16.502197, 5.474860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.870457, 16.502262, 5.280948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018456, 0.999264, 0.033635,
		0.484430, 0.038365, -0.873988,
		-0.874635, 0.000164, -0.484781,
		16.608067, 16.502312, 5.135513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.299028, 16.879066, 4.883798>,  <17.220310, 16.502197, 5.474860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.299028, 16.879066, 4.883798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.931183, 16.888359, 5.040652>,  <16.710476, 16.893934, 5.134765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.931183, 16.888359, 5.040652>,  <17.299028, 16.879066, 4.883798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.931183, 16.888359, 5.040652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010069, 0.996527, -0.082655,
		-0.392694, -0.079960, -0.916187,
		-0.919614, 0.023233, 0.392135,
		16.655298, 16.895329, 5.158293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.740200, 16.974358, 4.324790>,  <17.299028, 16.879066, 4.883798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.740200, 16.974358, 4.324790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.694206, 17.112663, 4.697290>,  <16.666609, 17.195646, 4.920791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.694206, 17.112663, 4.697290>,  <16.740200, 16.974358, 4.324790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.694206, 17.112663, 4.697290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016431, 0.936678, -0.349806,
		-0.993231, -0.055525, -0.102024,
		-0.114986, 0.345762, 0.931250,
		16.659710, 17.216393, 4.976665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.145136, 17.422657, 4.399637>,  <16.740200, 16.974358, 4.324790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.145136, 17.422657, 4.399637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.449844, 17.509510, 4.643786>,  <16.632669, 17.561621, 4.790276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.449844, 17.509510, 4.643786>,  <16.145136, 17.422657, 4.399637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.449844, 17.509510, 4.643786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079390, 0.966348, -0.244681,
		-0.642961, 0.137934, 0.753376,
		0.761774, 0.217131, 0.610373,
		16.678377, 17.574650, 4.826898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.935489, 17.976929, 4.978750>,  <16.145136, 17.422657, 4.399637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.935489, 17.976929, 4.978750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.309021, 17.955544, 4.837270>,  <16.533140, 17.942713, 4.752382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.309021, 17.955544, 4.837270>,  <15.935489, 17.976929, 4.978750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.309021, 17.955544, 4.837270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061114, 0.950387, -0.305008,
		0.352458, 0.306441, 0.884233,
		0.933830, -0.053464, -0.353699,
		16.589170, 17.939505, 4.731161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.043856, 18.672489, 5.129288>,  <15.935489, 17.976929, 4.978750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.043856, 18.672489, 5.129288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.321468, 18.546673, 4.870249>,  <16.488037, 18.471182, 4.714826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.321468, 18.546673, 4.870249>,  <16.043856, 18.672489, 5.129288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.321468, 18.546673, 4.870249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034417, 0.912978, -0.406555,
		0.719120, 0.259874, 0.644462,
		0.694033, -0.314543, -0.647597,
		16.529678, 18.452311, 4.675970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.599579, 19.214907, 5.007682>,  <16.043856, 18.672489, 5.129288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.599579, 19.214907, 5.007682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.563301, 19.001137, 4.671548>,  <16.541534, 18.872875, 4.469867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.563301, 19.001137, 4.671548>,  <16.599579, 19.214907, 5.007682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.563301, 19.001137, 4.671548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117040, 0.843686, -0.523924,
		0.988977, 0.050836, -0.139067,
		-0.090695, -0.534425, -0.840336,
		16.536093, 18.840809, 4.419447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.075430, 19.490194, 4.388198>,  <16.599579, 19.214907, 5.007682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.075430, 19.490194, 4.388198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.780453, 19.287796, 4.209247>,  <16.603466, 19.166357, 4.101877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.780453, 19.287796, 4.209247>,  <17.075430, 19.490194, 4.388198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.780453, 19.287796, 4.209247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113851, 0.746028, -0.656110,
		0.665746, -0.432908, -0.607760,
		-0.737441, -0.505997, -0.447378,
		16.559219, 19.135998, 4.075034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.239361, 19.277714, 3.775499>,  <17.075430, 19.490194, 4.388198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.239361, 19.277714, 3.775499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.843109, 19.329666, 3.758607>,  <16.605358, 19.360838, 3.748472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.843109, 19.329666, 3.758607>,  <17.239361, 19.277714, 3.775499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.843109, 19.329666, 3.758607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120928, 0.690465, -0.713187,
		-0.063471, -0.711611, -0.699701,
		-0.990630, 0.129880, -0.042229,
		16.545919, 19.368629, 3.745938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.118465, 19.038544, 3.077063>,  <17.239361, 19.277714, 3.775499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.118465, 19.038544, 3.077063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.847588, 19.293415, 3.224253>,  <16.685061, 19.446339, 3.312567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.847588, 19.293415, 3.224253>,  <17.118465, 19.038544, 3.077063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.847588, 19.293415, 3.224253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033901, 0.526588, -0.849444,
		-0.735021, -0.562766, -0.378205,
		-0.677196, 0.637181, 0.367975,
		16.644428, 19.484570, 3.334646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.723278, 19.180943, 2.373699>,  <17.118465, 19.038544, 3.077063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.723278, 19.180943, 2.373699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.654694, 19.485229, 2.624110>,  <16.613543, 19.667801, 2.774357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.654694, 19.485229, 2.624110>,  <16.723278, 19.180943, 2.373699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.654694, 19.485229, 2.624110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422092, 0.517440, -0.744375,
		-0.890190, -0.391873, 0.232371,
		-0.171462, 0.760717, 0.626027,
		16.603254, 19.713446, 2.811918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.056808, 19.385670, 2.276709>,  <16.723278, 19.180943, 2.373699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.056808, 19.385670, 2.276709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.280598, 19.682945, 2.423495>,  <16.414871, 19.861311, 2.511566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.280598, 19.682945, 2.423495>,  <16.056808, 19.385670, 2.276709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.280598, 19.682945, 2.423495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324152, 0.603665, -0.728364,
		-0.762835, 0.288546, 0.578639,
		0.559471, 0.743189, 0.366964,
		16.448439, 19.905901, 2.533584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.500187, 19.945877, 2.187864>,  <16.056808, 19.385670, 2.276709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.500187, 19.945877, 2.187864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.870299, 20.090027, 2.235169>,  <16.092367, 20.176517, 2.263552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.870299, 20.090027, 2.235169>,  <15.500187, 19.945877, 2.187864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.870299, 20.090027, 2.235169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122590, 0.579223, -0.805898,
		-0.358925, 0.731185, 0.580122,
		0.925281, 0.360374, 0.118262,
		16.147884, 20.198139, 2.270647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.572118, 20.772600, 2.077715>,  <15.500187, 19.945877, 2.187864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.572118, 20.772600, 2.077715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.885034, 20.561802, 1.944868>,  <16.072783, 20.435324, 1.865160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.885034, 20.561802, 1.944868>,  <15.572118, 20.772600, 2.077715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.885034, 20.561802, 1.944868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101884, 0.417736, -0.902838,
		0.614528, 0.740117, 0.273097,
		0.782289, -0.526995, -0.332116,
		16.119720, 20.403704, 1.845233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.127188, 21.248075, 1.663347>,  <15.572118, 20.772600, 2.077715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.127188, 21.248075, 1.663347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.122368, 20.869179, 1.535228>,  <16.119476, 20.641842, 1.458357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.122368, 20.869179, 1.535228>,  <16.127188, 21.248075, 1.663347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.122368, 20.869179, 1.535228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118972, 0.319404, -0.940121,
		0.992824, 0.026777, -0.116544,
		-0.012051, -0.947240, -0.320298,
		16.118752, 20.585007, 1.439139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.623009, 21.284533, 1.068251>,  <16.127188, 21.248075, 1.663347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.623009, 21.284533, 1.068251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.343430, 20.998581, 1.076437>,  <16.175682, 20.827011, 1.081349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.343430, 20.998581, 1.076437>,  <16.623009, 21.284533, 1.068251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.343430, 20.998581, 1.076437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079189, 0.048922, -0.995658,
		0.710773, -0.697536, -0.090805,
		-0.698949, -0.714878, 0.020465,
		16.133745, 20.784117, 1.082577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.336121, 21.325911, 0.849108>,  <16.623009, 21.284533, 1.068251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.336121, 21.325911, 0.849108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.149517, 21.008392, 1.005188>,  <17.037556, 20.817881, 1.098836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.149517, 21.008392, 1.005188>,  <17.336121, 21.325911, 0.849108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.149517, 21.008392, 1.005188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882133, 0.385167, -0.271084,
		0.064893, -0.470672, -0.879918,
		-0.466508, -0.793797, 0.390201,
		17.009565, 20.770252, 1.122248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.024868, 21.093420, 0.712944>,  <17.336121, 21.325911, 0.849108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.024868, 21.093420, 0.712944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.781582, 21.061787, 0.397014>,  <17.635611, 21.042807, 0.207457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.781582, 21.061787, 0.397014>,  <18.024868, 21.093420, 0.712944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.781582, 21.061787, 0.397014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758028, 0.237357, -0.607499,
		0.235507, -0.968199, -0.084424,
		-0.608219, -0.079075, -0.789821,
		17.599117, 21.038061, 0.160067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.372023, 21.307829, 0.041727>,  <18.024868, 21.093420, 0.712944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.372023, 21.307829, 0.041727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.028923, 21.191082, -0.127543>,  <17.823063, 21.121033, -0.229104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.028923, 21.191082, -0.127543>,  <18.372023, 21.307829, 0.041727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.028923, 21.191082, -0.127543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422940, 0.067246, -0.903659,
		0.292207, -0.954091, 0.065763,
		-0.857751, -0.291869, -0.423173,
		17.771597, 21.103521, -0.254495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.528183, 20.694298, -0.414844>,  <18.372023, 21.307829, 0.041727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.528183, 20.694298, -0.414844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.203545, 20.884396, -0.550759>,  <18.008762, 20.998455, -0.632308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.203545, 20.884396, -0.550759>,  <18.528183, 20.694298, -0.414844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.203545, 20.884396, -0.550759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447892, 0.132716, -0.884183,
		-0.375108, -0.869787, -0.320569,
		-0.811596, 0.475244, -0.339788,
		17.960066, 21.026968, -0.652696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.069302, 20.452644, -1.072666>,  <18.528183, 20.694298, -0.414844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.069302, 20.452644, -1.072666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.042324, 20.846741, -1.135594>,  <18.026138, 21.083199, -1.173351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.042324, 20.846741, -1.135594>,  <18.069302, 20.452644, -1.072666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.042324, 20.846741, -1.135594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342610, -0.125221, -0.931095,
		-0.937054, -0.116694, -0.329109,
		-0.067442, 0.985242, -0.157320,
		18.022091, 21.142313, -1.182790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.694298, 20.633547, -1.847174>,  <18.069302, 20.452644, -1.072666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.694298, 20.633547, -1.847174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.948437, 20.907570, -1.704610>,  <18.100920, 21.071983, -1.619071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.948437, 20.907570, -1.704610>,  <17.694298, 20.633547, -1.847174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.948437, 20.907570, -1.704610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549149, -0.076320, -0.832232,
		-0.542927, 0.724478, -0.424690,
		0.635346, 0.685060, 0.356410,
		18.139040, 21.113089, -1.597687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.899202, 20.873529, -2.462978>,  <17.694298, 20.633547, -1.847174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.899202, 20.873529, -2.462978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.148354, 21.016842, -2.184796>,  <18.297844, 21.102829, -2.017887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.148354, 21.016842, -2.184796>,  <17.899202, 20.873529, -2.462978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.148354, 21.016842, -2.184796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757184, -0.052574, -0.651082,
		-0.196706, 0.932133, -0.304031,
		0.622879, 0.358279, 0.695455,
		18.335217, 21.124325, -1.976159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.201923, 21.567039, -2.669117>,  <17.899202, 20.873529, -2.462978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.201923, 21.567039, -2.669117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.406254, 21.287579, -2.468740>,  <18.528852, 21.119902, -2.348513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.406254, 21.287579, -2.468740>,  <18.201923, 21.567039, -2.669117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.406254, 21.287579, -2.468740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648455, -0.069431, -0.758080,
		0.564415, 0.712085, 0.417577,
		0.510825, -0.698651, 0.500943,
		18.559502, 21.077984, -2.318457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.964245, 21.696306, -2.798698>,  <18.201923, 21.567039, -2.669117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.964245, 21.696306, -2.798698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.928383, 21.319653, -2.668908>,  <18.906866, 21.093660, -2.591033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.928383, 21.319653, -2.668908>,  <18.964245, 21.696306, -2.798698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.928383, 21.319653, -2.668908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679563, -0.296006, -0.671249,
		0.728119, 0.160323, 0.666438,
		-0.089653, -0.941635, 0.324477,
		18.901487, 21.037163, -2.571565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.558548, 21.388964, -2.575822>,  <18.964245, 21.696306, -2.798698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.558548, 21.388964, -2.575822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.350803, 21.060169, -2.669291>,  <19.226156, 20.862892, -2.725373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.350803, 21.060169, -2.669291>,  <19.558548, 21.388964, -2.575822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.350803, 21.060169, -2.669291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838663, -0.437791, -0.324010,
		0.164032, -0.364251, 0.916741,
		-0.519362, -0.821985, -0.233673,
		19.194994, 20.813574, -2.739393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.963470, 20.860764, -2.610453>,  <19.558548, 21.388964, -2.575822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.963470, 20.860764, -2.610453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.676922, 20.633083, -2.771859>,  <19.504993, 20.496475, -2.868702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.676922, 20.633083, -2.771859>,  <19.963470, 20.860764, -2.610453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.676922, 20.633083, -2.771859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697505, -0.598617, -0.393884,
		-0.017351, -0.563620, 0.825852,
		-0.716370, -0.569202, -0.403514,
		19.462011, 20.462322, -2.892913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.922800, 20.107985, -2.266824>,  <19.963470, 20.860764, -2.610453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.922800, 20.107985, -2.266824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.807655, 20.123524, -2.649578>,  <19.738569, 20.132847, -2.879230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.807655, 20.123524, -2.649578>,  <19.922800, 20.107985, -2.266824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.807655, 20.123524, -2.649578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843500, -0.462848, -0.272542,
		-0.453479, -0.885586, 0.100469,
		-0.287861, 0.038846, -0.956884,
		19.721296, 20.135178, -2.936643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.990950, 19.305449, -2.522106>,  <19.922800, 20.107985, -2.266824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.990950, 19.305449, -2.522106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.055805, 19.625183, -2.753543>,  <20.094719, 19.817024, -2.892405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.055805, 19.625183, -2.753543>,  <19.990950, 19.305449, -2.522106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.055805, 19.625183, -2.753543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875248, -0.387273, -0.289759,
		-0.455689, -0.459431, -0.762411,
		0.162137, 0.799339, -0.578592,
		20.104446, 19.864985, -2.927120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.200510, 19.077713, -3.196508>,  <19.990950, 19.305449, -2.522106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.200510, 19.077713, -3.196508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.349529, 19.443695, -3.134452>,  <20.438940, 19.663284, -3.097219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.349529, 19.443695, -3.134452>,  <20.200510, 19.077713, -3.196508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.349529, 19.443695, -3.134452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875398, -0.290990, -0.386010,
		-0.308037, 0.279616, -0.909356,
		0.372548, 0.914953, 0.155139,
		20.461294, 19.718182, -3.087910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.100887, 18.529467, -3.791145>,  <20.200510, 19.077713, -3.196508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.100887, 18.529467, -3.791145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.142445, 18.679024, -4.159799>,  <20.167379, 18.768759, -4.380991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.142445, 18.679024, -4.159799>,  <20.100887, 18.529467, -3.791145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.142445, 18.679024, -4.159799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222425, 0.911915, 0.344875,
		0.969398, 0.169165, 0.177904,
		0.103892, 0.373892, -0.921635,
		20.173613, 18.791191, -4.436290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.936903, 18.461248, -3.812533>,  <20.100887, 18.529467, -3.791145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.936903, 18.461248, -3.812533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.311726, 18.582958, -3.881048>,  <21.536619, 18.655983, -3.922156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.311726, 18.582958, -3.881048>,  <20.936903, 18.461248, -3.812533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.311726, 18.582958, -3.881048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335210, 0.921244, -0.197342,
		0.097750, 0.242338, 0.965255,
		0.937059, 0.304273, -0.171286,
		21.592844, 18.674240, -3.932434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.047153, 19.183952, -3.610409>,  <20.936903, 18.461248, -3.812533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.047153, 19.183952, -3.610409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.359802, 19.112659, -3.849506>,  <21.547392, 19.069883, -3.992965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.359802, 19.112659, -3.849506>,  <21.047153, 19.183952, -3.610409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.359802, 19.112659, -3.849506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127284, 0.892566, -0.432580,
		0.610625, 0.414198, 0.674965,
		0.781624, -0.178232, -0.597743,
		21.594290, 19.059191, -4.028829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<18.064970, 18.351807, 16.848816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.318581, 18.654789, 16.786499>,  <18.470747, 18.836578, 16.749109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.318581, 18.654789, 16.786499>,  <18.064970, 18.351807, 16.848816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.318581, 18.654789, 16.786499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069818, -0.144570, -0.987028,
		-0.770153, 0.636679, -0.038777,
		0.634027, 0.757455, -0.155793,
		18.508789, 18.882025, 16.739761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.940317, 18.506466, 16.121784>,  <18.064970, 18.351807, 16.848816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.940317, 18.506466, 16.121784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.292191, 18.681751, 16.195679>,  <18.503315, 18.786922, 16.240015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.292191, 18.681751, 16.195679>,  <17.940317, 18.506466, 16.121784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.292191, 18.681751, 16.195679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158058, 0.096962, -0.982658,
		-0.448524, 0.893627, 0.016033,
		0.879684, 0.438211, 0.184734,
		18.556095, 18.813215, 16.251099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.975023, 19.033365, 15.681342>,  <17.940317, 18.506466, 16.121784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.975023, 19.033365, 15.681342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.356888, 18.957443, 15.773077>,  <18.586006, 18.911890, 15.828117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.356888, 18.957443, 15.773077>,  <17.975023, 19.033365, 15.681342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.356888, 18.957443, 15.773077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193476, -0.189900, -0.962551,
		0.226247, 0.963282, -0.144568,
		0.954662, -0.189804, 0.229337,
		18.643286, 18.900501, 15.841878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.364395, 19.495327, 15.278529>,  <17.975023, 19.033365, 15.681342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.364395, 19.495327, 15.278529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.595016, 19.186066, 15.384224>,  <18.733389, 19.000509, 15.447640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.595016, 19.186066, 15.384224>,  <18.364395, 19.495327, 15.278529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.595016, 19.186066, 15.384224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338227, -0.068548, -0.938565,
		0.743767, 0.630504, 0.221980,
		0.576552, -0.773153, 0.264237,
		18.767982, 18.954119, 15.463495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.000607, 19.581398, 14.913322>,  <18.364395, 19.495327, 15.278529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.000607, 19.581398, 14.913322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.044022, 19.193748, 15.001883>,  <19.070070, 18.961159, 15.055018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.044022, 19.193748, 15.001883>,  <19.000607, 19.581398, 14.913322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.044022, 19.193748, 15.001883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360804, -0.169125, -0.917179,
		0.926305, 0.179429, 0.331308,
		0.108536, -0.969124, 0.221400,
		19.076582, 18.903011, 15.068302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.594193, 19.410902, 14.600397>,  <19.000607, 19.581398, 14.913322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.594193, 19.410902, 14.600397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.419193, 19.056732, 14.663162>,  <19.314194, 18.844231, 14.700821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.419193, 19.056732, 14.663162>,  <19.594193, 19.410902, 14.600397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.419193, 19.056732, 14.663162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374288, -0.337974, -0.863529,
		0.817621, -0.319062, 0.479266,
		-0.437499, -0.885423, 0.156913,
		19.287943, 18.791105, 14.710237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.008076, 18.959503, 14.250224>,  <19.594193, 19.410902, 14.600397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.008076, 18.959503, 14.250224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.668709, 18.755451, 14.306726>,  <19.465088, 18.633020, 14.340628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.668709, 18.755451, 14.306726>,  <20.008076, 18.959503, 14.250224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.668709, 18.755451, 14.306726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154417, -0.493782, -0.855766,
		0.506300, -0.704236, 0.497707,
		-0.848420, -0.510129, 0.141256,
		19.414183, 18.602413, 14.349103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.203966, 18.277790, 14.043855>,  <20.008076, 18.959503, 14.250224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.203966, 18.277790, 14.043855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.808167, 18.334469, 14.032461>,  <19.570686, 18.368477, 14.025625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.808167, 18.334469, 14.032461>,  <20.203966, 18.277790, 14.043855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.808167, 18.334469, 14.032461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005929, -0.157118, -0.987562,
		-0.144390, -0.977365, 0.154628,
		-0.989503, 0.141677, -0.028481,
		19.511316, 18.376978, 14.023915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.015879, 17.801687, 13.576759>,  <20.203966, 18.277790, 14.043855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.015879, 17.801687, 13.576759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.682632, 18.019901, 13.613234>,  <19.482685, 18.150829, 13.635118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.682632, 18.019901, 13.613234>,  <20.015879, 17.801687, 13.576759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.682632, 18.019901, 13.613234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266258, -0.251063, -0.930631,
		-0.484797, -0.799600, 0.354417,
		-0.833113, 0.545534, 0.091185,
		19.432697, 18.183561, 13.640589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.472954, 17.362839, 13.318812>,  <20.015879, 17.801687, 13.576759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.472954, 17.362839, 13.318812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.370094, 17.748245, 13.289118>,  <19.308378, 17.979488, 13.271301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.370094, 17.748245, 13.289118>,  <19.472954, 17.362839, 13.318812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.370094, 17.748245, 13.289118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339460, -0.161987, -0.926567,
		-0.904788, -0.213065, 0.368730,
		-0.257148, 0.963516, -0.074237,
		19.292950, 18.037300, 13.266847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.803738, 17.373055, 13.202449>,  <19.472954, 17.362839, 13.318812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.803738, 17.373055, 13.202449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.931026, 17.721848, 13.053650>,  <19.007401, 17.931124, 12.964371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.931026, 17.721848, 13.053650>,  <18.803738, 17.373055, 13.202449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.931026, 17.721848, 13.053650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307032, -0.276451, -0.910663,
		-0.896920, 0.404009, 0.179753,
		0.318223, 0.871982, -0.371998,
		19.026493, 17.983442, 12.942051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.284201, 17.526217, 12.765759>,  <18.803738, 17.373055, 13.202449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.284201, 17.526217, 12.765759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.591682, 17.756603, 12.654504>,  <18.776171, 17.894835, 12.587750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.591682, 17.756603, 12.654504>,  <18.284201, 17.526217, 12.765759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.591682, 17.756603, 12.654504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082285, -0.342191, -0.936021,
		-0.634291, 0.742408, -0.215650,
		0.768703, 0.575965, -0.278137,
		18.822292, 17.929392, 12.571063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.002850, 17.932289, 12.183314>,  <18.284201, 17.526217, 12.765759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.002850, 17.932289, 12.183314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.401817, 17.920235, 12.157254>,  <18.641199, 17.913002, 12.141618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.401817, 17.920235, 12.157254>,  <18.002850, 17.932289, 12.183314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.401817, 17.920235, 12.157254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071718, -0.379532, -0.922395,
		0.003072, 0.924688, -0.380714,
		0.997420, -0.030138, -0.065151,
		18.701044, 17.911194, 12.137709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.169384, 18.263783, 11.625201>,  <18.002850, 17.932289, 12.183314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.169384, 18.263783, 11.625201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.487560, 18.025345, 11.668930>,  <18.678465, 17.882282, 11.695168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.487560, 18.025345, 11.668930>,  <18.169384, 18.263783, 11.625201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.487560, 18.025345, 11.668930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009775, -0.192987, -0.981153,
		0.605955, 0.779378, -0.159336,
		0.795439, -0.596092, 0.109323,
		18.726192, 17.846518, 11.701727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.606794, 18.422331, 11.077756>,  <18.169384, 18.263783, 11.625201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.606794, 18.422331, 11.077756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.747318, 18.065830, 11.192473>,  <18.831633, 17.851929, 11.261304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.747318, 18.065830, 11.192473>,  <18.606794, 18.422331, 11.077756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.747318, 18.065830, 11.192473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179928, -0.236341, -0.954866,
		0.918808, 0.387054, 0.077333,
		0.351308, -0.891253, 0.286794,
		18.852711, 17.798454, 11.278512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.221090, 18.310314, 10.725960>,  <18.606794, 18.422331, 11.077756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.221090, 18.310314, 10.725960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.125061, 17.946140, 10.860703>,  <19.067444, 17.727636, 10.941549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.125061, 17.946140, 10.860703>,  <19.221090, 18.310314, 10.725960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.125061, 17.946140, 10.860703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163084, -0.379901, -0.910538,
		0.956958, -0.163660, 0.239682,
		-0.240074, -0.910435, 0.336859,
		19.053040, 17.673010, 10.961761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.668623, 17.916367, 10.431558>,  <19.221090, 18.310314, 10.725960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.668623, 17.916367, 10.431558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.389099, 17.652985, 10.543342>,  <19.221384, 17.494955, 10.610412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.389099, 17.652985, 10.543342>,  <19.668623, 17.916367, 10.431558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.389099, 17.652985, 10.543342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193016, -0.549772, -0.812709,
		0.688773, -0.513989, 0.511279,
		-0.698811, -0.658458, 0.279460,
		19.179457, 17.455448, 10.627179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.855669, 17.264688, 10.352764>,  <19.668623, 17.916367, 10.431558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.855669, 17.264688, 10.352764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.456863, 17.233826, 10.354177>,  <19.217581, 17.215307, 10.355025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.456863, 17.233826, 10.354177>,  <19.855669, 17.264688, 10.352764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.456863, 17.233826, 10.354177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053589, -0.723950, -0.687768,
		0.055626, -0.685524, 0.725922,
		-0.997013, -0.077159, 0.003534,
		19.157759, 17.210678, 10.355238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.782614, 16.575476, 10.480118>,  <19.855669, 17.264688, 10.352764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.782614, 16.575476, 10.480118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.450134, 16.705559, 10.299742>,  <19.250647, 16.783607, 10.191516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.450134, 16.705559, 10.299742>,  <19.782614, 16.575476, 10.480118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.450134, 16.705559, 10.299742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120851, -0.686007, -0.717489,
		-0.542680, -0.650873, 0.530908,
		-0.831200, 0.325206, -0.450940,
		19.200775, 16.803122, 10.164459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.486031, 15.928214, 10.326366>,  <19.782614, 16.575476, 10.480118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.486031, 15.928214, 10.326366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.295441, 16.189632, 10.091131>,  <19.181087, 16.346483, 9.949990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.295441, 16.189632, 10.091131>,  <19.486031, 15.928214, 10.326366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.295441, 16.189632, 10.091131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206833, -0.566801, -0.797469,
		-0.854513, -0.501610, 0.134891,
		-0.476475, 0.653547, -0.588089,
		19.152498, 16.385696, 9.914704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.914278, 15.494512, 9.955088>,  <19.486031, 15.928214, 10.326366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.914278, 15.494512, 9.955088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.024261, 15.818565, 9.747982>,  <19.090252, 16.012997, 9.623718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.024261, 15.818565, 9.747982>,  <18.914278, 15.494512, 9.955088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.024261, 15.818565, 9.747982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185073, -0.573048, -0.798351,
		-0.943476, 0.123689, -0.307498,
		0.274958, 0.810134, -0.517765,
		19.106749, 16.061605, 9.592652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.541580, 15.419030, 9.433559>,  <18.914278, 15.494512, 9.955088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.541580, 15.419030, 9.433559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.822781, 15.660797, 9.283642>,  <18.991501, 15.805858, 9.193691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.822781, 15.660797, 9.283642>,  <18.541580, 15.419030, 9.433559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.822781, 15.660797, 9.283642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009514, -0.534940, -0.844836,
		-0.711126, 0.590354, -0.381813,
		0.703000, 0.604418, -0.374794,
		19.033680, 15.842122, 9.171204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.060360, 15.518016, 8.937181>,  <18.541580, 15.419030, 9.433559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.060360, 15.518016, 8.937181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.840267, 15.188877, 8.880376>,  <17.708212, 14.991394, 8.846292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.840267, 15.188877, 8.880376>,  <18.060360, 15.518016, 8.937181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.840267, 15.188877, 8.880376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237812, -0.008607, 0.971273,
		-0.800431, 0.568198, -0.190947,
		-0.550232, -0.822847, -0.142014,
		17.675198, 14.942023, 8.837771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.496731, 15.712996, 9.305499>,  <18.060360, 15.518016, 8.937181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.496731, 15.712996, 9.305499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.471958, 15.315639, 9.266836>,  <17.457094, 15.077226, 9.243639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.471958, 15.315639, 9.266836>,  <17.496731, 15.712996, 9.305499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.471958, 15.315639, 9.266836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306580, -0.073226, 0.949024,
		-0.949828, 0.088409, -0.300018,
		-0.061934, -0.993389, -0.096657,
		17.453379, 15.017623, 9.237839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.832033, 15.577033, 9.462657>,  <17.496731, 15.712996, 9.305499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.832033, 15.577033, 9.462657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.039814, 15.244213, 9.540493>,  <17.164482, 15.044521, 9.587194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.039814, 15.244213, 9.540493>,  <16.832033, 15.577033, 9.462657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.039814, 15.244213, 9.540493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384656, -0.024342, 0.922739,
		-0.763028, -0.554167, -0.332697,
		0.519450, -0.832050, 0.194590,
		17.195648, 14.994598, 9.598870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.284550, 15.090883, 9.774163>,  <16.832033, 15.577033, 9.462657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.284550, 15.090883, 9.774163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.646652, 14.941429, 9.855062>,  <16.863914, 14.851756, 9.903602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.646652, 14.941429, 9.855062>,  <16.284550, 15.090883, 9.774163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.646652, 14.941429, 9.855062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264789, -0.123890, 0.956315,
		-0.332258, -0.919264, -0.211087,
		0.905258, -0.373637, 0.202247,
		16.918230, 14.829338, 9.915737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.162973, 14.592249, 10.413142>,  <16.284550, 15.090883, 9.774163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.162973, 14.592249, 10.413142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.549068, 14.696056, 10.425584>,  <16.780725, 14.758341, 10.433049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.549068, 14.696056, 10.425584>,  <16.162973, 14.592249, 10.413142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.549068, 14.696056, 10.425584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059597, 0.102655, 0.992930,
		0.254491, -0.960266, 0.114553,
		0.965237, 0.259519, 0.031104,
		16.838640, 14.773911, 10.434915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.423187, 14.195601, 10.990417>,  <16.162973, 14.592249, 10.413142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.423187, 14.195601, 10.990417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.689583, 14.477203, 10.891760>,  <16.849421, 14.646165, 10.832566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.689583, 14.477203, 10.891760>,  <16.423187, 14.195601, 10.990417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.689583, 14.477203, 10.891760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211246, 0.139108, 0.967483,
		0.715425, -0.696435, -0.056075,
		0.665989, 0.704008, -0.246640,
		16.889380, 14.688406, 10.817768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.095526, 14.064833, 11.368012>,  <16.423187, 14.195601, 10.990417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.095526, 14.064833, 11.368012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.115013, 14.453461, 11.275339>,  <17.126705, 14.686638, 11.219735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.115013, 14.453461, 11.275339>,  <17.095526, 14.064833, 11.368012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.115013, 14.453461, 11.275339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381189, 0.196316, 0.903413,
		0.923213, -0.132330, -0.360787,
		0.048721, 0.971570, -0.231684,
		17.129629, 14.744932, 11.205833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.651575, 14.330732, 11.733463>,  <17.095526, 14.064833, 11.368012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.651575, 14.330732, 11.733463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.452381, 14.667629, 11.650867>,  <17.332865, 14.869767, 11.601309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.452381, 14.667629, 11.650867>,  <17.651575, 14.330732, 11.733463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.452381, 14.667629, 11.650867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264090, 0.374099, 0.888992,
		0.825995, 0.388173, -0.408723,
		-0.497985, 0.842242, -0.206491,
		17.302986, 14.920302, 11.588920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.078501, 14.860745, 12.004184>,  <17.651575, 14.330732, 11.733463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.078501, 14.860745, 12.004184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.724411, 15.045048, 11.978623>,  <17.511957, 15.155629, 11.963287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.724411, 15.045048, 11.978623>,  <18.078501, 14.860745, 12.004184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.724411, 15.045048, 11.978623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198316, 0.498085, 0.844146,
		0.420773, 0.734586, -0.532291,
		-0.885224, 0.460755, -0.063901,
		17.458843, 15.183274, 11.959454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.205191, 15.544185, 12.137631>,  <18.078501, 14.860745, 12.004184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.205191, 15.544185, 12.137631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.822922, 15.497231, 12.245638>,  <17.593559, 15.469058, 12.310442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.822922, 15.497231, 12.245638>,  <18.205191, 15.544185, 12.137631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.822922, 15.497231, 12.245638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182660, 0.482891, 0.856418,
		-0.230921, 0.867777, -0.440044,
		-0.955673, -0.117386, 0.270017,
		17.536221, 15.462014, 12.326643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.993303, 16.181459, 12.433025>,  <18.205191, 15.544185, 12.137631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.993303, 16.181459, 12.433025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.706131, 15.939167, 12.570231>,  <17.533827, 15.793791, 12.652555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.706131, 15.939167, 12.570231>,  <17.993303, 16.181459, 12.433025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.706131, 15.939167, 12.570231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160940, 0.334975, 0.928380,
		-0.677253, 0.721719, -0.143003,
		-0.717933, -0.605733, 0.343016,
		17.490751, 15.757447, 12.673137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.516634, 16.531166, 12.967759>,  <17.993303, 16.181459, 12.433025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.516634, 16.531166, 12.967759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.464481, 16.143726, 13.052441>,  <17.433189, 15.911263, 13.103250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.464481, 16.143726, 13.052441>,  <17.516634, 16.531166, 12.967759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.464481, 16.143726, 13.052441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012256, 0.215084, 0.976519,
		-0.991388, 0.124726, -0.039915,
		-0.130383, -0.968598, 0.211703,
		17.425367, 15.853147, 13.115952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.942057, 16.489580, 13.408867>,  <17.516634, 16.531166, 12.967759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.942057, 16.489580, 13.408867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.132927, 16.146278, 13.484442>,  <17.247450, 15.940297, 13.529787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.132927, 16.146278, 13.484442>,  <16.942057, 16.489580, 13.408867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.132927, 16.146278, 13.484442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031575, 0.231599, 0.972299,
		-0.878239, -0.457994, 0.137613,
		0.477178, -0.858256, 0.188938,
		17.276081, 15.888802, 13.541123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.528214, 16.162287, 13.987784>,  <16.942057, 16.489580, 13.408867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.528214, 16.162287, 13.987784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.838127, 15.909405, 13.989906>,  <17.024075, 15.757675, 13.991179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.838127, 15.909405, 13.989906>,  <16.528214, 16.162287, 13.987784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.838127, 15.909405, 13.989906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052023, 0.072114, 0.996039,
		-0.630084, -0.771437, 0.088762,
		0.774782, -0.632206, 0.005306,
		17.070562, 15.719743, 13.991498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.355549, 15.581334, 14.318613>,  <16.528214, 16.162287, 13.987784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.355549, 15.581334, 14.318613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.751171, 15.634857, 14.343489>,  <16.988544, 15.666971, 14.358415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.751171, 15.634857, 14.343489>,  <16.355549, 15.581334, 14.318613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.751171, 15.634857, 14.343489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072039, 0.070070, 0.994937,
		0.128779, -0.988526, 0.078943,
		0.989053, 0.133814, 0.062189,
		17.047888, 15.674999, 14.362145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.542191, 15.401051, 15.099284>,  <16.355549, 15.581334, 14.318613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.542191, 15.401051, 15.099284> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.862007, 15.587524, 14.947809>,  <17.053898, 15.699409, 14.856924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.862007, 15.587524, 14.947809>,  <16.542191, 15.401051, 15.099284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.862007, 15.587524, 14.947809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144562, 0.462597, 0.874703,
		0.582954, -0.754105, 0.302473,
		0.799542, 0.466186, -0.378688,
		17.101870, 15.727380, 14.834203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.100531, 15.243991, 15.560133>,  <16.542191, 15.401051, 15.099284>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.100531, 15.243991, 15.560133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.203606, 15.572166, 15.355986>,  <17.265451, 15.769072, 15.233497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.203606, 15.572166, 15.355986>,  <17.100531, 15.243991, 15.560133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.203606, 15.572166, 15.355986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159433, 0.484863, 0.859935,
		0.952984, -0.302965, -0.005862,
		0.257688, 0.820439, -0.510370,
		17.280912, 15.818298, 15.202875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.697659, 15.488086, 15.798489>,  <17.100531, 15.243991, 15.560133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.697659, 15.488086, 15.798489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.564373, 15.828743, 15.636663>,  <17.484402, 16.033136, 15.539568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.564373, 15.828743, 15.636663>,  <17.697659, 15.488086, 15.798489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.564373, 15.828743, 15.636663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111744, 0.461733, 0.879952,
		0.936205, 0.248006, -0.249023,
		-0.333216, 0.851643, -0.404564,
		17.464409, 16.084236, 15.515294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<18.152561, 16.091070, 16.061951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.828087, 16.280640, 15.924910>,  <17.633402, 16.394381, 15.842686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.828087, 16.280640, 15.924910>,  <18.152561, 16.091070, 16.061951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.828087, 16.280640, 15.924910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023689, 0.558743, 0.829002,
		0.584309, 0.680590, -0.442017,
		-0.811185, 0.473923, -0.342601,
		17.584732, 16.422817, 15.822129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.275284, 16.752121, 16.291214>,  <18.152561, 16.091070, 16.061951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.275284, 16.752121, 16.291214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.886063, 16.754082, 16.199001>,  <17.652531, 16.755259, 16.143673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.886063, 16.754082, 16.199001>,  <18.275284, 16.752121, 16.291214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.886063, 16.754082, 16.199001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167995, 0.669753, 0.723332,
		0.157945, 0.742568, -0.650881,
		-0.973052, 0.004902, -0.230532,
		17.594147, 16.755552, 16.129841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.990028, 17.481373, 16.187626>,  <18.275284, 16.752121, 16.291214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.990028, 17.481373, 16.187626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.677055, 17.246796, 16.271418>,  <17.489271, 17.106049, 16.321692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.677055, 17.246796, 16.271418>,  <17.990028, 17.481373, 16.187626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.677055, 17.246796, 16.271418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338451, 0.682829, 0.647453,
		-0.522734, 0.435690, -0.732751,
		-0.782432, -0.586445, 0.209478,
		17.442326, 17.070862, 16.334261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.454597, 17.909365, 16.309164>,  <17.990028, 17.481373, 16.187626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.454597, 17.909365, 16.309164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.297024, 17.597294, 16.503542>,  <17.202480, 17.410051, 16.620169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.297024, 17.597294, 16.503542>,  <17.454597, 17.909365, 16.309164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.297024, 17.597294, 16.503542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416527, 0.622818, 0.662271,
		-0.819343, 0.058482, -0.570313,
		-0.393932, -0.780178, 0.485942,
		17.178844, 17.363241, 16.649324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.766996, 18.037224, 16.482698>,  <17.454597, 17.909365, 16.309164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.766996, 18.037224, 16.482698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.827347, 17.739971, 16.743465>,  <16.863558, 17.561621, 16.899925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.827347, 17.739971, 16.743465>,  <16.766996, 18.037224, 16.482698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.827347, 17.739971, 16.743465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571091, 0.472762, 0.671082,
		-0.806902, -0.473554, -0.353065,
		0.150878, -0.743130, 0.651916,
		16.872610, 17.517033, 16.939039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.115305, 18.032757, 16.851334>,  <16.766996, 18.037224, 16.482698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.115305, 18.032757, 16.851334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.405334, 17.841373, 17.049463>,  <16.579353, 17.726543, 17.168341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.405334, 17.841373, 17.049463>,  <16.115305, 18.032757, 16.851334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.405334, 17.841373, 17.049463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215050, 0.525975, 0.822863,
		-0.654232, -0.703157, 0.278480,
		0.725075, -0.478456, 0.495324,
		16.622856, 17.697836, 17.198061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.833858, 17.719730, 17.479912>,  <16.115305, 18.032757, 16.851334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.833858, 17.719730, 17.479912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.218060, 17.752769, 17.586203>,  <16.448580, 17.772593, 17.649977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.218060, 17.752769, 17.586203>,  <15.833858, 17.719730, 17.479912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.218060, 17.752769, 17.586203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274312, 0.441497, 0.854303,
		-0.046753, -0.893453, 0.446717,
		0.960503, 0.082599, 0.265726,
		16.506210, 17.777550, 17.665920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.908098, 17.350922, 18.160847>,  <15.833858, 17.719730, 17.479912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.908098, 17.350922, 18.160847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.235462, 17.580730, 18.156277>,  <16.431881, 17.718615, 18.153536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.235462, 17.580730, 18.156277>,  <15.908098, 17.350922, 18.160847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.235462, 17.580730, 18.156277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191746, 0.291778, 0.937070,
		0.541700, -0.764716, 0.348956,
		0.818410, 0.574521, -0.011424,
		16.480986, 17.753086, 18.152849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.275671, 17.109304, 18.780870>,  <15.908098, 17.350922, 18.160847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.275671, 17.109304, 18.780870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.396915, 17.478848, 18.687395>,  <16.469662, 17.700573, 18.631310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.396915, 17.478848, 18.687395>,  <16.275671, 17.109304, 18.780870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.396915, 17.478848, 18.687395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183028, 0.297100, 0.937141,
		0.935213, -0.241287, 0.259147,
		0.303113, 0.923857, -0.233689,
		16.487850, 17.756004, 18.617289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.816191, 17.213501, 19.251348>,  <16.275671, 17.109304, 18.780870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.816191, 17.213501, 19.251348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.662403, 17.559822, 19.123243>,  <16.570131, 17.767614, 19.046381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.662403, 17.559822, 19.123243>,  <16.816191, 17.213501, 19.251348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.662403, 17.559822, 19.123243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074732, 0.374980, 0.924016,
		0.920109, 0.331320, -0.208871,
		-0.384467, 0.865804, -0.320262,
		16.547064, 17.819563, 19.027164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.250463, 17.733908, 19.605206>,  <16.816191, 17.213501, 19.251348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.250463, 17.733908, 19.605206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.923271, 17.939857, 19.502590>,  <16.726955, 18.063427, 19.441021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.923271, 17.939857, 19.502590>,  <17.250463, 17.733908, 19.605206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.923271, 17.939857, 19.502590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040164, 0.393756, 0.918337,
		0.573842, 0.761485, -0.301406,
		-0.817981, 0.514875, -0.256538,
		16.677877, 18.094320, 19.425629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.353710, 18.424294, 19.927851>,  <17.250463, 17.733908, 19.605206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.353710, 18.424294, 19.927851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.968674, 18.380394, 19.828756>,  <16.737652, 18.354053, 19.769300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.968674, 18.380394, 19.828756>,  <17.353710, 18.424294, 19.927851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.968674, 18.380394, 19.828756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260992, 0.621220, 0.738897,
		0.072806, 0.775913, -0.626625,
		-0.962592, -0.109748, -0.247736,
		16.679895, 18.347469, 19.754436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.076193, 18.997824, 20.127497>,  <17.353710, 18.424294, 19.927851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.076193, 18.997824, 20.127497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.748943, 18.768772, 20.106436>,  <16.552593, 18.631342, 20.093800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.748943, 18.768772, 20.106436>,  <17.076193, 18.997824, 20.127497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.748943, 18.768772, 20.106436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349645, 0.422664, 0.836124,
		-0.456535, 0.702461, -0.546008,
		-0.818122, -0.572629, -0.052651,
		16.503506, 18.596983, 20.090641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.553896, 19.392984, 20.480505>,  <17.076193, 18.997824, 20.127497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.553896, 19.392984, 20.480505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.406273, 19.021931, 20.457548>,  <16.317699, 18.799299, 20.443775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.406273, 19.021931, 20.457548>,  <16.553896, 19.392984, 20.480505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.406273, 19.021931, 20.457548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515616, 0.152980, 0.843052,
		-0.773263, 0.340727, -0.534761,
		-0.369058, -0.927633, -0.057391,
		16.295555, 18.743641, 20.440331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.762336, 19.386465, 20.466204>,  <16.553896, 19.392984, 20.480505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.762336, 19.386465, 20.466204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.874431, 19.034294, 20.619207>,  <15.941688, 18.822990, 20.711010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.874431, 19.034294, 20.619207>,  <15.762336, 19.386465, 20.466204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.874431, 19.034294, 20.619207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391702, 0.258911, 0.882913,
		-0.876377, -0.397254, -0.272309,
		0.280237, -0.880429, 0.382509,
		15.958502, 18.770166, 20.733959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.184637, 19.116282, 20.761290>,  <15.762336, 19.386465, 20.466204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.184637, 19.116282, 20.761290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.483508, 18.933887, 20.954702>,  <15.662830, 18.824451, 21.070751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.483508, 18.933887, 20.954702>,  <15.184637, 19.116282, 20.761290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.483508, 18.933887, 20.954702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464664, 0.161782, 0.870583,
		-0.475199, -0.875160, -0.091000,
		0.747177, -0.455984, 0.483534,
		15.707662, 18.797092, 21.099762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.870655, 18.648252, 21.286757>,  <15.184637, 19.116282, 20.761290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.870655, 18.648252, 21.286757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.246720, 18.728851, 21.396658>,  <15.472360, 18.777210, 21.462599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.246720, 18.728851, 21.396658>,  <14.870655, 18.648252, 21.286757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.246720, 18.728851, 21.396658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291844, 0.060079, 0.954577,
		0.175839, -0.977645, 0.115291,
		0.940163, 0.201499, 0.274755,
		15.528769, 18.789301, 21.479084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.942553, 18.289843, 21.912472>,  <14.870655, 18.648252, 21.286757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.942553, 18.289843, 21.912472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.265626, 18.525288, 21.926228>,  <15.459470, 18.666555, 21.934481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.265626, 18.525288, 21.926228>,  <14.942553, 18.289843, 21.912472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.265626, 18.525288, 21.926228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184007, 0.196216, 0.963141,
		0.560170, -0.784240, 0.266789,
		0.807682, 0.588614, 0.034391,
		15.507931, 18.701872, 21.936544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.199995, 18.241095, 22.616264>,  <14.942553, 18.289843, 21.912472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.199995, 18.241095, 22.616264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.352601, 18.580166, 22.468813>,  <15.444165, 18.783609, 22.380342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.352601, 18.580166, 22.468813>,  <15.199995, 18.241095, 22.616264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.352601, 18.580166, 22.468813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122676, 0.441695, 0.888739,
		0.916186, -0.293846, 0.272504,
		0.381516, 0.847679, -0.368626,
		15.467056, 18.834469, 22.358225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.777028, 18.413649, 22.970076>,  <15.199995, 18.241095, 22.616264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.777028, 18.413649, 22.970076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.683290, 18.759754, 22.792807>,  <15.627047, 18.967417, 22.686445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.683290, 18.759754, 22.792807>,  <15.777028, 18.413649, 22.970076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.683290, 18.759754, 22.792807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005767, 0.454623, 0.890665,
		0.972136, 0.211279, -0.101549,
		-0.234345, 0.865263, -0.443174,
		15.612986, 19.019333, 22.659855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.247414, 18.973377, 23.244513>,  <15.777028, 18.413649, 22.970076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.247414, 18.973377, 23.244513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.927608, 19.170315, 23.106892>,  <15.735723, 19.288477, 23.024319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.927608, 19.170315, 23.106892>,  <16.247414, 18.973377, 23.244513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.927608, 19.170315, 23.106892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034076, 0.534704, 0.844352,
		0.599678, 0.686796, -0.410727,
		-0.799515, 0.492344, -0.344053,
		15.687753, 19.318018, 23.003675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.409664, 19.603491, 23.372992>,  <16.247414, 18.973377, 23.244513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.409664, 19.603491, 23.372992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.012894, 19.629063, 23.329184>,  <15.774831, 19.644405, 23.302898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.012894, 19.629063, 23.329184>,  <16.409664, 19.603491, 23.372992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.012894, 19.629063, 23.329184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058921, 0.532401, 0.844439,
		0.112291, 0.844075, -0.524336,
		-0.991927, 0.063929, -0.109518,
		15.715316, 19.648241, 23.296328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.274681, 20.431366, 23.385260>,  <16.409664, 19.603491, 23.372992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.274681, 20.431366, 23.385260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.981454, 20.186680, 23.504198>,  <15.805517, 20.039867, 23.575562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.981454, 20.186680, 23.504198>,  <16.274681, 20.431366, 23.385260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.981454, 20.186680, 23.504198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059193, 0.378139, 0.923855,
		-0.677574, 0.694850, -0.240992,
		-0.733069, -0.611715, 0.297348,
		15.761534, 20.003166, 23.593403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.725304, 20.797527, 23.713034>,  <16.274681, 20.431366, 23.385260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.725304, 20.797527, 23.713034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.709006, 20.426651, 23.861982>,  <15.699228, 20.204126, 23.951351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.709006, 20.426651, 23.861982>,  <15.725304, 20.797527, 23.713034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.709006, 20.426651, 23.861982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201412, 0.357408, 0.911972,
		-0.978659, 0.112157, 0.172185,
		-0.040744, -0.927189, 0.372371,
		15.696783, 20.148495, 23.973694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.083437, 21.330212, 23.297319>,  <15.725304, 20.797527, 23.713034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.083437, 21.330212, 23.297319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.364845, 21.609108, 23.352331>,  <16.533691, 21.776445, 23.385338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.364845, 21.609108, 23.352331>,  <16.083437, 21.330212, 23.297319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.364845, 21.609108, 23.352331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243417, -0.054597, -0.968384,
		-0.667686, 0.714757, -0.208130,
		0.703522, 0.697239, 0.137530,
		16.575903, 21.818279, 23.393591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.084898, 21.882919, 22.774988>,  <16.083437, 21.330212, 23.297319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.084898, 21.882919, 22.774988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.456348, 21.878265, 22.923321>,  <16.679218, 21.875473, 23.012320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.456348, 21.878265, 22.923321>,  <16.084898, 21.882919, 22.774988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.456348, 21.878265, 22.923321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369683, -0.055488, -0.927500,
		0.031367, 0.998392, -0.047227,
		0.928628, -0.011634, 0.370829,
		16.734938, 21.874775, 23.034569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.471792, 22.244202, 22.311316>,  <16.084898, 21.882919, 22.774988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.471792, 22.244202, 22.311316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.765808, 22.060318, 22.510670>,  <16.942217, 21.949987, 22.630281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.765808, 22.060318, 22.510670>,  <16.471792, 22.244202, 22.311316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.765808, 22.060318, 22.510670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565620, 0.010409, -0.824600,
		0.373888, 0.888009, 0.267671,
		0.735039, -0.459708, 0.498384,
		16.986320, 21.922405, 22.660185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.091343, 22.718973, 22.228870>,  <16.471792, 22.244202, 22.311316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.091343, 22.718973, 22.228870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.213356, 22.352291, 22.332104>,  <17.286564, 22.132282, 22.394045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.213356, 22.352291, 22.332104>,  <17.091343, 22.718973, 22.228870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.213356, 22.352291, 22.332104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455414, -0.097597, -0.884914,
		0.836393, 0.387463, 0.387710,
		0.305032, -0.916705, 0.258086,
		17.304865, 22.077280, 22.409529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.819147, 22.681438, 22.114164>,  <17.091343, 22.718973, 22.228870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.819147, 22.681438, 22.114164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.658401, 22.315186, 22.118551>,  <17.561954, 22.095434, 22.121183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.658401, 22.315186, 22.118551>,  <17.819147, 22.681438, 22.114164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.658401, 22.315186, 22.118551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557627, -0.254204, -0.790210,
		0.726331, -0.311442, 0.612738,
		-0.401865, -0.915633, 0.010968,
		17.537842, 22.040495, 22.121841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.375454, 22.309216, 21.753962>,  <17.819147, 22.681438, 22.114164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.375454, 22.309216, 21.753962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.064133, 22.058067, 21.751997>,  <17.877340, 21.907379, 21.750818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.064133, 22.058067, 21.751997>,  <18.375454, 22.309216, 21.753962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.064133, 22.058067, 21.751997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312854, -0.381005, -0.870033,
		0.544397, -0.678685, 0.492969,
		-0.778302, -0.627871, -0.004911,
		17.830643, 21.869705, 21.750523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.629471, 21.554071, 21.746256>,  <18.375454, 22.309216, 21.753962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.629471, 21.554071, 21.746256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.255360, 21.571159, 21.605722>,  <18.030893, 21.581411, 21.521402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.255360, 21.571159, 21.605722>,  <18.629471, 21.554071, 21.746256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.255360, 21.571159, 21.605722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268866, -0.559780, -0.783810,
		-0.230152, -0.827539, 0.512063,
		-0.935276, 0.042719, -0.351332,
		17.974777, 21.583975, 21.500322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.637327, 20.859604, 21.263954>,  <18.629471, 21.554071, 21.746256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.637327, 20.859604, 21.263954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.316814, 21.089489, 21.197433>,  <18.124508, 21.227421, 21.157520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.316814, 21.089489, 21.197433>,  <18.637327, 20.859604, 21.263954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.316814, 21.089489, 21.197433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048256, -0.339139, -0.939498,
		-0.596341, -0.744776, 0.299478,
		-0.801280, 0.574713, -0.166302,
		18.076431, 21.261902, 21.147543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.017357, 20.431913, 21.131197>,  <18.637327, 20.859604, 21.263954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.017357, 20.431913, 21.131197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.953190, 20.780350, 20.945522>,  <17.914690, 20.989412, 20.834118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.953190, 20.780350, 20.945522>,  <18.017357, 20.431913, 21.131197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.953190, 20.780350, 20.945522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152744, -0.486519, -0.860214,
		-0.975159, -0.067093, 0.211101,
		-0.160419, 0.871090, -0.464185,
		17.905064, 21.041677, 20.806267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.543177, 20.278555, 20.650347>,  <18.017357, 20.431913, 21.131197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.543177, 20.278555, 20.650347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.707069, 20.619003, 20.519072>,  <17.805405, 20.823273, 20.440306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.707069, 20.619003, 20.519072>,  <17.543177, 20.278555, 20.650347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.707069, 20.619003, 20.519072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027385, -0.371090, -0.928193,
		-0.911794, 0.371323, -0.175356,
		0.409733, 0.851123, -0.328189,
		17.829988, 20.874340, 20.420614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.108765, 20.531096, 20.070507>,  <17.543177, 20.278555, 20.650347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.108765, 20.531096, 20.070507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.460411, 20.714958, 20.020121>,  <17.671398, 20.825275, 19.989889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.460411, 20.714958, 20.020121>,  <17.108765, 20.531096, 20.070507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.460411, 20.714958, 20.020121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060925, -0.370513, -0.926827,
		-0.472696, 0.807115, -0.353729,
		0.879117, 0.459659, -0.125966,
		17.724146, 20.852856, 19.982330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.074482, 20.672409, 19.403534>,  <17.108765, 20.531096, 20.070507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.074482, 20.672409, 19.403534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.460266, 20.690876, 19.507597>,  <17.691736, 20.701956, 19.570036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.460266, 20.690876, 19.507597>,  <17.074482, 20.672409, 19.403534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.460266, 20.690876, 19.507597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259458, -0.351660, -0.899454,
		0.049961, 0.934989, -0.351141,
		0.964461, 0.046169, 0.260160,
		17.749605, 20.704727, 19.585646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.343012, 20.945936, 18.893373>,  <17.074482, 20.672409, 19.403534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.343012, 20.945936, 18.893373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.661652, 20.777256, 19.066622>,  <17.852837, 20.676048, 19.170570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.661652, 20.777256, 19.066622>,  <17.343012, 20.945936, 18.893373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.661652, 20.777256, 19.066622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303110, -0.341265, -0.889754,
		0.523020, 0.840062, -0.144030,
		0.796601, -0.421702, 0.433120,
		17.900633, 20.650745, 19.196558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.857506, 20.955093, 18.436615>,  <17.343012, 20.945936, 18.893373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.857506, 20.955093, 18.436615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.026432, 20.682884, 18.676128>,  <18.127789, 20.519560, 18.819836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.026432, 20.682884, 18.676128>,  <17.857506, 20.955093, 18.436615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.026432, 20.682884, 18.676128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361458, -0.479357, -0.799728,
		0.831262, 0.554173, 0.043539,
		0.422316, -0.680522, 0.598781,
		18.153128, 20.478727, 18.855762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.540565, 20.870863, 18.153349>,  <17.857506, 20.955093, 18.436615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.540565, 20.870863, 18.153349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.430592, 20.560230, 18.380093>,  <18.364607, 20.373850, 18.516138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.430592, 20.560230, 18.380093>,  <18.540565, 20.870863, 18.153349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.430592, 20.560230, 18.380093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222837, -0.624994, -0.748148,
		0.935283, -0.079375, 0.344884,
		-0.274934, -0.776583, 0.566859,
		18.348112, 20.327255, 18.550150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.076172, 20.470922, 18.120182>,  <18.540565, 20.870863, 18.153349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.076172, 20.470922, 18.120182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.756508, 20.242249, 18.194506>,  <18.564711, 20.105045, 18.239100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.756508, 20.242249, 18.194506>,  <19.076172, 20.470922, 18.120182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.756508, 20.242249, 18.194506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295229, -0.642526, -0.707107,
		0.523628, -0.510234, 0.682257,
		-0.799158, -0.571683, 0.185809,
		18.516760, 20.070744, 18.250248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.353630, 19.811035, 18.350876>,  <19.076172, 20.470922, 18.120182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.353630, 19.811035, 18.350876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.978722, 19.752110, 18.224497>,  <18.753777, 19.716753, 18.148668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.978722, 19.752110, 18.224497>,  <19.353630, 19.811035, 18.350876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.978722, 19.752110, 18.224497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315512, -0.743904, -0.589117,
		-0.148250, -0.651847, 0.743719,
		-0.937270, -0.147316, -0.315950,
		18.697540, 19.707914, 18.129711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.327311, 19.034245, 18.241282>,  <19.353630, 19.811035, 18.350876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.327311, 19.034245, 18.241282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.014557, 19.184189, 18.042028>,  <18.826904, 19.274155, 17.922476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.014557, 19.184189, 18.042028>,  <19.327311, 19.034245, 18.241282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.014557, 19.184189, 18.042028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164453, -0.646708, -0.744798,
		-0.601341, -0.664266, 0.444005,
		-0.781886, 0.374860, -0.498132,
		18.779991, 19.296646, 17.892590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.108267, 18.544420, 17.869108>,  <19.327311, 19.034245, 18.241282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.108267, 18.544420, 17.869108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.915192, 18.846645, 17.691959>,  <18.799347, 19.027981, 17.585670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.915192, 18.846645, 17.691959>,  <19.108267, 18.544420, 17.869108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.915192, 18.846645, 17.691959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006900, -0.508948, -0.860769,
		-0.875764, -0.412429, 0.250878,
		-0.482690, 0.755562, -0.442873,
		18.770384, 19.073315, 17.559097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.793453, 18.213165, 17.448223>,  <19.108267, 18.544420, 17.869108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.793453, 18.213165, 17.448223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.796623, 18.586143, 17.303732>,  <18.798525, 18.809931, 17.217037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.796623, 18.586143, 17.303732>,  <18.793453, 18.213165, 17.448223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.796623, 18.586143, 17.303732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176347, -0.356881, -0.917353,
		-0.984296, -0.056433, -0.167261,
		0.007923, 0.932443, -0.361229,
		18.799000, 18.865877, 17.195364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<17.261225, 14.531525, 13.273829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.299065, 14.928646, 13.244463>,  <17.321770, 15.166919, 13.226844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.299065, 14.928646, 13.244463>,  <17.261225, 14.531525, 13.273829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.299065, 14.928646, 13.244463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326526, -0.038720, -0.944395,
		-0.940442, 0.113312, 0.320513,
		0.094601, 0.992805, -0.073414,
		17.327444, 15.226487, 13.222439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.600233, 14.888748, 13.035805>,  <17.261225, 14.531525, 13.273829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.600233, 14.888748, 13.035805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.853558, 15.175087, 12.918175>,  <17.005552, 15.346890, 12.847597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.853558, 15.175087, 12.918175>,  <16.600233, 14.888748, 13.035805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.853558, 15.175087, 12.918175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320312, -0.103455, -0.941646,
		-0.704499, 0.690550, 0.163776,
		0.633310, 0.715848, -0.294075,
		17.043550, 15.389841, 12.829952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.281815, 15.405006, 12.677742>,  <16.600233, 14.888748, 13.035805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.281815, 15.405006, 12.677742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.657906, 15.416851, 12.542039>,  <16.883560, 15.423958, 12.460617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.657906, 15.416851, 12.542039>,  <16.281815, 15.405006, 12.677742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.657906, 15.416851, 12.542039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337930, -0.042137, -0.940228,
		-0.042137, 0.998673, -0.029612,
		0.940228, 0.029612, -0.339257,
		16.939974, 15.425735, 12.440262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.254948, 15.737251, 12.072659>,  <16.281815, 15.405006, 12.677742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.254948, 15.737251, 12.072659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.606144, 15.551857, 12.024805>,  <16.816862, 15.440620, 11.996093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.606144, 15.551857, 12.024805>,  <16.254948, 15.737251, 12.072659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.606144, 15.551857, 12.024805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206279, -0.140819, -0.968307,
		0.431949, 0.874844, -0.219245,
		0.877991, -0.463485, -0.119635,
		16.869541, 15.412811, 11.988914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.780621, 16.077591, 11.490989>,  <16.254948, 15.737251, 12.072659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.780621, 16.077591, 11.490989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.890278, 15.693127, 11.503736>,  <16.956072, 15.462448, 11.511384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.890278, 15.693127, 11.503736>,  <16.780621, 16.077591, 11.490989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.890278, 15.693127, 11.503736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136386, -0.071659, -0.988061,
		0.951969, 0.266522, -0.150734,
		0.274142, -0.961161, 0.031868,
		16.972521, 15.404778, 11.513296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.211761, 16.013008, 10.861134>,  <16.780621, 16.077591, 11.490989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.211761, 16.013008, 10.861134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.187889, 15.625751, 10.958407>,  <17.173565, 15.393397, 11.016772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.187889, 15.625751, 10.958407>,  <17.211761, 16.013008, 10.861134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.187889, 15.625751, 10.958407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112253, -0.248583, -0.962084,
		0.991886, -0.030120, 0.123512,
		-0.059681, -0.968142, 0.243185,
		17.169985, 15.335309, 11.031363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.799408, 15.566249, 10.535967>,  <17.211761, 16.013008, 10.861134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.799408, 15.566249, 10.535967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.526451, 15.291904, 10.637112>,  <17.362677, 15.127297, 10.697799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.526451, 15.291904, 10.637112>,  <17.799408, 15.566249, 10.535967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.526451, 15.291904, 10.637112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053975, -0.392250, -0.918274,
		0.728993, -0.612972, 0.304686,
		-0.682390, -0.685861, 0.252862,
		17.321733, 15.086146, 10.712971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.076443, 15.064488, 10.297293>,  <17.799408, 15.566249, 10.535967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.076443, 15.064488, 10.297293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.704971, 14.924881, 10.347480>,  <17.482088, 14.841116, 10.377592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.704971, 14.924881, 10.347480>,  <18.076443, 15.064488, 10.297293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.704971, 14.924881, 10.347480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016778, -0.377478, -0.925867,
		0.370507, -0.857727, 0.356411,
		-0.928678, -0.349020, 0.125467,
		17.426369, 14.820175, 10.385119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.096725, 14.353853, 10.266324>,  <18.076443, 15.064488, 10.297293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.096725, 14.353853, 10.266324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.737282, 14.488789, 10.154108>,  <17.521616, 14.569750, 10.086779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.737282, 14.488789, 10.154108>,  <18.096725, 14.353853, 10.266324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.737282, 14.488789, 10.154108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223743, -0.197687, -0.954389,
		-0.377412, -0.920392, 0.102166,
		-0.898610, 0.337339, -0.280541,
		17.467699, 14.589990, 10.069945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.798079, 13.831288, 9.823693>,  <18.096725, 14.353853, 10.266324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.798079, 13.831288, 9.823693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.604809, 14.172390, 9.744344>,  <17.488848, 14.377051, 9.696734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.604809, 14.172390, 9.744344>,  <17.798079, 13.831288, 9.823693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.604809, 14.172390, 9.744344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129645, -0.154393, -0.979467,
		-0.865873, -0.498971, -0.035957,
		-0.483173, 0.852755, -0.198374,
		17.459856, 14.428217, 9.684832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.353558, 13.704383, 9.187498>,  <17.798079, 13.831288, 9.823693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.353558, 13.704383, 9.187498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.399269, 14.101635, 9.197571>,  <17.426695, 14.339986, 9.203614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.399269, 14.101635, 9.197571>,  <17.353558, 13.704383, 9.187498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.399269, 14.101635, 9.197571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115371, 0.038444, -0.992578,
		-0.986727, 0.110523, 0.118972,
		0.114277, 0.993130, 0.025182,
		17.433552, 14.399574, 9.205126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.929726, 13.887070, 8.730110>,  <17.353558, 13.704383, 9.187498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.929726, 13.887070, 8.730110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.165283, 14.209293, 8.756273>,  <17.306618, 14.402628, 8.771971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.165283, 14.209293, 8.756273>,  <16.929726, 13.887070, 8.730110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.165283, 14.209293, 8.756273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071196, 0.132320, -0.988647,
		-0.805069, 0.577550, 0.135275,
		0.588893, 0.805560, 0.065408,
		17.341951, 14.450961, 8.775896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.705906, 14.521236, 8.477252>,  <16.929726, 13.887070, 8.730110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.705906, 14.521236, 8.477252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.097042, 14.493046, 8.398399>,  <17.331724, 14.476131, 8.351088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.097042, 14.493046, 8.398399>,  <16.705906, 14.521236, 8.477252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.097042, 14.493046, 8.398399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198726, -0.016304, -0.979920,
		0.065848, 0.997380, -0.029949,
		0.977841, -0.070477, -0.197132,
		17.390394, 14.471903, 8.339260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.980305, 15.144833, 8.066300>,  <16.705906, 14.521236, 8.477252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.980305, 15.144833, 8.066300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.155533, 14.794949, 7.983376>,  <17.260670, 14.585018, 7.933620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.155533, 14.794949, 7.983376>,  <16.980305, 15.144833, 8.066300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.155533, 14.794949, 7.983376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384719, 0.026005, -0.922667,
		0.812457, 0.483949, -0.325126,
		0.438069, -0.874710, -0.207312,
		17.286953, 14.532536, 7.921182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.022398, 15.379408, 7.310330>,  <16.980305, 15.144833, 8.066300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.022398, 15.379408, 7.310330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.869755, 15.656616, 7.065677>,  <16.778168, 15.822942, 6.918885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.869755, 15.656616, 7.065677>,  <17.022398, 15.379408, 7.310330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.869755, 15.656616, 7.065677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306141, 0.529598, 0.791077,
		0.872154, 0.489128, 0.010062,
		-0.381610, 0.693022, -0.611633,
		16.755272, 15.864523, 6.882187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.340210, 16.066788, 7.558664>,  <17.022398, 15.379408, 7.310330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.340210, 16.066788, 7.558664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.989101, 16.124218, 7.375840>,  <16.778437, 16.158676, 7.266146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.989101, 16.124218, 7.375840>,  <17.340210, 16.066788, 7.558664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.989101, 16.124218, 7.375840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307115, 0.563582, 0.766848,
		0.367692, 0.813487, -0.450601,
		-0.877772, 0.143577, -0.457059,
		16.725769, 16.167292, 7.238723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.282623, 16.682787, 7.663218>,  <17.340210, 16.066788, 7.558664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.282623, 16.682787, 7.663218> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.906178, 16.591778, 7.563192>,  <16.680309, 16.537172, 7.503177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.906178, 16.591778, 7.563192>,  <17.282623, 16.682787, 7.663218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.906178, 16.591778, 7.563192> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337555, 0.591079, 0.732586,
		-0.018872, 0.773859, -0.633076,
		-0.941117, -0.227523, -0.250065,
		16.623842, 16.523521, 7.488173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.840710, 17.334505, 7.651485>,  <17.282623, 16.682787, 7.663218>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.840710, 17.334505, 7.651485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.589275, 17.024052, 7.671473>,  <16.438416, 16.837780, 7.683465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.589275, 17.024052, 7.671473>,  <16.840710, 17.334505, 7.651485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.589275, 17.024052, 7.671473> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449711, 0.415133, 0.790838,
		-0.634540, 0.474637, -0.609982,
		-0.628585, -0.776134, 0.049969,
		16.400700, 16.791212, 7.686463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.254482, 17.665745, 7.644813>,  <16.840710, 17.334505, 7.651485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.254482, 17.665745, 7.644813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.167709, 17.301697, 7.786022>,  <16.115646, 17.083269, 7.870748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.167709, 17.301697, 7.786022>,  <16.254482, 17.665745, 7.644813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.167709, 17.301697, 7.786022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450522, 0.414160, 0.790887,
		-0.866009, 0.012523, -0.499872,
		-0.216932, -0.910118, 0.353024,
		16.102631, 17.028662, 7.891930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.574903, 17.604456, 7.731596>,  <16.254482, 17.665745, 7.644813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.574903, 17.604456, 7.731596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.739463, 17.325226, 7.966010>,  <15.838200, 17.157688, 8.106659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.739463, 17.325226, 7.966010>,  <15.574903, 17.604456, 7.731596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.739463, 17.325226, 7.966010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482846, 0.378415, 0.789723,
		-0.773052, -0.607858, -0.181383,
		0.411401, -0.698076, 0.586036,
		15.862884, 17.115803, 8.141821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.035998, 17.315611, 8.023633>,  <15.574903, 17.604456, 7.731596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.035998, 17.315611, 8.023633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.344445, 17.267731, 8.273768>,  <15.529513, 17.239002, 8.423850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.344445, 17.267731, 8.273768>,  <15.035998, 17.315611, 8.023633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.344445, 17.267731, 8.273768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598707, 0.197851, 0.776148,
		-0.216628, -0.972896, 0.080901,
		0.771118, -0.119700, 0.625339,
		15.575781, 17.231821, 8.461370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.844194, 16.973719, 8.637964>,  <15.035998, 17.315611, 8.023633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.844194, 16.973719, 8.637964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.185563, 17.149448, 8.750154>,  <15.390385, 17.254887, 8.817469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.185563, 17.149448, 8.750154>,  <14.844194, 16.973719, 8.637964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.185563, 17.149448, 8.750154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441434, 0.323092, 0.837107,
		0.277142, -0.838216, 0.469666,
		0.853421, 0.439324, 0.280475,
		15.441589, 17.281246, 8.834297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.044518, 16.695465, 9.205585>,  <14.844194, 16.973719, 8.637964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.044518, 16.695465, 9.205585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.222354, 17.053703, 9.211881>,  <15.329055, 17.268646, 9.215658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.222354, 17.053703, 9.211881>,  <15.044518, 16.695465, 9.205585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.222354, 17.053703, 9.211881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399286, 0.182423, 0.898495,
		0.801818, -0.405744, 0.438702,
		0.444589, 0.895597, 0.015738,
		15.355731, 17.322382, 9.216602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.230726, 16.747675, 9.858051>,  <15.044518, 16.695465, 9.205585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.230726, 16.747675, 9.858051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.284219, 17.119137, 9.719648>,  <15.316314, 17.342014, 9.636606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.284219, 17.119137, 9.719648>,  <15.230726, 16.747675, 9.858051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.284219, 17.119137, 9.719648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168147, 0.365343, 0.915560,
		0.976649, -0.064258, 0.205008,
		0.133730, 0.928653, -0.346007,
		15.324338, 17.397732, 9.615847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.684798, 16.995108, 10.378740>,  <15.230726, 16.747675, 9.858051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.684798, 16.995108, 10.378740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.552030, 17.306904, 10.166242>,  <15.472368, 17.493980, 10.038742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.552030, 17.306904, 10.166242>,  <15.684798, 16.995108, 10.378740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.552030, 17.306904, 10.166242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282160, 0.455349, 0.844418,
		0.900118, 0.430178, 0.068801,
		-0.331922, 0.779490, -0.531248,
		15.452453, 17.540751, 10.006867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.043188, 17.599888, 10.494987>,  <15.684798, 16.995108, 10.378740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.043188, 17.599888, 10.494987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.676610, 17.716133, 10.384954>,  <15.456663, 17.785881, 10.318934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.676610, 17.716133, 10.384954>,  <16.043188, 17.599888, 10.494987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.676610, 17.716133, 10.384954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158577, 0.367396, 0.916446,
		0.367396, 0.883495, -0.290614,
		-0.916446, 0.290614, -0.275082,
		15.401676, 17.803318, 10.302430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.945535, 18.206587, 10.795099>,  <16.043188, 17.599888, 10.494987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.945535, 18.206587, 10.795099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.570100, 18.129128, 10.680868>,  <15.344839, 18.082651, 10.612329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.570100, 18.129128, 10.680868>,  <15.945535, 18.206587, 10.795099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.570100, 18.129128, 10.680868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336682, 0.332892, 0.880811,
		-0.075501, 0.922867, -0.377646,
		-0.938587, -0.193649, -0.285579,
		15.288524, 18.071033, 10.595195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.535830, 18.901623, 10.853486>,  <15.945535, 18.206587, 10.795099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.535830, 18.901623, 10.853486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.322810, 18.568386, 10.913285>,  <15.194998, 18.368444, 10.949164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.322810, 18.568386, 10.913285>,  <15.535830, 18.901623, 10.853486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.322810, 18.568386, 10.913285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080320, 0.225574, 0.970909,
		-0.842578, 0.505051, -0.187044,
		-0.532551, -0.833091, 0.149498,
		15.163045, 18.318459, 10.958135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.220602, 19.620863, 10.832124>,  <15.535830, 18.901623, 10.853486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.220602, 19.620863, 10.832124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.529586, 19.873936, 10.854094>,  <15.714976, 20.025780, 10.867275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.529586, 19.873936, 10.854094>,  <15.220602, 19.620863, 10.832124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.529586, 19.873936, 10.854094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305211, -0.294009, -0.905762,
		-0.556913, 0.716429, -0.420212,
		0.772460, 0.632684, 0.054925,
		15.761324, 20.063742, 10.870571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.218726, 19.858303, 10.223196>,  <15.220602, 19.620863, 10.832124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.218726, 19.858303, 10.223196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.589210, 19.931156, 10.355237>,  <15.811500, 19.974869, 10.434462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.589210, 19.931156, 10.355237>,  <15.218726, 19.858303, 10.223196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.589210, 19.931156, 10.355237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358840, -0.157305, -0.920048,
		-0.115645, 0.970609, -0.211054,
		0.926207, 0.182134, 0.330101,
		15.867072, 19.985796, 10.454268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.619658, 20.316610, 9.783977>,  <15.218726, 19.858303, 10.223196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.619658, 20.316610, 9.783977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.926101, 20.162308, 9.989607>,  <16.109966, 20.069725, 10.112985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.926101, 20.162308, 9.989607>,  <15.619658, 20.316610, 9.783977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.926101, 20.162308, 9.989607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522590, -0.091737, -0.847634,
		0.374141, 0.918028, 0.131313,
		0.766106, -0.385758, 0.514075,
		16.155931, 20.046579, 10.143829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.202271, 20.587620, 9.406027>,  <15.619658, 20.316610, 9.783977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.202271, 20.587620, 9.406027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.346741, 20.303349, 9.647519>,  <16.433422, 20.132786, 9.792415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.346741, 20.303349, 9.647519>,  <16.202271, 20.587620, 9.406027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.346741, 20.303349, 9.647519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667922, -0.254632, -0.699316,
		0.650718, 0.655819, 0.382711,
		0.361174, -0.710678, 0.603730,
		16.455093, 20.090145, 9.828638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.963202, 20.764874, 9.459557>,  <16.202271, 20.587620, 9.406027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.963202, 20.764874, 9.459557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.915356, 20.375908, 9.539660>,  <16.886648, 20.142529, 9.587723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.915356, 20.375908, 9.539660>,  <16.963202, 20.764874, 9.459557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.915356, 20.375908, 9.539660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771786, -0.217957, -0.597362,
		0.624531, 0.083105, 0.776566,
		-0.119614, -0.972414, 0.200260,
		16.879471, 20.084185, 9.599738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.712820, 20.421942, 9.689633>,  <16.963202, 20.764874, 9.459557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.712820, 20.421942, 9.689633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.462437, 20.128860, 9.582806>,  <17.312206, 19.953012, 9.518709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.462437, 20.128860, 9.582806>,  <17.712820, 20.421942, 9.689633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.462437, 20.128860, 9.582806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743767, -0.457915, -0.486955,
		0.234497, -0.503451, 0.831594,
		-0.625957, -0.732702, -0.267070,
		17.274651, 19.909050, 9.502685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.069092, 19.717136, 9.812366>,  <17.712820, 20.421942, 9.689633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.069092, 19.717136, 9.812366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.770397, 19.653233, 9.554107>,  <17.591181, 19.614891, 9.399151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.770397, 19.653233, 9.554107>,  <18.069092, 19.717136, 9.812366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.770397, 19.653233, 9.554107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618905, -0.522425, -0.586540,
		-0.243598, -0.837586, 0.488989,
		-0.746737, -0.159758, -0.645648,
		17.546375, 19.605305, 9.360413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.207661, 19.051981, 9.508224>,  <18.069092, 19.717136, 9.812366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.207661, 19.051981, 9.508224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.972565, 19.246754, 9.249780>,  <17.831507, 19.363617, 9.094713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.972565, 19.246754, 9.249780>,  <18.207661, 19.051981, 9.508224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.972565, 19.246754, 9.249780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582556, -0.299465, -0.755612,
		-0.561420, -0.820498, -0.107658,
		-0.587738, 0.486932, -0.646112,
		17.796244, 19.392834, 9.055946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.175749, 18.580698, 8.968015>,  <18.207661, 19.051981, 9.508224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.175749, 18.580698, 8.968015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.078712, 18.930786, 8.800617>,  <18.020491, 19.140839, 8.700179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.078712, 18.930786, 8.800617>,  <18.175749, 18.580698, 8.968015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.078712, 18.930786, 8.800617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717453, -0.128510, -0.684651,
		-0.653002, -0.466339, -0.596755,
		-0.242591, 0.875222, -0.418493,
		18.005936, 19.193352, 8.675069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.228321, 18.443920, 8.242852>,  <18.175749, 18.580698, 8.968015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.228321, 18.443920, 8.242852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.206852, 18.843342, 8.241620>,  <18.193970, 19.082994, 8.240881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.206852, 18.843342, 8.241620>,  <18.228321, 18.443920, 8.242852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.206852, 18.843342, 8.241620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653027, 0.032768, -0.756626,
		-0.755431, -0.042623, -0.653841,
		-0.053675, 0.998554, -0.003080,
		18.190750, 19.142908, 8.240696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.847645, 18.567287, 7.646746>,  <18.228321, 18.443920, 8.242852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.847645, 18.567287, 7.646746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.071175, 18.876820, 7.766013>,  <18.205292, 19.062538, 7.837574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.071175, 18.876820, 7.766013>,  <17.847645, 18.567287, 7.646746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.071175, 18.876820, 7.766013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573234, -0.100630, -0.813189,
		-0.599264, 0.625350, -0.499820,
		0.558825, 0.773828, 0.298168,
		18.238823, 19.108969, 7.855464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.865025, 18.984911, 7.158731>,  <17.847645, 18.567287, 7.646746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.865025, 18.984911, 7.158731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.195675, 19.059120, 7.371248>,  <18.394066, 19.103645, 7.498758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.195675, 19.059120, 7.371248>,  <17.865025, 18.984911, 7.158731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.195675, 19.059120, 7.371248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555135, -0.114011, -0.823909,
		-0.092283, 0.976003, -0.197236,
		0.826625, 0.185525, 0.531292,
		18.443663, 19.114779, 7.530636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<13.558905, 22.063993, 13.399752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.894790, 21.932468, 13.572617>,  <14.096320, 21.853554, 13.676335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.894790, 21.932468, 13.572617>,  <13.558905, 22.063993, 13.399752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.894790, 21.932468, 13.572617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336587, -0.309364, -0.889384,
		0.426138, 0.892287, -0.149102,
		0.839712, -0.328814, 0.432163,
		14.146704, 21.833824, 13.702266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.999994, 22.018377, 12.798197>,  <13.558905, 22.063993, 13.399752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.999994, 22.018377, 12.798197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.233703, 21.853508, 13.077837>,  <14.373927, 21.754585, 13.245621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.233703, 21.853508, 13.077837>,  <13.999994, 22.018377, 12.798197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.233703, 21.853508, 13.077837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536617, -0.450029, -0.713803,
		0.608827, 0.792203, -0.041759,
		0.584270, -0.412174, 0.699100,
		14.408983, 21.729856, 13.287567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.672095, 22.155567, 12.617092>,  <13.999994, 22.018377, 12.798197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.672095, 22.155567, 12.617092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.676930, 21.828094, 12.846740>,  <14.679832, 21.631611, 12.984529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.676930, 21.828094, 12.846740>,  <14.672095, 22.155567, 12.617092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.676930, 21.828094, 12.846740> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618442, -0.445052, -0.647656,
		0.785738, 0.362888, 0.500928,
		0.012087, -0.818683, 0.574119,
		14.680556, 21.582489, 13.018975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.383355, 21.885368, 12.617919>,  <14.672095, 22.155567, 12.617092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.383355, 21.885368, 12.617919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.150401, 21.572147, 12.705242>,  <15.010629, 21.384214, 12.757636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.150401, 21.572147, 12.705242>,  <15.383355, 21.885368, 12.617919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.150401, 21.572147, 12.705242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470553, -0.543713, -0.694950,
		0.662879, -0.302003, 0.685118,
		-0.582385, -0.783052, 0.218307,
		14.975686, 21.337233, 12.770735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.900749, 21.395769, 12.688215>,  <15.383355, 21.885368, 12.617919>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.900749, 21.395769, 12.688215> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.563605, 21.186310, 12.638602>,  <15.361320, 21.060635, 12.608834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.563605, 21.186310, 12.638602>,  <15.900749, 21.395769, 12.688215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.563605, 21.186310, 12.638602> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462158, -0.586296, -0.665333,
		0.275680, -0.618103, 0.736172,
		-0.842859, -0.523646, -0.124031,
		15.310748, 21.029217, 12.601393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.048609, 20.677746, 12.803917>,  <15.900749, 21.395769, 12.688215>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.048609, 20.677746, 12.803917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.732299, 20.719406, 12.562643>,  <15.542514, 20.744402, 12.417879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.732299, 20.719406, 12.562643>,  <16.048609, 20.677746, 12.803917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.732299, 20.719406, 12.562643> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473972, -0.519375, -0.711056,
		-0.387335, -0.848176, 0.361344,
		-0.790773, 0.104150, -0.603184,
		15.495067, 20.750652, 12.381688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.011272, 20.064558, 12.571736>,  <16.048609, 20.677746, 12.803917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.011272, 20.064558, 12.571736> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.779849, 20.278660, 12.325558>,  <15.640995, 20.407122, 12.177851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.779849, 20.278660, 12.325558>,  <16.011272, 20.064558, 12.571736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.779849, 20.278660, 12.325558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421864, -0.449416, -0.787437,
		-0.698071, -0.715211, 0.034207,
		-0.578557, 0.535256, -0.615446,
		15.606282, 20.439236, 12.140924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.869852, 19.633842, 12.052488>,  <16.011272, 20.064558, 12.571736>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.869852, 19.633842, 12.052488> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.745099, 19.968742, 11.872827>,  <15.670247, 20.169683, 11.765030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.745099, 19.968742, 11.872827>,  <15.869852, 19.633842, 12.052488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.745099, 19.968742, 11.872827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490353, -0.263072, -0.830871,
		-0.813808, -0.479378, -0.328501,
		-0.311882, 0.837251, -0.449155,
		15.651534, 20.219917, 11.738080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.629299, 19.394072, 11.461612>,  <15.869852, 19.633842, 12.052488>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.629299, 19.394072, 11.461612> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.720996, 19.772572, 11.370343>,  <15.776014, 19.999672, 11.315582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.720996, 19.772572, 11.370343>,  <15.629299, 19.394072, 11.461612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.720996, 19.772572, 11.370343> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292391, -0.290532, -0.911098,
		-0.928416, 0.142146, -0.343276,
		0.229242, 0.946248, -0.228172,
		15.789768, 20.056446, 11.301891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.905293, 19.114653, 11.254325>,  <15.629299, 19.394072, 11.461612>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.905293, 19.114653, 11.254325> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.926419, 18.719917, 11.315467>,  <14.939095, 18.483076, 11.352152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.926419, 18.719917, 11.315467>,  <14.905293, 19.114653, 11.254325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.926419, 18.719917, 11.315467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556316, 0.098041, 0.825167,
		-0.829291, -0.128616, -0.543815,
		0.052814, -0.986837, 0.152856,
		14.942264, 18.423866, 11.361323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.379704, 18.966677, 11.626166>,  <14.905293, 19.114653, 11.254325>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.379704, 18.966677, 11.626166> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.512189, 18.594475, 11.688724>,  <14.591680, 18.371153, 11.726258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.512189, 18.594475, 11.688724>,  <14.379704, 18.966677, 11.626166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.512189, 18.594475, 11.688724> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484068, -0.025295, 0.874664,
		-0.809924, -0.365403, -0.458806,
		0.331211, -0.930505, 0.156393,
		14.611552, 18.315323, 11.735641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.808480, 18.560175, 11.759128>,  <14.379704, 18.966677, 11.626166>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.808480, 18.560175, 11.759128> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.110343, 18.349918, 11.916200>,  <14.291460, 18.223764, 12.010443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.110343, 18.349918, 11.916200>,  <13.808480, 18.560175, 11.759128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.110343, 18.349918, 11.916200> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481135, -0.036429, 0.875889,
		-0.446097, -0.849927, -0.280395,
		0.754656, -0.525640, 0.392679,
		14.336740, 18.192226, 12.034003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.446440, 18.076813, 12.237361>,  <13.808480, 18.560175, 11.759128>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.446440, 18.076813, 12.237361> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.832482, 18.106796, 12.337720>,  <14.064108, 18.124786, 12.397936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.832482, 18.106796, 12.337720>,  <13.446440, 18.076813, 12.237361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.832482, 18.106796, 12.337720> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256446, 0.076810, 0.963502,
		0.052941, -0.994225, 0.093350,
		0.965107, 0.074948, 0.250899,
		14.122014, 18.129284, 12.412990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.600348, 17.519564, 12.688648>,  <13.446440, 18.076813, 12.237361>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.600348, 17.519564, 12.688648> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.866969, 17.809208, 12.759495>,  <14.026941, 17.982994, 12.802003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.866969, 17.809208, 12.759495>,  <13.600348, 17.519564, 12.688648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.866969, 17.809208, 12.759495> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314908, 0.058157, 0.947339,
		0.675679, -0.687225, 0.266793,
		0.666551, 0.724113, 0.177118,
		14.066935, 18.026442, 12.812630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.795784, 17.283527, 13.317619>,  <13.600348, 17.519564, 12.688648>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.795784, 17.283527, 13.317619> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.940564, 17.656212, 13.305582>,  <14.027432, 17.879822, 13.298360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.940564, 17.656212, 13.305582>,  <13.795784, 17.283527, 13.317619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.940564, 17.656212, 13.305582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187135, 0.104247, 0.976787,
		0.913221, -0.347917, 0.212088,
		0.361951, 0.931711, -0.030093,
		14.049150, 17.935726, 13.296554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.232051, 17.314575, 13.890601>,  <13.795784, 17.283527, 13.317619>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.232051, 17.314575, 13.890601> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.141101, 17.693272, 13.799404>,  <14.086531, 17.920490, 13.744686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.141101, 17.693272, 13.799404>,  <14.232051, 17.314575, 13.890601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.141101, 17.693272, 13.799404> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067967, 0.218124, 0.973551,
		0.971432, 0.236858, 0.014751,
		-0.227376, 0.946742, -0.227992,
		14.072888, 17.977295, 13.731007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.594356, 17.804073, 14.344612>,  <14.232051, 17.314575, 13.890601>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.594356, 17.804073, 14.344612> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.268361, 17.995022, 14.213213>,  <14.072764, 18.109591, 14.134374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.268361, 17.995022, 14.213213>,  <14.594356, 17.804073, 14.344612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.268361, 17.995022, 14.213213> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124666, 0.409174, 0.903900,
		0.565910, 0.777619, -0.273960,
		-0.814987, 0.477373, -0.328499,
		14.023865, 18.138233, 14.114663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.664585, 18.398994, 14.596921>,  <14.594356, 17.804073, 14.344612>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.664585, 18.398994, 14.596921> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.270473, 18.409161, 14.529306>,  <14.034005, 18.415260, 14.488738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.270473, 18.409161, 14.529306>,  <14.664585, 18.398994, 14.596921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.270473, 18.409161, 14.529306> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146524, 0.383706, 0.911757,
		0.088033, 0.923105, -0.374335,
		-0.985282, 0.025416, -0.169036,
		13.974888, 18.416786, 14.478596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.475876, 19.016478, 14.810842>,  <14.664585, 18.398994, 14.596921>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.475876, 19.016478, 14.810842> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.136956, 18.804058, 14.807432>,  <13.933604, 18.676607, 14.805387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.136956, 18.804058, 14.807432>,  <14.475876, 19.016478, 14.810842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.136956, 18.804058, 14.807432> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182636, 0.276255, 0.943572,
		-0.498725, 0.801045, -0.331059,
		-0.847300, -0.531046, -0.008525,
		13.882767, 18.644745, 14.804874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.926857, 19.575560, 14.933527>,  <14.475876, 19.016478, 14.810842>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.926857, 19.575560, 14.933527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.772082, 19.213123, 15.001970>,  <13.679217, 18.995661, 15.043036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.772082, 19.213123, 15.001970>,  <13.926857, 19.575560, 14.933527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.772082, 19.213123, 15.001970> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278574, 0.291757, 0.915027,
		-0.879020, 0.306392, -0.365305,
		-0.386937, -0.906091, 0.171107,
		13.656001, 18.941296, 15.053303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.297202, 19.712292, 15.252926>,  <13.926857, 19.575560, 14.933527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.297202, 19.712292, 15.252926> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.421880, 19.346779, 15.357121>,  <13.496686, 19.127472, 15.419638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.421880, 19.346779, 15.357121>,  <13.297202, 19.712292, 15.252926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.421880, 19.346779, 15.357121> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010866, 0.277553, 0.960649,
		-0.950121, -0.296598, 0.096440,
		0.311694, -0.913780, 0.260486,
		13.515388, 19.072645, 15.435266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.823078, 19.517536, 15.747821>,  <13.297202, 19.712292, 15.252926>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.823078, 19.517536, 15.747821> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.127534, 19.269077, 15.822487>,  <13.310207, 19.120003, 15.867287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.127534, 19.269077, 15.822487>,  <12.823078, 19.517536, 15.747821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.127534, 19.269077, 15.822487> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140518, 0.123042, 0.982403,
		-0.633182, -0.773977, 0.006370,
		0.761141, -0.621145, 0.186666,
		13.355876, 19.082733, 15.878487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.570528, 19.046453, 16.318932>,  <12.823078, 19.517536, 15.747821>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.570528, 19.046453, 16.318932> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.969148, 19.023235, 16.342670>,  <13.208320, 19.009304, 16.356913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.969148, 19.023235, 16.342670>,  <12.570528, 19.046453, 16.318932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.969148, 19.023235, 16.342670> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049610, 0.156767, 0.986389,
		-0.066561, -0.985928, 0.153346,
		0.996548, -0.058048, 0.059346,
		13.268112, 19.005821, 16.360474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<19.900051, 22.407707, 17.620922> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.543785, 22.524113, 17.481192>,  <19.330027, 22.593956, 17.397354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.543785, 22.524113, 17.481192>,  <19.900051, 22.407707, 17.620922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.543785, 22.524113, 17.481192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162584, -0.513659, -0.842449,
		-0.424597, -0.807135, 0.410184,
		-0.890665, 0.291012, -0.349326,
		19.276587, 22.611416, 17.376394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.699997, 21.848463, 17.324646>,  <19.900051, 22.407707, 17.620922>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.699997, 21.848463, 17.324646> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.480766, 22.150524, 17.180782>,  <19.349228, 22.331760, 17.094463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.480766, 22.150524, 17.180782>,  <19.699997, 21.848463, 17.324646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.480766, 22.150524, 17.180782> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205318, -0.295375, -0.933058,
		-0.810835, -0.585234, 0.006843,
		-0.548079, 0.755152, -0.359660,
		19.316343, 22.377069, 17.072884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.098690, 21.467199, 16.941002>,  <19.699997, 21.848463, 17.324646>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.098690, 21.467199, 16.941002> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.154278, 21.849777, 16.838318>,  <19.187630, 22.079325, 16.776709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.154278, 21.849777, 16.838318>,  <19.098690, 21.467199, 16.941002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.154278, 21.849777, 16.838318> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032117, -0.263441, -0.964141,
		-0.989776, 0.125741, -0.067329,
		0.138970, 0.956445, -0.256709,
		19.195969, 22.136711, 16.761305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.645573, 21.563137, 16.277058>,  <19.098690, 21.467199, 16.941002>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.645573, 21.563137, 16.277058> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.917267, 21.856049, 16.257435>,  <19.080284, 22.031796, 16.245661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.917267, 21.856049, 16.257435>,  <18.645573, 21.563137, 16.277058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.917267, 21.856049, 16.257435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354941, -0.386265, -0.851362,
		-0.642382, 0.560864, -0.522281,
		0.679237, 0.732278, -0.049056,
		19.121038, 22.075731, 16.242718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.636740, 21.770462, 15.616019>,  <18.645573, 21.563137, 16.277058>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.636740, 21.770462, 15.616019> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.988670, 21.897076, 15.757843>,  <19.199829, 21.973043, 15.842937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.988670, 21.897076, 15.757843>,  <18.636740, 21.770462, 15.616019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.988670, 21.897076, 15.757843> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458793, -0.370725, -0.807510,
		-0.124162, 0.873137, -0.471398,
		0.879825, 0.316536, 0.354559,
		19.252619, 21.992037, 15.864211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.961237, 22.092493, 14.978117>,  <18.636740, 21.770462, 15.616019>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.961237, 22.092493, 14.978117> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.269176, 22.021988, 15.223478>,  <19.453939, 21.979685, 15.370695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.269176, 22.021988, 15.223478>,  <18.961237, 22.092493, 14.978117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.269176, 22.021988, 15.223478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491525, -0.449321, -0.745998,
		0.407106, 0.875809, -0.259273,
		0.769849, -0.176261, 0.613404,
		19.500132, 21.969110, 15.407499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.568317, 22.265266, 14.591324>,  <18.961237, 22.092493, 14.978117>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.568317, 22.265266, 14.591324> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.692577, 22.025940, 14.886759>,  <19.767134, 21.882343, 15.064020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.692577, 22.025940, 14.886759>,  <19.568317, 22.265266, 14.591324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.692577, 22.025940, 14.886759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402416, -0.621176, -0.672460,
		0.861138, 0.506119, 0.047805,
		0.310649, -0.598318, 0.738588,
		19.785772, 21.846445, 15.108335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.214760, 22.134369, 14.416819>,  <19.568317, 22.265266, 14.591324>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.214760, 22.134369, 14.416819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.121750, 21.835823, 14.666258>,  <20.065943, 21.656696, 14.815922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.121750, 21.835823, 14.666258>,  <20.214760, 22.134369, 14.416819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.121750, 21.835823, 14.666258> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398038, -0.658046, -0.639172,
		0.887410, 0.099591, 0.450094,
		-0.232527, -0.746362, 0.623598,
		20.051992, 21.611914, 14.853337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.829952, 21.690245, 14.536656>,  <20.214760, 22.134369, 14.416819>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.829952, 21.690245, 14.536656> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.516808, 21.462475, 14.636961>,  <20.328920, 21.325813, 14.697144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.516808, 21.462475, 14.636961>,  <20.829952, 21.690245, 14.536656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.516808, 21.462475, 14.636961> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330709, -0.722201, -0.607501,
		0.527025, -0.392661, 0.753698,
		-0.782864, -0.569423, 0.250762,
		20.281948, 21.291649, 14.712190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.040268, 20.951952, 14.426162>,  <20.829952, 21.690245, 14.536656>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.040268, 20.951952, 14.426162> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.644619, 20.893188, 14.429071>,  <20.407228, 20.857931, 14.430817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.644619, 20.893188, 14.429071>,  <21.040268, 20.951952, 14.426162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.644619, 20.893188, 14.429071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097485, -0.691788, -0.715490,
		0.110143, -0.706999, 0.698585,
		-0.989124, -0.146908, 0.007274,
		20.347881, 20.849115, 14.431253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.952875, 20.255228, 14.510150>,  <21.040268, 20.951952, 14.426162>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.952875, 20.255228, 14.510150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.605816, 20.373116, 14.349985>,  <20.397581, 20.443848, 14.253886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.605816, 20.373116, 14.349985>,  <20.952875, 20.255228, 14.510150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.605816, 20.373116, 14.349985> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105202, -0.678298, -0.727217,
		-0.485924, -0.673092, 0.557517,
		-0.867647, 0.294720, -0.400412,
		20.345522, 20.461531, 14.229861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.620943, 19.679991, 14.190356>,  <20.952875, 20.255228, 14.510150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.620943, 19.679991, 14.190356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.419857, 19.975285, 14.010452>,  <20.299206, 20.152462, 13.902510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.419857, 19.975285, 14.010452>,  <20.620943, 19.679991, 14.190356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.419857, 19.975285, 14.010452> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167495, -0.427240, -0.888488,
		-0.848069, -0.521990, 0.091130,
		-0.502717, 0.738236, -0.449760,
		20.269041, 20.196754, 13.875525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.312437, 19.379314, 13.595208>,  <20.620943, 19.679991, 14.190356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.312437, 19.379314, 13.595208> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.271683, 19.765976, 13.501228>,  <20.247231, 19.997972, 13.444840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.271683, 19.765976, 13.501228>,  <20.312437, 19.379314, 13.595208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.271683, 19.765976, 13.501228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041082, -0.231889, -0.971874,
		-0.993947, -0.108673, -0.016086,
		-0.101886, 0.966653, -0.234950,
		20.241117, 20.055971, 13.430743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.764421, 19.509680, 13.089149>,  <20.312437, 19.379314, 13.595208>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.764421, 19.509680, 13.089149> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.998043, 19.831833, 13.048677>,  <20.138216, 20.025126, 13.024394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.998043, 19.831833, 13.048677>,  <19.764421, 19.509680, 13.089149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.998043, 19.831833, 13.048677> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043379, -0.093501, -0.994674,
		-0.810555, 0.585332, -0.019673,
		0.584054, 0.805384, -0.101179,
		20.173260, 20.073448, 13.018324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.051540, 19.299789, 13.075016>,  <19.764421, 19.509680, 13.089149>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.051540, 19.299789, 13.075016> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.083996, 18.905907, 13.136683>,  <19.103470, 18.669577, 13.173682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.083996, 18.905907, 13.136683>,  <19.051540, 19.299789, 13.075016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.083996, 18.905907, 13.136683> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116851, 0.144212, 0.982623,
		-0.989829, -0.097745, -0.103362,
		0.081140, -0.984707, 0.154167,
		19.108337, 18.610495, 13.182933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.479345, 19.027079, 13.514294>,  <19.051540, 19.299789, 13.075016>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.479345, 19.027079, 13.514294> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.761024, 18.745537, 13.551588>,  <18.930033, 18.576612, 13.573965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.761024, 18.745537, 13.551588>,  <18.479345, 19.027079, 13.514294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.761024, 18.745537, 13.551588> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224996, -0.096673, 0.969552,
		-0.673410, -0.703735, -0.226441,
		0.704198, -0.703855, 0.093236,
		18.972284, 18.534380, 13.579559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.230141, 18.573503, 13.964063>,  <18.479345, 19.027079, 13.514294>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.230141, 18.573503, 13.964063> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.627110, 18.533653, 13.992844>,  <18.865290, 18.509743, 14.010112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.627110, 18.533653, 13.992844>,  <18.230141, 18.573503, 13.964063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.627110, 18.533653, 13.992844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080039, -0.079715, 0.993599,
		-0.093263, -0.991826, -0.087085,
		0.992419, -0.099636, 0.071950,
		18.924835, 18.503765, 14.014429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.327284, 18.000425, 14.357580>,  <18.230141, 18.573503, 13.964063>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.327284, 18.000425, 14.357580> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.689495, 18.169128, 14.376076>,  <18.906822, 18.270350, 14.387173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.689495, 18.169128, 14.376076>,  <18.327284, 18.000425, 14.357580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.689495, 18.169128, 14.376076> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000082, -0.108804, 0.994063,
		0.424285, -0.900157, -0.098491,
		0.905529, 0.421758, 0.046238,
		18.961153, 18.295656, 14.389947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.652630, 17.639465, 14.801009>,  <18.327284, 18.000425, 14.357580>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.652630, 17.639465, 14.801009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.851707, 17.985996, 14.784163>,  <18.971153, 18.193914, 14.774055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.851707, 17.985996, 14.784163>,  <18.652630, 17.639465, 14.801009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.851707, 17.985996, 14.784163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000931, 0.049091, 0.998794,
		0.867352, -0.497054, 0.025239,
		0.497694, 0.866330, -0.042117,
		19.001017, 18.245895, 14.771527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.229609, 17.626011, 15.290066>,  <18.652630, 17.639465, 14.801009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.229609, 17.626011, 15.290066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.149593, 18.011417, 15.218935>,  <19.101585, 18.242661, 15.176256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.149593, 18.011417, 15.218935>,  <19.229609, 17.626011, 15.290066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.149593, 18.011417, 15.218935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047029, 0.190728, 0.980516,
		0.978659, 0.187776, -0.083465,
		-0.200037, 0.963516, -0.177827,
		19.089582, 18.300472, 15.165587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.638153, 18.009018, 15.770303>,  <19.229609, 17.626011, 15.290066>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.638153, 18.009018, 15.770303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.381332, 18.304680, 15.688896>,  <19.227240, 18.482077, 15.640052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.381332, 18.304680, 15.688896>,  <19.638153, 18.009018, 15.770303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.381332, 18.304680, 15.688896> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110789, 0.173218, 0.978632,
		0.758615, 0.650879, -0.029324,
		-0.642051, 0.739156, -0.203516,
		19.188717, 18.526426, 15.627841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.856318, 18.597609, 16.182640>,  <19.638153, 18.009018, 15.770303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.856318, 18.597609, 16.182640> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.487076, 18.705872, 16.073370>,  <19.265532, 18.770830, 16.007809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.487076, 18.705872, 16.073370>,  <19.856318, 18.597609, 16.182640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.487076, 18.705872, 16.073370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208894, 0.243499, 0.947139,
		0.322869, 0.931371, -0.168235,
		-0.923103, 0.270659, -0.273176,
		19.210144, 18.787069, 15.991417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.739153, 19.240690, 16.482727>,  <19.856318, 18.597609, 16.182640>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.739153, 19.240690, 16.482727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.371910, 19.100975, 16.407814>,  <19.151564, 19.017145, 16.362867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.371910, 19.100975, 16.407814>,  <19.739153, 19.240690, 16.482727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.371910, 19.100975, 16.407814> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328910, 0.407857, 0.851746,
		-0.221121, 0.843594, -0.489341,
		-0.918109, -0.349288, -0.187280,
		19.096478, 18.996189, 16.351629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.221682, 19.799492, 16.297518>,  <19.739153, 19.240690, 16.482727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.221682, 19.799492, 16.297518> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.034649, 19.487995, 16.464815>,  <18.922430, 19.301096, 16.565193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.034649, 19.487995, 16.464815>,  <19.221682, 19.799492, 16.297518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.034649, 19.487995, 16.464815> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275480, 0.577965, 0.768158,
		-0.839928, 0.243959, -0.484774,
		-0.467581, -0.778743, 0.418243,
		18.894375, 19.254372, 16.590288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.794081, 20.143955, 16.860720>,  <19.221682, 19.799492, 16.297518>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.794081, 20.143955, 16.860720> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.745514, 19.752953, 16.929703>,  <18.716373, 19.518351, 16.971092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.745514, 19.752953, 16.929703>,  <18.794081, 20.143955, 16.860720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.745514, 19.752953, 16.929703> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279137, 0.200356, 0.939117,
		-0.952544, 0.065887, -0.297184,
		-0.121418, -0.977505, 0.172456,
		18.709089, 19.459702, 16.981440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.123652, 20.051565, 16.976225>,  <18.794081, 20.143955, 16.860720>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.123652, 20.051565, 16.976225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.322510, 19.753075, 17.153309>,  <18.441824, 19.573980, 17.259560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.322510, 19.753075, 17.153309>,  <18.123652, 20.051565, 16.976225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.322510, 19.753075, 17.153309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446832, 0.217181, 0.867856,
		-0.743766, -0.629266, -0.225469,
		0.497144, -0.746229, 0.442708,
		18.471653, 19.529205, 17.286121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.639080, 19.754627, 17.361876>,  <18.123652, 20.051565, 16.976225>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.639080, 19.754627, 17.361876> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.981686, 19.614292, 17.513292>,  <18.187250, 19.530090, 17.604143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.981686, 19.614292, 17.513292>,  <17.639080, 19.754627, 17.361876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.981686, 19.614292, 17.513292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358546, 0.123099, 0.925360,
		-0.371252, -0.928309, -0.020356,
		0.856515, -0.350841, 0.378542,
		18.238640, 19.509041, 17.626854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.473467, 19.248640, 17.895588>,  <17.639080, 19.754627, 17.361876>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.473467, 19.248640, 17.895588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.841076, 19.391861, 17.961557>,  <18.061642, 19.477793, 18.001139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.841076, 19.391861, 17.961557>,  <17.473467, 19.248640, 17.895588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.841076, 19.391861, 17.961557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281369, 0.302774, 0.910582,
		0.276094, -0.883251, 0.378999,
		0.919023, 0.358045, 0.164925,
		18.116783, 19.499277, 18.011034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.480026, 18.504808, 18.021866>,  <17.473467, 19.248640, 17.895588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.480026, 18.504808, 18.021866> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.162083, 18.266476, 18.067797>,  <16.971317, 18.123476, 18.095354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.162083, 18.266476, 18.067797>,  <17.480026, 18.504808, 18.021866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.162083, 18.266476, 18.067797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370660, -0.626591, -0.685562,
		0.480427, -0.502364, 0.718902,
		-0.794859, -0.595831, 0.114825,
		16.923626, 18.087727, 18.102243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.726107, 17.825357, 18.042561>,  <17.480026, 18.504808, 18.021866>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.726107, 17.825357, 18.042561> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.347107, 17.775490, 17.924780>,  <17.119707, 17.745569, 17.854111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.347107, 17.775490, 17.924780>,  <17.726107, 17.825357, 18.042561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.347107, 17.775490, 17.924780> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312784, -0.552616, -0.772516,
		-0.066409, -0.824059, 0.562598,
		-0.947500, -0.124670, -0.294451,
		17.062857, 17.738089, 17.836445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.594372, 17.090799, 17.856356>,  <17.726107, 17.825357, 18.042561>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.594372, 17.090799, 17.856356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.293007, 17.273029, 17.666693>,  <17.112188, 17.382366, 17.552895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.293007, 17.273029, 17.666693>,  <17.594372, 17.090799, 17.856356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.293007, 17.273029, 17.666693> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131093, -0.602553, -0.787238,
		-0.644352, -0.655271, 0.394247,
		-0.753409, 0.455575, -0.474158,
		17.066984, 17.409702, 17.524446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.188950, 16.559725, 17.696568>,  <17.594372, 17.090799, 17.856356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.188950, 16.559725, 17.696568> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.104786, 16.864628, 17.451721>,  <17.054287, 17.047569, 17.304813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.104786, 16.864628, 17.451721>,  <17.188950, 16.559725, 17.696568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.104786, 16.864628, 17.451721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083554, -0.609822, -0.788122,
		-0.974036, -0.216974, 0.064623,
		-0.210411, 0.762259, -0.612117,
		17.041662, 17.093306, 17.268085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.837915, 16.259464, 17.195992>,  <17.188950, 16.559725, 17.696568>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.837915, 16.259464, 17.195992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.932377, 16.613125, 17.034742>,  <16.989054, 16.825321, 16.937992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.932377, 16.613125, 17.034742>,  <16.837915, 16.259464, 17.195992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.932377, 16.613125, 17.034742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053571, -0.426074, -0.903101,
		-0.970237, 0.191677, -0.147984,
		0.236156, 0.884150, -0.403125,
		17.003223, 16.878370, 16.913805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.382307, 16.335711, 16.643476>,  <16.837915, 16.259464, 17.195992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.382307, 16.335711, 16.643476> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.704819, 16.555950, 16.556988>,  <16.898325, 16.688095, 16.505095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.704819, 16.555950, 16.556988>,  <16.382307, 16.335711, 16.643476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.704819, 16.555950, 16.556988> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008109, -0.355204, -0.934754,
		-0.591479, 0.755426, -0.281929,
		0.806280, 0.550601, -0.216222,
		16.946703, 16.721130, 16.492121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.349592, 16.713701, 15.976842>,  <16.382307, 16.335711, 16.643476>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.349592, 16.713701, 15.976842> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.747784, 16.698982, 16.011879>,  <16.986698, 16.690151, 16.032902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.747784, 16.698982, 16.011879>,  <16.349592, 16.713701, 15.976842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.747784, 16.698982, 16.011879> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079074, -0.190185, -0.978559,
		0.052668, 0.981058, -0.186414,
		0.995476, -0.036798, 0.087593,
		17.046427, 16.687943, 16.038157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.565996, 17.118515, 15.443287>,  <16.349592, 16.713701, 15.976842>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.565996, 17.118515, 15.443287> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.880917, 16.894772, 15.547037>,  <17.069870, 16.760527, 15.609287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.880917, 16.894772, 15.547037>,  <16.565996, 17.118515, 15.443287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.880917, 16.894772, 15.547037> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114097, -0.281239, -0.952831,
		0.605919, 0.779759, -0.157599,
		0.787302, -0.559356, 0.259376,
		17.117107, 16.726965, 15.624850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.981153, 17.108551, 14.854063>,  <16.565996, 17.118515, 15.443287>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.981153, 17.108551, 14.854063> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.142258, 16.803284, 15.056194>,  <17.238920, 16.620123, 15.177473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.142258, 16.803284, 15.056194>,  <16.981153, 17.108551, 14.854063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.142258, 16.803284, 15.056194> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216807, -0.456832, -0.862728,
		0.889258, 0.457030, -0.018532,
		0.402758, -0.763170, 0.505328,
		17.263084, 16.574333, 15.207793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.612715, 16.874556, 14.446575>,  <16.981153, 17.108551, 14.854063>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.612715, 16.874556, 14.446575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.493038, 16.572426, 14.679802>,  <17.421232, 16.391148, 14.819738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.493038, 16.572426, 14.679802>,  <17.612715, 16.874556, 14.446575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.493038, 16.572426, 14.679802> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227025, -0.649859, -0.725357,
		0.926793, -0.084649, 0.365909,
		-0.299190, -0.755326, 0.583067,
		17.403280, 16.345827, 14.854722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.092739, 16.456520, 14.366545>,  <17.612715, 16.874556, 14.446575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.092739, 16.456520, 14.366545> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.799057, 16.225456, 14.509235>,  <17.622849, 16.086819, 14.594850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.799057, 16.225456, 14.509235>,  <18.092739, 16.456520, 14.366545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.799057, 16.225456, 14.509235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140660, -0.643448, -0.752455,
		0.664198, -0.502278, 0.553676,
		-0.734204, -0.577659, 0.356727,
		17.578796, 16.052158, 14.616254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.313095, 15.700073, 14.551211>,  <18.092739, 16.456520, 14.366545>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.313095, 15.700073, 14.551211> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.919197, 15.719349, 14.484337>,  <17.682858, 15.730914, 14.444212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.919197, 15.719349, 14.484337>,  <18.313095, 15.700073, 14.551211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.919197, 15.719349, 14.484337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087985, -0.691052, -0.717430,
		-0.150107, -0.721196, 0.676272,
		-0.984747, 0.048189, -0.167186,
		17.623774, 15.733806, 14.434181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.243439, 15.180084, 14.061984>,  <18.313095, 15.700073, 14.551211>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.243439, 15.180084, 14.061984> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.875469, 15.336727, 14.054123>,  <17.654688, 15.430713, 14.049406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.875469, 15.336727, 14.054123>,  <18.243439, 15.180084, 14.061984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.875469, 15.336727, 14.054123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131162, -0.354573, -0.925783,
		-0.369516, -0.849069, 0.377544,
		-0.919921, 0.391612, -0.019655,
		17.599493, 15.454209, 14.048227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.717793, 14.644894, 13.808163>,  <18.243439, 15.180084, 14.061984>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.717793, 14.644894, 13.808163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.597275, 15.016987, 13.724361>,  <17.524965, 15.240243, 13.674081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.597275, 15.016987, 13.724361>,  <17.717793, 14.644894, 13.808163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.597275, 15.016987, 13.724361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189755, -0.273810, -0.942879,
		-0.934461, -0.244328, 0.259013,
		-0.301292, 0.930232, -0.209503,
		17.506887, 15.296057, 13.661510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<12.684086, 18.581318, 16.957706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.040553, 18.743050, 16.875404>,  <13.254434, 18.840090, 16.826023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.040553, 18.743050, 16.875404>,  <12.684086, 18.581318, 16.957706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.040553, 18.743050, 16.875404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218130, 0.015792, 0.975792,
		0.397792, -0.914476, -0.074124,
		0.891168, 0.404331, -0.205757,
		13.307903, 18.864349, 16.813677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.193662, 18.147709, 17.333513>,  <12.684086, 18.581318, 16.957706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.193662, 18.147709, 17.333513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.344934, 18.507168, 17.244600>,  <13.435697, 18.722843, 17.191252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.344934, 18.507168, 17.244600>,  <13.193662, 18.147709, 17.333513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.344934, 18.507168, 17.244600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070529, 0.211447, 0.974842,
		0.923041, -0.384343, 0.016585,
		0.378181, 0.898649, -0.222282,
		13.458387, 18.776762, 17.177916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.868007, 18.210844, 17.760567>,  <13.193662, 18.147709, 17.333513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.868007, 18.210844, 17.760567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.739713, 18.580280, 17.676559>,  <13.662736, 18.801943, 17.626154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.739713, 18.580280, 17.676559>,  <13.868007, 18.210844, 17.760567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.739713, 18.580280, 17.676559> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195490, 0.281510, 0.939434,
		0.926775, 0.260253, -0.270843,
		-0.320735, 0.923591, -0.210020,
		13.643493, 18.857357, 17.613554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.367700, 18.577599, 18.091557>,  <13.868007, 18.210844, 17.760567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.367700, 18.577599, 18.091557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.062905, 18.824829, 18.014242>,  <13.880029, 18.973167, 17.967854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.062905, 18.824829, 18.014242>,  <14.367700, 18.577599, 18.091557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.062905, 18.824829, 18.014242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018296, 0.318893, 0.947614,
		0.647334, 0.718533, -0.254301,
		-0.761986, 0.618076, -0.193285,
		13.834310, 19.010252, 17.956257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.590956, 19.290752, 18.335573>,  <14.367700, 18.577599, 18.091557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.590956, 19.290752, 18.335573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.192521, 19.258171, 18.349302>,  <13.953461, 19.238623, 18.357540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.192521, 19.258171, 18.349302>,  <14.590956, 19.290752, 18.335573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.192521, 19.258171, 18.349302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001243, 0.375374, 0.926873,
		-0.088381, 0.923287, -0.373804,
		-0.996086, -0.081453, 0.034323,
		13.893695, 19.233734, 18.359600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.323517, 19.871290, 18.621159>,  <14.590956, 19.290752, 18.335573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.323517, 19.871290, 18.621159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.997478, 19.648033, 18.683245>,  <13.801854, 19.514078, 18.720497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.997478, 19.648033, 18.683245>,  <14.323517, 19.871290, 18.621159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.997478, 19.648033, 18.683245> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153091, 0.465926, 0.871479,
		-0.558730, 0.686578, -0.465222,
		-0.815097, -0.558143, 0.155218,
		13.752949, 19.480591, 18.729811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.907264, 20.349100, 18.908321>,  <14.323517, 19.871290, 18.621159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.907264, 20.349100, 18.908321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.744958, 19.995087, 18.999598>,  <13.647574, 19.782679, 19.054363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.744958, 19.995087, 18.999598>,  <13.907264, 20.349100, 18.908321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.744958, 19.995087, 18.999598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378093, 0.389843, 0.839683,
		-0.832106, 0.254438, -0.492810,
		-0.405766, -0.885033, 0.228189,
		13.623228, 19.729576, 19.068054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.322063, 20.470600, 19.131073>,  <13.907264, 20.349100, 18.908321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.322063, 20.470600, 19.131073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.389596, 20.108528, 19.287098>,  <13.430116, 19.891285, 19.380713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.389596, 20.108528, 19.287098>,  <13.322063, 20.470600, 19.131073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.389596, 20.108528, 19.287098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008341, 0.397042, 0.917763,
		-0.985610, -0.151693, 0.074583,
		0.168831, -0.905178, 0.390063,
		13.440246, 19.836975, 19.404118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.920759, 20.460878, 19.827307>,  <13.322063, 20.470600, 19.131073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.920759, 20.460878, 19.827307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.185559, 20.161896, 19.849466>,  <13.344440, 19.982506, 19.862762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.185559, 20.161896, 19.849466>,  <12.920759, 20.460878, 19.827307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.185559, 20.161896, 19.849466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066666, 0.132345, 0.988959,
		-0.746534, -0.650996, 0.137442,
		0.661999, -0.747454, 0.055401,
		13.384159, 19.937660, 19.866087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.617622, 19.980988, 20.430853>,  <12.920759, 20.460878, 19.827307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.617622, 19.980988, 20.430853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.005111, 19.885525, 20.403660>,  <13.237604, 19.828247, 20.387344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.005111, 19.885525, 20.403660>,  <12.617622, 19.980988, 20.430853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.005111, 19.885525, 20.403660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110084, 0.167770, 0.979661,
		-0.222396, -0.956502, 0.188794,
		0.968722, -0.238656, -0.067985,
		13.295727, 19.813929, 20.383265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.772450, 19.591856, 21.017067>,  <12.617622, 19.980988, 20.430853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.772450, 19.591856, 21.017067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.127896, 19.721256, 20.887014>,  <13.341164, 19.798897, 20.808983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.127896, 19.721256, 20.887014>,  <12.772450, 19.591856, 21.017067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.127896, 19.721256, 20.887014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314725, 0.085576, 0.945317,
		0.333633, -0.942351, -0.025769,
		0.888615, 0.323499, -0.325132,
		13.394481, 19.818306, 20.789474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.300637, 19.133717, 21.224878>,  <12.772450, 19.591856, 21.017067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.300637, 19.133717, 21.224878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.487266, 19.478748, 21.146631>,  <13.599243, 19.685768, 21.099684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.487266, 19.478748, 21.146631>,  <13.300637, 19.133717, 21.224878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.487266, 19.478748, 21.146631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280259, 0.065590, 0.957681,
		0.838907, -0.501650, -0.211143,
		0.466572, 0.862581, -0.195616,
		13.627237, 19.737522, 21.087946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.758583, 19.316460, 21.834358>,  <13.300637, 19.133717, 21.224878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.758583, 19.316460, 21.834358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.734597, 19.679100, 21.667276>,  <13.720205, 19.896685, 21.567028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.734597, 19.679100, 21.667276>,  <13.758583, 19.316460, 21.834358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.734597, 19.679100, 21.667276> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269982, 0.417590, 0.867599,
		0.960996, -0.060747, -0.269808,
		-0.059965, 0.906602, -0.417703,
		13.716608, 19.951080, 21.541965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.928329, 19.345160, 22.611914>,  <13.758583, 19.316460, 21.834358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.928329, 19.345160, 22.611914> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.099168, 19.675594, 22.758974>,  <14.201672, 19.873856, 22.847210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.099168, 19.675594, 22.758974>,  <13.928329, 19.345160, 22.611914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.099168, 19.675594, 22.758974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265070, 0.274348, -0.924376,
		-0.864479, 0.492253, -0.101797,
		0.427099, 0.826087, 0.367650,
		14.227298, 19.923420, 22.869268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.489989, 19.571726, 23.130095>,  <13.928329, 19.345160, 22.611914>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.489989, 19.571726, 23.130095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.882815, 19.639172, 23.163837>,  <15.118511, 19.679640, 23.184082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.882815, 19.639172, 23.163837>,  <14.489989, 19.571726, 23.130095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.882815, 19.639172, 23.163837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139751, -0.350688, -0.926006,
		-0.126556, 0.921188, -0.367963,
		0.982066, 0.168615, 0.084355,
		15.177435, 19.689756, 23.189144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.744769, 20.029640, 22.526161>,  <14.489989, 19.571726, 23.130095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.744769, 20.029640, 22.526161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.035483, 19.802116, 22.680168>,  <15.209912, 19.665602, 22.772573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.035483, 19.802116, 22.680168>,  <14.744769, 20.029640, 22.526161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.035483, 19.802116, 22.680168> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320951, -0.214352, -0.922520,
		0.607267, 0.794047, 0.026772,
		0.726786, -0.568808, 0.385019,
		15.253519, 19.631474, 22.795673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.255197, 20.062191, 22.056587>,  <14.744769, 20.029640, 22.526161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.255197, 20.062191, 22.056587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.403337, 19.754772, 22.265270>,  <15.492221, 19.570322, 22.390480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.403337, 19.754772, 22.265270>,  <15.255197, 20.062191, 22.056587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.403337, 19.754772, 22.265270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291662, -0.437029, -0.850846,
		0.881915, 0.467274, 0.062302,
		0.370351, -0.768545, 0.521708,
		15.514441, 19.524208, 22.421783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.012228, 19.926014, 21.932650>,  <15.255197, 20.062191, 22.056587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.012228, 19.926014, 21.932650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.826613, 19.593201, 22.054232>,  <15.715244, 19.393513, 22.127182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.826613, 19.593201, 22.054232>,  <16.012228, 19.926014, 21.932650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.826613, 19.593201, 22.054232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209414, -0.436453, -0.875017,
		0.860705, -0.342389, 0.376771,
		-0.464039, -0.832033, 0.303957,
		15.687402, 19.343592, 22.145418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.589163, 19.445459, 22.131680>,  <16.012228, 19.926014, 21.932650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.589163, 19.445459, 22.131680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.257362, 19.246838, 22.029417>,  <16.058281, 19.127665, 21.968060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.257362, 19.246838, 22.029417>,  <16.589163, 19.445459, 22.131680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.257362, 19.246838, 22.029417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494608, -0.440520, -0.749203,
		0.259399, -0.747915, 0.611012,
		-0.829503, -0.496554, -0.255655,
		16.008511, 19.097872, 21.952721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.777452, 18.785881, 21.917036>,  <16.589163, 19.445459, 22.131680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.777452, 18.785881, 21.917036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.405895, 18.803391, 21.769936>,  <16.182961, 18.813896, 21.681675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.405895, 18.803391, 21.769936>,  <16.777452, 18.785881, 21.917036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.405895, 18.803391, 21.769936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302815, -0.481903, -0.822237,
		-0.213211, -0.875131, 0.434381,
		-0.928894, 0.043773, -0.367750,
		16.127228, 18.816523, 21.659611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.650223, 18.126768, 21.642546>,  <16.777452, 18.785881, 21.917036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.650223, 18.126768, 21.642546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.348175, 18.328106, 21.474525>,  <16.166946, 18.448908, 21.373713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.348175, 18.328106, 21.474525>,  <16.650223, 18.126768, 21.642546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.348175, 18.328106, 21.474525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144368, -0.497324, -0.855469,
		-0.639497, -0.706621, 0.302871,
		-0.755117, 0.503345, -0.420051,
		16.121639, 18.479109, 21.348511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.391193, 17.644388, 21.131744>,  <16.650223, 18.126768, 21.642546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.391193, 17.644388, 21.131744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.250008, 17.997112, 21.006638>,  <16.165297, 18.208748, 20.931574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.250008, 17.997112, 21.006638>,  <16.391193, 17.644388, 21.131744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.250008, 17.997112, 21.006638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121751, -0.288155, -0.949813,
		-0.927682, -0.373329, -0.005653,
		-0.352964, 0.881812, -0.312769,
		16.144119, 18.261656, 20.912807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.982409, 17.549934, 20.517029>,  <16.391193, 17.644388, 21.131744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.982409, 17.549934, 20.517029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.050747, 17.943264, 20.492100>,  <16.091749, 18.179262, 20.477142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.050747, 17.943264, 20.492100>,  <15.982409, 17.549934, 20.517029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.050747, 17.943264, 20.492100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121782, -0.083840, -0.989010,
		-0.977743, 0.161378, -0.134075,
		0.170845, 0.983325, -0.062321,
		16.102001, 18.238262, 20.473404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.484137, 17.841938, 20.014536>,  <15.982409, 17.549934, 20.517029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.484137, 17.841938, 20.014536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.804950, 18.080772, 20.020666>,  <15.997437, 18.224073, 20.024343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.804950, 18.080772, 20.020666>,  <15.484137, 17.841938, 20.014536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.804950, 18.080772, 20.020666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004265, 0.019931, -0.999792,
		-0.597265, 0.801931, 0.013439,
		0.802032, 0.597084, 0.015324,
		16.045559, 18.259897, 20.025263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.376250, 18.321609, 19.501827>,  <15.484137, 17.841938, 20.014536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.376250, 18.321609, 19.501827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.769990, 18.326145, 19.572172>,  <16.006233, 18.328867, 19.614378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.769990, 18.326145, 19.572172>,  <15.376250, 18.321609, 19.501827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.769990, 18.326145, 19.572172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175791, 0.006862, -0.984404,
		-0.012369, 0.999912, 0.004761,
		0.984350, 0.011340, 0.175861,
		16.065294, 18.329548, 19.624929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.674479, 18.761078, 19.099802>,  <15.376250, 18.321609, 19.501827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.674479, 18.761078, 19.099802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.993398, 18.540184, 19.197254>,  <16.184748, 18.407648, 19.255726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.993398, 18.540184, 19.197254>,  <15.674479, 18.761078, 19.099802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.993398, 18.540184, 19.197254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231399, -0.093144, -0.968390,
		0.557472, 0.828469, 0.053524,
		0.797295, -0.552235, 0.243632,
		16.232586, 18.374514, 19.270344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.299273, 19.097166, 18.761414>,  <15.674479, 18.761078, 19.099802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.299273, 19.097166, 18.761414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.390987, 18.714577, 18.833620>,  <16.446016, 18.485023, 18.876944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.390987, 18.714577, 18.833620>,  <16.299273, 19.097166, 18.761414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.390987, 18.714577, 18.833620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296607, -0.107979, -0.948876,
		0.927066, 0.271107, 0.258938,
		0.229287, -0.956473, 0.180516,
		16.459774, 18.427635, 18.887775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.051569, 18.915819, 18.464912>,  <16.299273, 19.097166, 18.761414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.051569, 18.915819, 18.464912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.869362, 18.560116, 18.481499>,  <16.760038, 18.346693, 18.491451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.869362, 18.560116, 18.481499>,  <17.051569, 18.915819, 18.464912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.869362, 18.560116, 18.481499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455170, -0.272682, -0.847623,
		0.765065, -0.367233, 0.528976,
		-0.455517, -0.889261, 0.041466,
		16.732706, 18.293337, 18.493938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.576149, 19.182308, 18.666471>,  <17.051569, 18.915819, 18.464912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.576149, 19.182308, 18.666471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.881233, 19.422550, 18.570513>,  <18.064283, 19.566694, 18.512938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.881233, 19.422550, 18.570513>,  <17.576149, 19.182308, 18.666471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.881233, 19.422550, 18.570513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249199, 0.615206, 0.747945,
		0.596797, -0.510688, 0.618895,
		0.762714, 0.600600, -0.239890,
		18.110046, 19.602732, 18.498545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.073128, 19.213270, 19.217594>,  <17.576149, 19.182308, 18.666471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.073128, 19.213270, 19.217594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.164711, 19.554459, 19.029970>,  <18.219662, 19.759172, 18.917395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.164711, 19.554459, 19.029970>,  <18.073128, 19.213270, 19.217594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.164711, 19.554459, 19.029970> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042892, 0.472554, 0.880257,
		0.972491, -0.221662, 0.071610,
		0.228959, 0.852970, -0.469062,
		18.233398, 19.810350, 18.889252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.587660, 19.504145, 19.601896>,  <18.073128, 19.213270, 19.217594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.587660, 19.504145, 19.601896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.444859, 19.806404, 19.382244>,  <18.359179, 19.987761, 19.250452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.444859, 19.806404, 19.382244>,  <18.587660, 19.504145, 19.601896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.444859, 19.806404, 19.382244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081306, 0.560500, 0.824154,
		0.930558, 0.338874, -0.138662,
		-0.357004, 0.755648, -0.549130,
		18.337757, 20.033098, 19.217505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.950905, 20.168438, 19.771521>,  <18.587660, 19.504145, 19.601896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.950905, 20.168438, 19.771521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.616978, 20.302277, 19.596649>,  <18.416620, 20.382580, 19.491726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.616978, 20.302277, 19.596649>,  <18.950905, 20.168438, 19.771521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.616978, 20.302277, 19.596649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138307, 0.641172, 0.754831,
		0.532868, 0.690612, -0.488986,
		-0.834819, 0.334595, -0.437177,
		18.366531, 20.402655, 19.465496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.037794, 20.813330, 19.822626>,  <18.950905, 20.168438, 19.771521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.037794, 20.813330, 19.822626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.641815, 20.787636, 19.772217>,  <18.404228, 20.772219, 19.741972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.641815, 20.787636, 19.772217>,  <19.037794, 20.813330, 19.822626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.641815, 20.787636, 19.772217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132211, 0.736896, 0.662951,
		0.050281, 0.672947, -0.737979,
		-0.989946, -0.064235, -0.126023,
		18.344831, 20.768366, 19.734409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.796848, 21.498510, 19.765610>,  <19.037794, 20.813330, 19.822626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.796848, 21.498510, 19.765610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.448788, 21.310444, 19.824638>,  <18.239950, 21.197603, 19.860056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.448788, 21.310444, 19.824638>,  <18.796848, 21.498510, 19.765610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.448788, 21.310444, 19.824638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230286, 0.652730, 0.721743,
		-0.435663, 0.594043, -0.676248,
		-0.870153, -0.470166, 0.147571,
		18.187742, 21.169394, 19.868910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.210621, 21.989960, 19.907213>,  <18.796848, 21.498510, 19.765610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.210621, 21.989960, 19.907213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.099072, 21.641632, 20.069153>,  <18.032141, 21.432636, 20.166317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.099072, 21.641632, 20.069153>,  <18.210621, 21.989960, 19.907213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.099072, 21.641632, 20.069153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221416, 0.468522, 0.855256,
		-0.934454, 0.148869, -0.323472,
		-0.278874, -0.870819, 0.404850,
		18.015409, 21.380386, 20.190607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.866358, 22.618797, 19.876451>,  <18.210621, 21.989960, 19.907213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.866358, 22.618797, 19.876451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.019901, 22.985695, 19.833904>,  <18.112026, 23.205833, 19.808376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.019901, 22.985695, 19.833904>,  <17.866358, 22.618797, 19.876451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.019901, 22.985695, 19.833904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032040, -0.128352, -0.991211,
		-0.922837, 0.377075, -0.078657,
		0.383857, 0.917246, -0.106367,
		18.135057, 23.260868, 19.801994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.381598, 23.035275, 19.290617>,  <17.866358, 22.618797, 19.876451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.381598, 23.035275, 19.290617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.750393, 23.181789, 19.340843>,  <17.971670, 23.269699, 19.370979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.750393, 23.181789, 19.340843>,  <17.381598, 23.035275, 19.290617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.750393, 23.181789, 19.340843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134791, 0.000390, -0.990874,
		-0.362994, 0.930501, -0.049013,
		0.921990, 0.366288, 0.125565,
		18.026991, 23.291676, 19.378513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.543583, 23.548977, 18.666447>,  <17.381598, 23.035275, 19.290617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.543583, 23.548977, 18.666447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.892460, 23.441566, 18.829996>,  <18.101786, 23.377119, 18.928125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.892460, 23.441566, 18.829996>,  <17.543583, 23.548977, 18.666447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.892460, 23.441566, 18.829996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426536, 0.008279, -0.904433,
		0.239480, 0.963236, 0.121758,
		0.872191, -0.268528, 0.408872,
		18.154118, 23.361008, 18.952658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.083385, 24.032192, 18.437527>,  <17.543583, 23.548977, 18.666447>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.083385, 24.032192, 18.437527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.265423, 23.692791, 18.545547>,  <18.374645, 23.489149, 18.610361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.265423, 23.692791, 18.545547>,  <18.083385, 24.032192, 18.437527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.265423, 23.692791, 18.545547> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473319, -0.026372, -0.880497,
		0.754228, 0.528529, 0.389612,
		0.455093, -0.848505, 0.270053,
		18.401951, 23.438240, 18.626564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.670523, 24.117737, 18.178486>,  <18.083385, 24.032192, 18.437527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.670523, 24.117737, 18.178486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.682926, 23.726177, 18.259281>,  <18.690369, 23.491241, 18.307758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.682926, 23.726177, 18.259281>,  <18.670523, 24.117737, 18.178486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.682926, 23.726177, 18.259281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477830, -0.162978, -0.863201,
		0.877905, 0.123281, 0.462693,
		0.031007, -0.978897, 0.201987,
		18.692228, 23.432508, 18.319878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.365492, 23.803099, 17.966534>,  <18.670523, 24.117737, 18.178486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.365492, 23.803099, 17.966534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.104168, 23.500275, 17.969334>,  <18.947374, 23.318581, 17.971014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.104168, 23.500275, 17.969334>,  <19.365492, 23.803099, 17.966534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.104168, 23.500275, 17.969334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250087, -0.224523, -0.941831,
		0.714592, -0.613558, 0.336013,
		-0.653310, -0.757058, 0.006999,
		18.908175, 23.273157, 17.971434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.767979, 23.216881, 17.715137>,  <19.365492, 23.803099, 17.966534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.767979, 23.216881, 17.715137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.394051, 23.083965, 17.665020>,  <19.169695, 23.004215, 17.634951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.394051, 23.083965, 17.665020>,  <19.767979, 23.216881, 17.715137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.394051, 23.083965, 17.665020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270087, -0.436173, -0.858374,
		0.230580, -0.836264, 0.497489,
		-0.934819, -0.332289, -0.125291,
		19.113605, 22.984278, 17.627432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<14.531380, 23.148497, 20.600647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.356065, 22.809433, 20.481060>,  <14.250875, 22.605995, 20.409307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.356065, 22.809433, 20.481060>,  <14.531380, 23.148497, 20.600647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.356065, 22.809433, 20.481060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224316, 0.218937, -0.949605,
		0.870395, -0.483262, 0.094186,
		-0.438287, -0.847658, -0.298965,
		14.224579, 22.555136, 20.391371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.757938, 22.971071, 19.950890>,  <14.531380, 23.148497, 20.600647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.757938, 22.971071, 19.950890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.430081, 22.742584, 19.968319>,  <14.233367, 22.605492, 19.978777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.430081, 22.742584, 19.968319>,  <14.757938, 22.971071, 19.950890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.430081, 22.742584, 19.968319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078270, 0.036309, -0.996271,
		0.567505, -0.819995, -0.074470,
		-0.819642, -0.571217, 0.043575,
		14.184189, 22.571218, 19.981392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.774844, 22.491741, 19.418560>,  <14.757938, 22.971071, 19.950890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.774844, 22.491741, 19.418560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.390258, 22.502773, 19.527975>,  <14.159506, 22.509392, 19.593624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.390258, 22.502773, 19.527975>,  <14.774844, 22.491741, 19.418560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.390258, 22.502773, 19.527975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274582, -0.046798, -0.960424,
		-0.013688, -0.998523, 0.052568,
		-0.961466, 0.027581, 0.273536,
		14.101818, 22.511047, 19.610035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.473018, 21.906860, 19.148962>,  <14.774844, 22.491741, 19.418560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.473018, 21.906860, 19.148962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.136039, 22.111740, 19.215818>,  <13.933851, 22.234669, 19.255932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.136039, 22.111740, 19.215818>,  <14.473018, 21.906860, 19.148962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.136039, 22.111740, 19.215818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338801, -0.262411, -0.903523,
		-0.418927, -0.817796, 0.394601,
		-0.842445, 0.512202, 0.167138,
		13.883305, 22.265400, 19.265961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.960476, 21.467194, 18.937700>,  <14.473018, 21.906860, 19.148962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.960476, 21.467194, 18.937700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.838805, 21.848213, 18.933123>,  <13.765803, 22.076824, 18.930376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.838805, 21.848213, 18.933123>,  <13.960476, 21.467194, 18.937700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.838805, 21.848213, 18.933123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329184, -0.116378, -0.937067,
		-0.893933, -0.281265, 0.348962,
		-0.304176, 0.952547, -0.011447,
		13.747552, 22.133978, 18.929689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.389499, 21.515356, 18.553083>,  <13.960476, 21.467194, 18.937700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.389499, 21.515356, 18.553083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.469480, 21.905777, 18.518801>,  <13.517467, 22.140030, 18.498230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.469480, 21.905777, 18.518801>,  <13.389499, 21.515356, 18.553083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.469480, 21.905777, 18.518801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071722, -0.072659, -0.994775,
		-0.977177, 0.205054, 0.055476,
		0.199951, 0.976050, -0.085708,
		13.529465, 22.198591, 18.493088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.920227, 21.763994, 18.008909>,  <13.389499, 21.515356, 18.553083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.920227, 21.763994, 18.008909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.226130, 22.019192, 18.044926>,  <13.409673, 22.172310, 18.066536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.226130, 22.019192, 18.044926>,  <12.920227, 21.763994, 18.008909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.226130, 22.019192, 18.044926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044061, 0.087635, -0.995178,
		-0.642808, 0.765039, 0.038909,
		0.764759, 0.637994, 0.090041,
		13.455558, 22.210590, 18.071938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.754649, 22.198801, 17.520239>,  <12.920227, 21.763994, 18.008909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.754649, 22.198801, 17.520239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.140576, 22.279491, 17.587688>,  <13.372132, 22.327906, 17.628159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.140576, 22.279491, 17.587688>,  <12.754649, 22.198801, 17.520239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.140576, 22.279491, 17.587688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184714, -0.063641, -0.980730,
		-0.187107, 0.977372, -0.098663,
		0.964817, 0.201726, 0.168626,
		13.430021, 22.340010, 17.638277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.969346, 22.867460, 17.066891>,  <12.754649, 22.198801, 17.520239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.969346, 22.867460, 17.066891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.299602, 22.661758, 17.159723>,  <13.497755, 22.538338, 17.215424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.299602, 22.661758, 17.159723>,  <12.969346, 22.867460, 17.066891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.299602, 22.661758, 17.159723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309107, 0.068182, -0.948580,
		0.471990, 0.854922, 0.215254,
		0.825638, -0.514257, 0.232081,
		13.547293, 22.507481, 17.229347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.420308, 23.190456, 16.647192>,  <12.969346, 22.867460, 17.066891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.420308, 23.190456, 16.647192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.588929, 22.848152, 16.767170>,  <13.690102, 22.642771, 16.839157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.588929, 22.848152, 16.767170>,  <13.420308, 23.190456, 16.647192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.588929, 22.848152, 16.767170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407907, -0.116466, -0.905565,
		0.809879, 0.504094, 0.299974,
		0.421553, -0.855760, 0.299947,
		13.715395, 22.591425, 16.857155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.211192, 23.179092, 16.533319>,  <13.420308, 23.190456, 16.647192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.211192, 23.179092, 16.533319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.063468, 22.807522, 16.522720>,  <13.974833, 22.584579, 16.516361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.063468, 22.807522, 16.522720>,  <14.211192, 23.179092, 16.533319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.063468, 22.807522, 16.522720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493149, -0.171732, -0.852826,
		0.787664, -0.328024, 0.521523,
		-0.369310, -0.928929, -0.026497,
		13.952675, 22.528843, 16.514771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.804300, 22.771254, 16.273043>,  <14.211192, 23.179092, 16.533319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.804300, 22.771254, 16.273043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.485438, 22.533798, 16.228971>,  <14.294122, 22.391325, 16.202530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.485438, 22.533798, 16.228971>,  <14.804300, 22.771254, 16.273043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.485438, 22.533798, 16.228971> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330457, -0.276249, -0.902488,
		0.505315, -0.755830, 0.416385,
		-0.797154, -0.593638, -0.110177,
		14.246292, 22.355707, 16.195919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.429764, 22.353634, 16.626501>,  <14.804300, 22.771254, 16.273043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.429764, 22.353634, 16.626501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.778869, 22.545383, 16.663351>,  <15.988332, 22.660433, 16.685461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.778869, 22.545383, 16.663351>,  <15.429764, 22.353634, 16.626501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.778869, 22.545383, 16.663351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233913, 0.245055, 0.940868,
		0.428456, -0.842701, 0.326007,
		0.872760, 0.479377, 0.092123,
		16.040697, 22.689196, 16.690989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.506685, 22.218328, 17.314388>,  <15.429764, 22.353634, 16.626501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.506685, 22.218328, 17.314388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.737302, 22.527855, 17.209461>,  <15.875672, 22.713570, 17.146505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.737302, 22.527855, 17.209461>,  <15.506685, 22.218328, 17.314388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.737302, 22.527855, 17.209461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170864, 0.428130, 0.887418,
		0.799003, -0.466813, 0.379052,
		0.576542, 0.773815, -0.262316,
		15.910264, 22.760000, 17.130766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.798879, 22.378410, 17.979942>,  <15.506685, 22.218328, 17.314388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.798879, 22.378410, 17.979942> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.865445, 22.699532, 17.750923>,  <15.905385, 22.892204, 17.613512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.865445, 22.699532, 17.750923>,  <15.798879, 22.378410, 17.979942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.865445, 22.699532, 17.750923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126573, 0.593232, 0.795019,
		0.977898, -0.059835, 0.200336,
		0.166416, 0.802804, -0.572547,
		15.915370, 22.940372, 17.579159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.325441, 22.736212, 18.308437>,  <15.798879, 22.378410, 17.979942>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.325441, 22.736212, 18.308437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.142025, 23.015781, 18.088894>,  <16.031975, 23.183523, 17.957169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.142025, 23.015781, 18.088894>,  <16.325441, 22.736212, 18.308437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.142025, 23.015781, 18.088894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061548, 0.591155, 0.804206,
		0.886540, 0.402542, -0.228050,
		-0.458540, 0.698925, -0.548858,
		16.004463, 23.225458, 17.924236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.682280, 23.377895, 18.384897>,  <16.325441, 22.736212, 18.308437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.682280, 23.377895, 18.384897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.318913, 23.493855, 18.264406>,  <16.100893, 23.563431, 18.192112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.318913, 23.493855, 18.264406>,  <16.682280, 23.377895, 18.384897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.318913, 23.493855, 18.264406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006778, 0.730643, 0.682726,
		0.418009, 0.618159, -0.665693,
		-0.908418, 0.289897, -0.301225,
		16.046387, 23.580824, 18.174038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.680361, 24.191614, 18.402494>,  <16.682280, 23.377895, 18.384897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.680361, 24.191614, 18.402494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.295498, 24.085152, 18.379114>,  <16.064581, 24.021275, 18.365086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.295498, 24.085152, 18.379114>,  <16.680361, 24.191614, 18.402494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.295498, 24.085152, 18.379114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245778, 0.754968, 0.607960,
		-0.117685, 0.599319, -0.791813,
		-0.962156, -0.266158, -0.058451,
		16.006851, 24.005304, 18.361578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.305904, 24.808830, 18.368778>,  <16.680361, 24.191614, 18.402494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.305904, 24.808830, 18.368778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.025269, 24.552944, 18.494339>,  <15.856887, 24.399412, 18.569675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.025269, 24.552944, 18.494339>,  <16.305904, 24.808830, 18.368778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.025269, 24.552944, 18.494339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295367, 0.661963, 0.688886,
		-0.648481, 0.390601, -0.653378,
		-0.701591, -0.639716, 0.313900,
		15.814791, 24.361029, 18.588509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.597146, 25.149591, 18.406910>,  <16.305904, 24.808830, 18.368778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.597146, 25.149591, 18.406910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.626094, 24.839352, 18.657734>,  <15.643462, 24.653208, 18.808229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.626094, 24.839352, 18.657734>,  <15.597146, 25.149591, 18.406910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.626094, 24.839352, 18.657734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190380, 0.606408, 0.772026,
		-0.979039, -0.175251, -0.103773,
		0.072370, -0.775601, 0.627062,
		15.647805, 24.606672, 18.845852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.984449, 25.134001, 18.842690>,  <15.597146, 25.149591, 18.406910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.984449, 25.134001, 18.842690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.264428, 24.931347, 19.044044>,  <15.432415, 24.809755, 19.164858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.264428, 24.931347, 19.044044>,  <14.984449, 25.134001, 18.842690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.264428, 24.931347, 19.044044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130933, 0.601858, 0.787797,
		-0.702092, -0.617325, 0.354932,
		0.699946, -0.506633, 0.503388,
		15.474412, 24.779358, 19.195061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.635613, 25.017824, 19.425903>,  <14.984449, 25.134001, 18.842690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.635613, 25.017824, 19.425903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.021373, 24.952770, 19.509315>,  <15.252829, 24.913738, 19.559362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.021373, 24.952770, 19.509315>,  <14.635613, 25.017824, 19.425903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.021373, 24.952770, 19.509315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117831, 0.441682, 0.889400,
		-0.236753, -0.882307, 0.406794,
		0.964398, -0.162635, 0.208533,
		15.310692, 24.903980, 19.571875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.640615, 25.166584, 20.088255>,  <14.635613, 25.017824, 19.425903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.640615, 25.166584, 20.088255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.032239, 25.111382, 20.028399>,  <15.267214, 25.078260, 19.992485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.032239, 25.111382, 20.028399>,  <14.640615, 25.166584, 20.088255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.032239, 25.111382, 20.028399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199885, 0.512663, 0.834999,
		-0.038522, -0.847426, 0.529514,
		0.979062, -0.138008, -0.149639,
		15.325957, 25.069979, 19.983507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.889623, 24.941557, 20.735970>,  <14.640615, 25.166584, 20.088255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.889623, 24.941557, 20.735970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.189651, 25.096237, 20.521358>,  <15.369667, 25.189045, 20.392593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.189651, 25.096237, 20.521358>,  <14.889623, 24.941557, 20.735970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.189651, 25.096237, 20.521358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194630, 0.646257, 0.737883,
		0.632063, -0.657892, 0.409481,
		0.750077, 0.386691, -0.536520,
		15.414672, 25.212246, 20.360401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.482108, 24.918438, 21.177998>,  <14.889623, 24.941557, 20.735970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.482108, 24.918438, 21.177998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.584012, 25.185665, 20.898346>,  <15.645155, 25.346003, 20.730555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.584012, 25.185665, 20.898346>,  <15.482108, 24.918438, 21.177998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.584012, 25.185665, 20.898346> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291435, 0.636323, 0.714253,
		0.922042, -0.385714, -0.032588,
		0.254761, 0.668070, -0.699128,
		15.660440, 25.386086, 20.688608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.150064, 25.170275, 21.495083>,  <15.482108, 24.918438, 21.177998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.150064, 25.170275, 21.495083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.971963, 25.414085, 21.232716>,  <15.865103, 25.560371, 21.075294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.971963, 25.414085, 21.232716>,  <16.150064, 25.170275, 21.495083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.971963, 25.414085, 21.232716> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180038, 0.778520, 0.601242,
		0.877119, 0.149614, -0.456376,
		-0.445252, 0.609526, -0.655919,
		15.838387, 25.596943, 21.035940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.884890, 25.328016, 21.509436>,  <16.150064, 25.170275, 21.495083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.884890, 25.328016, 21.509436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.028507, 25.064152, 21.773537>,  <17.114677, 24.905832, 21.931997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.028507, 25.064152, 21.773537>,  <16.884890, 25.328016, 21.509436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.028507, 25.064152, 21.773537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584614, -0.392491, -0.710054,
		0.727540, 0.640933, 0.244726,
		0.359044, -0.659663, 0.660251,
		17.136221, 24.866253, 21.971613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.550629, 25.380915, 21.521339>,  <16.884890, 25.328016, 21.509436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.550629, 25.380915, 21.521339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.479633, 25.001472, 21.626144>,  <17.437037, 24.773808, 21.689028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.479633, 25.001472, 21.626144>,  <17.550629, 25.380915, 21.521339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.479633, 25.001472, 21.626144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613589, -0.314821, -0.724153,
		0.769420, 0.032240, 0.637929,
		-0.177486, -0.948603, 0.262012,
		17.426388, 24.716892, 21.704748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.196550, 24.969486, 21.594866>,  <17.550629, 25.380915, 21.521339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.196550, 24.969486, 21.594866> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.914852, 24.689007, 21.550407>,  <17.745832, 24.520720, 21.523733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.914852, 24.689007, 21.550407>,  <18.196550, 24.969486, 21.594866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.914852, 24.689007, 21.550407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612916, -0.521486, -0.593621,
		0.358286, -0.486180, 0.797032,
		-0.704248, -0.701200, -0.111147,
		17.703577, 24.478647, 21.517063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.557274, 24.316814, 21.573215>,  <18.196550, 24.969486, 21.594866>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.557274, 24.316814, 21.573215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.204578, 24.232735, 21.404287>,  <17.992962, 24.182287, 21.302931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.204578, 24.232735, 21.404287>,  <18.557274, 24.316814, 21.573215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.204578, 24.232735, 21.404287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434028, -0.712209, -0.551705,
		-0.184811, -0.669758, 0.719214,
		-0.881739, -0.210198, -0.422318,
		17.940056, 24.169676, 21.277592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.616396, 23.663549, 21.343908>,  <18.557274, 24.316814, 21.573215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.616396, 23.663549, 21.343908> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.296402, 23.781513, 21.134892>,  <18.104406, 23.852291, 21.009481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.296402, 23.781513, 21.134892>,  <18.616396, 23.663549, 21.343908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.296402, 23.781513, 21.134892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295540, -0.564243, -0.770899,
		-0.522188, -0.771140, 0.364228,
		-0.799985, 0.294910, -0.522544,
		18.056406, 23.869986, 20.978128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.380209, 23.053177, 21.016933>,  <18.616396, 23.663549, 21.343908>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.380209, 23.053177, 21.016933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.200508, 23.347248, 20.813881>,  <18.092688, 23.523691, 20.692049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.200508, 23.347248, 20.813881>,  <18.380209, 23.053177, 21.016933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.200508, 23.347248, 20.813881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341139, -0.383982, -0.858010,
		-0.825710, -0.558635, -0.078292,
		-0.449252, 0.735177, -0.507630,
		18.065733, 23.567801, 20.661592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.072701, 22.642456, 20.550371>,  <18.380209, 23.053177, 21.016933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.072701, 22.642456, 20.550371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.106895, 23.014259, 20.406870>,  <18.127413, 23.237341, 20.320770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.106895, 23.014259, 20.406870>,  <18.072701, 22.642456, 20.550371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.106895, 23.014259, 20.406870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072159, -0.364900, -0.928246,
		-0.993723, 0.053467, -0.098267,
		0.085488, 0.929510, -0.358752,
		18.132542, 23.293112, 20.299244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.571899, 22.098154, 20.260162>,  <18.072701, 22.642456, 20.550371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.571899, 22.098154, 20.260162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.706421, 21.771358, 20.447535>,  <17.787134, 21.575281, 20.559958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.706421, 21.771358, 20.447535>,  <17.571899, 22.098154, 20.260162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.706421, 21.771358, 20.447535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214589, 0.417841, 0.882814,
		-0.916980, -0.397413, -0.034796,
		0.336302, -0.816989, 0.468432,
		17.807312, 21.526262, 20.588064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.019106, 21.871696, 20.651070>,  <17.571899, 22.098154, 20.260162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.019106, 21.871696, 20.651070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.360504, 21.726269, 20.800392>,  <17.565344, 21.639011, 20.889986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.360504, 21.726269, 20.800392>,  <17.019106, 21.871696, 20.651070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.360504, 21.726269, 20.800392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266492, 0.311085, 0.912254,
		-0.447799, -0.878090, 0.168622,
		0.853498, -0.363570, 0.373307,
		17.616554, 21.617197, 20.912384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.717279, 21.684433, 21.125576>,  <17.019106, 21.871696, 20.651070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.717279, 21.684433, 21.125576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.101509, 21.613922, 21.211573>,  <17.332047, 21.571615, 21.263170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.101509, 21.613922, 21.211573>,  <16.717279, 21.684433, 21.125576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.101509, 21.613922, 21.211573> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218882, -0.002706, 0.975748,
		-0.171422, -0.984337, -0.041184,
		0.960575, -0.176279, 0.214989,
		17.389683, 21.561039, 21.276070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.721960, 21.145226, 21.602121>,  <16.717279, 21.684433, 21.125576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.721960, 21.145226, 21.602121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.071323, 21.327717, 21.670252>,  <17.280941, 21.437212, 21.711130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.071323, 21.327717, 21.670252>,  <16.721960, 21.145226, 21.602121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.071323, 21.327717, 21.670252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164598, -0.052615, 0.984956,
		0.458325, -0.888307, 0.029140,
		0.873410, 0.456227, 0.170328,
		17.333347, 21.464584, 21.721350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.071680, 20.803148, 22.098686>,  <16.721960, 21.145226, 21.602121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.071680, 20.803148, 22.098686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.210388, 21.178329, 22.098566>,  <17.293613, 21.403439, 22.098494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.210388, 21.178329, 22.098566>,  <17.071680, 20.803148, 22.098686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.210388, 21.178329, 22.098566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199931, 0.074230, 0.976994,
		0.916395, -0.338730, 0.213266,
		0.346768, 0.937951, -0.000302,
		17.314419, 21.459715, 22.098476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.615215, 20.796478, 22.561731>,  <17.071680, 20.803148, 22.098686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.615215, 20.796478, 22.561731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.500816, 21.177616, 22.521149>,  <17.432177, 21.406300, 22.496799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.500816, 21.177616, 22.521149>,  <17.615215, 20.796478, 22.561731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.500816, 21.177616, 22.521149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066694, 0.085829, 0.994075,
		0.955906, 0.291070, 0.039002,
		-0.285998, 0.952844, -0.101457,
		17.415016, 21.463469, 22.490711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.825068, 21.142300, 23.120316>,  <17.615215, 20.796478, 22.561731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.825068, 21.142300, 23.120316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.568905, 21.422199, 22.993681>,  <17.415207, 21.590139, 22.917700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.568905, 21.422199, 22.993681>,  <17.825068, 21.142300, 23.120316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.568905, 21.422199, 22.993681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189237, 0.255731, 0.948046,
		0.744356, 0.667046, -0.031353,
		-0.640408, 0.699751, -0.316585,
		17.376781, 21.632124, 22.898706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.937098, 21.804855, 23.438725>,  <17.825068, 21.142300, 23.120316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.937098, 21.804855, 23.438725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.557850, 21.842106, 23.317139>,  <17.330301, 21.864456, 23.244186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.557850, 21.842106, 23.317139>,  <17.937098, 21.804855, 23.438725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.557850, 21.842106, 23.317139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264420, 0.299813, 0.916621,
		0.176494, 0.949442, -0.259634,
		-0.948120, 0.093126, -0.303967,
		17.273415, 21.870043, 23.225948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.766594, 22.503180, 23.640310>,  <17.937098, 21.804855, 23.438725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.766594, 22.503180, 23.640310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.419613, 22.312126, 23.584614>,  <17.211424, 22.197495, 23.551197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.419613, 22.312126, 23.584614>,  <17.766594, 22.503180, 23.640310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.419613, 22.312126, 23.584614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366171, 0.423465, 0.828611,
		-0.336811, 0.769768, -0.542232,
		-0.867454, -0.477635, -0.139239,
		17.159376, 22.168837, 23.542843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<19.913988, 16.755062, 8.826703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.634533, 16.483280, 8.916368>,  <19.466860, 16.320211, 8.970166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.634533, 16.483280, 8.916368>,  <19.913988, 16.755062, 8.826703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.634533, 16.483280, 8.916368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403352, 0.632800, 0.660963,
		-0.590944, 0.371356, -0.716156,
		-0.698636, -0.679455, 0.224162,
		19.424942, 16.279444, 8.983616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.270555, 17.123022, 8.938687>,  <19.913988, 16.755062, 8.826703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.270555, 17.123022, 8.938687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.201813, 16.769318, 9.112374>,  <19.160566, 16.557095, 9.216587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.201813, 16.769318, 9.112374>,  <19.270555, 17.123022, 8.938687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.201813, 16.769318, 9.112374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688604, 0.423037, 0.588951,
		-0.704478, -0.197788, -0.681609,
		-0.171859, -0.884262, 0.434218,
		19.150255, 16.504040, 9.242640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.568918, 17.127691, 9.022675>,  <19.270555, 17.123022, 8.938687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.568918, 17.127691, 9.022675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.739666, 16.906670, 9.309021>,  <18.842115, 16.774057, 9.480829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.739666, 16.906670, 9.309021>,  <18.568918, 17.127691, 9.022675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.739666, 16.906670, 9.309021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566634, 0.453511, 0.687934,
		-0.704775, -0.699293, -0.119506,
		0.426871, -0.552555, 0.715867,
		18.867727, 16.740904, 9.523781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.039032, 17.022953, 9.664758>,  <18.568918, 17.127691, 9.022675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.039032, 17.022953, 9.664758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.414669, 16.994400, 9.799226>,  <18.640051, 16.977268, 9.879907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.414669, 16.994400, 9.799226>,  <18.039032, 17.022953, 9.664758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.414669, 16.994400, 9.799226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309027, 0.252579, 0.916901,
		-0.150363, -0.964939, 0.215135,
		0.939092, -0.071385, 0.336170,
		18.696396, 16.972984, 9.900077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.875938, 17.000330, 10.340975>,  <18.039032, 17.022953, 9.664758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.875938, 17.000330, 10.340975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.273651, 17.041618, 10.351933>,  <18.512280, 17.066391, 10.358507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.273651, 17.041618, 10.351933>,  <17.875938, 17.000330, 10.340975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.273651, 17.041618, 10.351933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059850, 0.326129, 0.943429,
		0.088446, -0.939673, 0.330442,
		0.994281, 0.103219, 0.027395,
		18.571936, 17.072584, 10.360151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.099697, 16.805563, 11.041139>,  <17.875938, 17.000330, 10.340975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.099697, 16.805563, 11.041139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.434364, 16.971653, 10.898271>,  <18.635164, 17.071308, 10.812550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.434364, 16.971653, 10.898271>,  <18.099697, 16.805563, 11.041139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.434364, 16.971653, 10.898271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217580, 0.346476, 0.912477,
		0.502637, -0.841154, 0.199540,
		0.836669, 0.415228, -0.357170,
		18.685366, 17.096222, 10.791120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.665371, 16.467770, 11.333568>,  <18.099697, 16.805563, 11.041139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.665371, 16.467770, 11.333568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.763206, 16.841690, 11.230557>,  <18.821907, 17.066042, 11.168751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.763206, 16.841690, 11.230557>,  <18.665371, 16.467770, 11.333568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.763206, 16.841690, 11.230557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067401, 0.248560, 0.966269,
		0.967282, -0.253695, -0.002213,
		0.244587, 0.934803, -0.257527,
		18.836582, 17.122131, 11.153299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.266144, 16.657434, 11.755453>,  <18.665371, 16.467770, 11.333568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.266144, 16.657434, 11.755453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.136044, 17.004654, 11.605412>,  <19.057983, 17.212986, 11.515387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.136044, 17.004654, 11.605412>,  <19.266144, 16.657434, 11.755453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.136044, 17.004654, 11.605412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051281, 0.412279, 0.909613,
		0.944236, 0.276619, -0.178610,
		-0.325253, 0.868049, -0.375103,
		19.038467, 17.265068, 11.492881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.817638, 17.204304, 11.946262>,  <19.266144, 16.657434, 11.755453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.817638, 17.204304, 11.946262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.487808, 17.412868, 11.858443>,  <19.289909, 17.538008, 11.805752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.487808, 17.412868, 11.858443>,  <19.817638, 17.204304, 11.946262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.487808, 17.412868, 11.858443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097403, 0.513110, 0.852778,
		0.557301, 0.681797, -0.473886,
		-0.824578, 0.521412, -0.219548,
		19.240435, 17.569292, 11.792579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.987066, 17.916590, 11.988093>,  <19.817638, 17.204304, 11.946262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.987066, 17.916590, 11.988093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.594887, 17.874683, 12.054719>,  <19.359579, 17.849539, 12.094694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.594887, 17.874683, 12.054719>,  <19.987066, 17.916590, 11.988093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.594887, 17.874683, 12.054719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099882, 0.464347, 0.880003,
		-0.169540, 0.879435, -0.444804,
		-0.980449, -0.104768, 0.166565,
		19.300753, 17.843252, 12.104689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.785503, 18.607943, 12.077542>,  <19.987066, 17.916590, 11.988093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.785503, 18.607943, 12.077542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.482708, 18.407085, 12.244788>,  <19.301031, 18.286572, 12.345136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.482708, 18.407085, 12.244788>,  <19.785503, 18.607943, 12.077542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.482708, 18.407085, 12.244788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127560, 0.514006, 0.848249,
		-0.640856, 0.695450, -0.325043,
		-0.756989, -0.502143, 0.418116,
		19.255611, 18.256443, 12.370223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.469393, 19.104668, 12.489337>,  <19.785503, 18.607943, 12.077542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.469393, 19.104668, 12.489337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.351326, 18.745953, 12.621183>,  <19.280485, 18.530724, 12.700292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.351326, 18.745953, 12.621183>,  <19.469393, 19.104668, 12.489337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.351326, 18.745953, 12.621183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151555, 0.384566, 0.910571,
		-0.943349, 0.218816, -0.249424,
		-0.295168, -0.896788, 0.329617,
		19.262775, 18.476915, 12.720069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.528162, 19.843445, 12.388970>,  <19.469393, 19.104668, 12.489337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.528162, 19.843445, 12.388970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.886078, 20.000687, 12.473650>,  <20.100828, 20.095032, 12.524458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.886078, 20.000687, 12.473650>,  <19.528162, 19.843445, 12.388970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.886078, 20.000687, 12.473650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205521, 0.058287, -0.976915,
		-0.396369, 0.917645, -0.028637,
		0.894792, 0.393104, 0.211698,
		20.154516, 20.118618, 12.537159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.655792, 20.431456, 12.015145>,  <19.528162, 19.843445, 12.388970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.655792, 20.431456, 12.015145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.021450, 20.289810, 12.094086>,  <20.240845, 20.204823, 12.141450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.021450, 20.289810, 12.094086>,  <19.655792, 20.431456, 12.015145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.021450, 20.289810, 12.094086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279543, 0.198056, -0.939483,
		0.293595, 0.913990, 0.280041,
		0.914143, -0.354112, 0.197351,
		20.295692, 20.183577, 12.153291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.098646, 20.735653, 11.414108>,  <19.655792, 20.431456, 12.015145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.098646, 20.735653, 11.414108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.352219, 20.473202, 11.577875>,  <20.504362, 20.315731, 11.676135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.352219, 20.473202, 11.577875>,  <20.098646, 20.735653, 11.414108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.352219, 20.473202, 11.577875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438788, -0.130795, -0.889021,
		0.636863, 0.743227, 0.204986,
		0.633933, -0.656129, 0.409418,
		20.542398, 20.276363, 11.700701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.724930, 20.858852, 11.080706>,  <20.098646, 20.735653, 11.414108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.724930, 20.858852, 11.080706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.781155, 20.502029, 11.252510>,  <20.814890, 20.287935, 11.355593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.781155, 20.502029, 11.252510>,  <20.724930, 20.858852, 11.080706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.781155, 20.502029, 11.252510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584140, -0.275546, -0.763449,
		0.799389, 0.358205, 0.482354,
		0.140561, -0.892056, 0.429511,
		20.823322, 20.234413, 11.381363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.458347, 20.829836, 11.145386>,  <20.724930, 20.858852, 11.080706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.458347, 20.829836, 11.145386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.320274, 20.454430, 11.142859>,  <21.237431, 20.229187, 11.141342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.320274, 20.454430, 11.142859>,  <21.458347, 20.829836, 11.145386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.320274, 20.454430, 11.142859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597266, -0.214471, -0.772836,
		0.723962, -0.270544, 0.634574,
		-0.345184, -0.938514, -0.006319,
		21.216719, 20.172876, 11.140963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.060266, 20.324211, 11.117718>,  <21.458347, 20.829836, 11.145386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.060266, 20.324211, 11.117718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.762280, 20.081200, 11.007495>,  <21.583487, 19.935392, 10.941361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.762280, 20.081200, 11.007495>,  <22.060266, 20.324211, 11.117718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.762280, 20.081200, 11.007495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581066, -0.388037, -0.715394,
		0.327696, -0.693062, 0.642090,
		-0.744968, -0.607529, -0.275557,
		21.538790, 19.898941, 10.924828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.406906, 19.718468, 10.981750>,  <22.060266, 20.324211, 11.117718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.406906, 19.718468, 10.981750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.052883, 19.650749, 10.808308>,  <21.840469, 19.610119, 10.704243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.052883, 19.650749, 10.808308>,  <22.406906, 19.718468, 10.981750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.052883, 19.650749, 10.808308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455407, -0.507691, -0.731337,
		-0.096326, -0.844742, 0.526434,
		-0.885057, -0.169295, -0.433605,
		21.787367, 19.599960, 10.678226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.476950, 19.002439, 10.632053>,  <22.406906, 19.718468, 10.981750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.476950, 19.002439, 10.632053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.177208, 19.191010, 10.446054>,  <21.997362, 19.304152, 10.334454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.177208, 19.191010, 10.446054>,  <22.476950, 19.002439, 10.632053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.177208, 19.191010, 10.446054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220296, -0.484747, -0.846457,
		-0.624446, -0.736736, 0.259396,
		-0.749357, 0.471423, -0.464999,
		21.952400, 19.332438, 10.306554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.153688, 18.483175, 10.266360>,  <22.476950, 19.002439, 10.632053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.153688, 18.483175, 10.266360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.063164, 18.827892, 10.084767>,  <22.008850, 19.034721, 9.975812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.063164, 18.827892, 10.084767>,  <22.153688, 18.483175, 10.266360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.063164, 18.827892, 10.084767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066964, -0.451207, -0.889903,
		-0.971751, -0.231795, 0.044404,
		-0.226310, 0.861791, -0.453983,
		21.995270, 19.086430, 9.948572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.706270, 18.316341, 9.682512>,  <22.153688, 18.483175, 10.266360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.706270, 18.316341, 9.682512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.861500, 18.674370, 9.594653>,  <21.954638, 18.889187, 9.541938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.861500, 18.674370, 9.594653>,  <21.706270, 18.316341, 9.682512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.861500, 18.674370, 9.594653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149856, -0.296435, -0.943223,
		-0.909364, 0.333124, -0.249171,
		0.388073, 0.895072, -0.219647,
		21.977922, 18.942892, 9.528759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.335543, 18.479546, 9.062066>,  <21.706270, 18.316341, 9.682512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.335543, 18.479546, 9.062066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.662331, 18.708008, 9.093914>,  <21.858404, 18.845085, 9.113023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.662331, 18.708008, 9.093914>,  <21.335543, 18.479546, 9.062066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.662331, 18.708008, 9.093914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125678, -0.041595, -0.991199,
		-0.562818, 0.819787, -0.105764,
		0.816971, 0.571156, 0.079619,
		21.907421, 18.879354, 9.117800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.077280, 19.130707, 8.728248>,  <21.335543, 18.479546, 9.062066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.077280, 19.130707, 8.728248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.476475, 19.109608, 8.714152>,  <21.715992, 19.096949, 8.705695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.476475, 19.109608, 8.714152>,  <21.077280, 19.130707, 8.728248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.476475, 19.109608, 8.714152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042653, -0.146774, -0.988250,
		0.046957, 0.987763, -0.148728,
		0.997986, -0.052749, -0.035239,
		21.775871, 19.093782, 8.703581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.254766, 19.554792, 8.135590>,  <21.077280, 19.130707, 8.728248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.254766, 19.554792, 8.135590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.568447, 19.315739, 8.202351>,  <21.756657, 19.172306, 8.242407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.568447, 19.315739, 8.202351>,  <21.254766, 19.554792, 8.135590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.568447, 19.315739, 8.202351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137568, -0.094832, -0.985942,
		0.605063, 0.796139, 0.007848,
		0.784203, -0.597637, 0.166902,
		21.803707, 19.136448, 8.252421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.735052, 19.758537, 7.696526>,  <21.254766, 19.554792, 8.135590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.735052, 19.758537, 7.696526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.881897, 19.399464, 7.794004>,  <21.970003, 19.184019, 7.852491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.881897, 19.399464, 7.794004>,  <21.735052, 19.758537, 7.696526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.881897, 19.399464, 7.794004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355958, -0.106467, -0.928417,
		0.859373, 0.427579, 0.280454,
		0.367113, -0.897686, 0.243696,
		21.992031, 19.130157, 7.867113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.970337, 20.080149, 6.940339>,  <21.735052, 19.758537, 7.696526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.970337, 20.080149, 6.940339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.575581, 20.069118, 6.876738>,  <21.338726, 20.062500, 6.838577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.575581, 20.069118, 6.876738>,  <21.970337, 20.080149, 6.940339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.575581, 20.069118, 6.876738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140699, 0.629577, 0.764092,
		0.079034, 0.776449, -0.625205,
		-0.986893, -0.027576, -0.159004,
		21.279512, 20.060846, 6.829037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.839439, 20.649281, 7.222301>,  <21.970337, 20.080149, 6.940339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.839439, 20.649281, 7.222301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.490417, 20.460987, 7.170060>,  <21.281004, 20.348011, 7.138716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.490417, 20.460987, 7.170060>,  <21.839439, 20.649281, 7.222301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.490417, 20.460987, 7.170060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393435, 0.518672, 0.759071,
		-0.289582, 0.713714, -0.637774,
		-0.872555, -0.470736, -0.130601,
		21.228651, 20.319767, 7.130880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.508444, 21.080372, 7.693037>,  <21.839439, 20.649281, 7.222301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.508444, 21.080372, 7.693037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.206856, 20.828266, 7.618960>,  <21.025904, 20.677002, 7.574514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.206856, 20.828266, 7.618960>,  <21.508444, 21.080372, 7.693037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.206856, 20.828266, 7.618960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544548, 0.441980, 0.712826,
		-0.367417, 0.638296, -0.676449,
		-0.753971, -0.630264, -0.185192,
		20.980665, 20.639187, 7.563403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.976139, 21.495159, 7.588482>,  <21.508444, 21.080372, 7.693037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.976139, 21.495159, 7.588482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.830379, 21.147972, 7.723448>,  <20.742924, 20.939661, 7.804428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.830379, 21.147972, 7.723448>,  <20.976139, 21.495159, 7.588482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.830379, 21.147972, 7.723448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289933, 0.450063, 0.844620,
		-0.884959, 0.209951, -0.415654,
		-0.364399, -0.867966, 0.337415,
		20.721060, 20.887583, 7.824672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.398664, 21.728882, 7.940974>,  <20.976139, 21.495159, 7.588482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.398664, 21.728882, 7.940974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.425045, 21.347534, 8.058782>,  <20.440872, 21.118727, 8.129466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.425045, 21.347534, 8.058782>,  <20.398664, 21.728882, 7.940974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.425045, 21.347534, 8.058782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400020, 0.245145, 0.883113,
		-0.914131, -0.176054, -0.365198,
		0.065949, -0.953367, 0.294520,
		20.444830, 21.061523, 8.147138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.720778, 21.519955, 7.932639>,  <20.398664, 21.728882, 7.940974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.720778, 21.519955, 7.932639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.919777, 21.292812, 8.194947>,  <20.039177, 21.156527, 8.352332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.919777, 21.292812, 8.194947>,  <19.720778, 21.519955, 7.932639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.919777, 21.292812, 8.194947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586214, 0.337144, 0.736673,
		-0.639412, -0.750917, -0.165155,
		0.497499, -0.567854, 0.655772,
		20.069027, 21.122456, 8.391679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.201691, 21.035063, 8.195970>,  <19.720778, 21.519955, 7.932639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.201691, 21.035063, 8.195970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.497799, 21.017582, 8.464325>,  <19.675463, 21.007093, 8.625339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.497799, 21.017582, 8.464325>,  <19.201691, 21.035063, 8.195970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.497799, 21.017582, 8.464325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668801, 0.053966, 0.741480,
		-0.068612, -0.997586, 0.010719,
		0.740269, -0.043706, 0.670889,
		19.719879, 21.004471, 8.665591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.974161, 20.534258, 8.753502>,  <19.201691, 21.035063, 8.195970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.974161, 20.534258, 8.753502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.264839, 20.757874, 8.913197>,  <19.439247, 20.892042, 9.009013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.264839, 20.757874, 8.913197>,  <18.974161, 20.534258, 8.753502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.264839, 20.757874, 8.913197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562332, 0.150273, 0.813143,
		0.394583, -0.815411, 0.423567,
		0.726696, 0.559038, 0.399236,
		19.482847, 20.925585, 9.032968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.131771, 20.260323, 9.549634>,  <18.974161, 20.534258, 8.753502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.131771, 20.260323, 9.549634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.257393, 20.637722, 9.507345>,  <19.332766, 20.864162, 9.481972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.257393, 20.637722, 9.507345>,  <19.131771, 20.260323, 9.549634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.257393, 20.637722, 9.507345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334998, 0.214318, 0.917520,
		0.888340, -0.252733, 0.383378,
		0.314053, 0.943501, -0.105722,
		19.351608, 20.920773, 9.475629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.424522, 20.408407, 10.147773>,  <19.131771, 20.260323, 9.549634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.424522, 20.408407, 10.147773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.369904, 20.775303, 9.998092>,  <19.337133, 20.995440, 9.908283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.369904, 20.775303, 9.998092>,  <19.424522, 20.408407, 10.147773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.369904, 20.775303, 9.998092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328676, 0.314396, 0.890577,
		0.934520, 0.244596, 0.258545,
		-0.136546, 0.917239, -0.374202,
		19.328939, 21.050474, 9.885831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.760702, 20.865635, 10.611822>,  <19.424522, 20.408407, 10.147773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.760702, 20.865635, 10.611822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.462505, 21.075897, 10.447907>,  <19.283587, 21.202055, 10.349559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.462505, 21.075897, 10.447907>,  <19.760702, 20.865635, 10.611822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.462505, 21.075897, 10.447907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255855, 0.342023, 0.904189,
		0.615449, 0.778914, -0.120485,
		-0.745494, 0.525655, -0.409787,
		19.238857, 21.233593, 10.324971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.750887, 21.501019, 10.816676>,  <19.760702, 20.865635, 10.611822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.750887, 21.501019, 10.816676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.364929, 21.475544, 10.714756>,  <19.133354, 21.460260, 10.653605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.364929, 21.475544, 10.714756>,  <19.750887, 21.501019, 10.816676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.364929, 21.475544, 10.714756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262601, 0.250143, 0.931917,
		0.004387, 0.966112, -0.258085,
		-0.964895, -0.063685, -0.254799,
		19.075460, 21.456438, 10.638316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.427954, 21.933411, 11.265613>,  <19.750887, 21.501019, 10.816676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.427954, 21.933411, 11.265613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.095104, 21.769627, 11.115993>,  <18.895393, 21.671356, 11.026222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.095104, 21.769627, 11.115993>,  <19.427954, 21.933411, 11.265613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.095104, 21.769627, 11.115993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499192, 0.259165, 0.826826,
		-0.241611, 0.874744, -0.420056,
		-0.832125, -0.409459, -0.374048,
		18.845467, 21.646790, 11.003779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.848906, 22.365747, 11.298822>,  <19.427954, 21.933411, 11.265613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.848906, 22.365747, 11.298822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.656963, 22.015049, 11.285836>,  <18.541798, 21.804630, 11.278045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.656963, 22.015049, 11.285836>,  <18.848906, 22.365747, 11.298822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.656963, 22.015049, 11.285836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509573, 0.248390, 0.823795,
		-0.714195, 0.411846, -0.565957,
		-0.479855, -0.876747, -0.032466,
		18.513006, 21.752026, 11.276096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.185434, 22.571733, 11.327929>,  <18.848906, 22.365747, 11.298822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.185434, 22.571733, 11.327929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.211369, 22.188965, 11.441133>,  <18.226929, 21.959303, 11.509054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.211369, 22.188965, 11.441133>,  <18.185434, 22.571733, 11.327929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.211369, 22.188965, 11.441133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582772, 0.193908, 0.789162,
		-0.810045, -0.216094, -0.545097,
		0.064835, -0.956924, 0.283008,
		18.230820, 21.901888, 11.526035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.512760, 22.405386, 11.543850>,  <18.185434, 22.571733, 11.327929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.512760, 22.405386, 11.543850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.735641, 22.108803, 11.693391>,  <17.869370, 21.930853, 11.783115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.735641, 22.108803, 11.693391>,  <17.512760, 22.405386, 11.543850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.735641, 22.108803, 11.693391> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600807, -0.049204, 0.797879,
		-0.573199, -0.669192, -0.472890,
		0.557203, -0.741458, 0.373851,
		17.902802, 21.886366, 11.805546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.002495, 22.018358, 11.965050>,  <17.512760, 22.405386, 11.543850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.002495, 22.018358, 11.965050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.377335, 21.935089, 12.077124>,  <17.602240, 21.885128, 12.144368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.377335, 21.935089, 12.077124>,  <17.002495, 22.018358, 11.965050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.377335, 21.935089, 12.077124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288980, -0.012464, 0.957254,
		-0.195784, -0.978012, -0.071838,
		0.937101, -0.208175, 0.280185,
		17.658464, 21.872637, 12.161180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.922211, 21.416357, 12.382529>,  <17.002495, 22.018358, 11.965050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.922211, 21.416357, 12.382529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.250885, 21.615349, 12.493773>,  <17.448090, 21.734745, 12.560518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.250885, 21.615349, 12.493773>,  <16.922211, 21.416357, 12.382529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.250885, 21.615349, 12.493773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372295, 0.099033, 0.922816,
		0.431541, -0.861804, 0.266584,
		0.821687, 0.497481, 0.278108,
		17.497391, 21.764593, 12.577205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.869337, 21.367054, 13.039467>,  <16.922211, 21.416357, 12.382529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.869337, 21.367054, 13.039467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.171207, 21.628525, 13.016924>,  <17.352329, 21.785406, 13.003398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.171207, 21.628525, 13.016924>,  <16.869337, 21.367054, 13.039467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.171207, 21.628525, 13.016924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023631, 0.112925, 0.993322,
		0.655675, -0.748302, 0.100669,
		0.754673, 0.653676, -0.056358,
		17.397610, 21.824627, 13.000016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.336088, 21.141392, 13.468790>,  <16.869337, 21.367054, 13.039467>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.336088, 21.141392, 13.468790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.402260, 21.534462, 13.435360>,  <17.441963, 21.770304, 13.415301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.402260, 21.534462, 13.435360>,  <17.336088, 21.141392, 13.468790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.402260, 21.534462, 13.435360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048412, 0.076551, 0.995890,
		0.985033, -0.168793, -0.034910,
		0.165427, 0.982674, -0.083576,
		17.451887, 21.829264, 13.410287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.842054, 21.274105, 13.970299>,  <17.336088, 21.141392, 13.468790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.842054, 21.274105, 13.970299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.689205, 21.638332, 13.907244>,  <17.597496, 21.856869, 13.869411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.689205, 21.638332, 13.907244>,  <17.842054, 21.274105, 13.970299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.689205, 21.638332, 13.907244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014744, 0.164553, 0.986258,
		0.923994, 0.379195, -0.049453,
		-0.382122, 0.910568, -0.157637,
		17.574568, 21.911503, 13.859953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.299698, 21.833643, 14.355153>,  <17.842054, 21.274105, 13.970299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.299698, 21.833643, 14.355153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.922020, 21.956543, 14.307667>,  <17.695414, 22.030283, 14.279175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.922020, 21.956543, 14.307667>,  <18.299698, 21.833643, 14.355153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.922020, 21.956543, 14.307667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019212, 0.308435, 0.951051,
		0.328825, 0.900259, -0.285320,
		-0.944196, 0.307248, -0.118717,
		17.638762, 22.048717, 14.272052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.265160, 22.555655, 14.691247>,  <18.299698, 21.833643, 14.355153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.265160, 22.555655, 14.691247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.879318, 22.455040, 14.659582>,  <17.647814, 22.394672, 14.640583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.879318, 22.455040, 14.659582>,  <18.265160, 22.555655, 14.691247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.879318, 22.455040, 14.659582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135754, 0.216325, 0.966837,
		-0.226068, 0.943363, -0.242815,
		-0.964606, -0.251534, -0.079161,
		17.589937, 22.379580, 14.635834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.930428, 22.953266, 15.170095>,  <18.265160, 22.555655, 14.691247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.930428, 22.953266, 15.170095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.628376, 22.695515, 15.121834>,  <17.447145, 22.540865, 15.092877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.628376, 22.695515, 15.121834>,  <17.930428, 22.953266, 15.170095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.628376, 22.695515, 15.121834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375104, 0.273748, 0.885641,
		-0.537658, 0.714031, -0.448424,
		-0.755130, -0.644377, -0.120653,
		17.401836, 22.502201, 15.085638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.319969, 23.371124, 15.326222>,  <17.930428, 22.953266, 15.170095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.319969, 23.371124, 15.326222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.200588, 22.990456, 15.355204>,  <17.128960, 22.762054, 15.372592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.200588, 22.990456, 15.355204>,  <17.319969, 23.371124, 15.326222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.200588, 22.990456, 15.355204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536967, 0.230185, 0.811592,
		-0.789046, 0.203317, -0.579715,
		-0.298452, -0.951671, 0.072452,
		17.111053, 22.704954, 15.376939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.636309, 23.444124, 15.445432>,  <17.319969, 23.371124, 15.326222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.636309, 23.444124, 15.445432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.733646, 23.074055, 15.561939>,  <16.792049, 22.852013, 15.631844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.733646, 23.074055, 15.561939>,  <16.636309, 23.444124, 15.445432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.733646, 23.074055, 15.561939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386641, 0.182881, 0.903915,
		-0.889547, -0.332577, -0.313208,
		0.243342, -0.925174, 0.291269,
		16.806648, 22.796503, 15.649320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.002634, 23.139111, 15.538220>,  <16.636309, 23.444124, 15.445432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.002634, 23.139111, 15.538220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.297234, 22.946377, 15.728130>,  <16.473993, 22.830736, 15.842076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.297234, 22.946377, 15.728130>,  <16.002634, 23.139111, 15.538220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.297234, 22.946377, 15.728130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373192, 0.295962, 0.879280,
		-0.564181, -0.824769, 0.038159,
		0.736496, -0.481833, 0.474774,
		16.518183, 22.801826, 15.870563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.640096, 22.659998, 15.914532>,  <16.002634, 23.139111, 15.538220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.640096, 22.659998, 15.914532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.989139, 22.710251, 16.103327>,  <16.198565, 22.740402, 16.216604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.989139, 22.710251, 16.103327>,  <15.640096, 22.659998, 15.914532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.989139, 22.710251, 16.103327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485285, 0.332368, 0.808722,
		-0.055270, -0.934745, 0.350995,
		0.872608, 0.125635, 0.471987,
		16.250921, 22.747942, 16.244923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.167122, 22.144110, 15.882275>,  <15.640096, 22.659998, 15.914532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.167122, 22.144110, 15.882275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.769097, 22.147449, 15.842710>,  <14.530283, 22.149452, 15.818972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.769097, 22.147449, 15.842710>,  <15.167122, 22.144110, 15.882275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.769097, 22.147449, 15.842710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081147, -0.505464, -0.859024,
		-0.057166, -0.862808, 0.502290,
		-0.995062, 0.008347, -0.098910,
		14.470579, 22.149954, 15.813038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.029769, 21.427935, 15.768064>,  <15.167122, 22.144110, 15.882275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.029769, 21.427935, 15.768064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.735013, 21.665379, 15.638683>,  <14.558159, 21.807844, 15.561055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.735013, 21.665379, 15.638683>,  <15.029769, 21.427935, 15.768064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.735013, 21.665379, 15.638683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043534, -0.435806, -0.898987,
		-0.674610, -0.676536, 0.295299,
		-0.736890, 0.593610, -0.323451,
		14.513946, 21.843462, 15.541648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.659320, 21.065735, 15.272995>,  <15.029769, 21.427935, 15.768064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.659320, 21.065735, 15.272995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.522244, 21.432083, 15.189331>,  <14.439999, 21.651892, 15.139132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.522244, 21.432083, 15.189331>,  <14.659320, 21.065735, 15.272995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.522244, 21.432083, 15.189331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055674, -0.242048, -0.968666,
		-0.937798, -0.320306, 0.133938,
		-0.342689, 0.915869, -0.209160,
		14.419437, 21.706844, 15.126583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.989451, 21.012215, 14.958845>,  <14.659320, 21.065735, 15.272995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.989451, 21.012215, 14.958845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.128980, 21.362194, 14.824509>,  <14.212697, 21.572182, 14.743907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.128980, 21.362194, 14.824509>,  <13.989451, 21.012215, 14.958845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.128980, 21.362194, 14.824509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225510, -0.269461, -0.936235,
		-0.909653, 0.402314, 0.103316,
		0.348821, 0.874948, -0.335842,
		14.233626, 21.624678, 14.723756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.414600, 21.379978, 14.496141>,  <13.989451, 21.012215, 14.958845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.414600, 21.379978, 14.496141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.787957, 21.489990, 14.403936>,  <14.011971, 21.555998, 14.348614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.787957, 21.489990, 14.403936>,  <13.414600, 21.379978, 14.496141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.787957, 21.489990, 14.403936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167184, -0.235113, -0.957482,
		-0.317533, 0.932245, -0.173472,
		0.933393, 0.275031, -0.230512,
		14.067975, 21.572500, 14.334783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
