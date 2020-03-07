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
	<1.651325, 0.915096, 3.719909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.040573, 0.994469, 3.673157>,  <2.274122, 1.042092, 3.645105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.040573, 0.994469, 3.673157>,  <1.651325, 0.915096, 3.719909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.040573, 0.994469, 3.673157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203611, 0.504172, -0.839258,
		-0.107608, 0.840497, 0.531023,
		0.973120, 0.198433, -0.116882,
		2.332509, 1.053998, 3.638092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.866385, 1.628658, 3.460872>,  <1.651325, 0.915096, 3.719909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.866385, 1.628658, 3.460872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.151688, 1.372459, 3.347008>,  <2.322869, 1.218740, 3.278689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.151688, 1.372459, 3.347008>,  <1.866385, 1.628658, 3.460872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.151688, 1.372459, 3.347008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028830, 0.432599, -0.901125,
		0.700310, 0.634526, 0.327020,
		0.713256, -0.640495, -0.284660,
		2.365664, 1.180311, 3.261610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.576173, 2.013294, 3.277034>,  <1.866385, 1.628658, 3.460872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.576173, 2.013294, 3.277034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.494484, 1.673256, 3.082867>,  <2.445471, 1.469233, 2.966367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.494484, 1.673256, 3.082867>,  <2.576173, 2.013294, 3.277034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.494484, 1.673256, 3.082867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067977, 0.506986, -0.859270,
		0.976562, -0.142484, -0.161325,
		-0.204221, -0.850096, -0.485417,
		2.433218, 1.418227, 2.937242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.725630, 2.164202, 2.516408>,  <2.576173, 2.013294, 3.277034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.725630, 2.164202, 2.516408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.552986, 1.804045, 2.494476>,  <2.449400, 1.587950, 2.481318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.552986, 1.804045, 2.494476>,  <2.725630, 2.164202, 2.516408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.552986, 1.804045, 2.494476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275014, 0.189231, -0.942634,
		0.859116, -0.391771, -0.329295,
		-0.431609, -0.900393, -0.054829,
		2.423503, 1.533927, 2.478028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.013584, 1.779886, 1.914079>,  <2.725630, 2.164202, 2.516408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.013584, 1.779886, 1.914079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.651497, 1.624763, 1.983578>,  <2.434245, 1.531690, 2.025277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.651497, 1.624763, 1.983578>,  <3.013584, 1.779886, 1.914079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.651497, 1.624763, 1.983578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244957, 0.142094, -0.959065,
		0.347244, -0.910722, -0.223622,
		-0.905217, -0.387807, 0.173747,
		2.379931, 1.508422, 2.035702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.000678, 1.333802, 1.410848>,  <3.013584, 1.779886, 1.914079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.000678, 1.333802, 1.410848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.620979, 1.406883, 1.513260>,  <2.393160, 1.450732, 1.574707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.620979, 1.406883, 1.513260>,  <3.000678, 1.333802, 1.410848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.620979, 1.406883, 1.513260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204829, 0.258665, -0.944001,
		-0.238698, -0.948531, -0.208114,
		-0.949247, 0.182703, 0.256030,
		2.336205, 1.461694, 1.590069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.632590, 0.996771, 0.800381>,  <3.000678, 1.333802, 1.410848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.632590, 0.996771, 0.800381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.362740, 1.227087, 0.985138>,  <2.200829, 1.365277, 1.095992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.362740, 1.227087, 0.985138>,  <2.632590, 0.996771, 0.800381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.362740, 1.227087, 0.985138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285382, 0.373632, -0.882585,
		-0.680762, -0.727230, -0.087742,
		-0.674626, 0.575791, 0.461893,
		2.160352, 1.399824, 1.123706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.009990, 0.873633, 0.517138>,  <2.632590, 0.996771, 0.800381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.009990, 0.873633, 0.517138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.019951, 1.240665, 0.675846>,  <2.025928, 1.460885, 0.771071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.019951, 1.240665, 0.675846>,  <2.009990, 0.873633, 0.517138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.019951, 1.240665, 0.675846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243324, 0.390521, -0.887855,
		-0.969625, -0.074434, 0.232994,
		0.024902, 0.917580, 0.396771,
		2.027422, 1.515939, 0.794877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.809510, 3.857638, 0.143097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.870865, 3.464050, 0.106701>,  <2.907677, 3.227898, 0.084863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.870865, 3.464050, 0.106701>,  <2.809510, 3.857638, 0.143097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.870865, 3.464050, 0.106701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179356, -0.062828, 0.981776,
		-0.971753, -0.166910, 0.166844,
		0.153386, -0.983968, -0.090990,
		2.916881, 3.168860, 0.079404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.226706, 3.385631, 0.480480>,  <2.809510, 3.857638, 0.143097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.226706, 3.385631, 0.480480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.614334, 3.287106, 0.486576>,  <2.846911, 3.227990, 0.490234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.614334, 3.287106, 0.486576>,  <2.226706, 3.385631, 0.480480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.614334, 3.287106, 0.486576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053048, 0.268220, 0.961896,
		-0.241015, -0.931337, 0.272990,
		0.969070, -0.246313, 0.015239,
		2.905055, 3.213212, 0.491148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.012211, 2.756260, 0.716072>,  <2.226706, 3.385631, 0.480480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.012211, 2.756260, 0.716072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.827530, 2.401741, 0.730545>,  <1.716722, 2.189030, 0.739229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.827530, 2.401741, 0.730545>,  <2.012211, 2.756260, 0.716072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.827530, 2.401741, 0.730545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429868, -0.187880, 0.883128,
		-0.775916, 0.423296, 0.467735,
		-0.461702, -0.886297, 0.036182,
		1.689019, 2.135852, 0.741400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.642020, 2.642488, 1.301438>,  <2.012211, 2.756260, 0.716072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.642020, 2.642488, 1.301438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.754425, 2.281433, 1.171036>,  <1.821868, 2.064801, 1.092794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.754425, 2.281433, 1.171036>,  <1.642020, 2.642488, 1.301438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.754425, 2.281433, 1.171036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159861, -0.290924, 0.943296,
		-0.946296, -0.317194, 0.062543,
		0.281012, -0.902636, -0.326007,
		1.838729, 2.010642, 1.073234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.358363, 2.221107, 1.780717>,  <1.642020, 2.642488, 1.301438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.358363, 2.221107, 1.780717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.597717, 1.975197, 1.575199>,  <1.741330, 1.827651, 1.451888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.597717, 1.975197, 1.575199>,  <1.358363, 2.221107, 1.780717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.597717, 1.975197, 1.575199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220045, -0.490515, 0.843193,
		-0.770398, -0.617614, -0.158240,
		0.598387, -0.614775, -0.513795,
		1.777233, 1.790764, 1.421061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.097183, 1.562718, 1.860367>,  <1.358363, 2.221107, 1.780717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.097183, 1.562718, 1.860367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.489380, 1.543159, 1.784214>,  <1.724698, 1.531425, 1.738522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.489380, 1.543159, 1.784214>,  <1.097183, 1.562718, 1.860367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.489380, 1.543159, 1.784214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121001, -0.613149, 0.780645,
		-0.154902, -0.788452, -0.595271,
		0.980492, -0.048895, -0.190382,
		1.783527, 1.528491, 1.727099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.244110, 0.904669, 2.167815>,  <1.097183, 1.562718, 1.860367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.244110, 0.904669, 2.167815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.598480, 1.079433, 2.105530>,  <1.811102, 1.184292, 2.068159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.598480, 1.079433, 2.105530>,  <1.244110, 0.904669, 2.167815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.598480, 1.079433, 2.105530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323155, -0.340590, 0.882932,
		0.332728, -0.832531, -0.442927,
		0.885924, 0.436911, -0.155713,
		1.864258, 1.210507, 2.058816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.723651, 0.354740, 2.395552>,  <1.244110, 0.904669, 2.167815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.723651, 0.354740, 2.395552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.918945, 0.701046, 2.439510>,  <2.036122, 0.908830, 2.465885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.918945, 0.701046, 2.439510>,  <1.723651, 0.354740, 2.395552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.918945, 0.701046, 2.439510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433585, -0.349919, 0.830398,
		0.757384, -0.357781, -0.546225,
		0.488235, 0.865765, 0.109895,
		2.065416, 0.960775, 2.472479>
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
