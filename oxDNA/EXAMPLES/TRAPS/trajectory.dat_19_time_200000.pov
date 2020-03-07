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
	<36.045456, 53.373707, 50.494507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277916, 53.161842, 50.247372>,  <36.417393, 53.034721, 50.099091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277916, 53.161842, 50.247372>,  <36.045456, 53.373707, 50.494507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277916, 53.161842, 50.247372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726832, -0.003658, 0.686806,
		-0.366036, -0.848200, 0.382850,
		0.581149, -0.529664, -0.617838,
		36.452259, 53.002945, 50.062019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525539, 53.231453, 50.911068>,  <36.045456, 53.373707, 50.494507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.525539, 53.231453, 50.911068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.657757, 53.042225, 50.584400>,  <36.737087, 52.928688, 50.388401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.657757, 53.042225, 50.584400>,  <36.525539, 53.231453, 50.911068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657757, 53.042225, 50.584400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876501, -0.167007, 0.451502,
		-0.349980, -0.865053, 0.359441,
		0.330544, -0.473067, -0.816669,
		36.756920, 52.900307, 50.339401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630608, 52.574741, 51.158291>,  <36.525539, 53.231453, 50.911068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630608, 52.574741, 51.158291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857449, 52.670380, 50.843018>,  <36.993553, 52.727764, 50.653854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857449, 52.670380, 50.843018>,  <36.630608, 52.574741, 51.158291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857449, 52.670380, 50.843018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820469, -0.247957, 0.515119,
		-0.072272, -0.938803, -0.336787,
		0.567104, 0.239095, -0.788179,
		37.027580, 52.742107, 50.606564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966774, 52.019318, 51.233112>,  <36.630608, 52.574741, 51.158291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966774, 52.019318, 51.233112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174778, 52.312569, 51.057793>,  <37.299580, 52.488522, 50.952599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174778, 52.312569, 51.057793>,  <36.966774, 52.019318, 51.233112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174778, 52.312569, 51.057793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753247, -0.151642, 0.640018,
		0.402754, -0.662964, -0.631085,
		0.520009, 0.733132, -0.438301,
		37.330780, 52.532509, 50.926304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475586, 51.723022, 51.336815>,  <36.966774, 52.019318, 51.233112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475586, 51.723022, 51.336815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603584, 52.090672, 51.244896>,  <37.680386, 52.311260, 51.189747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603584, 52.090672, 51.244896>,  <37.475586, 51.723022, 51.336815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603584, 52.090672, 51.244896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787800, -0.123409, 0.603441,
		0.526280, -0.374133, -0.763579,
		0.320000, 0.919127, -0.229794,
		37.699585, 52.366409, 51.175957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153755, 51.658863, 51.397739>,  <37.475586, 51.723022, 51.336815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153755, 51.658863, 51.397739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.095455, 52.054569, 51.393517>,  <38.060474, 52.291992, 51.390984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.095455, 52.054569, 51.393517>,  <38.153755, 51.658863, 51.397739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095455, 52.054569, 51.393517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811933, 0.125704, 0.570056,
		0.565264, 0.074512, -0.821538,
		-0.145746, 0.989266, -0.010558,
		38.051731, 52.351349, 51.390350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668255, 52.006611, 51.168514>,  <38.153755, 51.658863, 51.397739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668255, 52.006611, 51.168514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503616, 52.263222, 51.427444>,  <38.404835, 52.417187, 51.582802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503616, 52.263222, 51.427444>,  <38.668255, 52.006611, 51.168514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503616, 52.263222, 51.427444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881342, 0.099367, 0.461911,
		0.232006, 0.760637, -0.606305,
		-0.411594, 0.641528, 0.647327,
		38.380138, 52.455681, 51.621643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237808, 52.192234, 50.764404>,  <38.668255, 52.006611, 51.168514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237808, 52.192234, 50.764404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376400, 52.251240, 50.393848>,  <39.459557, 52.286644, 50.171516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376400, 52.251240, 50.393848>,  <39.237808, 52.192234, 50.764404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376400, 52.251240, 50.393848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873535, -0.410667, 0.261321,
		-0.341887, -0.899773, -0.271149,
		0.346481, 0.147516, -0.926385,
		39.480343, 52.295494, 50.115932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460762, 51.641033, 50.620174>,  <39.237808, 52.192234, 50.764404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.460762, 51.641033, 50.620174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676178, 51.867386, 50.370453>,  <39.805428, 52.003197, 50.220619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676178, 51.867386, 50.370453>,  <39.460762, 51.641033, 50.620174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676178, 51.867386, 50.370453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829459, -0.486378, 0.274653,
		-0.148224, -0.665743, -0.731312,
		0.538542, 0.565883, -0.624299,
		39.837742, 52.037151, 50.183163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012424, 51.306923, 50.714649>,  <39.460762, 51.641033, 50.620174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012424, 51.306923, 50.714649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148193, 51.591343, 50.468330>,  <40.229652, 51.761993, 50.320538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148193, 51.591343, 50.468330>,  <40.012424, 51.306923, 50.714649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148193, 51.591343, 50.468330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906903, -0.421121, 0.013615,
		-0.249645, -0.563090, -0.787786,
		0.339419, 0.711046, -0.615798,
		40.250019, 51.804657, 50.283592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.400124, 50.906666, 50.220913>,  <40.012424, 51.306923, 50.714649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.400124, 50.906666, 50.220913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.522953, 51.282063, 50.284088>,  <40.596649, 51.507301, 50.321995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.522953, 51.282063, 50.284088>,  <40.400124, 50.906666, 50.220913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.522953, 51.282063, 50.284088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939016, -0.325774, 0.110091,
		0.154772, 0.114501, -0.981293,
		0.307074, 0.938489, 0.157939,
		40.615074, 51.563610, 50.331470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.011883, 50.551655, 49.928623>,  <40.400124, 50.906666, 50.220913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.011883, 50.551655, 49.928623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.188244, 50.193569, 49.954556>,  <41.294060, 49.978718, 49.970116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.188244, 50.193569, 49.954556>,  <41.011883, 50.551655, 49.928623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.188244, 50.193569, 49.954556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726467, 0.398349, 0.559967,
		-0.527114, -0.199793, 0.825974,
		0.440904, -0.895210, 0.064833,
		41.320515, 49.925007, 49.974007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.146225, 50.461510, 50.641270>,  <41.011883, 50.551655, 49.928623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.146225, 50.461510, 50.641270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.384369, 50.217033, 50.432659>,  <41.527256, 50.070347, 50.307495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.384369, 50.217033, 50.432659>,  <41.146225, 50.461510, 50.641270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.384369, 50.217033, 50.432659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772815, 0.258060, 0.579795,
		-0.219783, -0.748228, 0.625979,
		0.595359, -0.611195, -0.521525,
		41.562977, 50.033676, 50.276203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.592682, 50.106304, 51.208210>,  <41.146225, 50.461510, 50.641270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.592682, 50.106304, 51.208210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.722321, 50.069557, 50.831589>,  <41.800102, 50.047508, 50.605618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.722321, 50.069557, 50.831589>,  <41.592682, 50.106304, 51.208210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.722321, 50.069557, 50.831589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944335, 0.090879, 0.316183,
		0.056521, -0.991615, 0.116207,
		0.324093, -0.091868, -0.941554,
		41.819550, 50.041996, 50.549122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.006283, 49.523815, 51.120098>,  <41.592682, 50.106304, 51.208210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.006283, 49.523815, 51.120098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.111465, 49.817928, 50.870232>,  <42.174576, 49.994396, 50.720310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.111465, 49.817928, 50.870232>,  <42.006283, 49.523815, 51.120098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.111465, 49.817928, 50.870232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959881, -0.134038, 0.246295,
		0.097368, -0.664373, -0.741032,
		0.262959, 0.735284, -0.624668,
		42.190353, 50.038513, 50.682831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.423195, 50.193581, 51.334343>,  <42.006283, 49.523815, 51.120098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.423195, 50.193581, 51.334343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.426350, 50.331913, 51.709648>,  <42.428242, 50.414913, 51.934830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.426350, 50.331913, 51.709648>,  <42.423195, 50.193581, 51.334343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.426350, 50.331913, 51.709648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910401, -0.390622, 0.136325,
		0.413652, 0.853120, -0.317927,
		0.007887, 0.345832, 0.938263,
		42.428715, 50.435661, 51.991127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.138443, 50.252228, 51.544395>,  <42.423195, 50.193581, 51.334343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.138443, 50.252228, 51.544395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.940723, 50.243332, 51.891998>,  <42.822090, 50.237995, 52.100559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.940723, 50.243332, 51.891998>,  <43.138443, 50.252228, 51.544395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.940723, 50.243332, 51.891998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764398, -0.487168, 0.422332,
		0.413959, 0.873025, 0.257808,
		-0.494302, -0.022240, 0.869006,
		42.792431, 50.236660, 52.152699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.169151, 49.518959, 51.655663>,  <43.138443, 50.252228, 51.544395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.169151, 49.518959, 51.655663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.564846, 49.493786, 51.708500>,  <43.802261, 49.478683, 51.740200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.564846, 49.493786, 51.708500>,  <43.169151, 49.518959, 51.655663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.564846, 49.493786, 51.708500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140263, -0.150886, 0.978550,
		-0.041648, -0.986546, -0.158089,
		0.989238, -0.062928, 0.132092,
		43.861618, 49.474907, 51.748127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.139759, 48.846817, 52.168941>,  <43.169151, 49.518959, 51.655663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.139759, 48.846817, 52.168941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.456741, 49.089413, 52.143078>,  <43.646931, 49.234970, 52.127560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.456741, 49.089413, 52.143078>,  <43.139759, 48.846817, 52.168941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.456741, 49.089413, 52.143078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057087, 0.031796, 0.997863,
		0.607250, -0.794455, -0.009426,
		0.792457, 0.606490, -0.064662,
		43.694477, 49.271358, 52.123680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.614388, 48.599396, 52.584133>,  <43.139759, 48.846817, 52.168941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.614388, 48.599396, 52.584133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.613441, 48.996746, 52.538170>,  <43.612873, 49.235157, 52.510590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.613441, 48.996746, 52.538170>,  <43.614388, 48.599396, 52.584133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.613441, 48.996746, 52.538170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134679, 0.113548, 0.984362,
		0.990887, 0.017809, 0.133518,
		-0.002369, 0.993373, -0.114912,
		43.612732, 49.294758, 52.503696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.202648, 49.027172, 52.978615>,  <43.614388, 48.599396, 52.584133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.202648, 49.027172, 52.978615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.886211, 49.268246, 52.936749>,  <43.696350, 49.412888, 52.911629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.886211, 49.268246, 52.936749>,  <44.202648, 49.027172, 52.978615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.886211, 49.268246, 52.936749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013641, 0.188445, 0.981989,
		0.611549, 0.775413, -0.157298,
		-0.791089, 0.602680, -0.104666,
		43.648884, 49.449051, 52.905350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.328377, 49.585690, 53.341667>,  <44.202648, 49.027172, 52.978615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.328377, 49.585690, 53.341667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.929756, 49.574654, 53.310387>,  <43.690582, 49.568031, 53.291618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.929756, 49.574654, 53.310387>,  <44.328377, 49.585690, 53.341667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.929756, 49.574654, 53.310387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078807, 0.021583, 0.996656,
		-0.025812, 0.999386, -0.023683,
		-0.996556, -0.027592, -0.078201,
		43.630791, 49.566376, 53.286926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.440479, 50.334743, 53.162609>,  <44.328377, 49.585690, 53.341667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.440479, 50.334743, 53.162609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.365963, 50.108334, 53.483833>,  <44.321251, 49.972488, 53.676567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.365963, 50.108334, 53.483833>,  <44.440479, 50.334743, 53.162609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.365963, 50.108334, 53.483833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982049, -0.082686, 0.169537,
		-0.029560, 0.820230, 0.571269,
		-0.186295, -0.566026, 0.803062,
		44.310074, 49.938526, 53.724751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.661572, 50.034576, 52.617401>,  <44.440479, 50.334743, 53.162609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.661572, 50.034576, 52.617401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.941044, 50.060539, 52.332409>,  <45.108727, 50.076118, 52.161415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.941044, 50.060539, 52.332409>,  <44.661572, 50.034576, 52.617401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.941044, 50.060539, 52.332409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568092, 0.555003, 0.607653,
		0.434871, -0.829312, 0.350897,
		0.698683, 0.064909, -0.712480,
		45.150650, 50.080013, 52.118664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.316399, 49.967903, 52.993061>,  <44.661572, 50.034576, 52.617401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.316399, 49.967903, 52.993061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.374901, 50.140343, 52.636913>,  <45.410000, 50.243809, 52.423225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.374901, 50.140343, 52.636913>,  <45.316399, 49.967903, 52.993061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.374901, 50.140343, 52.636913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531734, 0.724712, 0.438236,
		0.834188, -0.537534, -0.123240,
		0.146253, 0.431102, -0.890371,
		45.418777, 50.269672, 52.369801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.970463, 50.357262, 53.000645>,  <45.316399, 49.967903, 52.993061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.970463, 50.357262, 53.000645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.826244, 50.452469, 52.639900>,  <45.739712, 50.509594, 52.423454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.826244, 50.452469, 52.639900>,  <45.970463, 50.357262, 53.000645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.826244, 50.452469, 52.639900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645576, 0.761559, -0.057099,
		0.673230, -0.602807, -0.428235,
		-0.360546, 0.238017, -0.901861,
		45.718079, 50.523872, 52.369343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.487202, 50.280411, 52.424900>,  <45.970463, 50.357262, 53.000645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.487202, 50.280411, 52.424900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.219719, 50.568317, 52.350307>,  <46.059231, 50.741062, 52.305553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.219719, 50.568317, 52.350307>,  <46.487202, 50.280411, 52.424900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.219719, 50.568317, 52.350307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739208, 0.616579, -0.270927,
		-0.080025, -0.319017, -0.944365,
		-0.668706, 0.719763, -0.186478,
		46.019108, 50.784245, 52.294365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.402477, 50.576382, 51.685921>,  <46.487202, 50.280411, 52.424900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.402477, 50.576382, 51.685921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.294514, 50.875008, 51.929161>,  <46.229736, 51.054184, 52.075108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.294514, 50.875008, 51.929161>,  <46.402477, 50.576382, 51.685921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.294514, 50.875008, 51.929161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869511, 0.460281, -0.179144,
		-0.413641, 0.480401, -0.773379,
		-0.269911, 0.746563, 0.608105,
		46.213539, 51.098976, 52.111591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.548168, 51.146530, 51.258018>,  <46.402477, 50.576382, 51.685921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.548168, 51.146530, 51.258018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.541195, 51.227203, 51.649738>,  <46.537010, 51.275608, 51.884769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.541195, 51.227203, 51.649738>,  <46.548168, 51.146530, 51.258018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.541195, 51.227203, 51.649738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824063, 0.557573, -0.100160,
		-0.566229, 0.805256, -0.175917,
		-0.017432, 0.201681, 0.979296,
		46.535965, 51.287708, 51.943527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.828854, 51.905144, 51.304802>,  <46.548168, 51.146530, 51.258018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.828854, 51.905144, 51.304802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.856686, 51.682098, 51.635674>,  <46.873386, 51.548271, 51.834198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.856686, 51.682098, 51.635674>,  <46.828854, 51.905144, 51.304802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.856686, 51.682098, 51.635674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826770, 0.496232, 0.264964,
		-0.558220, 0.665452, 0.495545,
		0.069585, -0.557609, 0.827182,
		46.877560, 51.514816, 51.883827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.892159, 52.335896, 51.922371>,  <46.828854, 51.905144, 51.304802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.892159, 52.335896, 51.922371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.082245, 51.985012, 51.949738>,  <47.196297, 51.774483, 51.966156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.082245, 51.985012, 51.949738>,  <46.892159, 52.335896, 51.922371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.082245, 51.985012, 51.949738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870363, 0.480055, 0.109609,
		-0.128995, 0.007461, 0.991617,
		0.475213, -0.877207, 0.068418,
		47.224808, 51.721851, 51.970264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.368118, 52.294056, 52.552963>,  <46.892159, 52.335896, 51.922371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.368118, 52.294056, 52.552963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.571239, 52.114693, 52.258736>,  <47.693111, 52.007072, 52.082199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.571239, 52.114693, 52.258736>,  <47.368118, 52.294056, 52.552963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.571239, 52.114693, 52.258736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742230, 0.661165, 0.109345,
		0.437303, -0.601489, 0.668563,
		0.507800, -0.448410, -0.735573,
		47.723579, 51.980171, 52.038063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.111851, 52.227051, 52.799030>,  <47.368118, 52.294056, 52.552963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.111851, 52.227051, 52.799030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.092468, 52.195583, 52.400742>,  <48.080841, 52.176704, 52.161770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.092468, 52.195583, 52.400742>,  <48.111851, 52.227051, 52.799030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.092468, 52.195583, 52.400742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787680, 0.609979, -0.086521,
		0.614176, -0.788503, 0.032410,
		-0.048453, -0.078668, -0.995723,
		48.077934, 52.171982, 52.102024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.733551, 51.997925, 52.556206>,  <48.111851, 52.227051, 52.799030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.733551, 51.997925, 52.556206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.556862, 52.225151, 52.278450>,  <48.450848, 52.361488, 52.111797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.556862, 52.225151, 52.278450>,  <48.733551, 51.997925, 52.556206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.556862, 52.225151, 52.278450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794577, 0.607100, -0.008790,
		0.416573, -0.555631, -0.719542,
		-0.441719, 0.568070, -0.694393,
		48.424347, 52.395573, 52.070133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.267174, 52.236916, 52.206066>,  <48.733551, 51.997925, 52.556206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.267174, 52.236916, 52.206066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.962128, 52.486786, 52.138897>,  <48.779099, 52.636707, 52.098595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.962128, 52.486786, 52.138897>,  <49.267174, 52.236916, 52.206066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.962128, 52.486786, 52.138897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629671, 0.776343, 0.028389,
		0.148098, -0.084084, -0.985392,
		-0.762615, 0.624677, -0.167920,
		48.733345, 52.674191, 52.088520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.465862, 52.680676, 51.610661>,  <49.267174, 52.236916, 52.206066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.465862, 52.680676, 51.610661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.219563, 52.868618, 51.863670>,  <49.071785, 52.981384, 52.015476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.219563, 52.868618, 51.863670>,  <49.465862, 52.680676, 51.610661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.219563, 52.868618, 51.863670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743837, 0.611436, 0.269912,
		-0.259931, 0.636695, -0.725986,
		-0.615746, 0.469857, 0.632528,
		49.034840, 53.009575, 52.053429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.551289, 53.389618, 51.469975>,  <49.465862, 52.680676, 51.610661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.551289, 53.389618, 51.469975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.456898, 53.259705, 51.836327>,  <49.400265, 53.181755, 52.056137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.456898, 53.259705, 51.836327>,  <49.551289, 53.389618, 51.469975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.456898, 53.259705, 51.836327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838684, 0.407989, 0.360768,
		-0.490840, 0.853264, 0.176117,
		-0.235977, -0.324786, 0.915876,
		49.386105, 53.162270, 52.111088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.573830, 53.878460, 52.085129>,  <49.551289, 53.389618, 51.469975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.573830, 53.878460, 52.085129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.635002, 53.501080, 52.202778>,  <49.671707, 53.274651, 52.273365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.635002, 53.501080, 52.202778>,  <49.573830, 53.878460, 52.085129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.635002, 53.501080, 52.202778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863895, 0.272157, 0.423812,
		-0.479894, 0.189274, 0.856666,
		0.152931, -0.943454, 0.294119,
		49.680882, 53.218044, 52.291012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.924587, 53.936543, 52.664188>,  <49.573830, 53.878460, 52.085129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.924587, 53.936543, 52.664188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.010574, 53.568420, 52.533447>,  <50.062164, 53.347549, 52.455002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.010574, 53.568420, 52.533447>,  <49.924587, 53.936543, 52.664188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.010574, 53.568420, 52.533447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933793, 0.095661, 0.344791,
		-0.286045, -0.379330, 0.879936,
		0.214965, -0.920303, -0.326852,
		50.075066, 53.292328, 52.435390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.473595, 53.632824, 53.031693>,  <49.924587, 53.936543, 52.664188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.473595, 53.632824, 53.031693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.482887, 53.373875, 52.726967>,  <50.488461, 53.218506, 52.544132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.482887, 53.373875, 52.726967>,  <50.473595, 53.632824, 53.031693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.482887, 53.373875, 52.726967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980264, -0.134894, 0.144518,
		-0.196323, -0.750137, 0.631468,
		0.023227, -0.647378, -0.761815,
		50.489857, 53.179661, 52.498421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.823082, 52.887875, 53.187515>,  <50.473595, 53.632824, 53.031693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.823082, 52.887875, 53.187515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.882034, 53.021973, 52.815300>,  <50.917404, 53.102432, 52.591972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.882034, 53.021973, 52.815300>,  <50.823082, 52.887875, 53.187515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.882034, 53.021973, 52.815300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971290, -0.226693, 0.072161,
		-0.186754, -0.914452, -0.359027,
		0.147376, 0.335242, -0.930534,
		50.926247, 53.122547, 52.536140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.270363, 53.488598, 53.169636>,  <50.823082, 52.887875, 53.187515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.270363, 53.488598, 53.169636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.159241, 53.824368, 53.356480>,  <51.092567, 54.025829, 53.468586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.159241, 53.824368, 53.356480>,  <51.270363, 53.488598, 53.169636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.159241, 53.824368, 53.356480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957990, 0.278156, 0.069893,
		-0.071259, 0.466900, -0.881434,
		-0.277809, 0.839424, 0.467107,
		51.075897, 54.076195, 53.496613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.468567, 54.163120, 52.833725>,  <51.270363, 53.488598, 53.169636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.468567, 54.163120, 52.833725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.451832, 54.157875, 53.233341>,  <51.441792, 54.154728, 53.473110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.451832, 54.157875, 53.233341>,  <51.468567, 54.163120, 52.833725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.451832, 54.157875, 53.233341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972637, 0.228177, 0.043725,
		-0.228531, 0.973531, 0.003204,
		-0.041837, -0.013109, 0.999038,
		51.439281, 54.153942, 53.533054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.786613, 54.817574, 53.199905>,  <51.468567, 54.163120, 52.833725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.786613, 54.817574, 53.199905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.779064, 54.518280, 53.465172>,  <51.774536, 54.338703, 53.624332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.779064, 54.518280, 53.465172>,  <51.786613, 54.817574, 53.199905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.779064, 54.518280, 53.465172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960100, 0.171541, 0.220866,
		-0.279020, 0.640870, 0.715146,
		-0.018869, -0.748238, 0.663162,
		51.773403, 54.293808, 53.664120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.926025, 55.064259, 53.819626>,  <51.786613, 54.817574, 53.199905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.926025, 55.064259, 53.819626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.057571, 54.689468, 53.866829>,  <52.136497, 54.464596, 53.895149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.057571, 54.689468, 53.866829>,  <51.926025, 55.064259, 53.819626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.057571, 54.689468, 53.866829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793941, 0.341974, 0.502705,
		-0.511378, -0.071630, 0.856366,
		0.328864, -0.936975, 0.118008,
		52.156231, 54.408375, 53.902233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.642235, 54.837292, 53.797512>,  <51.926025, 55.064259, 53.819626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.642235, 54.837292, 53.797512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.733566, 55.192657, 53.956802>,  <52.788364, 55.405876, 54.052376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.733566, 55.192657, 53.956802>,  <52.642235, 54.837292, 53.797512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.733566, 55.192657, 53.956802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156668, -0.437225, 0.885602,
		0.960897, -0.139818, -0.239016,
		0.228327, 0.888418, 0.398223,
		52.802063, 55.459183, 54.076267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.242233, 54.754623, 54.149212>,  <52.642235, 54.837292, 53.797512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.242233, 54.754623, 54.149212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.041969, 55.012100, 54.380730>,  <52.921810, 55.166588, 54.519638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.041969, 55.012100, 54.380730>,  <53.242233, 54.754623, 54.149212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.041969, 55.012100, 54.380730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099318, -0.621493, 0.777099,
		0.859930, 0.446544, 0.247224,
		-0.500657, 0.643696, 0.578790,
		52.891773, 55.205208, 54.554367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.352638, 54.456367, 54.712986>,  <53.242233, 54.754623, 54.149212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.352638, 54.456367, 54.712986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.079639, 54.727516, 54.822296>,  <52.915840, 54.890205, 54.887882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.079639, 54.727516, 54.822296>,  <53.352638, 54.456367, 54.712986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.079639, 54.727516, 54.822296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183418, -0.520788, 0.833749,
		0.707497, 0.518909, 0.479772,
		-0.682500, 0.677874, 0.273279,
		52.874889, 54.930878, 54.904282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.894920, 54.908741, 54.472824>,  <53.352638, 54.456367, 54.712986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.894920, 54.908741, 54.472824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.044952, 55.091213, 54.150032>,  <54.134972, 55.200695, 53.956356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.044952, 55.091213, 54.150032>,  <53.894920, 54.908741, 54.472824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.044952, 55.091213, 54.150032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891547, -0.415948, 0.179256,
		-0.253890, -0.786696, -0.562716,
		0.375080, 0.456177, -0.806981,
		54.157478, 55.228065, 53.907936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.216805, 54.357014, 53.909206>,  <53.894920, 54.908741, 54.472824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.216805, 54.357014, 53.909206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.394836, 54.713158, 53.947506>,  <54.501656, 54.926846, 53.970486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.394836, 54.713158, 53.947506>,  <54.216805, 54.357014, 53.909206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.394836, 54.713158, 53.947506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829672, -0.450235, 0.330050,
		0.336973, -0.067455, -0.939095,
		0.445077, 0.890358, 0.095752,
		54.528358, 54.980267, 53.976231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.002735, 54.361561, 53.634842>,  <54.216805, 54.357014, 53.909206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.002735, 54.361561, 53.634842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.956200, 54.615211, 53.940613>,  <54.928276, 54.767403, 54.124077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.956200, 54.615211, 53.940613>,  <55.002735, 54.361561, 53.634842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.956200, 54.615211, 53.940613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843900, -0.342737, 0.412751,
		0.523733, 0.693123, -0.495261,
		-0.116343, 0.634123, 0.764429,
		54.921295, 54.805447, 54.169941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.622498, 54.710518, 53.724133>,  <55.002735, 54.361561, 53.634842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.622498, 54.710518, 53.724133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.452370, 54.664860, 54.083260>,  <55.350292, 54.637463, 54.298737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.452370, 54.664860, 54.083260>,  <55.622498, 54.710518, 53.724133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.452370, 54.664860, 54.083260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851088, -0.387842, 0.353876,
		0.307816, 0.914630, 0.262109,
		-0.425323, -0.114149, 0.897814,
		55.324772, 54.630615, 54.352604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.114517, 54.984680, 54.105270>,  <55.622498, 54.710518, 53.724133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.114517, 54.984680, 54.105270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.876686, 54.751198, 54.326454>,  <55.733990, 54.611107, 54.459164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.876686, 54.751198, 54.326454>,  <56.114517, 54.984680, 54.105270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.876686, 54.751198, 54.326454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800049, -0.361063, 0.479120,
		-0.080013, 0.727267, 0.681675,
		-0.594575, -0.583709, 0.552959,
		55.698315, 54.576084, 54.492340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.096333, 54.993557, 54.947170>,  <56.114517, 54.984680, 54.105270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.096333, 54.993557, 54.947170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.028542, 54.624352, 54.809002>,  <55.987865, 54.402828, 54.726101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.028542, 54.624352, 54.809002>,  <56.096333, 54.993557, 54.947170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.028542, 54.624352, 54.809002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759510, -0.345674, 0.551047,
		-0.628029, -0.168956, 0.759627,
		-0.169481, -0.923018, -0.345417,
		55.977695, 54.347446, 54.705376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.992630, 54.479103, 55.484413>,  <56.096333, 54.993557, 54.947170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.992630, 54.479103, 55.484413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.185349, 54.380215, 55.148140>,  <56.300980, 54.320881, 54.946373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.185349, 54.380215, 55.148140>,  <55.992630, 54.479103, 55.484413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.185349, 54.380215, 55.148140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793899, -0.282970, 0.538193,
		-0.370943, -0.926720, 0.059937,
		0.481794, -0.247223, -0.840688,
		56.329887, 54.306049, 54.895935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.371040, 53.752659, 55.350552>,  <55.992630, 54.479103, 55.484413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.371040, 53.752659, 55.350552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.588432, 54.015015, 55.141006>,  <56.718868, 54.172428, 55.015282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.588432, 54.015015, 55.141006>,  <56.371040, 53.752659, 55.350552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.588432, 54.015015, 55.141006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798006, -0.210107, 0.564837,
		0.260405, -0.725024, -0.637596,
		0.543484, 0.655892, -0.523861,
		56.751476, 54.211781, 54.983849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.938774, 53.462215, 55.075321>,  <56.371040, 53.752659, 55.350552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.938774, 53.462215, 55.075321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.039024, 53.849121, 55.091240>,  <57.099174, 54.081264, 55.100792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.039024, 53.849121, 55.091240>,  <56.938774, 53.462215, 55.075321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.039024, 53.849121, 55.091240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916975, -0.250372, 0.310597,
		0.310394, -0.041350, -0.949708,
		0.250624, 0.967266, 0.039797,
		57.114212, 54.139301, 55.103180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.570415, 53.600796, 54.715633>,  <56.938774, 53.462215, 55.075321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.570415, 53.600796, 54.715633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.522583, 53.902157, 54.974270>,  <57.493885, 54.082973, 55.129452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.522583, 53.902157, 54.974270>,  <57.570415, 53.600796, 54.715633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.522583, 53.902157, 54.974270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937373, -0.128933, 0.323586,
		0.327158, 0.644792, -0.690805,
		-0.119578, 0.753406, 0.646592,
		57.486710, 54.128178, 55.168247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.101337, 54.072712, 54.602890>,  <57.570415, 53.600796, 54.715633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.101337, 54.072712, 54.602890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.955536, 54.038998, 54.973843>,  <57.868053, 54.018768, 55.196415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.955536, 54.038998, 54.973843>,  <58.101337, 54.072712, 54.602890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.955536, 54.038998, 54.973843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924973, -0.147752, 0.350134,
		0.107511, 0.985426, 0.131820,
		-0.364508, -0.084287, 0.927378,
		57.846184, 54.013710, 55.252056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.442493, 54.547256, 55.136154>,  <58.101337, 54.072712, 54.602890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.442493, 54.547256, 55.136154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.327850, 54.203735, 55.306007>,  <58.259064, 53.997623, 55.407917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.327850, 54.203735, 55.306007>,  <58.442493, 54.547256, 55.136154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.327850, 54.203735, 55.306007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947072, -0.187077, 0.260876,
		-0.144603, 0.476925, 0.866967,
		-0.286608, -0.858804, 0.424631,
		58.241867, 53.946095, 55.433395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.577259, 54.550312, 55.855202>,  <58.442493, 54.547256, 55.136154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.577259, 54.550312, 55.855202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.604362, 54.186588, 55.690979>,  <58.620625, 53.968353, 55.592445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.604362, 54.186588, 55.690979>,  <58.577259, 54.550312, 55.855202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.604362, 54.186588, 55.690979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958561, -0.054796, 0.279569,
		-0.276713, -0.412492, 0.867917,
		0.067762, -0.909312, -0.410561,
		58.624691, 53.913795, 55.567810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.886005, 54.035400, 56.282803>,  <58.577259, 54.550312, 55.855202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.886005, 54.035400, 56.282803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.975182, 53.955082, 55.901230>,  <59.028687, 53.906891, 55.672287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.975182, 53.955082, 55.901230>,  <58.886005, 54.035400, 56.282803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.975182, 53.955082, 55.901230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966748, -0.080226, 0.242820,
		-0.125287, -0.976343, 0.176232,
		0.222937, -0.200794, -0.953929,
		59.042061, 53.894844, 55.615051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.138824, 53.376842, 56.273876>,  <58.886005, 54.035400, 56.282803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.138824, 53.376842, 56.273876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.272781, 53.586945, 55.960968>,  <59.353157, 53.713005, 55.773224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.272781, 53.586945, 55.960968>,  <59.138824, 53.376842, 56.273876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.272781, 53.586945, 55.960968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942192, -0.196318, 0.271540,
		-0.010947, -0.827990, -0.560636,
		0.334895, 0.525254, -0.782275,
		59.373249, 53.744522, 55.726284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.676754, 53.024902, 55.993866>,  <59.138824, 53.376842, 56.273876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.676754, 53.024902, 55.993866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.712799, 53.416004, 55.918098>,  <59.734425, 53.650665, 55.872639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.712799, 53.416004, 55.918098>,  <59.676754, 53.024902, 55.993866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.712799, 53.416004, 55.918098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961962, -0.036195, 0.270775,
		0.257894, -0.206616, -0.943822,
		0.090108, 0.977752, -0.189422,
		59.739830, 53.709332, 55.861271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.315895, 53.183418, 55.543449>,  <59.676754, 53.024902, 55.993866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.315895, 53.183418, 55.543449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.206482, 53.469971, 55.800194>,  <60.140835, 53.641903, 55.954239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.206482, 53.469971, 55.800194>,  <60.315895, 53.183418, 55.543449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.206482, 53.469971, 55.800194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926843, 0.017880, 0.375024,
		0.257183, 0.697483, -0.668861,
		-0.273532, 0.716378, 0.641858,
		60.124424, 53.684883, 55.992752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.643784, 53.784908, 55.374771>,  <60.315895, 53.183418, 55.543449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.643784, 53.784908, 55.374771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.579163, 53.812542, 55.768547>,  <60.540390, 53.829121, 56.004814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.579163, 53.812542, 55.768547>,  <60.643784, 53.784908, 55.374771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.579163, 53.812542, 55.768547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976586, 0.154790, 0.149401,
		-0.142061, 0.985529, -0.092469,
		-0.161552, 0.069080, 0.984443,
		60.530697, 53.833267, 56.063881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.838524, 54.462936, 55.735569>,  <60.643784, 53.784908, 55.374771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.838524, 54.462936, 55.735569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.860344, 54.172569, 56.009811>,  <60.873436, 53.998348, 56.174358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.860344, 54.172569, 56.009811>,  <60.838524, 54.462936, 55.735569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.860344, 54.172569, 56.009811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960866, 0.224925, 0.161698,
		-0.271591, 0.649959, 0.709783,
		0.054551, -0.725922, 0.685610,
		60.876709, 53.954792, 56.215496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.934959, 54.601128, 56.548046>,  <60.838524, 54.462936, 55.735569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.934959, 54.601128, 56.548046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.113617, 54.268955, 56.414841>,  <61.220814, 54.069653, 56.334919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.113617, 54.268955, 56.414841>,  <60.934959, 54.601128, 56.548046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.113617, 54.268955, 56.414841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882769, 0.348421, 0.315152,
		-0.145683, -0.434733, 0.888697,
		0.446648, -0.830427, -0.333010,
		61.247612, 54.019829, 56.314938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.511608, 54.339066, 57.018932>,  <60.934959, 54.601128, 56.548046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.511608, 54.339066, 57.018932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.561188, 54.300686, 56.623878>,  <61.590935, 54.277657, 56.386845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.561188, 54.300686, 56.623878>,  <61.511608, 54.339066, 57.018932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.561188, 54.300686, 56.623878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822741, 0.566367, 0.048229,
		0.554738, -0.818549, 0.149140,
		0.123946, -0.095949, -0.987639,
		61.598373, 54.271900, 56.327587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.373463, 54.727680, 57.616104>,  <61.511608, 54.339066, 57.018932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.373463, 54.727680, 57.616104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.152260, 54.979683, 57.398010>,  <61.019539, 55.130886, 57.267155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.152260, 54.979683, 57.398010>,  <61.373463, 54.727680, 57.616104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.152260, 54.979683, 57.398010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605483, -0.145655, -0.782417,
		-0.572343, -0.762808, -0.300911,
		-0.553004, 0.630007, -0.545231,
		60.986359, 55.168686, 57.234440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.682995, 54.802410, 58.279549>,  <61.373463, 54.727680, 57.616104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.682995, 54.802410, 58.279549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.984825, 54.550781, 58.354248>,  <62.165924, 54.399803, 58.399067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.984825, 54.550781, 58.354248>,  <61.682995, 54.802410, 58.279549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.984825, 54.550781, 58.354248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642446, -0.766186, 0.014919,
		0.133699, -0.131233, -0.982294,
		0.754578, -0.629076, 0.186748,
		62.211197, 54.362057, 58.410271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.194603, 55.102978, 58.810284>,  <61.682995, 54.802410, 58.279549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.194603, 55.102978, 58.810284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.184586, 55.427269, 58.576332>,  <62.178574, 55.621845, 58.435959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.184586, 55.427269, 58.576332>,  <62.194603, 55.102978, 58.810284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.184586, 55.427269, 58.576332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987650, -0.110581, -0.110995,
		-0.154664, 0.574880, 0.803487,
		-0.025042, 0.810731, -0.584883,
		62.177074, 55.670486, 58.400867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.391796, 54.728550, 59.411976>,  <62.194603, 55.102978, 58.810284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.391796, 54.728550, 59.411976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.772530, 54.750328, 59.291275>,  <63.000969, 54.763393, 59.218857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.772530, 54.750328, 59.291275>,  <62.391796, 54.728550, 59.411976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.772530, 54.750328, 59.291275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178888, -0.897868, 0.402284,
		-0.249031, -0.436886, -0.864358,
		0.951831, 0.054443, -0.301750,
		63.058079, 54.766663, 59.200748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.788555, 55.105976, 59.978325>,  <62.391796, 54.728550, 59.411976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.788555, 55.105976, 59.978325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.007019, 55.152340, 59.646477>,  <63.138096, 55.180157, 59.447369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.007019, 55.152340, 59.646477>,  <62.788555, 55.105976, 59.978325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.007019, 55.152340, 59.646477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823479, -0.255886, 0.506364,
		-0.153599, -0.959734, -0.235200,
		0.546159, 0.115905, -0.829624,
		63.170868, 55.187111, 59.397591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.332760, 54.537617, 59.816803>,  <62.788555, 55.105976, 59.978325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.332760, 54.537617, 59.816803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.467674, 54.864006, 59.629005>,  <63.548622, 55.059841, 59.516327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.467674, 54.864006, 59.629005>,  <63.332760, 54.537617, 59.816803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.467674, 54.864006, 59.629005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926154, -0.198207, 0.320863,
		0.168760, -0.543042, -0.822572,
		0.337282, 0.815977, -0.469491,
		63.568859, 55.108799, 59.488159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.792099, 54.438339, 59.321480>,  <63.332760, 54.537617, 59.816803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.792099, 54.438339, 59.321480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.889290, 54.800537, 59.460640>,  <63.947605, 55.017857, 59.544136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.889290, 54.800537, 59.460640>,  <63.792099, 54.438339, 59.321480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.889290, 54.800537, 59.460640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899282, -0.344725, 0.269176,
		0.363670, 0.247461, -0.898057,
		0.242973, 0.905498, 0.347904,
		63.962181, 55.072186, 59.565010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.519264, 54.629402, 59.142818>,  <63.792099, 54.438339, 59.321480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.519264, 54.629402, 59.142818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.448662, 54.857063, 59.464043>,  <64.406303, 54.993660, 59.656776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.448662, 54.857063, 59.464043>,  <64.519264, 54.629402, 59.142818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.448662, 54.857063, 59.464043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969179, -0.041960, 0.242758,
		0.171863, 0.821158, -0.544208,
		-0.176508, 0.569156, 0.803061,
		64.395706, 55.027809, 59.704960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.243668, 55.014027, 59.283680>,  <64.519264, 54.629402, 59.142818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.243668, 55.014027, 59.283680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.020409, 54.785313, 59.524185>,  <64.886452, 54.648083, 59.668488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.020409, 54.785313, 59.524185>,  <65.243668, 55.014027, 59.283680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.020409, 54.785313, 59.524185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773706, -0.096892, 0.626092,
		-0.299735, 0.814659, 0.496478,
		-0.558156, -0.571789, 0.601265,
		64.852959, 54.613777, 59.704563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.125389, 55.302624, 59.947849>,  <65.243668, 55.014027, 59.283680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.125389, 55.302624, 59.947849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.138451, 54.903423, 59.926231>,  <65.146286, 54.663902, 59.913261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.138451, 54.903423, 59.926231>,  <65.125389, 55.302624, 59.947849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.138451, 54.903423, 59.926231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835766, -0.002386, 0.549080,
		-0.548113, -0.063097, 0.834021,
		0.032655, -0.998004, -0.054042,
		65.148247, 54.604023, 59.910019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.367439, 55.084217, 60.600109>,  <65.125389, 55.302624, 59.947849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.367439, 55.084217, 60.600109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.467690, 54.813084, 60.323639>,  <65.527840, 54.650402, 60.157757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.467690, 54.813084, 60.323639>,  <65.367439, 55.084217, 60.600109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.467690, 54.813084, 60.323639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902556, -0.094611, 0.420049,
		-0.350118, -0.729098, 0.588076,
		0.250618, -0.677838, -0.691177,
		65.542877, 54.609734, 60.116287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.442207, 54.371571, 60.892548>,  <65.367439, 55.084217, 60.600109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.442207, 54.371571, 60.892548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.673187, 54.462349, 60.578850>,  <65.811775, 54.516815, 60.390629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.673187, 54.462349, 60.578850>,  <65.442207, 54.371571, 60.892548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.673187, 54.462349, 60.578850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797682, 0.047825, 0.601180,
		0.173943, -0.972732, -0.153416,
		0.577450, 0.226949, -0.784249,
		65.846420, 54.530434, 60.343575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.049011, 53.880959, 60.954494>,  <65.442207, 54.371571, 60.892548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.049011, 53.880959, 60.954494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.084885, 54.230881, 60.764053>,  <66.106407, 54.440834, 60.649788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.084885, 54.230881, 60.764053>,  <66.049011, 53.880959, 60.954494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.084885, 54.230881, 60.764053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823691, 0.203583, 0.529233,
		0.559902, -0.439623, -0.702312,
		0.089684, 0.874806, -0.476100,
		66.111794, 54.493324, 60.621223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.627007, 53.935944, 60.452274>,  <66.049011, 53.880959, 60.954494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.627007, 53.935944, 60.452274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.494904, 54.260967, 60.644386>,  <66.415642, 54.455982, 60.759655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.494904, 54.260967, 60.644386>,  <66.627007, 53.935944, 60.452274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.494904, 54.260967, 60.644386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882722, 0.085694, 0.462015,
		0.334258, 0.576542, -0.745568,
		-0.330262, 0.812561, 0.480282,
		66.395828, 54.504734, 60.788471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.667130, 54.584873, 60.196251>,  <66.627007, 53.935944, 60.452274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.667130, 54.584873, 60.196251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.696701, 54.532738, 60.591736>,  <66.714447, 54.501457, 60.829025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.696701, 54.532738, 60.591736>,  <66.667130, 54.584873, 60.196251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.696701, 54.532738, 60.591736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995764, 0.063998, -0.066025,
		-0.054670, 0.989402, 0.134514,
		0.073933, -0.130335, 0.988710,
		66.718880, 54.493637, 60.888348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.960587, 55.172180, 60.570045>,  <66.667130, 54.584873, 60.196251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.960587, 55.172180, 60.570045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.025543, 54.803772, 60.711670>,  <67.064514, 54.582729, 60.796642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.025543, 54.803772, 60.711670>,  <66.960587, 55.172180, 60.570045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.025543, 54.803772, 60.711670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967212, 0.077563, -0.241836,
		0.195274, 0.381718, 0.903415,
		0.162385, -0.921018, 0.354057,
		67.074257, 54.527466, 60.817886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.572227, 55.154270, 61.116745>,  <66.960587, 55.172180, 60.570045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.572227, 55.154270, 61.116745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.527992, 54.822086, 60.898346>,  <67.501450, 54.622776, 60.767307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.527992, 54.822086, 60.898346>,  <67.572227, 55.154270, 61.116745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.527992, 54.822086, 60.898346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963006, 0.046304, -0.265472,
		0.245745, -0.555154, 0.794615,
		-0.110584, -0.830457, -0.545996,
		67.494820, 54.572948, 60.734547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.522720, 55.945553, 61.287804>,  <67.572227, 55.154270, 61.116745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.522720, 55.945553, 61.287804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.185471, 55.825684, 61.466393>,  <66.983124, 55.753761, 61.573544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.185471, 55.825684, 61.466393>,  <67.522720, 55.945553, 61.287804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.185471, 55.825684, 61.466393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441688, -0.859516, 0.257184,
		0.306676, 0.414038, 0.857042,
		-0.843126, -0.299673, 0.446469,
		66.932533, 55.735783, 61.600334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.932472, 56.273746, 61.873211>,  <67.522720, 55.945553, 61.287804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.932472, 56.273746, 61.873211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.936058, 56.421143, 61.501373>,  <67.938210, 56.509579, 61.278271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.936058, 56.421143, 61.501373>,  <67.932472, 56.273746, 61.873211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.936058, 56.421143, 61.501373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832326, 0.512485, 0.211166,
		0.554213, -0.775614, -0.302111,
		0.008956, 0.368486, -0.929590,
		67.938744, 56.531689, 61.222496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.609024, 56.225967, 61.589828>,  <67.932472, 56.273746, 61.873211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.609024, 56.225967, 61.589828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.451675, 56.545425, 61.407654>,  <68.357262, 56.737099, 61.298351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.451675, 56.545425, 61.407654>,  <68.609024, 56.225967, 61.589828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.451675, 56.545425, 61.407654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891023, 0.453258, 0.025219,
		0.226569, -0.395880, -0.889913,
		-0.393377, 0.798646, -0.455432,
		68.333664, 56.785019, 61.271023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.843361, 56.355778, 60.820572>,  <68.609024, 56.225967, 61.589828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.843361, 56.355778, 60.820572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.745720, 56.708138, 60.982773>,  <68.687134, 56.919556, 61.080093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.745720, 56.708138, 60.982773>,  <68.843361, 56.355778, 60.820572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.745720, 56.708138, 60.982773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896562, 0.364357, -0.251834,
		-0.369588, 0.302083, -0.878721,
		-0.244093, 0.880903, 0.405498,
		68.672493, 56.972408, 61.104424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.794647, 56.943897, 60.301128>,  <68.843361, 56.355778, 60.820572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.794647, 56.943897, 60.301128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.909569, 57.016106, 60.677399>,  <68.978523, 57.059429, 60.903160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.909569, 57.016106, 60.677399>,  <68.794647, 56.943897, 60.301128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.909569, 57.016106, 60.677399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939972, 0.135683, -0.313119,
		-0.184158, 0.974168, -0.130702,
		0.287296, 0.180520, 0.940677,
		68.995758, 57.070263, 60.959602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.126816, 57.418381, 60.119484>,  <68.794647, 56.943897, 60.301128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.126816, 57.418381, 60.119484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.263931, 57.251938, 60.456375>,  <69.346199, 57.152073, 60.658508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.263931, 57.251938, 60.456375>,  <69.126816, 57.418381, 60.119484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.263931, 57.251938, 60.456375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937865, 0.100191, -0.332222,
		0.053858, 0.903777, 0.424601,
		0.342796, -0.416112, 0.842224,
		69.366768, 57.127106, 60.709042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.798996, 57.837189, 60.281639>,  <69.126816, 57.418381, 60.119484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.798996, 57.837189, 60.281639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.797905, 57.457569, 60.407684>,  <69.797249, 57.229797, 60.483311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.797905, 57.457569, 60.407684>,  <69.798996, 57.837189, 60.281639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.797905, 57.457569, 60.407684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999087, 0.010850, 0.041324,
		-0.042637, 0.314938, 0.948154,
		-0.002727, -0.949050, 0.315113,
		69.797089, 57.172855, 60.502216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.240112, 57.909748, 60.845123>,  <69.798996, 57.837189, 60.281639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.240112, 57.909748, 60.845123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.233414, 57.541458, 60.689178>,  <70.229393, 57.320484, 60.595612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.233414, 57.541458, 60.689178>,  <70.240112, 57.909748, 60.845123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.233414, 57.541458, 60.689178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915363, -0.170996, 0.364514,
		-0.402280, -0.350757, 0.845659,
		-0.016749, -0.920722, -0.389859,
		70.228386, 57.265240, 60.572220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.232964, 57.241219, 61.272610>,  <70.240112, 57.909748, 60.845123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.232964, 57.241219, 61.272610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.414223, 57.219650, 60.916687>,  <70.522980, 57.206711, 60.703133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.414223, 57.219650, 60.916687>,  <70.232964, 57.241219, 61.272610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.414223, 57.219650, 60.916687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846966, -0.285301, 0.448611,
		-0.278051, -0.956920, -0.083615,
		0.453140, -0.053918, -0.889807,
		70.550163, 57.203476, 60.649746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.615013, 56.529957, 61.171368>,  <70.232964, 57.241219, 61.272610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.615013, 56.529957, 61.171368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.785538, 56.830681, 60.970154>,  <70.887848, 57.011116, 60.849426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.785538, 56.830681, 60.970154>,  <70.615013, 56.529957, 61.171368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.785538, 56.830681, 60.970154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901059, -0.303919, 0.309396,
		0.079725, -0.585163, -0.806987,
		0.426306, 0.751809, -0.503037,
		70.913429, 57.056225, 60.819244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.220161, 56.326115, 60.820042>,  <70.615013, 56.529957, 61.171368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.220161, 56.326115, 60.820042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.287437, 56.714912, 60.885689>,  <71.327805, 56.948193, 60.925076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.287437, 56.714912, 60.885689>,  <71.220161, 56.326115, 60.820042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.287437, 56.714912, 60.885689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910442, -0.216998, 0.352147,
		0.377898, 0.090188, -0.921444,
		0.168192, 0.971997, 0.164114,
		71.337898, 57.006512, 60.934921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.785866, 56.580704, 60.344978>,  <71.220161, 56.326115, 60.820042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.785866, 56.580704, 60.344978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.794884, 56.759583, 60.702637>,  <71.800293, 56.866909, 60.917233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.794884, 56.759583, 60.702637>,  <71.785866, 56.580704, 60.344978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.794884, 56.759583, 60.702637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986527, -0.154915, 0.052597,
		0.162039, 0.880917, -0.444666,
		0.022552, 0.447198, 0.894151,
		71.801651, 56.893742, 60.970882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.281654, 57.129097, 60.496044>,  <71.785866, 56.580704, 60.344978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.281654, 57.129097, 60.496044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.239433, 56.931843, 60.841454>,  <72.214104, 56.813492, 61.048698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.239433, 56.931843, 60.841454>,  <72.281654, 57.129097, 60.496044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.239433, 56.931843, 60.841454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993661, -0.018512, 0.110884,
		-0.038695, 0.869757, 0.491960,
		-0.105550, -0.493132, 0.863528,
		72.207771, 56.783905, 61.100513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.080093, 57.128315, 60.370106>,  <72.281654, 57.129097, 60.496044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.080093, 57.128315, 60.370106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.832130, 57.259544, 60.084984>,  <72.683357, 57.338280, 59.913910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.832130, 57.259544, 60.084984>,  <73.080093, 57.128315, 60.370106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.832130, 57.259544, 60.084984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782936, -0.319113, 0.534020,
		-0.052270, 0.889122, 0.454676,
		-0.619902, 0.328069, -0.712806,
		72.646156, 57.357964, 59.871143>
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
