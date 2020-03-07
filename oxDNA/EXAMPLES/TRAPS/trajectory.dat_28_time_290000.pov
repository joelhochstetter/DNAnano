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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<36.827724, 52.839382, 49.729198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.460873, 52.944386, 49.849178>,  <36.240761, 53.007389, 49.921165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.460873, 52.944386, 49.849178>,  <36.827724, 52.839382, 49.729198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460873, 52.944386, 49.849178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394455, 0.705953, 0.588248,
		-0.057327, 0.657813, -0.750996,
		-0.917125, 0.262512, 0.299947,
		36.185734, 53.023140, 49.939163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586185, 53.576687, 49.630444>,  <36.827724, 52.839382, 49.729198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586185, 53.576687, 49.630444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.438663, 53.438297, 49.975533>,  <36.350151, 53.355263, 50.182587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.438663, 53.438297, 49.975533>,  <36.586185, 53.576687, 49.630444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438663, 53.438297, 49.975533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386915, 0.786775, 0.480919,
		-0.845150, 0.511166, -0.156308,
		-0.368808, -0.345970, 0.862720,
		36.328022, 53.334507, 50.234348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149078, 53.764931, 49.072716>,  <36.586185, 53.576687, 49.630444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149078, 53.764931, 49.072716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.127327, 54.159840, 49.132507>,  <36.114277, 54.396786, 49.168385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.127327, 54.159840, 49.132507>,  <36.149078, 53.764931, 49.072716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127327, 54.159840, 49.132507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963389, 0.012515, 0.267816,
		0.262536, 0.158574, -0.951803,
		-0.054381, 0.987268, 0.149483,
		36.111012, 54.456020, 49.177353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719643, 53.955269, 48.800961>,  <36.149078, 53.764931, 49.072716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719643, 53.955269, 48.800961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.637970, 54.261650, 49.044804>,  <36.588966, 54.445480, 49.191109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.637970, 54.261650, 49.044804>,  <36.719643, 53.955269, 48.800961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637970, 54.261650, 49.044804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940427, -0.019460, 0.339438,
		0.271858, 0.642598, -0.716353,
		-0.204182, 0.765956, 0.609607,
		36.576714, 54.491436, 49.227684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221054, 54.452282, 48.686741>,  <36.719643, 53.955269, 48.800961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221054, 54.452282, 48.686741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075775, 54.451408, 49.059425>,  <36.988609, 54.450882, 49.283035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075775, 54.451408, 49.059425>,  <37.221054, 54.452282, 48.686741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075775, 54.451408, 49.059425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930254, -0.056788, 0.362494,
		0.052118, 0.998384, 0.022658,
		-0.363195, -0.002186, 0.931711,
		36.966816, 54.450752, 49.338940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274120, 55.098518, 49.083481>,  <37.221054, 54.452282, 48.686741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274120, 55.098518, 49.083481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290279, 54.762283, 49.299549>,  <37.299973, 54.560543, 49.429188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290279, 54.762283, 49.299549>,  <37.274120, 55.098518, 49.083481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290279, 54.762283, 49.299549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940706, 0.214225, 0.263019,
		-0.336808, 0.497515, 0.799399,
		0.040395, -0.840587, 0.540168,
		37.302399, 54.510109, 49.461601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454990, 55.137768, 49.851513>,  <37.274120, 55.098518, 49.083481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454990, 55.137768, 49.851513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.581902, 54.807968, 49.664097>,  <37.658051, 54.610088, 49.551647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.581902, 54.807968, 49.664097>,  <37.454990, 55.137768, 49.851513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581902, 54.807968, 49.664097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948328, 0.276948, 0.154831,
		0.002104, -0.493458, 0.869767,
		0.317283, -0.824499, -0.468543,
		37.677086, 54.560619, 49.523533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946545, 54.811329, 50.214607>,  <37.454990, 55.137768, 49.851513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946545, 54.811329, 50.214607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015469, 54.670803, 49.846500>,  <38.056824, 54.586487, 49.625637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015469, 54.670803, 49.846500>,  <37.946545, 54.811329, 50.214607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015469, 54.670803, 49.846500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983220, 0.118149, 0.138992,
		0.059898, -0.928772, 0.365780,
		0.172309, -0.351317, -0.920264,
		38.067162, 54.565407, 49.570419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413292, 54.247898, 50.202374>,  <37.946545, 54.811329, 50.214607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413292, 54.247898, 50.202374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455437, 54.428738, 49.848083>,  <38.480724, 54.537243, 49.635509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455437, 54.428738, 49.848083>,  <38.413292, 54.247898, 50.202374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455437, 54.428738, 49.848083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989069, 0.044761, 0.140498,
		0.103166, -0.890842, -0.442446,
		0.105357, 0.452104, -0.885721,
		38.487045, 54.564369, 49.582367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003326, 53.984200, 49.838604>,  <38.413292, 54.247898, 50.202374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003326, 53.984200, 49.838604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958447, 54.343006, 49.667595>,  <38.931519, 54.558289, 49.564991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958447, 54.343006, 49.667595>,  <39.003326, 53.984200, 49.838604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958447, 54.343006, 49.667595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990965, 0.132826, 0.018613,
		0.073482, -0.421571, -0.903813,
		-0.112203, 0.897015, -0.427522,
		38.924786, 54.612110, 49.539337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607143, 54.155659, 49.477962>,  <39.003326, 53.984200, 49.838604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607143, 54.155659, 49.477962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.476715, 54.524933, 49.559357>,  <39.398457, 54.746498, 49.608192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.476715, 54.524933, 49.559357>,  <39.607143, 54.155659, 49.477962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.476715, 54.524933, 49.559357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945092, 0.323321, 0.047589,
		-0.021857, 0.207828, -0.977921,
		-0.326073, 0.923185, 0.203484,
		39.378895, 54.801888, 49.620403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363400, 54.217037, 49.316898>,  <39.607143, 54.155659, 49.477962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363400, 54.217037, 49.316898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266132, 54.294086, 48.936630>,  <40.207771, 54.340317, 48.708469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266132, 54.294086, 48.936630>,  <40.363400, 54.217037, 49.316898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266132, 54.294086, 48.936630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508648, -0.809199, -0.294064,
		-0.825922, -0.555061, 0.098791,
		-0.243165, 0.192624, -0.950666,
		40.193184, 54.351875, 48.651432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.039661, 53.982540, 49.634457>,  <40.363400, 54.217037, 49.316898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.039661, 53.982540, 49.634457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.317883, 54.049393, 49.354950>,  <41.484814, 54.089504, 49.187244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.317883, 54.049393, 49.354950>,  <41.039661, 53.982540, 49.634457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.317883, 54.049393, 49.354950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354536, 0.925751, -0.131489,
		0.624909, 0.339196, 0.703161,
		0.695552, 0.167128, -0.698767,
		41.526546, 54.099529, 49.145321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.133938, 54.750988, 49.804203>,  <41.039661, 53.982540, 49.634457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.133938, 54.750988, 49.804203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.266979, 54.649017, 49.441021>,  <41.346806, 54.587837, 49.223110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.266979, 54.649017, 49.441021>,  <41.133938, 54.750988, 49.804203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.266979, 54.649017, 49.441021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154311, 0.935085, -0.319068,
		0.930355, 0.246232, 0.271678,
		0.332606, -0.254924, -0.907957,
		41.366760, 54.572540, 49.168633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565617, 55.325630, 49.626804>,  <41.133938, 54.750988, 49.804203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.565617, 55.325630, 49.626804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.450153, 55.147408, 49.287827>,  <41.380875, 55.040474, 49.084442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.450153, 55.147408, 49.287827>,  <41.565617, 55.325630, 49.626804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.450153, 55.147408, 49.287827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198333, 0.893747, -0.402343,
		0.936664, 0.051936, -0.346356,
		-0.288659, -0.445555, -0.847441,
		41.363556, 55.013741, 49.033592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.186966, 55.812439, 49.460709>,  <41.565617, 55.325630, 49.626804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.186966, 55.812439, 49.460709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.275223, 56.190144, 49.362980>,  <42.328178, 56.416767, 49.304344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.275223, 56.190144, 49.362980>,  <42.186966, 55.812439, 49.460709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.275223, 56.190144, 49.362980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242944, 0.189390, 0.951373,
		0.944614, -0.269270, -0.187614,
		0.220644, 0.944259, -0.244317,
		42.341415, 56.473423, 49.289684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.929802, 55.831741, 49.629559>,  <42.186966, 55.812439, 49.460709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.929802, 55.831741, 49.629559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.693928, 56.154785, 49.631706>,  <42.552402, 56.348614, 49.632996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.693928, 56.154785, 49.631706>,  <42.929802, 55.831741, 49.629559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.693928, 56.154785, 49.631706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238097, 0.167487, 0.956691,
		0.771736, 0.565430, -0.291055,
		-0.589690, 0.807612, 0.005372,
		42.517021, 56.397068, 49.633316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.614807, 55.960583, 49.667709>,  <42.929802, 55.831741, 49.629559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.614807, 55.960583, 49.667709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.002117, 56.000919, 49.759163>,  <44.234505, 56.025120, 49.814034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.002117, 56.000919, 49.759163>,  <43.614807, 55.960583, 49.667709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.002117, 56.000919, 49.759163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103092, -0.994670, 0.002102,
		0.227628, 0.021535, -0.973510,
		0.968275, 0.100839, 0.228635,
		44.292599, 56.031170, 49.827755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.078037, 55.483833, 49.289402>,  <43.614807, 55.960583, 49.667709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.078037, 55.483833, 49.289402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.195225, 55.581478, 49.659176>,  <44.265537, 55.640064, 49.881039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.195225, 55.581478, 49.659176>,  <44.078037, 55.483833, 49.289402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.195225, 55.581478, 49.659176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099635, -0.969388, 0.224411,
		0.950918, 0.026362, -0.308319,
		0.292964, 0.244116, 0.924435,
		44.283115, 55.654713, 49.936504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.730827, 55.039074, 49.354839>,  <44.078037, 55.483833, 49.289402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.730827, 55.039074, 49.354839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.531242, 55.128487, 49.689758>,  <44.411491, 55.182133, 49.890709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.531242, 55.128487, 49.689758>,  <44.730827, 55.039074, 49.354839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.531242, 55.128487, 49.689758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018472, -0.963200, 0.268151,
		0.866428, 0.149263, 0.476470,
		-0.498960, 0.223532, 0.837300,
		44.381554, 55.195545, 49.940948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.142628, 54.792019, 50.049282>,  <44.730827, 55.039074, 49.354839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.142628, 54.792019, 50.049282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.748444, 54.791676, 50.117252>,  <44.511932, 54.791470, 50.158035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.748444, 54.791676, 50.117252>,  <45.142628, 54.792019, 50.049282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.748444, 54.791676, 50.117252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029422, -0.985744, 0.165658,
		0.167360, 0.168248, 0.971434,
		-0.985457, -0.000857, 0.169924,
		44.452808, 54.791420, 50.168228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.817413, 54.669598, 50.795139>,  <45.142628, 54.792019, 50.049282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.817413, 54.669598, 50.795139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.534096, 54.556107, 50.536583>,  <44.364105, 54.488014, 50.381451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.534096, 54.556107, 50.536583>,  <44.817413, 54.669598, 50.795139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.534096, 54.556107, 50.536583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002053, -0.916498, 0.400035,
		-0.705913, 0.282015, 0.649734,
		-0.708296, -0.283724, -0.646389,
		44.321606, 54.470989, 50.342667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.690884, 54.775997, 51.508461>,  <44.817413, 54.669598, 50.795139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.690884, 54.775997, 51.508461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.929386, 55.075794, 51.393402>,  <45.072487, 55.255672, 51.324368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.929386, 55.075794, 51.393402>,  <44.690884, 54.775997, 51.508461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.929386, 55.075794, 51.393402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392951, 0.039979, 0.918690,
		0.700052, -0.660804, -0.270676,
		0.596253, 0.749493, -0.287651,
		45.108261, 55.300644, 51.307106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.324600, 54.594097, 51.506805>,  <44.690884, 54.775997, 51.508461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.324600, 54.594097, 51.506805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.275913, 54.982094, 51.590988>,  <45.246700, 55.214893, 51.641499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.275913, 54.982094, 51.590988>,  <45.324600, 54.594097, 51.506805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.275913, 54.982094, 51.590988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571128, -0.104972, 0.814121,
		0.811786, 0.219296, -0.541214,
		-0.121721, 0.969995, 0.210461,
		45.239395, 55.273094, 51.654125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.971024, 54.978630, 51.412151>,  <45.324600, 54.594097, 51.506805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.971024, 54.978630, 51.412151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.691071, 55.054104, 51.687706>,  <45.523098, 55.099388, 51.853039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.691071, 55.054104, 51.687706>,  <45.971024, 54.978630, 51.412151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.691071, 55.054104, 51.687706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672215, -0.152003, 0.724584,
		0.241431, 0.970202, -0.020453,
		-0.699885, 0.188686, 0.688883,
		45.481106, 55.110710, 51.894371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.063061, 55.493164, 51.880630>,  <45.971024, 54.978630, 51.412151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.063061, 55.493164, 51.880630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.872166, 55.208855, 52.087334>,  <45.757629, 55.038269, 52.211357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.872166, 55.208855, 52.087334>,  <46.063061, 55.493164, 51.880630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.872166, 55.208855, 52.087334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773439, -0.060573, 0.630970,
		-0.417178, 0.700804, 0.578650,
		-0.477238, -0.710777, 0.516759,
		45.728996, 54.995621, 52.242363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.831856, 55.777863, 52.519390>,  <46.063061, 55.493164, 51.880630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.831856, 55.777863, 52.519390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.859249, 55.382278, 52.571960>,  <45.875687, 55.144928, 52.603504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.859249, 55.382278, 52.571960>,  <45.831856, 55.777863, 52.519390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.859249, 55.382278, 52.571960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730976, 0.139392, 0.668015,
		-0.678958, 0.050321, 0.732450,
		0.068483, -0.988958, 0.131425,
		45.879795, 55.085590, 52.611389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.876507, 55.616577, 53.354607>,  <45.831856, 55.777863, 52.519390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.876507, 55.616577, 53.354607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.050865, 55.322922, 53.146362>,  <46.155479, 55.146729, 53.021416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.050865, 55.322922, 53.146362>,  <45.876507, 55.616577, 53.354607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.050865, 55.322922, 53.146362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801500, 0.053533, 0.595594,
		-0.409379, -0.676885, 0.611748,
		0.435897, -0.734140, -0.520608,
		46.181633, 55.102680, 52.990181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.163067, 55.120029, 53.909130>,  <45.876507, 55.616577, 53.354607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.163067, 55.120029, 53.909130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.373791, 55.165241, 53.572159>,  <46.500225, 55.192368, 53.369976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.373791, 55.165241, 53.572159>,  <46.163067, 55.120029, 53.909130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.373791, 55.165241, 53.572159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838080, 0.096191, 0.537000,
		0.141733, -0.988924, -0.044055,
		0.526814, 0.113033, -0.842431,
		46.531834, 55.199150, 53.319431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.779167, 54.513729, 53.815975>,  <46.163067, 55.120029, 53.909130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.779167, 54.513729, 53.815975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.839809, 54.872349, 53.649498>,  <46.876194, 55.087521, 53.549610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.839809, 54.872349, 53.649498>,  <46.779167, 54.513729, 53.815975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.839809, 54.872349, 53.649498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922140, 0.023321, 0.386152,
		0.355910, -0.442333, -0.823207,
		0.151610, 0.896547, -0.416194,
		46.885292, 55.141312, 53.524639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.285980, 54.544273, 53.244598>,  <46.779167, 54.513729, 53.815975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.285980, 54.544273, 53.244598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.239635, 54.855316, 53.491791>,  <47.211826, 55.041943, 53.640106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.239635, 54.855316, 53.491791>,  <47.285980, 54.544273, 53.244598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.239635, 54.855316, 53.491791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811564, -0.284594, 0.510265,
		0.572660, 0.560652, -0.598105,
		-0.115865, 0.777609, 0.617980,
		47.204876, 55.088600, 53.677185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.001820, 54.668915, 53.318581>,  <47.285980, 54.544273, 53.244598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.001820, 54.668915, 53.318581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.778980, 54.807507, 53.620468>,  <47.645279, 54.890663, 53.801601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.778980, 54.807507, 53.620468>,  <48.001820, 54.668915, 53.318581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.778980, 54.807507, 53.620468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695053, -0.302819, 0.652075,
		0.454475, 0.887834, -0.072125,
		-0.557094, 0.346483, 0.754716,
		47.611851, 54.911453, 53.846882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.499813, 54.993919, 53.753006>,  <48.001820, 54.668915, 53.318581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.499813, 54.993919, 53.753006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.189980, 54.947216, 54.001648>,  <48.004082, 54.919193, 54.150833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.189980, 54.947216, 54.001648>,  <48.499813, 54.993919, 53.753006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.189980, 54.947216, 54.001648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599337, -0.449456, 0.662408,
		0.202041, 0.885639, 0.418119,
		-0.774580, -0.116761, 0.621605,
		47.957607, 54.912189, 54.188129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.531685, 55.300945, 54.460926>,  <48.499813, 54.993919, 53.753006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.531685, 55.300945, 54.460926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.306488, 54.970932, 54.480400>,  <48.171371, 54.772926, 54.492085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.306488, 54.970932, 54.480400>,  <48.531685, 55.300945, 54.460926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.306488, 54.970932, 54.480400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774932, -0.506490, 0.378086,
		-0.287274, 0.250585, 0.924490,
		-0.562988, -0.825030, 0.048685,
		48.137592, 54.723423, 54.495007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.611958, 54.996735, 55.122452>,  <48.531685, 55.300945, 54.460926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.611958, 54.996735, 55.122452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.565075, 54.721329, 54.836178>,  <48.536945, 54.556084, 54.664413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.565075, 54.721329, 54.836178>,  <48.611958, 54.996735, 55.122452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.565075, 54.721329, 54.836178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853943, -0.437776, 0.281308,
		-0.506996, -0.578186, 0.639262,
		-0.117206, -0.688515, -0.715688,
		48.529915, 54.514774, 54.621471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.873760, 54.384476, 55.380936>,  <48.611958, 54.996735, 55.122452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.873760, 54.384476, 55.380936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.841206, 54.303509, 54.990570>,  <48.821671, 54.254929, 54.756351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.841206, 54.303509, 54.990570>,  <48.873760, 54.384476, 55.380936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.841206, 54.303509, 54.990570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854556, -0.518096, 0.036193,
		-0.512942, -0.831025, 0.215145,
		-0.081388, -0.202419, -0.975911,
		48.816788, 54.242783, 54.697796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.020439, 53.693123, 55.391972>,  <48.873760, 54.384476, 55.380936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.020439, 53.693123, 55.391972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.113998, 53.849663, 55.035965>,  <49.170135, 53.943588, 54.822361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.113998, 53.849663, 55.035965>,  <49.020439, 53.693123, 55.391972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.113998, 53.849663, 55.035965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956539, -0.256581, 0.138558,
		-0.174137, -0.883748, -0.434357,
		0.233898, 0.391351, -0.890020,
		49.184170, 53.967068, 54.768959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.448219, 53.253857, 55.104580>,  <49.020439, 53.693123, 55.391972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.448219, 53.253857, 55.104580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.536285, 53.616646, 54.960953>,  <49.589123, 53.834320, 54.874775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.536285, 53.616646, 54.960953>,  <49.448219, 53.253857, 55.104580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.536285, 53.616646, 54.960953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974615, -0.219876, 0.042197,
		-0.040679, -0.359247, -0.932355,
		0.220162, 0.906971, -0.359072,
		49.602333, 53.888737, 54.853230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.061775, 53.153709, 54.668060>,  <49.448219, 53.253857, 55.104580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.061775, 53.153709, 54.668060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.042492, 53.542816, 54.758747>,  <50.030922, 53.776279, 54.813160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.042492, 53.542816, 54.758747>,  <50.061775, 53.153709, 54.668060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.042492, 53.542816, 54.758747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996555, 0.031506, 0.076718,
		0.067486, 0.229634, -0.970934,
		-0.048208, 0.972767, 0.226717,
		50.028030, 53.834648, 54.826763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.283379, 53.632278, 54.109707>,  <50.061775, 53.153709, 54.668060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.283379, 53.632278, 54.109707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.341908, 53.790207, 54.472519>,  <50.377026, 53.884964, 54.690205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.341908, 53.790207, 54.472519>,  <50.283379, 53.632278, 54.109707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.341908, 53.790207, 54.472519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975741, -0.208541, -0.066636,
		0.162843, 0.894777, -0.415759,
		0.146327, 0.394822, 0.907030,
		50.385807, 53.908653, 54.744629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.801247, 54.194820, 54.179459>,  <50.283379, 53.632278, 54.109707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.801247, 54.194820, 54.179459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.786259, 53.991440, 54.523567>,  <50.777267, 53.869411, 54.730034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.786259, 53.991440, 54.523567>,  <50.801247, 54.194820, 54.179459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.786259, 53.991440, 54.523567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993505, -0.111516, -0.022636,
		0.107444, 0.853839, 0.509328,
		-0.037471, -0.508452, 0.860274,
		50.775017, 53.838905, 54.781651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.215454, 54.608376, 54.624088>,  <50.801247, 54.194820, 54.179459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.215454, 54.608376, 54.624088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.183914, 54.212257, 54.669876>,  <51.164989, 53.974586, 54.697350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.183914, 54.212257, 54.669876>,  <51.215454, 54.608376, 54.624088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.183914, 54.212257, 54.669876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993495, -0.087529, -0.072847,
		0.082159, 0.107978, 0.990753,
		-0.078854, -0.990293, 0.114467,
		51.160259, 53.915169, 54.704216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.642990, 54.352116, 55.099098>,  <51.215454, 54.608376, 54.624088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.642990, 54.352116, 55.099098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.574913, 54.092251, 54.802727>,  <51.534065, 53.936333, 54.624905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.574913, 54.092251, 54.802727>,  <51.642990, 54.352116, 55.099098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.574913, 54.092251, 54.802727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978429, -0.022070, -0.205402,
		0.117091, -0.759901, 0.639406,
		-0.170197, -0.649664, -0.740925,
		51.523853, 53.897350, 54.580448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.914146, 53.568558, 55.234161>,  <51.642990, 54.352116, 55.099098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.914146, 53.568558, 55.234161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.911957, 53.640881, 54.840759>,  <51.910641, 53.684273, 54.604717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.911957, 53.640881, 54.840759>,  <51.914146, 53.568558, 55.234161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.911957, 53.640881, 54.840759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999641, 0.026802, -0.000639,
		0.026244, -0.983153, -0.180890,
		-0.005476, 0.180808, -0.983503,
		51.910313, 53.695122, 54.545708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.534267, 53.220425, 54.991711>,  <51.914146, 53.568558, 55.234161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.534267, 53.220425, 54.991711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.415764, 53.527718, 54.764713>,  <52.344662, 53.712093, 54.628513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.415764, 53.527718, 54.764713>,  <52.534267, 53.220425, 54.991711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.415764, 53.527718, 54.764713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922733, 0.383603, 0.037589,
		0.246571, -0.512511, -0.822518,
		-0.296255, 0.768233, -0.567496,
		52.326889, 53.758186, 54.594463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.008282, 53.147087, 54.386433>,  <52.534267, 53.220425, 54.991711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.008282, 53.147087, 54.386433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.864410, 53.513401, 54.457947>,  <52.778088, 53.733189, 54.500854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.864410, 53.513401, 54.457947>,  <53.008282, 53.147087, 54.386433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.864410, 53.513401, 54.457947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928274, 0.370612, -0.030883,
		-0.094542, 0.154851, -0.983404,
		-0.359679, 0.915788, 0.178782,
		52.756508, 53.788139, 54.511581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.217686, 53.640652, 53.947041>,  <53.008282, 53.147087, 54.386433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.217686, 53.640652, 53.947041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.153011, 53.805515, 54.305702>,  <53.114208, 53.904434, 54.520901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.153011, 53.805515, 54.305702>,  <53.217686, 53.640652, 53.947041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.153011, 53.805515, 54.305702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932443, 0.361310, 0.002058,
		-0.323122, 0.836411, -0.442729,
		-0.161684, 0.412154, 0.896653,
		53.104507, 53.929161, 54.574699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.833096, 53.790241, 54.129704>,  <53.217686, 53.640652, 53.947041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.833096, 53.790241, 54.129704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.643913, 53.963287, 54.436729>,  <53.530403, 54.067116, 54.620945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.643913, 53.963287, 54.436729>,  <53.833096, 53.790241, 54.129704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.643913, 53.963287, 54.436729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863702, 0.399834, 0.306842,
		-0.174153, 0.808070, -0.562756,
		-0.472958, 0.432616, 0.767564,
		53.502026, 54.093071, 54.667000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.013653, 54.575645, 54.155361>,  <53.833096, 53.790241, 54.129704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.013653, 54.575645, 54.155361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.936729, 54.399311, 54.506058>,  <53.890575, 54.293510, 54.716476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.936729, 54.399311, 54.506058>,  <54.013653, 54.575645, 54.155361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.936729, 54.399311, 54.506058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894925, 0.287793, 0.341005,
		-0.402648, 0.850199, 0.339169,
		-0.192311, -0.440835, 0.876744,
		53.879036, 54.267059, 54.769081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.190773, 55.035713, 54.620636>,  <54.013653, 54.575645, 54.155361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.190773, 55.035713, 54.620636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.230263, 54.654778, 54.736092>,  <54.253956, 54.426216, 54.805363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.230263, 54.654778, 54.736092>,  <54.190773, 55.035713, 54.620636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.230263, 54.654778, 54.736092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967500, 0.159718, 0.196048,
		-0.232804, 0.259900, 0.937152,
		0.098727, -0.952335, 0.288636,
		54.259880, 54.369076, 54.822681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.691490, 54.967270, 55.157959>,  <54.190773, 55.035713, 54.620636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.691490, 54.967270, 55.157959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.688660, 54.580059, 55.057663>,  <54.686962, 54.347733, 54.997486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.688660, 54.580059, 55.057663>,  <54.691490, 54.967270, 55.157959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.688660, 54.580059, 55.057663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932151, -0.097160, 0.348789,
		-0.361999, -0.231259, 0.903037,
		-0.007078, -0.968028, -0.250741,
		54.686535, 54.289650, 54.982441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.681976, 54.522797, 55.792217>,  <54.691490, 54.967270, 55.157959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.681976, 54.522797, 55.792217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.843575, 54.369743, 55.459862>,  <54.940533, 54.277912, 55.260448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.843575, 54.369743, 55.459862>,  <54.681976, 54.522797, 55.792217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.843575, 54.369743, 55.459862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906028, 0.042168, 0.421111,
		-0.126094, -0.922938, 0.363711,
		0.403996, -0.382632, -0.830891,
		54.964775, 54.254955, 55.210594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.083385, 53.744030, 55.827610>,  <54.681976, 54.522797, 55.792217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.083385, 53.744030, 55.827610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.235428, 54.002468, 55.562859>,  <55.326653, 54.157532, 55.404007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.235428, 54.002468, 55.562859>,  <55.083385, 53.744030, 55.827610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.235428, 54.002468, 55.562859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860709, 0.014942, 0.508878,
		0.338675, -0.763108, -0.550423,
		0.380105, 0.646099, -0.661874,
		55.349461, 54.196297, 55.364296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.668415, 53.475563, 55.528423>,  <55.083385, 53.744030, 55.827610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.668415, 53.475563, 55.528423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.697578, 53.873714, 55.553444>,  <55.715076, 54.112606, 55.568455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.697578, 53.873714, 55.553444>,  <55.668415, 53.475563, 55.528423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.697578, 53.873714, 55.553444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724195, -0.095962, 0.682886,
		0.685730, -0.004490, -0.727842,
		0.072911, 0.995375, 0.062552,
		55.719452, 54.172325, 55.572208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.385132, 53.684906, 55.496155>,  <55.668415, 53.475563, 55.528423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.385132, 53.684906, 55.496155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.179291, 53.957111, 55.704803>,  <56.055786, 54.120434, 55.829994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.179291, 53.957111, 55.704803>,  <56.385132, 53.684906, 55.496155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.179291, 53.957111, 55.704803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796156, 0.153388, 0.585326,
		0.318309, 0.716504, -0.620726,
		-0.514601, 0.680510, 0.521625,
		56.024910, 54.161263, 55.861290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.634140, 54.370995, 55.472050>,  <56.385132, 53.684906, 55.496155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.634140, 54.370995, 55.472050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.476273, 54.290653, 55.830688>,  <56.381550, 54.242451, 56.045872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.476273, 54.290653, 55.830688>,  <56.634140, 54.370995, 55.472050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.476273, 54.290653, 55.830688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901357, 0.104725, 0.420224,
		-0.178299, 0.974008, 0.139707,
		-0.394670, -0.200851, 0.896601,
		56.357872, 54.230396, 56.099670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.558228, 54.949062, 56.174023>,  <56.634140, 54.370995, 55.472050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.558228, 54.949062, 56.174023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.640427, 54.561466, 56.228897>,  <56.689747, 54.328907, 56.261822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.640427, 54.561466, 56.228897>,  <56.558228, 54.949062, 56.174023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.640427, 54.561466, 56.228897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905356, 0.241457, 0.349326,
		-0.371619, 0.052415, 0.926904,
		0.205498, -0.968995, 0.137185,
		56.702076, 54.270767, 56.270054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.823437, 54.867802, 56.802513>,  <56.558228, 54.949062, 56.174023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.823437, 54.867802, 56.802513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.964256, 54.561417, 56.587341>,  <57.048748, 54.377586, 56.458241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.964256, 54.561417, 56.587341>,  <56.823437, 54.867802, 56.802513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.964256, 54.561417, 56.587341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907531, 0.138714, 0.396416,
		-0.229022, -0.627741, 0.743969,
		0.352046, -0.765963, -0.537926,
		57.069870, 54.331627, 56.425964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.299694, 54.628510, 57.155952>,  <56.823437, 54.867802, 56.802513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.299694, 54.628510, 57.155952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.437683, 54.532925, 56.792877>,  <57.520477, 54.475574, 56.575031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.437683, 54.532925, 56.792877>,  <57.299694, 54.628510, 57.155952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.437683, 54.532925, 56.792877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938592, 0.094001, 0.331976,
		0.005995, -0.966469, 0.256713,
		0.344976, -0.238958, -0.907684,
		57.541176, 54.461239, 56.520573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.935818, 54.116482, 57.244461>,  <57.299694, 54.628510, 57.155952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.935818, 54.116482, 57.244461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.952042, 54.303555, 56.891273>,  <57.961777, 54.415798, 56.679363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.952042, 54.303555, 56.891273>,  <57.935818, 54.116482, 57.244461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.952042, 54.303555, 56.891273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966712, 0.205067, 0.153022,
		0.252633, -0.859779, -0.443798,
		0.040557, 0.467683, -0.882965,
		57.964207, 54.443859, 56.626385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.397346, 53.798550, 56.795864>,  <57.935818, 54.116482, 57.244461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.397346, 53.798550, 56.795864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.378540, 54.193184, 56.733337>,  <58.367256, 54.429966, 56.695824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.378540, 54.193184, 56.733337>,  <58.397346, 53.798550, 56.795864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.378540, 54.193184, 56.733337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936377, 0.098021, 0.337033,
		0.347834, -0.130522, -0.928426,
		-0.047015, 0.986588, -0.156313,
		58.364437, 54.489159, 56.686443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.884327, 53.945393, 56.315598>,  <58.397346, 53.798550, 56.795864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.884327, 53.945393, 56.315598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.822502, 54.265640, 56.547157>,  <58.785408, 54.457787, 56.686092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.822502, 54.265640, 56.547157>,  <58.884327, 53.945393, 56.315598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.822502, 54.265640, 56.547157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956322, -0.025913, 0.291163,
		0.248111, 0.598618, -0.761641,
		-0.154559, 0.800615, 0.578901,
		58.776134, 54.505825, 56.720829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.354725, 54.523830, 56.137650>,  <58.884327, 53.945393, 56.315598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.354725, 54.523830, 56.137650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.246048, 54.549099, 56.521774>,  <59.180843, 54.564259, 56.752247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.246048, 54.549099, 56.521774>,  <59.354725, 54.523830, 56.137650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.246048, 54.549099, 56.521774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961983, -0.011021, 0.272888,
		0.027822, 0.997942, -0.057775,
		-0.271690, 0.063171, 0.960309,
		59.164539, 54.568050, 56.809868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.495083, 55.136833, 56.536453>,  <59.354725, 54.523830, 56.137650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.495083, 55.136833, 56.536453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.530685, 54.797272, 56.744850>,  <59.552048, 54.593533, 56.869888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.530685, 54.797272, 56.744850>,  <59.495083, 55.136833, 56.536453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.530685, 54.797272, 56.744850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982053, 0.162118, 0.096379,
		-0.166279, 0.503067, 0.848101,
		0.089008, -0.848906, 0.520995,
		59.557388, 54.542599, 56.901150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.827175, 55.291096, 57.170197>,  <59.495083, 55.136833, 56.536453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.827175, 55.291096, 57.170197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.935432, 54.917377, 57.077385>,  <60.000385, 54.693146, 57.021698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.935432, 54.917377, 57.077385>,  <59.827175, 55.291096, 57.170197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.935432, 54.917377, 57.077385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959447, 0.242044, 0.144485,
		-0.078831, -0.261725, 0.961918,
		0.270642, -0.934299, -0.232031,
		60.016624, 54.637089, 57.007774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.233448, 55.169441, 57.684143>,  <59.827175, 55.291096, 57.170197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.233448, 55.169441, 57.684143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.336861, 54.930515, 57.380463>,  <60.398907, 54.787159, 57.198254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.336861, 54.930515, 57.380463>,  <60.233448, 55.169441, 57.684143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.336861, 54.930515, 57.380463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962547, 0.092871, 0.254711,
		-0.081634, -0.796615, 0.598949,
		0.258531, -0.597310, -0.759198,
		60.414421, 54.751324, 57.152702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.825562, 54.628304, 57.901165>,  <60.233448, 55.169441, 57.684143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.825562, 54.628304, 57.901165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.836525, 54.622963, 57.501350>,  <60.843105, 54.619759, 57.261463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.836525, 54.622963, 57.501350>,  <60.825562, 54.628304, 57.901165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.836525, 54.622963, 57.501350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997279, -0.068093, 0.028260,
		-0.068439, -0.997590, 0.011452,
		0.027412, -0.013354, -0.999535,
		60.844749, 54.618958, 57.201488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.326786, 54.080173, 57.640987>,  <60.825562, 54.628304, 57.901165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.326786, 54.080173, 57.640987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.284378, 54.338909, 57.338898>,  <61.258934, 54.494148, 57.157642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.284378, 54.338909, 57.338898>,  <61.326786, 54.080173, 57.640987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.284378, 54.338909, 57.338898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976023, -0.077504, -0.203401,
		-0.190099, -0.758681, -0.623109,
		-0.106023, 0.646835, -0.755224,
		61.252571, 54.532959, 57.112331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.576904, 53.590298, 58.169533>,  <61.326786, 54.080173, 57.640987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.576904, 53.590298, 58.169533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.626251, 53.987015, 58.182953>,  <61.655857, 54.225044, 58.191006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.626251, 53.987015, 58.182953>,  <61.576904, 53.590298, 58.169533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.626251, 53.987015, 58.182953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545277, -0.039500, -0.837324,
		-0.829128, 0.121589, -0.545676,
		0.123364, 0.991794, 0.033549,
		61.663261, 54.284554, 58.193016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.360214, 53.029911, 58.519089>,  <61.576904, 53.590298, 58.169533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.360214, 53.029911, 58.519089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.320793, 52.762543, 58.224197>,  <61.297142, 52.602123, 58.047264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.320793, 52.762543, 58.224197>,  <61.360214, 53.029911, 58.519089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.320793, 52.762543, 58.224197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811183, 0.375168, -0.448588,
		0.576429, -0.642234, 0.505238,
		-0.098549, -0.668419, -0.737227,
		61.291229, 52.562016, 58.003029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.026497, 52.706570, 58.307800>,  <61.360214, 53.029911, 58.519089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.026497, 52.706570, 58.307800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.814819, 52.581146, 57.992424>,  <61.687813, 52.505894, 57.803200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.814819, 52.581146, 57.992424>,  <62.026497, 52.706570, 58.307800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.814819, 52.581146, 57.992424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732274, 0.300631, -0.611061,
		0.428633, -0.900723, 0.070518,
		-0.529197, -0.313560, -0.788436,
		61.656059, 52.487080, 57.755894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.479954, 52.255184, 58.232788>,  <62.026497, 52.706570, 58.307800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.479954, 52.255184, 58.232788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.804359, 52.055485, 58.354774>,  <62.999004, 51.935665, 58.427967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.804359, 52.055485, 58.354774>,  <62.479954, 52.255184, 58.232788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.804359, 52.055485, 58.354774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583127, 0.731794, -0.352761,
		-0.047060, 0.463931, 0.884621,
		0.811017, -0.499245, 0.304969,
		63.047665, 51.905712, 58.446266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.042023, 52.664509, 58.646072>,  <62.479954, 52.255184, 58.232788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.042023, 52.664509, 58.646072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.202156, 52.366436, 58.432739>,  <63.298237, 52.187592, 58.304741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.202156, 52.366436, 58.432739>,  <63.042023, 52.664509, 58.646072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.202156, 52.366436, 58.432739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614148, 0.650135, -0.447378,
		0.680113, -0.148442, 0.717922,
		0.400336, -0.745178, -0.533330,
		63.322258, 52.142883, 58.272739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.711594, 52.844074, 58.490589>,  <63.042023, 52.664509, 58.646072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.711594, 52.844074, 58.490589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.644440, 52.542217, 58.236870>,  <63.604149, 52.361103, 58.084637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.644440, 52.542217, 58.236870>,  <63.711594, 52.844074, 58.490589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.644440, 52.542217, 58.236870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603779, 0.429914, -0.671285,
		0.779272, -0.495675, 0.383459,
		-0.167885, -0.754638, -0.634299,
		63.594074, 52.315826, 58.046581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.398224, 52.657345, 58.158581>,  <63.711594, 52.844074, 58.490589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.398224, 52.657345, 58.158581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.090721, 52.543114, 57.929688>,  <63.906219, 52.474575, 57.792351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.090721, 52.543114, 57.929688>,  <64.398224, 52.657345, 58.158581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.090721, 52.543114, 57.929688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505347, 0.277118, -0.817209,
		0.391954, -0.917415, -0.068721,
		-0.768763, -0.285580, -0.572230,
		63.860092, 52.457439, 57.758018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.858696, 53.163624, 57.793163>,  <64.398224, 52.657345, 58.158581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.858696, 53.163624, 57.793163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.002174, 53.534107, 57.839607>,  <65.088257, 53.756397, 57.867474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.002174, 53.534107, 57.839607>,  <64.858696, 53.163624, 57.793163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.002174, 53.534107, 57.839607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328319, -0.241618, 0.913141,
		0.873812, -0.289415, -0.390758,
		0.358691, 0.926207, 0.116108,
		65.109779, 53.811970, 57.874439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.544632, 53.133869, 58.170834>,  <64.858696, 53.163624, 57.793163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.544632, 53.133869, 58.170834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.367943, 53.487816, 58.230026>,  <65.261932, 53.700184, 58.265541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.367943, 53.487816, 58.230026>,  <65.544632, 53.133869, 58.170834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.367943, 53.487816, 58.230026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266452, -0.028115, 0.963438,
		0.856673, 0.464998, -0.223355,
		-0.441718, 0.884865, 0.147985,
		65.235428, 53.753277, 58.274422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.986572, 53.581623, 58.534119>,  <65.544632, 53.133869, 58.170834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.986572, 53.581623, 58.534119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.600670, 53.656952, 58.607643>,  <65.369125, 53.702148, 58.651756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.600670, 53.656952, 58.607643>,  <65.986572, 53.581623, 58.534119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.600670, 53.656952, 58.607643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166946, -0.101938, 0.980682,
		0.203422, 0.976802, 0.066905,
		-0.964753, 0.188323, 0.183809,
		65.311241, 53.713448, 58.662785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.580185, 53.910133, 58.629642>,  <65.986572, 53.581623, 58.534119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.580185, 53.910133, 58.629642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.656235, 54.282082, 58.503662>,  <66.701866, 54.505253, 58.428074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.656235, 54.282082, 58.503662>,  <66.580185, 53.910133, 58.629642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.656235, 54.282082, 58.503662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821889, 0.326210, 0.466996,
		0.536987, 0.170070, 0.826270,
		0.190116, 0.929873, -0.314949,
		66.713272, 54.561043, 58.409176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.567139, 54.482582, 59.169735>,  <66.580185, 53.910133, 58.629642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.567139, 54.482582, 59.169735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.450569, 54.656868, 58.829094>,  <66.380630, 54.761440, 58.624710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.450569, 54.656868, 58.829094>,  <66.567139, 54.482582, 59.169735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.450569, 54.656868, 58.829094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798473, 0.379459, 0.467387,
		0.526796, 0.816188, 0.237325,
		-0.291420, 0.435716, -0.851602,
		66.363144, 54.787582, 58.573612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.745918, 54.203163, 59.947353>,  <66.567139, 54.482582, 59.169735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.745918, 54.203163, 59.947353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.626137, 54.562660, 60.075470>,  <66.554268, 54.778358, 60.152340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.626137, 54.562660, 60.075470>,  <66.745918, 54.203163, 59.947353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.626137, 54.562660, 60.075470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864307, 0.397712, -0.307894,
		-0.404101, 0.184631, -0.895887,
		-0.299458, 0.898742, 0.320294,
		66.536301, 54.832283, 60.171558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.303375, 54.657391, 59.754391>,  <66.745918, 54.203163, 59.947353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.303375, 54.657391, 59.754391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.056938, 54.919067, 59.929871>,  <66.909073, 55.076073, 60.035160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.056938, 54.919067, 59.929871>,  <67.303375, 54.657391, 59.754391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.056938, 54.919067, 59.929871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676574, 0.724711, -0.130541,
		-0.403333, 0.216390, -0.889100,
		-0.616093, 0.654193, 0.438704,
		66.872108, 55.115326, 60.061481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.029900, 55.109806, 59.273109>,  <67.303375, 54.657391, 59.754391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.029900, 55.109806, 59.273109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.059464, 55.286736, 59.630630>,  <67.077202, 55.392895, 59.845142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.059464, 55.286736, 59.630630>,  <67.029900, 55.109806, 59.273109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.059464, 55.286736, 59.630630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580885, 0.709421, -0.399117,
		-0.810622, 0.548698, -0.204504,
		0.073915, 0.442326, 0.893803,
		67.081635, 55.419434, 59.898773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.887985, 55.912098, 59.212162>,  <67.029900, 55.109806, 59.273109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.887985, 55.912098, 59.212162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.115211, 55.818695, 59.527824>,  <67.251549, 55.762653, 59.717224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.115211, 55.818695, 59.527824>,  <66.887985, 55.912098, 59.212162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.115211, 55.818695, 59.527824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745715, 0.551698, -0.373549,
		-0.348151, 0.800689, 0.487533,
		0.568067, -0.233509, 0.789160,
		67.285629, 55.748642, 59.764572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.331711, 56.501862, 59.258717>,  <66.887985, 55.912098, 59.212162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.331711, 56.501862, 59.258717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.478592, 56.192108, 59.464821>,  <67.566719, 56.006256, 59.588482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.478592, 56.192108, 59.464821>,  <67.331711, 56.501862, 59.258717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.478592, 56.192108, 59.464821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928911, 0.333763, -0.160395,
		-0.047768, 0.537529, 0.841891,
		0.367209, -0.774380, 0.515260,
		67.588753, 55.959793, 59.619400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.765450, 56.666916, 59.922909>,  <67.331711, 56.501862, 59.258717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.765450, 56.666916, 59.922909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.906113, 56.336056, 59.747559>,  <67.990509, 56.137539, 59.642349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.906113, 56.336056, 59.747559>,  <67.765450, 56.666916, 59.922909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.906113, 56.336056, 59.747559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933499, 0.344933, 0.097983,
		0.070164, -0.443679, 0.893435,
		0.351648, -0.827146, -0.438376,
		68.011604, 56.087914, 59.616047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.904457, 57.237202, 60.092815>,  <67.765450, 56.666916, 59.922909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.904457, 57.237202, 60.092815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.201241, 57.127785, 59.847977>,  <68.379311, 57.062134, 59.701073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.201241, 57.127785, 59.847977>,  <67.904457, 57.237202, 60.092815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.201241, 57.127785, 59.847977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510525, 0.361256, -0.780294,
		0.434568, 0.891441, 0.128389,
		0.741967, -0.273545, -0.612093,
		68.423828, 57.045723, 59.664349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.707283, 57.404575, 60.807663>,  <67.904457, 57.237202, 60.092815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.707283, 57.404575, 60.807663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.982368, 57.321732, 61.085983>,  <68.147423, 57.272026, 61.252975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.982368, 57.321732, 61.085983>,  <67.707283, 57.404575, 60.807663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.982368, 57.321732, 61.085983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251770, 0.830916, 0.496175,
		-0.680919, -0.516413, 0.519295,
		0.687722, -0.207112, 0.695804,
		68.188683, 57.259598, 61.294724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.348541, 57.497066, 61.501389>,  <67.707283, 57.404575, 60.807663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.348541, 57.497066, 61.501389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.743889, 57.557720, 61.505707>,  <67.981102, 57.594112, 61.508297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.743889, 57.557720, 61.505707>,  <67.348541, 57.497066, 61.501389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.743889, 57.557720, 61.505707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142080, 0.896213, 0.420256,
		0.054051, -0.416905, 0.907341,
		0.988378, 0.151630, 0.010792,
		68.040405, 57.603210, 61.508945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.710144, 57.631157, 62.159569>,  <67.348541, 57.497066, 61.501389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.710144, 57.631157, 62.159569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.890587, 57.801971, 61.846100>,  <67.998856, 57.904461, 61.658020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.890587, 57.801971, 61.846100>,  <67.710144, 57.631157, 62.159569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.890587, 57.801971, 61.846100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150346, 0.901906, 0.404921,
		0.879713, -0.064843, 0.471063,
		0.451111, 0.427037, -0.783670,
		68.025917, 57.930084, 61.611000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.249855, 58.066551, 62.441078>,  <67.710144, 57.631157, 62.159569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.249855, 58.066551, 62.441078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.099831, 58.192776, 62.092422>,  <68.009819, 58.268509, 61.883228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.099831, 58.192776, 62.092422>,  <68.249855, 58.066551, 62.441078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.099831, 58.192776, 62.092422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239113, 0.875526, 0.419856,
		0.895630, 0.365892, -0.252924,
		-0.375063, 0.315558, -0.871637,
		67.987312, 58.287441, 61.830933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.605812, 58.381966, 61.869812>,  <68.249855, 58.066551, 62.441078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.605812, 58.381966, 61.869812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.916893, 58.205090, 61.691086>,  <69.103539, 58.098965, 61.583851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.916893, 58.205090, 61.691086>,  <68.605812, 58.381966, 61.869812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.916893, 58.205090, 61.691086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607433, -0.345578, -0.715263,
		0.161874, 0.827673, -0.537359,
		0.777703, -0.442192, -0.446815,
		69.150208, 58.072433, 61.557041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.730072, 58.508678, 61.139858>,  <68.605812, 58.381966, 61.869812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.730072, 58.508678, 61.139858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.866440, 58.137444, 61.199760>,  <68.948257, 57.914703, 61.235703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.866440, 58.137444, 61.199760>,  <68.730072, 58.508678, 61.139858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.866440, 58.137444, 61.199760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584684, -0.334057, -0.739291,
		0.736155, 0.164476, -0.656524,
		0.340912, -0.928092, 0.149751,
		68.968712, 57.859016, 61.244686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.093048, 58.274902, 60.521626>,  <68.730072, 58.508678, 61.139858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.093048, 58.274902, 60.521626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.931908, 57.981804, 60.741005>,  <68.835228, 57.805943, 60.872631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.931908, 57.981804, 60.741005>,  <69.093048, 58.274902, 60.521626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.931908, 57.981804, 60.741005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614225, -0.227820, -0.755530,
		0.678562, -0.641230, -0.358298,
		-0.402842, -0.732750, 0.548449,
		68.811058, 57.761978, 60.905540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.720055, 58.644398, 60.388248>,  <69.093048, 58.274902, 60.521626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.720055, 58.644398, 60.388248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.932442, 58.481667, 60.685585>,  <70.059875, 58.384029, 60.863987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.932442, 58.481667, 60.685585>,  <69.720055, 58.644398, 60.388248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.932442, 58.481667, 60.685585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674815, -0.327575, -0.661302,
		0.512534, 0.852754, 0.100597,
		0.530974, -0.406824, 0.743344,
		70.091736, 58.359619, 60.908588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.426796, 58.882008, 60.215755>,  <69.720055, 58.644398, 60.388248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.426796, 58.882008, 60.215755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.424202, 58.527496, 60.401001>,  <70.422646, 58.314789, 60.512150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.424202, 58.527496, 60.401001>,  <70.426796, 58.882008, 60.215755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.424202, 58.527496, 60.401001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752699, -0.309223, -0.581227,
		0.658333, 0.344816, 0.669104,
		-0.006486, -0.886275, 0.463114,
		70.422256, 58.261616, 60.539936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.102463, 58.740894, 60.359829>,  <70.426796, 58.882008, 60.215755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.102463, 58.740894, 60.359829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.909615, 58.390640, 60.348305>,  <70.793907, 58.180489, 60.341393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.909615, 58.390640, 60.348305>,  <71.102463, 58.740894, 60.359829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.909615, 58.390640, 60.348305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699797, -0.365106, -0.613988,
		0.527110, -0.316174, 0.788789,
		-0.482119, -0.875632, -0.028807,
		70.764977, 58.127949, 60.339664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.614525, 58.312122, 60.563850>,  <71.102463, 58.740894, 60.359829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.614525, 58.312122, 60.563850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.330376, 58.151970, 60.332314>,  <71.159882, 58.055878, 60.193390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.330376, 58.151970, 60.332314>,  <71.614525, 58.312122, 60.563850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.330376, 58.151970, 60.332314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703659, -0.421624, -0.571924,
		-0.015067, -0.813590, 0.581244,
		-0.710378, -0.400380, -0.578842,
		71.117264, 58.031857, 60.158661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.698685, 57.572971, 60.380192>,  <71.614525, 58.312122, 60.563850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.698685, 57.572971, 60.380192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.492371, 57.731133, 60.076187>,  <71.368584, 57.826031, 59.893784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.492371, 57.731133, 60.076187>,  <71.698685, 57.572971, 60.380192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.492371, 57.731133, 60.076187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789465, -0.125170, -0.600898,
		-0.332729, -0.909938, -0.247598,
		-0.515788, 0.395406, -0.760011,
		71.337631, 57.849754, 59.848183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.314629, 57.768055, 60.137215>,  <71.698685, 57.572971, 60.380192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.314629, 57.768055, 60.137215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.586082, 57.485764, 60.218605>,  <72.748955, 57.316387, 60.267441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.586082, 57.485764, 60.218605>,  <72.314629, 57.768055, 60.137215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.586082, 57.485764, 60.218605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682256, -0.708304, -0.181197,
		0.271998, -0.015856, -0.962167,
		0.678634, -0.705729, 0.203475,
		72.789673, 57.274044, 60.279648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
