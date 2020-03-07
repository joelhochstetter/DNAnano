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
	<35.820770, 52.612991, 49.600540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804356, 52.986225, 49.743469>,  <35.794506, 53.210163, 49.829227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804356, 52.986225, 49.743469>,  <35.820770, 52.612991, 49.600540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804356, 52.986225, 49.743469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554109, -0.276335, 0.785240,
		0.831432, 0.230219, -0.505688,
		-0.041038, 0.933080, 0.357320,
		35.792046, 53.266148, 49.850666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375305, 52.934734, 49.663280>,  <35.820770, 52.612991, 49.600540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.375305, 52.934734, 49.663280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126923, 53.058983, 49.951149>,  <35.977894, 53.133533, 50.123871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126923, 53.058983, 49.951149>,  <36.375305, 52.934734, 49.663280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126923, 53.058983, 49.951149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561345, -0.464582, 0.684876,
		0.547084, 0.829262, 0.114119,
		-0.620960, 0.310625, 0.719668,
		35.940636, 53.152172, 50.167049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664391, 53.300400, 50.151638>,  <36.375305, 52.934734, 49.663280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664391, 53.300400, 50.151638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366344, 53.082848, 50.306038>,  <36.187515, 52.952316, 50.398678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366344, 53.082848, 50.306038>,  <36.664391, 53.300400, 50.151638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366344, 53.082848, 50.306038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597546, -0.287354, 0.748576,
		-0.296216, 0.788430, 0.539105,
		-0.745114, -0.543881, 0.386004,
		36.142811, 52.919682, 50.421841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305653, 52.776234, 50.077095>,  <36.664391, 53.300400, 50.151638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305653, 52.776234, 50.077095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.606953, 52.620022, 49.865398>,  <37.787735, 52.526295, 49.738380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.606953, 52.620022, 49.865398>,  <37.305653, 52.776234, 50.077095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.606953, 52.620022, 49.865398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657273, -0.416915, -0.627833,
		0.024542, 0.820771, -0.570729,
		0.753253, -0.390533, -0.529239,
		37.832928, 52.502861, 49.706627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369720, 53.182064, 50.713264>,  <37.305653, 52.776234, 50.077095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369720, 53.182064, 50.713264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536480, 52.818523, 50.718735>,  <37.636536, 52.600399, 50.722015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536480, 52.818523, 50.718735>,  <37.369720, 53.182064, 50.713264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536480, 52.818523, 50.718735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736006, 0.328707, -0.591817,
		0.533378, 0.256792, 0.805956,
		0.416897, -0.908851, 0.013675,
		37.661549, 52.545868, 50.722836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007519, 53.113239, 51.007153>,  <37.369720, 53.182064, 50.713264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007519, 53.113239, 51.007153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.346951, 53.048203, 50.805767>,  <38.550610, 53.009182, 50.684937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.346951, 53.048203, 50.805767>,  <38.007519, 53.113239, 51.007153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346951, 53.048203, 50.805767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527923, 0.197683, 0.825966,
		-0.034769, -0.966688, 0.253586,
		0.848580, -0.162592, -0.503463,
		38.601524, 52.999424, 50.654728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640419, 52.589817, 51.298325>,  <38.007519, 53.113239, 51.007153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640419, 52.589817, 51.298325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.797237, 52.875866, 51.066841>,  <38.891327, 53.047493, 50.927952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.797237, 52.875866, 51.066841>,  <38.640419, 52.589817, 51.298325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797237, 52.875866, 51.066841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638772, 0.241091, 0.730648,
		0.662022, -0.656111, -0.362279,
		0.392043, 0.715118, -0.578713,
		38.914852, 53.090401, 50.893227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400101, 52.469810, 51.175938>,  <38.640419, 52.589817, 51.298325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400101, 52.469810, 51.175938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.300175, 52.857117, 51.173157>,  <39.240219, 53.089500, 51.171490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.300175, 52.857117, 51.173157>,  <39.400101, 52.469810, 51.175938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300175, 52.857117, 51.173157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530733, 0.142925, 0.835401,
		0.809887, 0.205003, -0.549597,
		-0.249811, 0.968270, -0.006951,
		39.225231, 53.147598, 51.171070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931267, 52.690697, 51.714130>,  <39.400101, 52.469810, 51.175938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.931267, 52.690697, 51.714130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939533, 52.400330, 51.439144>,  <39.944492, 52.226109, 51.274151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939533, 52.400330, 51.439144>,  <39.931267, 52.690697, 51.714130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939533, 52.400330, 51.439144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982611, 0.141654, -0.120036,
		0.184519, -0.673035, 0.716223,
		0.020667, -0.725918, -0.687470,
		39.945732, 52.182552, 51.232903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391457, 52.155373, 51.934052>,  <39.931267, 52.690697, 51.714130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391457, 52.155373, 51.934052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.356586, 52.208542, 51.539139>,  <40.335663, 52.240444, 51.302189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.356586, 52.208542, 51.539139>,  <40.391457, 52.155373, 51.934052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.356586, 52.208542, 51.539139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995052, -0.035787, -0.092683,
		-0.047651, -0.990480, -0.129149,
		-0.087179, 0.132926, -0.987284,
		40.330433, 52.248421, 51.242954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.822342, 52.692200, 51.523926>,  <40.391457, 52.155373, 51.934052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.822342, 52.692200, 51.523926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.882156, 53.028404, 51.315628>,  <40.918045, 53.230129, 51.190651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.882156, 53.028404, 51.315628>,  <40.822342, 52.692200, 51.523926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.882156, 53.028404, 51.315628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014030, 0.524809, 0.851104,
		0.988657, -0.134577, 0.066686,
		0.149536, 0.840514, -0.520744,
		40.927017, 53.280560, 51.159405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.187771, 52.872494, 50.816246>,  <40.822342, 52.692200, 51.523926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.187771, 52.872494, 50.816246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.522491, 53.028378, 50.970070>,  <41.723324, 53.121906, 51.062363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.522491, 53.028378, 50.970070>,  <41.187771, 52.872494, 50.816246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.522491, 53.028378, 50.970070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250610, 0.351848, -0.901885,
		-0.486777, 0.851077, 0.196765,
		0.836805, 0.389706, 0.384560,
		41.773533, 53.145290, 51.085438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085316, 53.488678, 50.491573>,  <41.187771, 52.872494, 50.816246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.085316, 53.488678, 50.491573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.439369, 53.362656, 50.628555>,  <41.651802, 53.287041, 50.710743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.439369, 53.362656, 50.628555>,  <41.085316, 53.488678, 50.491573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.439369, 53.362656, 50.628555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381893, 0.071332, -0.921450,
		0.265882, 0.946388, 0.183457,
		0.885135, -0.315058, 0.342453,
		41.704910, 53.268139, 50.731293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.539536, 53.972137, 50.318184>,  <41.085316, 53.488678, 50.491573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.539536, 53.972137, 50.318184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.721878, 53.616325, 50.330372>,  <41.831284, 53.402836, 50.337685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.721878, 53.616325, 50.330372>,  <41.539536, 53.972137, 50.318184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.721878, 53.616325, 50.330372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283970, 0.112906, -0.952162,
		0.843540, 0.442700, 0.304069,
		0.455853, -0.889533, 0.030473,
		41.858635, 53.349464, 50.339512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.937725, 54.417210, 50.718151>,  <41.539536, 53.972137, 50.318184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.937725, 54.417210, 50.718151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.644623, 54.646996, 50.864056>,  <41.468761, 54.784866, 50.951599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.644623, 54.646996, 50.864056>,  <41.937725, 54.417210, 50.718151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.644623, 54.646996, 50.864056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460046, 0.813178, -0.356511,
		-0.501421, -0.093429, -0.860144,
		-0.732759, 0.574468, 0.364762,
		41.424797, 54.819336, 50.973484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.359241, 54.808910, 50.330837>,  <41.937725, 54.417210, 50.718151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.359241, 54.808910, 50.330837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.322838, 54.525013, 50.051414>,  <42.300995, 54.354675, 49.883762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.322838, 54.525013, 50.051414>,  <42.359241, 54.808910, 50.330837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.322838, 54.525013, 50.051414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834814, -0.436827, 0.335062,
		-0.542957, -0.552673, 0.632259,
		-0.091008, -0.709743, -0.698557,
		42.295536, 54.312092, 49.841846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.872364, 54.286369, 50.696304>,  <42.359241, 54.808910, 50.330837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.872364, 54.286369, 50.696304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.767170, 54.155304, 50.333321>,  <42.704052, 54.076664, 50.115532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.767170, 54.155304, 50.333321>,  <42.872364, 54.286369, 50.696304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.767170, 54.155304, 50.333321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877640, -0.471910, -0.083952,
		-0.400730, -0.818498, 0.411676,
		-0.262989, -0.327662, -0.907455,
		42.688274, 54.057007, 50.061085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.076332, 53.601379, 50.626240>,  <42.872364, 54.286369, 50.696304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.076332, 53.601379, 50.626240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.071255, 53.763695, 50.260689>,  <43.068211, 53.861084, 50.041359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.071255, 53.763695, 50.260689>,  <43.076332, 53.601379, 50.626240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.071255, 53.763695, 50.260689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914137, -0.365662, -0.175059,
		-0.405208, -0.837630, -0.366310,
		-0.012689, 0.405793, -0.913877,
		43.067448, 53.885433, 49.986526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.526680, 53.843014, 51.062496>,  <43.076332, 53.601379, 50.626240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.526680, 53.843014, 51.062496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.837029, 53.747303, 51.295998>,  <44.023239, 53.689877, 51.436096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.837029, 53.747303, 51.295998>,  <43.526680, 53.843014, 51.062496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.837029, 53.747303, 51.295998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627586, 0.198199, -0.752897,
		0.064455, 0.950506, 0.303946,
		0.775875, -0.239280, 0.583749,
		44.069790, 53.675518, 51.471123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.971329, 54.365765, 50.850040>,  <43.526680, 53.843014, 51.062496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.971329, 54.365765, 50.850040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.191753, 54.076763, 51.017048>,  <44.324009, 53.903362, 51.117252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.191753, 54.076763, 51.017048>,  <43.971329, 54.365765, 50.850040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.191753, 54.076763, 51.017048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753429, 0.215715, -0.621137,
		0.358707, 0.656857, 0.663226,
		0.551066, -0.722499, 0.417517,
		44.357075, 53.860012, 51.142303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.532089, 54.681793, 51.196342>,  <43.971329, 54.365765, 50.850040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.532089, 54.681793, 51.196342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.614010, 54.323227, 51.039116>,  <44.663162, 54.108086, 50.944782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.614010, 54.323227, 51.039116>,  <44.532089, 54.681793, 51.196342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.614010, 54.323227, 51.039116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691291, 0.416764, -0.590275,
		0.692945, -0.150830, 0.705037,
		0.204803, -0.896414, -0.393062,
		44.675449, 54.054302, 50.921196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.306282, 54.634361, 51.121624>,  <44.532089, 54.681793, 51.196342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.306282, 54.634361, 51.121624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.098064, 54.413105, 50.861450>,  <44.973133, 54.280354, 50.705345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.098064, 54.413105, 50.861450>,  <45.306282, 54.634361, 51.121624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.098064, 54.413105, 50.861450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494152, 0.426076, -0.757808,
		0.696307, -0.715890, 0.051540,
		-0.520548, -0.553136, -0.650439,
		44.941898, 54.247166, 50.666317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.820286, 54.220787, 50.906132>,  <45.306282, 54.634361, 51.121624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.820286, 54.220787, 50.906132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.500484, 54.075218, 51.097275>,  <45.308605, 53.987877, 51.211960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.500484, 54.075218, 51.097275>,  <45.820286, 54.220787, 50.906132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.500484, 54.075218, 51.097275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351081, 0.362391, 0.863374,
		-0.487378, 0.858039, -0.161965,
		-0.799503, -0.363927, 0.477862,
		45.260635, 53.966042, 51.240635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.134113, 54.383652, 51.573421>,  <45.820286, 54.220787, 50.906132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.134113, 54.383652, 51.573421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.902657, 54.099854, 51.412529>,  <45.763783, 53.929573, 51.315994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.902657, 54.099854, 51.412529>,  <46.134113, 54.383652, 51.573421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.902657, 54.099854, 51.412529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108173, -0.555586, 0.824392,
		-0.808377, 0.433517, 0.398233,
		-0.578641, -0.709498, -0.402228,
		45.729065, 53.887005, 51.291859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.791950, 54.023483, 52.080452>,  <46.134113, 54.383652, 51.573421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.791950, 54.023483, 52.080452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.846771, 53.747208, 51.796432>,  <45.879665, 53.581444, 51.626022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.846771, 53.747208, 51.796432>,  <45.791950, 54.023483, 52.080452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.846771, 53.747208, 51.796432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388199, -0.622025, 0.679990,
		-0.911328, -0.368835, 0.182872,
		0.137053, -0.690685, -0.710050,
		45.887886, 53.540001, 51.583416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.537479, 54.090935, 52.244865>,  <45.791950, 54.023483, 52.080452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.537479, 54.090935, 52.244865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.871494, 54.023781, 52.454449>,  <47.071903, 53.983486, 52.580196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.871494, 54.023781, 52.454449>,  <46.537479, 54.090935, 52.244865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.871494, 54.023781, 52.454449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357439, 0.889505, -0.284637,
		-0.418273, 0.424964, 0.802778,
		0.835036, -0.167888, 0.523954,
		47.122005, 53.973415, 52.611633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.748650, 54.774513, 52.416313>,  <46.537479, 54.090935, 52.244865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.748650, 54.774513, 52.416313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.100487, 54.588600, 52.456909>,  <47.311588, 54.477051, 52.481266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.100487, 54.588600, 52.456909>,  <46.748650, 54.774513, 52.416313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.100487, 54.588600, 52.456909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471383, 0.880268, -0.054098,
		-0.064199, 0.095427, 0.993364,
		0.879589, -0.464782, 0.101495,
		47.364365, 54.449165, 52.487358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.107643, 55.032166, 52.984398>,  <46.748650, 54.774513, 52.416313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.107643, 55.032166, 52.984398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.362522, 54.892567, 52.709534>,  <47.515450, 54.808807, 52.544617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.362522, 54.892567, 52.709534>,  <47.107643, 55.032166, 52.984398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.362522, 54.892567, 52.709534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537093, 0.840517, 0.071156,
		0.552734, -0.414407, 0.723016,
		0.637195, -0.348996, -0.687157,
		47.553680, 54.787868, 52.503387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.867474, 55.132698, 53.219650>,  <47.107643, 55.032166, 52.984398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.867474, 55.132698, 53.219650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.829144, 55.120052, 52.821693>,  <47.806145, 55.112465, 52.582920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.829144, 55.120052, 52.821693>,  <47.867474, 55.132698, 53.219650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.829144, 55.120052, 52.821693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634576, 0.768114, -0.085524,
		0.766897, -0.639533, -0.053543,
		-0.095823, -0.031612, -0.994896,
		47.800396, 55.110569, 52.523224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.502037, 55.126682, 52.845665>,  <47.867474, 55.132698, 53.219650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.502037, 55.126682, 52.845665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.299969, 55.270905, 52.532028>,  <48.178726, 55.357437, 52.343845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.299969, 55.270905, 52.532028>,  <48.502037, 55.126682, 52.845665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.299969, 55.270905, 52.532028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790971, 0.556850, -0.253542,
		0.345207, -0.748277, -0.566492,
		-0.505171, 0.360554, -0.784094,
		48.148418, 55.379070, 52.296799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.917931, 54.985474, 52.248909>,  <48.502037, 55.126682, 52.845665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.917931, 54.985474, 52.248909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.689644, 55.313866, 52.255493>,  <48.552673, 55.510902, 52.259445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.689644, 55.313866, 52.255493>,  <48.917931, 54.985474, 52.248909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.689644, 55.313866, 52.255493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778892, 0.547588, -0.305736,
		-0.260019, -0.161667, -0.951974,
		-0.570717, 0.820982, 0.016462,
		48.518429, 55.560162, 52.260433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.990803, 55.284180, 51.632778>,  <48.917931, 54.985474, 52.248909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.990803, 55.284180, 51.632778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.895020, 55.552582, 51.913467>,  <48.837551, 55.713623, 52.081879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.895020, 55.552582, 51.913467>,  <48.990803, 55.284180, 51.632778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.895020, 55.552582, 51.913467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844747, 0.500263, -0.190106,
		-0.478607, 0.547255, -0.686620,
		-0.239454, 0.671006, 0.701721,
		48.823185, 55.753883, 52.123985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.968273, 55.977390, 51.295895>,  <48.990803, 55.284180, 51.632778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.968273, 55.977390, 51.295895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.058666, 56.016453, 51.683586>,  <49.112900, 56.039890, 51.916199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.058666, 56.016453, 51.683586>,  <48.968273, 55.977390, 51.295895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.058666, 56.016453, 51.683586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826591, 0.507240, -0.243834,
		-0.515442, 0.856253, 0.033904,
		0.225981, 0.097658, 0.969224,
		49.126461, 56.045750, 51.974354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.855309, 56.580391, 51.694073>,  <48.968273, 55.977390, 51.295895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.855309, 56.580391, 51.694073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.200352, 56.417542, 51.814178>,  <49.407379, 56.319832, 51.886242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.200352, 56.417542, 51.814178>,  <48.855309, 56.580391, 51.694073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.200352, 56.417542, 51.814178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505794, 0.704480, -0.497875,
		-0.008837, 0.581345, 0.813609,
		0.862609, -0.407119, 0.300266,
		49.459133, 56.295406, 51.904259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.209282, 57.083229, 51.613365>,  <48.855309, 56.580391, 51.694073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.209282, 57.083229, 51.613365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.437992, 56.755882, 51.590202>,  <49.575218, 56.559475, 51.576305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.437992, 56.755882, 51.590202>,  <49.209282, 57.083229, 51.613365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.437992, 56.755882, 51.590202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470621, 0.384988, -0.793914,
		0.672004, 0.426688, 0.605266,
		0.571774, -0.818365, -0.057905,
		49.609524, 56.510372, 51.572830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.989761, 57.130371, 51.493099>,  <49.209282, 57.083229, 51.613365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.989761, 57.130371, 51.493099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.888947, 56.785355, 51.317600>,  <49.828457, 56.578346, 51.212299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.888947, 56.785355, 51.317600>,  <49.989761, 57.130371, 51.493099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.888947, 56.785355, 51.317600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554460, 0.242875, -0.795981,
		0.793128, -0.443884, 0.417031,
		-0.252037, -0.862542, -0.438747,
		49.813335, 56.526592, 51.185978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.627151, 56.866955, 51.190952>,  <49.989761, 57.130371, 51.493099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.627151, 56.866955, 51.190952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.307114, 56.766479, 50.973053>,  <50.115089, 56.706196, 50.842312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.307114, 56.766479, 50.973053>,  <50.627151, 56.866955, 51.190952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.307114, 56.766479, 50.973053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411115, 0.431699, -0.802882,
		0.436833, -0.866340, -0.242140,
		-0.800101, -0.251178, -0.544746,
		50.067085, 56.691124, 50.809628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.251987, 57.297642, 51.459332>,  <50.627151, 56.866955, 51.190952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.251987, 57.297642, 51.459332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.304878, 57.580887, 51.736774>,  <51.336613, 57.750835, 51.903240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.304878, 57.580887, 51.736774>,  <51.251987, 57.297642, 51.459332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.304878, 57.580887, 51.736774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628013, -0.601233, 0.494083,
		0.766886, 0.370260, -0.524207,
		0.132231, 0.708115, 0.693606,
		51.344547, 57.793320, 51.944855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.931015, 57.586956, 51.642540>,  <51.251987, 57.297642, 51.459332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.931015, 57.586956, 51.642540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.675812, 57.573467, 51.950256>,  <51.522690, 57.565376, 52.134888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.675812, 57.573467, 51.950256>,  <51.931015, 57.586956, 51.642540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.675812, 57.573467, 51.950256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558590, -0.707921, 0.432231,
		0.530026, 0.705486, 0.470491,
		-0.638004, -0.033718, 0.769294,
		51.484409, 57.563351, 52.181046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.245041, 57.825573, 52.357334>,  <51.931015, 57.586956, 51.642540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.245041, 57.825573, 52.357334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.947262, 57.563892, 52.410713>,  <51.768593, 57.406883, 52.442741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.947262, 57.563892, 52.410713>,  <52.245041, 57.825573, 52.357334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.947262, 57.563892, 52.410713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632389, -0.626757, 0.455259,
		-0.214191, 0.423311, 0.880301,
		-0.744451, -0.654205, 0.133452,
		51.723927, 57.367630, 52.450748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.215275, 57.629879, 53.078609>,  <52.245041, 57.825573, 52.357334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.215275, 57.629879, 53.078609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.080467, 57.333763, 52.845924>,  <51.999584, 57.156094, 52.706314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.080467, 57.333763, 52.845924>,  <52.215275, 57.629879, 53.078609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.080467, 57.333763, 52.845924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709734, -0.605733, 0.359675,
		-0.618624, -0.291641, 0.729555,
		-0.337019, -0.740293, -0.581708,
		51.979362, 57.111675, 52.671413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.046204, 56.943718, 53.475372>,  <52.215275, 57.629879, 53.078609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.046204, 56.943718, 53.475372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.152660, 56.884537, 53.094368>,  <52.216534, 56.849030, 52.865765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.152660, 56.884537, 53.094368>,  <52.046204, 56.943718, 53.475372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.152660, 56.884537, 53.094368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607575, -0.741397, 0.284927,
		-0.748346, -0.654553, -0.107423,
		0.266143, -0.147956, -0.952511,
		52.232506, 56.840149, 52.808617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.863224, 56.311764, 53.203087>,  <52.046204, 56.943718, 53.475372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.863224, 56.311764, 53.203087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.197483, 56.446499, 53.029545>,  <52.398041, 56.527340, 52.925419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.197483, 56.446499, 53.029545>,  <51.863224, 56.311764, 53.203087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.197483, 56.446499, 53.029545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505196, -0.781340, 0.366448,
		-0.215556, -0.525405, -0.823095,
		0.835651, 0.336834, -0.433855,
		52.448177, 56.547550, 52.899387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.298454, 55.682556, 52.937824>,  <51.863224, 56.311764, 53.203087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.298454, 55.682556, 52.937824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.533916, 56.004040, 52.972561>,  <52.675194, 56.196930, 52.993404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.533916, 56.004040, 52.972561>,  <52.298454, 55.682556, 52.937824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.533916, 56.004040, 52.972561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715188, -0.567855, 0.407489,
		0.376816, -0.177761, -0.909071,
		0.588656, 0.803706, 0.086845,
		52.710514, 56.245152, 52.998615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.924957, 55.570038, 52.652348>,  <52.298454, 55.682556, 52.937824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.924957, 55.570038, 52.652348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.995239, 55.844551, 52.934666>,  <53.037411, 56.009258, 53.104057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.995239, 55.844551, 52.934666>,  <52.924957, 55.570038, 52.652348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.995239, 55.844551, 52.934666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802681, -0.514949, 0.300883,
		0.569938, 0.513660, -0.641345,
		0.175709, 0.686280, 0.705795,
		53.047951, 56.050434, 53.146404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.573906, 55.866112, 52.555122>,  <52.924957, 55.570038, 52.652348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.573906, 55.866112, 52.555122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.413837, 55.777107, 52.910728>,  <53.317795, 55.723705, 53.124092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.413837, 55.777107, 52.910728>,  <53.573906, 55.866112, 52.555122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.413837, 55.777107, 52.910728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716431, -0.680883, 0.152070,
		0.571479, 0.697774, 0.431883,
		-0.400173, -0.222510, 0.889017,
		53.293785, 55.710354, 53.177433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.089420, 56.028633, 53.058941>,  <53.573906, 55.866112, 52.555122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.089420, 56.028633, 53.058941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.848743, 55.720272, 53.142548>,  <53.704338, 55.535255, 53.192711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.848743, 55.720272, 53.142548>,  <54.089420, 56.028633, 53.058941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.848743, 55.720272, 53.142548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792349, -0.543067, 0.277959,
		-0.100770, 0.332856, 0.937578,
		-0.601688, -0.770899, 0.209013,
		53.668236, 55.489002, 53.205250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.871822, 55.929886, 53.772861>,  <54.089420, 56.028633, 53.058941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.871822, 55.929886, 53.772861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.871178, 55.574230, 53.589806>,  <53.870792, 55.360836, 53.479973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.871178, 55.574230, 53.589806>,  <53.871822, 55.929886, 53.772861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.871178, 55.574230, 53.589806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851722, -0.241019, 0.465273,
		-0.523991, -0.389035, 0.757684,
		-0.001609, -0.889135, -0.457642,
		53.870693, 55.307491, 53.452515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.853905, 55.484543, 54.338577>,  <53.871822, 55.929886, 53.772861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.853905, 55.484543, 54.338577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.980865, 55.305744, 54.004044>,  <54.057041, 55.198467, 53.803326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.980865, 55.305744, 54.004044>,  <53.853905, 55.484543, 54.338577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.980865, 55.305744, 54.004044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816706, -0.319344, 0.480635,
		-0.481919, -0.835592, 0.263702,
		0.317404, -0.446995, -0.836332,
		54.076088, 55.171646, 53.753143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.868343, 54.722950, 54.312519>,  <53.853905, 55.484543, 54.338577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.868343, 54.722950, 54.312519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.142052, 54.947060, 54.125813>,  <54.306274, 55.081528, 54.013790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.142052, 54.947060, 54.125813>,  <53.868343, 54.722950, 54.312519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.142052, 54.947060, 54.125813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692316, -0.298050, 0.657165,
		0.229075, -0.772824, -0.591834,
		0.684269, 0.560277, -0.466762,
		54.347332, 55.115143, 53.985783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.384354, 54.279369, 54.005028>,  <53.868343, 54.722950, 54.312519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.384354, 54.279369, 54.005028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.485802, 54.653229, 54.104721>,  <54.546673, 54.877544, 54.164536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.485802, 54.653229, 54.104721>,  <54.384354, 54.279369, 54.005028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.485802, 54.653229, 54.104721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723999, -0.354288, 0.591866,
		0.641483, 0.030333, -0.766537,
		0.253622, 0.934644, 0.249231,
		54.561890, 54.933620, 54.179489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.781425, 53.650452, 54.381538>,  <54.384354, 54.279369, 54.005028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.781425, 53.650452, 54.381538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.682907, 53.757275, 54.754208>,  <54.623798, 53.821369, 54.977810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.682907, 53.757275, 54.754208>,  <54.781425, 53.650452, 54.381538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.682907, 53.757275, 54.754208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950935, 0.119136, -0.285533,
		-0.187249, -0.956289, 0.224610,
		-0.246293, 0.267055, 0.931677,
		54.609020, 53.837391, 55.033710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.150898, 54.064526, 54.917789>,  <54.781425, 53.650452, 54.381538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.150898, 54.064526, 54.917789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.532295, 54.181614, 54.946552>,  <55.761131, 54.251869, 54.963810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.532295, 54.181614, 54.946552>,  <55.150898, 54.064526, 54.917789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.532295, 54.181614, 54.946552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220437, -0.839873, 0.496004,
		0.205585, -0.457084, -0.865338,
		0.953489, 0.292724, 0.071907,
		55.818340, 54.269432, 54.968124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.527557, 53.481102, 54.752289>,  <55.150898, 54.064526, 54.917789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.527557, 53.481102, 54.752289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.699188, 53.750614, 54.992928>,  <55.802166, 53.912319, 55.137310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.699188, 53.750614, 54.992928>,  <55.527557, 53.481102, 54.752289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.699188, 53.750614, 54.992928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016544, -0.660045, 0.751043,
		0.903114, -0.332212, -0.272066,
		0.429081, 0.673777, 0.601592,
		55.827911, 53.952747, 55.173405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.303772, 53.313057, 55.005989>,  <55.527557, 53.481102, 54.752289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.303772, 53.313057, 55.005989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.047729, 53.509895, 55.241989>,  <55.894104, 53.627998, 55.383591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.047729, 53.509895, 55.241989>,  <56.303772, 53.313057, 55.005989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.047729, 53.509895, 55.241989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035459, -0.786049, 0.617146,
		0.767465, 0.374120, 0.520607,
		-0.640110, 0.492098, 0.589999,
		55.855698, 53.657524, 55.418987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.660999, 53.194935, 55.524952>,  <56.303772, 53.313057, 55.005989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.660999, 53.194935, 55.524952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.285172, 53.275295, 55.635834>,  <56.059673, 53.323513, 55.702362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.285172, 53.275295, 55.635834>,  <56.660999, 53.194935, 55.524952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.285172, 53.275295, 55.635834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020258, -0.775659, 0.630827,
		0.341748, 0.598323, 0.724719,
		-0.939573, 0.200902, 0.277201,
		56.003300, 53.335567, 55.718994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.614964, 53.270153, 56.309235>,  <56.660999, 53.194935, 55.524952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.614964, 53.270153, 56.309235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.310188, 53.116882, 56.100380>,  <56.127323, 53.024921, 55.975067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.310188, 53.116882, 56.100380>,  <56.614964, 53.270153, 56.309235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.310188, 53.116882, 56.100380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030139, -0.826304, 0.562418,
		-0.646947, 0.412791, 0.641142,
		-0.761939, -0.383178, -0.522133,
		56.081608, 53.001930, 55.943741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.720520, 53.990456, 56.453087>,  <56.614964, 53.270153, 56.309235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.720520, 53.990456, 56.453087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.711159, 54.126431, 56.829147>,  <56.705544, 54.208015, 57.054783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.711159, 54.126431, 56.829147>,  <56.720520, 53.990456, 56.453087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.711159, 54.126431, 56.829147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035065, -0.939555, 0.340597,
		0.999111, 0.040938, 0.010069,
		-0.023404, 0.339941, 0.940155,
		56.704136, 54.228413, 57.111195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.195278, 53.633739, 56.912727>,  <56.720520, 53.990456, 56.453087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.195278, 53.633739, 56.912727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.926102, 53.772396, 57.174103>,  <56.764595, 53.855591, 57.330929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.926102, 53.772396, 57.174103>,  <57.195278, 53.633739, 56.912727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.926102, 53.772396, 57.174103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008079, -0.879897, 0.475097,
		0.739652, 0.324991, 0.589318,
		-0.672941, 0.346645, 0.653443,
		56.724220, 53.876389, 57.370136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.806908, 53.768047, 56.490025>,  <57.195278, 53.633739, 56.912727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.806908, 53.768047, 56.490025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.993462, 54.108513, 56.393692>,  <58.105396, 54.312794, 56.335892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.993462, 54.108513, 56.393692>,  <57.806908, 53.768047, 56.490025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.993462, 54.108513, 56.393692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566718, 0.496554, 0.657468,
		0.679200, -0.170151, 0.713958,
		0.466388, 0.851165, -0.240831,
		58.133377, 54.363861, 56.321442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.997707, 54.207661, 57.135303>,  <57.806908, 53.768047, 56.490025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.997707, 54.207661, 57.135303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.010628, 54.458424, 56.823936>,  <58.018379, 54.608883, 56.637115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.010628, 54.458424, 56.823936>,  <57.997707, 54.207661, 57.135303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.010628, 54.458424, 56.823936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536061, 0.668197, 0.515898,
		0.843561, 0.400617, 0.357646,
		0.032301, 0.626911, -0.778420,
		58.020317, 54.646496, 56.590412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.179432, 54.847309, 57.393162>,  <57.997707, 54.207661, 57.135303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.179432, 54.847309, 57.393162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.013702, 54.937138, 57.040367>,  <57.914265, 54.991035, 56.828690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.013702, 54.937138, 57.040367>,  <58.179432, 54.847309, 57.393162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.013702, 54.937138, 57.040367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598584, 0.662756, 0.449947,
		0.685588, 0.714368, -0.140171,
		-0.414327, 0.224574, -0.881986,
		57.889404, 55.004509, 56.775772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.777641, 54.937424, 56.893070>,  <58.179432, 54.847309, 57.393162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.777641, 54.937424, 56.893070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.067268, 54.941799, 57.168930>,  <59.241043, 54.944424, 57.334446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.067268, 54.941799, 57.168930>,  <58.777641, 54.937424, 56.893070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.067268, 54.941799, 57.168930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673476, 0.204602, -0.710330,
		-0.148870, 0.978784, 0.140780,
		0.724063, 0.010935, 0.689647,
		59.284489, 54.945080, 57.375824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.193058, 55.607880, 56.926891>,  <58.777641, 54.937424, 56.893070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.193058, 55.607880, 56.926891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.371407, 55.261299, 57.016754>,  <59.478416, 55.053352, 57.070671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.371407, 55.261299, 57.016754>,  <59.193058, 55.607880, 56.926891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.371407, 55.261299, 57.016754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818094, 0.292625, -0.495068,
		0.363211, 0.404523, 0.839309,
		0.445869, -0.866448, 0.224653,
		59.505169, 55.001366, 57.084148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.579601, 55.763180, 56.244946>,  <59.193058, 55.607880, 56.926891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.579601, 55.763180, 56.244946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.679688, 55.938488, 56.590271>,  <59.739738, 56.043671, 56.797466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.679688, 55.938488, 56.590271>,  <59.579601, 55.763180, 56.244946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.679688, 55.938488, 56.590271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436877, -0.846850, 0.303288,
		0.864020, 0.301276, -0.403363,
		0.250214, 0.438267, 0.863316,
		59.754753, 56.069969, 56.849266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.339687, 55.655846, 56.298153>,  <59.579601, 55.763180, 56.244946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.339687, 55.655846, 56.298153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.171898, 55.695641, 56.659073>,  <60.071224, 55.719517, 56.875626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.171898, 55.695641, 56.659073>,  <60.339687, 55.655846, 56.298153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.171898, 55.695641, 56.659073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601828, -0.713654, 0.358470,
		0.679594, 0.693398, 0.239482,
		-0.419469, 0.099487, 0.902301,
		60.046059, 55.725487, 56.929764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.610081, 56.175144, 56.874416>,  <60.339687, 55.655846, 56.298153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.610081, 56.175144, 56.874416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.936005, 56.307400, 56.683937>,  <61.131557, 56.386753, 56.569649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.936005, 56.307400, 56.683937>,  <60.610081, 56.175144, 56.874416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.936005, 56.307400, 56.683937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465193, 0.117290, 0.877405,
		0.345958, -0.936441, -0.058242,
		0.814806, 0.330639, -0.476203,
		61.180447, 56.406593, 56.541077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.940159, 56.384949, 57.525997>,  <60.610081, 56.175144, 56.874416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.940159, 56.384949, 57.525997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.227493, 56.341759, 57.251091>,  <61.399895, 56.315845, 57.086147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.227493, 56.341759, 57.251091>,  <60.940159, 56.384949, 57.525997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.227493, 56.341759, 57.251091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664842, -0.184409, 0.723863,
		-0.204900, -0.976900, -0.060678,
		0.718332, -0.107978, -0.687270,
		61.442993, 56.309364, 57.044910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.433800, 55.928524, 57.760681>,  <60.940159, 56.384949, 57.525997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.433800, 55.928524, 57.760681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.660118, 56.075638, 57.465492>,  <61.795910, 56.163906, 57.288380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.660118, 56.075638, 57.465492>,  <61.433800, 55.928524, 57.760681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.660118, 56.075638, 57.465492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804312, -0.049119, 0.592174,
		0.181544, -0.928612, -0.323606,
		0.565795, 0.367786, -0.737976,
		61.829857, 56.185974, 57.244099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.041264, 55.609379, 57.777424>,  <61.433800, 55.928524, 57.760681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.041264, 55.609379, 57.777424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.107239, 55.956211, 57.589394>,  <62.146824, 56.164310, 57.476578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.107239, 55.956211, 57.589394>,  <62.041264, 55.609379, 57.777424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.107239, 55.956211, 57.589394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913383, 0.045573, 0.404542,
		0.372194, -0.496080, -0.784459,
		0.164935, 0.867080, -0.470073,
		62.156719, 56.216335, 57.448372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.678883, 55.649883, 57.164883>,  <62.041264, 55.609379, 57.777424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.678883, 55.649883, 57.164883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.615082, 55.955051, 57.415489>,  <62.576801, 56.138153, 57.565853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.615082, 55.955051, 57.415489>,  <62.678883, 55.649883, 57.164883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.615082, 55.955051, 57.415489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987045, 0.112083, 0.114805,
		0.017365, 0.636708, -0.770909,
		-0.159503, 0.762916, 0.626513,
		62.567230, 56.183926, 57.603443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.075779, 56.227421, 56.981018>,  <62.678883, 55.649883, 57.164883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.075779, 56.227421, 56.981018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.991402, 56.295174, 57.366104>,  <62.940777, 56.335823, 57.597157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.991402, 56.295174, 57.366104>,  <63.075779, 56.227421, 56.981018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.991402, 56.295174, 57.366104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976062, 0.089880, 0.198053,
		-0.052983, 0.981444, -0.184283,
		-0.210941, 0.169378, 0.962712,
		62.928120, 56.345985, 57.654919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.435299, 56.956161, 57.340881>,  <63.075779, 56.227421, 56.981018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.435299, 56.956161, 57.340881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.382538, 56.637791, 57.577217>,  <63.350880, 56.446766, 57.719021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.382538, 56.637791, 57.577217>,  <63.435299, 56.956161, 57.340881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.382538, 56.637791, 57.577217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909382, 0.140048, 0.391677,
		-0.394494, 0.588966, 0.705332,
		-0.131905, -0.795931, 0.590843,
		63.342968, 56.399010, 57.754471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.499493, 57.171501, 58.048767>,  <63.435299, 56.956161, 57.340881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.499493, 57.171501, 58.048767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.629951, 56.795204, 58.011604>,  <63.708229, 56.569427, 57.989307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.629951, 56.795204, 58.011604>,  <63.499493, 57.171501, 58.048767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.629951, 56.795204, 58.011604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799438, 0.222034, 0.558211,
		-0.504505, -0.256330, 0.824481,
		0.326149, -0.940742, -0.092902,
		63.727795, 56.512981, 57.983734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.850021, 57.128082, 58.616695>,  <63.499493, 57.171501, 58.048767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.850021, 57.128082, 58.616695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.964546, 56.812260, 58.399574>,  <64.033257, 56.622765, 58.269302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.964546, 56.812260, 58.399574>,  <63.850021, 57.128082, 58.616695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.964546, 56.812260, 58.399574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901334, 0.029783, 0.432100,
		-0.325000, -0.612957, 0.720180,
		0.286308, -0.789555, -0.542799,
		64.050438, 56.575394, 58.236736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.141457, 56.653881, 59.019203>,  <63.850021, 57.128082, 58.616695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.141457, 56.653881, 59.019203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.309921, 56.602127, 58.660118>,  <64.410995, 56.571075, 58.444668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.309921, 56.602127, 58.660118>,  <64.141457, 56.653881, 59.019203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.309921, 56.602127, 58.660118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902629, -0.037120, 0.428815,
		-0.088806, -0.990899, 0.101155,
		0.421158, -0.129387, -0.897711,
		64.436272, 56.563313, 58.390804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.578583, 56.089527, 59.104778>,  <64.141457, 56.653881, 59.019203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.578583, 56.089527, 59.104778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.716049, 56.279282, 58.780594>,  <64.798531, 56.393135, 58.586082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.716049, 56.279282, 58.780594>,  <64.578583, 56.089527, 59.104778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.716049, 56.279282, 58.780594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935344, -0.095875, 0.340499,
		0.083826, -0.875078, -0.476667,
		0.343663, 0.474391, -0.810462,
		64.819145, 56.421600, 58.537457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.033325, 55.527718, 58.823467>,  <64.578583, 56.089527, 59.104778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.033325, 55.527718, 58.823467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.108696, 55.910278, 58.734215>,  <65.153915, 56.139816, 58.680664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.108696, 55.910278, 58.734215>,  <65.033325, 55.527718, 58.823467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.108696, 55.910278, 58.734215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903896, -0.080044, 0.420196,
		0.384016, -0.280863, -0.879572,
		0.188422, 0.956404, -0.223133,
		65.165222, 56.197201, 58.667274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.748390, 55.578693, 58.638058>,  <65.033325, 55.527718, 58.823467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.748390, 55.578693, 58.638058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.589478, 55.918430, 58.777069>,  <65.494125, 56.122272, 58.860474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.589478, 55.918430, 58.777069>,  <65.748390, 55.578693, 58.638058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.589478, 55.918430, 58.777069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729809, 0.062832, 0.680758,
		0.556363, 0.524084, -0.644823,
		-0.397289, 0.849346, 0.347524,
		65.470291, 56.173233, 58.881325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.841026, 55.063522, 59.235939>,  <65.748390, 55.578693, 58.638058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.841026, 55.063522, 59.235939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.114288, 54.785217, 59.147186>,  <66.278244, 54.618237, 59.093937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.114288, 54.785217, 59.147186>,  <65.841026, 55.063522, 59.235939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.114288, 54.785217, 59.147186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627746, 0.714719, -0.308403,
		0.373155, 0.071401, 0.925017,
		0.683148, -0.695758, -0.221879,
		66.319229, 54.576488, 59.080624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.550591, 54.990417, 59.620899>,  <65.841026, 55.063522, 59.235939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.550591, 54.990417, 59.620899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.606140, 54.862827, 59.245888>,  <66.639473, 54.786274, 59.020882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.606140, 54.862827, 59.245888>,  <66.550591, 54.990417, 59.620899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.606140, 54.862827, 59.245888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835309, 0.546260, -0.062122,
		0.531951, -0.774501, 0.342309,
		0.138876, -0.318979, -0.937532,
		66.647804, 54.767132, 58.964630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.244354, 54.623585, 59.504993>,  <66.550591, 54.990417, 59.620899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.244354, 54.623585, 59.504993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.083977, 54.818508, 59.194695>,  <66.987755, 54.935463, 59.008514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.083977, 54.818508, 59.194695>,  <67.244354, 54.623585, 59.504993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.083977, 54.818508, 59.194695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799477, 0.599583, -0.036560,
		0.447307, -0.634848, -0.629988,
		-0.400940, 0.487307, -0.775744,
		66.963692, 54.964699, 58.961971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.587608, 54.385796, 58.979912>,  <67.244354, 54.623585, 59.504993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.587608, 54.385796, 58.979912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.425163, 54.734764, 58.871140>,  <67.327698, 54.944145, 58.805878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.425163, 54.734764, 58.871140>,  <67.587608, 54.385796, 58.979912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.425163, 54.734764, 58.871140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897861, 0.436321, 0.058896,
		0.170031, -0.220237, -0.960513,
		-0.406121, 0.872422, -0.271930,
		67.303329, 54.996490, 58.789562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.959183, 54.699368, 58.352989>,  <67.587608, 54.385796, 58.979912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.959183, 54.699368, 58.352989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.790489, 54.977318, 58.585983>,  <67.689270, 55.144089, 58.725780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.790489, 54.977318, 58.585983>,  <67.959183, 54.699368, 58.352989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.790489, 54.977318, 58.585983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868061, 0.495002, 0.037996,
		-0.261929, 0.521657, -0.811953,
		-0.421739, 0.694872, 0.582485,
		67.663971, 55.185780, 58.760727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.191811, 55.405052, 58.125252>,  <67.959183, 54.699368, 58.352989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.191811, 55.405052, 58.125252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.060722, 55.531914, 58.481232>,  <67.982071, 55.608032, 58.694820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.060722, 55.531914, 58.481232>,  <68.191811, 55.405052, 58.125252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.060722, 55.531914, 58.481232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797306, 0.598192, 0.080425,
		-0.506855, 0.735921, -0.448908,
		-0.327720, 0.317153, 0.889951,
		67.962410, 55.627060, 58.748219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.346931, 56.101765, 58.190739>,  <68.191811, 55.405052, 58.125252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.346931, 56.101765, 58.190739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.299156, 55.964668, 58.563461>,  <68.270493, 55.882408, 58.787094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.299156, 55.964668, 58.563461>,  <68.346931, 56.101765, 58.190739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.299156, 55.964668, 58.563461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732222, 0.603421, 0.315807,
		-0.670512, 0.720006, 0.178897,
		-0.119432, -0.342745, 0.931806,
		68.263329, 55.861843, 58.843002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.957237, 56.578430, 58.789864>,  <68.346931, 56.101765, 58.190739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.957237, 56.578430, 58.789864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.254745, 56.328712, 58.885414>,  <68.433250, 56.178883, 58.942745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.254745, 56.328712, 58.885414>,  <67.957237, 56.578430, 58.789864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.254745, 56.328712, 58.885414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544168, 0.773052, 0.325994,
		-0.388175, -0.112480, 0.914696,
		0.743775, -0.624291, 0.238872,
		68.477875, 56.141426, 58.957077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.164513, 56.441746, 59.567028>,  <67.957237, 56.578430, 58.789864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.164513, 56.441746, 59.567028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.458809, 56.401974, 59.299057>,  <68.635384, 56.378109, 59.138275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.458809, 56.401974, 59.299057>,  <68.164513, 56.441746, 59.567028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.458809, 56.401974, 59.299057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504133, 0.740938, 0.443690,
		0.452254, -0.664172, 0.595266,
		0.735741, -0.099432, -0.669923,
		68.679535, 56.372143, 59.098080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.804420, 56.400845, 60.016399>,  <68.164513, 56.441746, 59.567028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.804420, 56.400845, 60.016399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.855469, 56.536861, 59.643715>,  <68.886093, 56.618473, 59.420105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.855469, 56.536861, 59.643715>,  <68.804420, 56.400845, 60.016399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.855469, 56.536861, 59.643715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524558, 0.774118, 0.354374,
		0.841756, -0.533960, -0.079581,
		0.127617, 0.340041, -0.931711,
		68.893753, 56.638874, 59.364201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.573051, 56.392967, 59.843269>,  <68.804420, 56.400845, 60.016399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.573051, 56.392967, 59.843269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.334625, 56.662697, 59.668915>,  <69.191566, 56.824535, 59.564304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.334625, 56.662697, 59.668915>,  <69.573051, 56.392967, 59.843269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.334625, 56.662697, 59.668915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476655, 0.734030, 0.483736,
		0.646143, 0.080575, -0.758951,
		-0.596069, 0.674320, -0.435882,
		69.155807, 56.864994, 59.538151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.992165, 56.864891, 59.453472>,  <69.573051, 56.392967, 59.843269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.992165, 56.864891, 59.453472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.650917, 57.012863, 59.600632>,  <69.446167, 57.101646, 59.688927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.650917, 57.012863, 59.600632>,  <69.992165, 56.864891, 59.453472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.650917, 57.012863, 59.600632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499502, 0.782760, 0.371194,
		-0.150659, 0.500436, -0.852564,
		-0.853112, 0.369934, 0.367899,
		69.394981, 57.123844, 59.711002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.960747, 57.174088, 60.179234>,  <69.992165, 56.864891, 59.453472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.960747, 57.174088, 60.179234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.350838, 57.162563, 60.266953>,  <70.584892, 57.155651, 60.319584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.350838, 57.162563, 60.266953>,  <69.960747, 57.174088, 60.179234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.350838, 57.162563, 60.266953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148112, -0.821415, 0.550763,
		0.164270, -0.569602, -0.805338,
		0.975232, -0.028806, 0.219299,
		70.643410, 57.153923, 60.332741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.384277, 56.475979, 59.898376>,  <69.960747, 57.174088, 60.179234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.384277, 56.475979, 59.898376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.564056, 56.638519, 60.216591>,  <70.671921, 56.736042, 60.407520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.564056, 56.638519, 60.216591>,  <70.384277, 56.475979, 59.898376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.564056, 56.638519, 60.216591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059913, -0.902258, 0.427014,
		0.891296, -0.144257, -0.429862,
		0.449447, 0.406350, 0.795536,
		70.698891, 56.760426, 60.455250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.675880, 57.123581, 59.627285>,  <70.384277, 56.475979, 59.898376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.675880, 57.123581, 59.627285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.901169, 56.940704, 59.902603>,  <71.036339, 56.830978, 60.067795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.901169, 56.940704, 59.902603>,  <70.675880, 57.123581, 59.627285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.901169, 56.940704, 59.902603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724312, 0.674063, -0.144952,
		-0.397686, 0.580183, 0.710797,
		0.563221, -0.457193, 0.688299,
		71.070137, 56.803547, 60.109093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.306015, 57.294544, 59.388622>,  <70.675880, 57.123581, 59.627285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.306015, 57.294544, 59.388622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.305511, 57.651321, 59.207764>,  <71.305206, 57.865387, 59.099247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.305511, 57.651321, 59.207764>,  <71.306015, 57.294544, 59.388622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.305511, 57.651321, 59.207764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356461, -0.422845, -0.833149,
		-0.934309, 0.160125, 0.318475,
		-0.001258, 0.891943, -0.452146,
		71.305138, 57.918903, 59.072121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.825760, 57.297619, 59.987518>,  <71.306015, 57.294544, 59.388622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.825760, 57.297619, 59.987518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.833725, 57.353889, 60.383461>,  <71.838509, 57.387653, 60.621025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.833725, 57.353889, 60.383461>,  <71.825760, 57.297619, 59.987518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.833725, 57.353889, 60.383461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839069, 0.536006, -0.093062,
		-0.543660, 0.832410, -0.107365,
		0.019917, 0.140681, 0.989855,
		71.839699, 57.396095, 60.680416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.059525, 57.966850, 60.056721>,  <71.825760, 57.297619, 59.987518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.059525, 57.966850, 60.056721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.172310, 57.709690, 60.341583>,  <72.239983, 57.555393, 60.512501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.172310, 57.709690, 60.341583>,  <72.059525, 57.966850, 60.056721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.172310, 57.709690, 60.341583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959397, 0.194384, -0.204380,
		-0.007036, 0.740874, 0.671607,
		0.281970, -0.642900, 0.712160,
		72.256905, 57.516819, 60.555233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.746918, 58.046604, 59.739780>,  <72.059525, 57.966850, 60.056721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.746918, 58.046604, 59.739780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.862267, 58.362511, 59.523224>,  <72.931480, 58.552055, 59.393291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.862267, 58.362511, 59.523224>,  <72.746918, 58.046604, 59.739780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.862267, 58.362511, 59.523224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950821, 0.169448, -0.259281,
		-0.113035, 0.589534, 0.799795,
		0.288379, 0.789770, -0.541388,
		72.948784, 58.599442, 59.360809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.968315, 57.999378, 60.444698>,  <72.746918, 58.046604, 59.739780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.968315, 57.999378, 60.444698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.093323, 57.695179, 60.217018>,  <73.168327, 57.512661, 60.080410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.093323, 57.695179, 60.217018>,  <72.968315, 57.999378, 60.444698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.093323, 57.695179, 60.217018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901125, 0.426912, -0.075635,
		0.300517, -0.489280, 0.818715,
		0.312513, -0.760494, -0.569197,
		73.187073, 57.467030, 60.046261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.448410, 57.483887, 60.498203>,  <72.968315, 57.999378, 60.444698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.448410, 57.483887, 60.498203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.388474, 57.566914, 60.111534>,  <73.352509, 57.616730, 59.879532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.388474, 57.566914, 60.111534>,  <73.448410, 57.483887, 60.498203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.388474, 57.566914, 60.111534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988521, -0.050563, 0.142371,
		-0.019326, 0.976913, 0.212763,
		-0.149842, 0.207569, -0.966676,
		73.343521, 57.629185, 59.821533>
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
