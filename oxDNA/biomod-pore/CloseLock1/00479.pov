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
	sky <0, 0.179814, -0.983701>
	up <0, 0.179814, -0.983701>
	right 1.6 * <1, 0, 0>
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<23.861004, 34.732922, 35.117268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.108894, 35.043331, 35.070412>,  <24.257629, 35.229576, 35.042297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.108894, 35.043331, 35.070412>,  <23.861004, 34.732922, 35.117268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.108894, 35.043331, 35.070412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148482, -0.262492, -0.953442,
		-0.770645, 0.573479, -0.277899,
		0.619725, 0.776028, -0.117137,
		24.294811, 35.276138, 35.035271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.833918, 35.115437, 34.388145>,  <23.861004, 34.732922, 35.117268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.833918, 35.115437, 34.388145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.194267, 35.210106, 34.533695>,  <24.410477, 35.266907, 34.621025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.194267, 35.210106, 34.533695>,  <23.833918, 35.115437, 34.388145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.194267, 35.210106, 34.533695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371991, 0.011083, -0.928170,
		-0.223708, 0.971526, -0.078056,
		0.900876, 0.236675, 0.363878,
		24.464531, 35.281109, 34.642860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.100986, 35.515247, 33.808178>,  <23.833918, 35.115437, 34.388145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.100986, 35.515247, 33.808178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.373289, 35.353188, 34.052284>,  <24.536671, 35.255951, 34.198750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.373289, 35.353188, 34.052284>,  <24.100986, 35.515247, 33.808178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.373289, 35.353188, 34.052284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652764, -0.042484, -0.756369,
		0.332370, 0.913262, 0.235546,
		0.680756, -0.405151, 0.610265,
		24.577517, 35.231644, 34.235363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.738932, 35.850052, 33.534584>,  <24.100986, 35.515247, 33.808178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.738932, 35.850052, 33.534584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.806448, 35.531208, 33.766487>,  <24.846958, 35.339901, 33.905628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.806448, 35.531208, 33.766487>,  <24.738932, 35.850052, 33.534584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.806448, 35.531208, 33.766487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754612, -0.273892, -0.596275,
		0.634090, 0.538139, 0.555281,
		0.168792, -0.797114, 0.579758,
		24.857086, 35.292072, 33.940414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.515919, 35.883472, 33.619644>,  <24.738932, 35.850052, 33.534584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.515919, 35.883472, 33.619644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.330162, 35.536976, 33.693356>,  <25.218708, 35.329079, 33.737583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.330162, 35.536976, 33.693356>,  <25.515919, 35.883472, 33.619644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.330162, 35.536976, 33.693356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627778, -0.468751, -0.621424,
		0.624686, -0.172898, 0.761494,
		-0.464394, -0.866244, 0.184281,
		25.190844, 35.277103, 33.748638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.009001, 35.415810, 33.936016>,  <25.515919, 35.883472, 33.619644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.009001, 35.415810, 33.936016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.713802, 35.233486, 33.736977>,  <25.536684, 35.124092, 33.617554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.713802, 35.233486, 33.736977>,  <26.009001, 35.415810, 33.936016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.713802, 35.233486, 33.736977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673002, -0.443252, -0.592111,
		0.049326, -0.771860, 0.633876,
		-0.737994, -0.455806, -0.497600,
		25.492405, 35.096745, 33.587696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.482105, 35.030003, 33.532368>,  <26.009001, 35.415810, 33.936016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.482105, 35.030003, 33.532368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.879522, 35.058323, 33.496902>,  <27.117971, 35.075317, 33.475624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.879522, 35.058323, 33.496902>,  <26.482105, 35.030003, 33.532368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.879522, 35.058323, 33.496902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111336, 0.457590, -0.882165,
		-0.021890, 0.886340, 0.462518,
		0.993542, 0.070805, -0.088665,
		27.177586, 35.079563, 33.470303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.506800, 35.662209, 33.131210>,  <26.482105, 35.030003, 33.532368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.506800, 35.662209, 33.131210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.879642, 35.521427, 33.097027>,  <27.103348, 35.436958, 33.076515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.879642, 35.521427, 33.097027>,  <26.506800, 35.662209, 33.131210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.879642, 35.521427, 33.097027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084575, 0.440958, -0.893534,
		0.352168, 0.825642, 0.440787,
		0.932108, -0.351954, -0.085463,
		27.159275, 35.415840, 33.071388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.810101, 36.195393, 32.803440>,  <26.506800, 35.662209, 33.131210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.810101, 36.195393, 32.803440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.004055, 35.852448, 32.734367>,  <27.120428, 35.646683, 32.692924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.004055, 35.852448, 32.734367>,  <26.810101, 36.195393, 32.803440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.004055, 35.852448, 32.734367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090852, 0.245756, -0.965065,
		0.869846, 0.452258, 0.197057,
		0.484886, -0.857360, -0.172681,
		27.149521, 35.595238, 32.682564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.446484, 36.377644, 32.487907>,  <26.810101, 36.195393, 32.803440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.446484, 36.377644, 32.487907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.368044, 35.996582, 32.394966>,  <27.320980, 35.767944, 32.339199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.368044, 35.996582, 32.394966>,  <27.446484, 36.377644, 32.487907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.368044, 35.996582, 32.394966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043416, 0.228288, -0.972625,
		0.979622, -0.200820, -0.003406,
		-0.196100, -0.952657, -0.232355,
		27.309214, 35.710785, 32.325260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.022169, 36.215149, 32.159241>,  <27.446484, 36.377644, 32.487907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.022169, 36.215149, 32.159241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.714701, 35.982933, 32.051823>,  <27.530220, 35.843605, 31.987371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.714701, 35.982933, 32.051823>,  <28.022169, 36.215149, 32.159241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.714701, 35.982933, 32.051823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154705, 0.238645, -0.958705,
		0.620654, -0.778475, -0.093627,
		-0.768671, -0.580540, -0.268550,
		27.484100, 35.808773, 31.971258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.327688, 35.870911, 31.562567>,  <28.022169, 36.215149, 32.159241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.327688, 35.870911, 31.562567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.932062, 35.812084, 31.558151>,  <27.694687, 35.776791, 31.555502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.932062, 35.812084, 31.558151>,  <28.327688, 35.870911, 31.562567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.932062, 35.812084, 31.558151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019873, 0.207060, -0.978126,
		0.146126, -0.967213, -0.207719,
		-0.989066, -0.147057, -0.011036,
		27.635342, 35.767967, 31.554840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.266537, 35.577068, 30.936487>,  <28.327688, 35.870911, 31.562567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.266537, 35.577068, 30.936487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.898508, 35.711124, 31.017624>,  <27.677691, 35.791557, 31.066305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.898508, 35.711124, 31.017624>,  <28.266537, 35.577068, 30.936487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.898508, 35.711124, 31.017624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163142, 0.142954, -0.976191,
		-0.356162, -0.931259, -0.076852,
		-0.920072, 0.335144, 0.202842,
		27.622486, 35.811668, 31.078476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.822695, 35.322212, 30.339790>,  <28.266537, 35.577068, 30.936487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.822695, 35.322212, 30.339790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.611279, 35.618004, 30.506552>,  <27.484428, 35.795479, 30.606609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.611279, 35.618004, 30.506552>,  <27.822695, 35.322212, 30.339790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.611279, 35.618004, 30.506552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141634, 0.407408, -0.902197,
		-0.837009, -0.535896, -0.110596,
		-0.528541, 0.739482, 0.416905,
		27.452717, 35.839848, 30.631622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.278114, 35.448044, 29.923687>,  <27.822695, 35.322212, 30.339790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.278114, 35.448044, 29.923687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302231, 35.786457, 30.135572>,  <27.316702, 35.989506, 30.262703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302231, 35.786457, 30.135572>,  <27.278114, 35.448044, 29.923687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.302231, 35.786457, 30.135572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312132, 0.520047, -0.795063,
		-0.948123, -0.117404, 0.295428,
		0.060293, 0.846030, 0.529714,
		27.320318, 36.040268, 30.294487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.565657, 35.782791, 29.909241>,  <27.278114, 35.448044, 29.923687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.565657, 35.782791, 29.909241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.866383, 36.041840, 29.958813>,  <27.046818, 36.197269, 29.988556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.866383, 36.041840, 29.958813>,  <26.565657, 35.782791, 29.909241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.866383, 36.041840, 29.958813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346958, 0.548376, -0.760857,
		-0.560707, 0.529027, 0.636976,
		0.751816, 0.647622, 0.123929,
		27.091927, 36.236126, 29.995991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.214138, 36.338112, 29.875238>,  <26.565657, 35.782791, 29.909241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.214138, 36.338112, 29.875238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.595152, 36.455437, 29.842623>,  <26.823761, 36.525829, 29.823053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.595152, 36.455437, 29.842623>,  <26.214138, 36.338112, 29.875238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.595152, 36.455437, 29.842623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207376, 0.429064, -0.879147,
		-0.222875, 0.854327, 0.469523,
		0.952534, 0.293308, -0.081540,
		26.880913, 36.543430, 29.818161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.177902, 36.780090, 29.368835>,  <26.214138, 36.338112, 29.875238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.177902, 36.780090, 29.368835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.573952, 36.730473, 29.342695>,  <26.811581, 36.700703, 29.327011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.573952, 36.730473, 29.342695>,  <26.177902, 36.780090, 29.368835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.573952, 36.730473, 29.342695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005845, 0.429185, -0.903197,
		0.140084, 0.894658, 0.424221,
		0.990122, -0.124044, -0.065351,
		26.870989, 36.693260, 29.323090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.416405, 37.386284, 29.008678>,  <26.177902, 36.780090, 29.368835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.416405, 37.386284, 29.008678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.739283, 37.151833, 28.980705>,  <26.933010, 37.011162, 28.963923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.739283, 37.151833, 28.980705>,  <26.416405, 37.386284, 29.008678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.739283, 37.151833, 28.980705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180970, 0.358495, -0.915822,
		0.561858, 0.726592, 0.395448,
		0.807196, -0.586126, -0.069932,
		26.981441, 36.975994, 28.959726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.938793, 37.816711, 28.781763>,  <26.416405, 37.386284, 29.008678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.938793, 37.816711, 28.781763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.042715, 37.445404, 28.675320>,  <27.105068, 37.222618, 28.611454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.042715, 37.445404, 28.675320>,  <26.938793, 37.816711, 28.781763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.042715, 37.445404, 28.675320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264307, 0.333403, -0.904977,
		0.928786, 0.164784, 0.331969,
		0.259805, -0.928272, -0.266107,
		27.120657, 37.166924, 28.595488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.606281, 37.851452, 28.461081>,  <26.938793, 37.816711, 28.781763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.606281, 37.851452, 28.461081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.410582, 37.531052, 28.323078>,  <27.293161, 37.338810, 28.240276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.410582, 37.531052, 28.323078>,  <27.606281, 37.851452, 28.461081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.410582, 37.531052, 28.323078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185794, 0.290780, -0.938577,
		0.852124, -0.523298, 0.006558,
		-0.489249, -0.801003, -0.345007,
		27.263807, 37.290752, 28.219576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.099524, 37.493328, 28.122971>,  <27.606281, 37.851452, 28.461081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.099524, 37.493328, 28.122971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.735428, 37.394932, 27.989735>,  <27.516970, 37.335892, 27.909794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.735428, 37.394932, 27.989735>,  <28.099524, 37.493328, 28.122971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.735428, 37.394932, 27.989735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215372, 0.405779, -0.888234,
		0.353658, -0.880245, -0.316377,
		-0.910242, -0.245993, -0.333087,
		27.462355, 37.321133, 27.889809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.059065, 37.708790, 27.477961>,  <28.099524, 37.493328, 28.122971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.059065, 37.708790, 27.477961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.683025, 37.572781, 27.468126>,  <27.457401, 37.491177, 27.462227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.683025, 37.572781, 27.468126>,  <28.059065, 37.708790, 27.477961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.683025, 37.572781, 27.468126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089005, 0.314418, -0.945103,
		0.329103, -0.886293, -0.325847,
		-0.940090, -0.340038, -0.024592,
		27.400995, 37.470776, 27.460751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.089882, 37.324871, 26.887899>,  <28.059065, 37.708790, 27.477961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.089882, 37.324871, 26.887899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.708336, 37.415867, 26.966267>,  <27.479408, 37.470467, 27.013287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.708336, 37.415867, 26.966267>,  <28.089882, 37.324871, 26.887899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.708336, 37.415867, 26.966267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095581, 0.388507, -0.916475,
		-0.284608, -0.892922, -0.348839,
		-0.953867, 0.227494, 0.195919,
		27.422176, 37.484116, 27.025042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.689463, 37.152271, 26.337284>,  <28.089882, 37.324871, 26.887899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.689463, 37.152271, 26.337284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471525, 37.440647, 26.508581>,  <27.340763, 37.613674, 26.611359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471525, 37.440647, 26.508581>,  <27.689463, 37.152271, 26.337284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.471525, 37.440647, 26.508581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152342, 0.417099, -0.896002,
		-0.824582, -0.553422, -0.117425,
		-0.544846, 0.720938, 0.428242,
		27.308071, 37.656929, 26.637054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.956333, 37.190964, 26.124659>,  <27.689463, 37.152271, 26.337284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.956333, 37.190964, 26.124659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.077433, 37.557472, 26.229576>,  <27.150091, 37.777378, 26.292526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.077433, 37.557472, 26.229576>,  <26.956333, 37.190964, 26.124659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.077433, 37.557472, 26.229576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226389, 0.336466, -0.914078,
		-0.925793, 0.217354, 0.309298,
		0.302747, 0.916268, 0.262292,
		27.168257, 37.832352, 26.308264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.441980, 37.706539, 25.900808>,  <26.956333, 37.190964, 26.124659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.441980, 37.706539, 25.900808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.799809, 37.883289, 25.927631>,  <27.014505, 37.989338, 25.943726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.799809, 37.883289, 25.927631>,  <26.441980, 37.706539, 25.900808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.799809, 37.883289, 25.927631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232161, 0.587640, -0.775100,
		-0.381901, 0.677812, 0.628269,
		0.894569, 0.441871, 0.067059,
		27.068180, 38.015850, 25.947748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.353458, 38.406887, 25.674492>,  <26.441980, 37.706539, 25.900808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.353458, 38.406887, 25.674492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.744518, 38.400150, 25.590662>,  <26.979155, 38.396107, 25.540365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.744518, 38.400150, 25.590662>,  <26.353458, 38.406887, 25.674492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.744518, 38.400150, 25.590662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119619, 0.775177, -0.620315,
		0.172904, 0.631519, 0.755836,
		0.977648, -0.016842, -0.209573,
		27.037813, 38.395096, 25.527790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.386057, 38.830513, 25.053125>,  <26.353458, 38.406887, 25.674492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.386057, 38.830513, 25.053125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.762218, 38.774433, 25.177052>,  <26.987915, 38.740788, 25.251408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.762218, 38.774433, 25.177052>,  <26.386057, 38.830513, 25.053125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.762218, 38.774433, 25.177052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310614, 0.724968, -0.614768,
		-0.138417, 0.674363, 0.725310,
		0.940404, -0.140197, 0.309815,
		27.044340, 38.732372, 25.269997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.793510, 38.233696, 24.732540>,  <26.386057, 38.830513, 25.053125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.793510, 38.233696, 24.732540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.130083, 38.085171, 24.889570>,  <27.332027, 37.996056, 24.983788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.130083, 38.085171, 24.889570>,  <26.793510, 38.233696, 24.732540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.130083, 38.085171, 24.889570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216295, -0.434323, -0.874403,
		0.495185, 0.820663, -0.285140,
		0.841432, -0.371316, 0.392576,
		27.382513, 37.973774, 25.007343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.490091, 38.459927, 24.377182>,  <26.793510, 38.233696, 24.732540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.490091, 38.459927, 24.377182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.517067, 38.099571, 24.548691>,  <27.533253, 37.883358, 24.651596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.517067, 38.099571, 24.548691>,  <27.490091, 38.459927, 24.377182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.517067, 38.099571, 24.548691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331618, -0.385079, -0.861245,
		0.941000, 0.200272, 0.272782,
		0.067441, -0.900891, 0.428773,
		27.537300, 37.829304, 24.677322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.203106, 38.150391, 24.331717>,  <27.490091, 38.459927, 24.377182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.203106, 38.150391, 24.331717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.926146, 37.862038, 24.343786>,  <27.759970, 37.689026, 24.351028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.926146, 37.862038, 24.343786>,  <28.203106, 38.150391, 24.331717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.926146, 37.862038, 24.343786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403118, -0.421203, -0.812455,
		0.598393, -0.550382, 0.582242,
		-0.692403, -0.720880, 0.030175,
		27.718424, 37.645775, 24.352839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.505495, 37.574146, 24.049152>,  <28.203106, 38.150391, 24.331717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.505495, 37.574146, 24.049152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.113794, 37.538303, 23.976452>,  <27.878773, 37.516800, 23.932831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.113794, 37.538303, 23.976452>,  <28.505495, 37.574146, 24.049152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.113794, 37.538303, 23.976452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201648, -0.342341, -0.917682,
		0.020008, -0.935293, 0.353307,
		-0.979254, -0.089604, -0.181751,
		27.820019, 37.511421, 23.921926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.067280, 38.178986, 24.160292>,  <28.505495, 37.574146, 24.049152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.067280, 38.178986, 24.160292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.462999, 38.229671, 24.189220>,  <29.700432, 38.260082, 24.206577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.462999, 38.229671, 24.189220>,  <29.067280, 38.178986, 24.160292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.462999, 38.229671, 24.189220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017163, -0.391186, 0.920152,
		0.144889, -0.911547, -0.384825,
		0.989299, 0.126714, 0.072324,
		29.759789, 38.267685, 24.210917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.401619, 37.664673, 24.604240>,  <29.067280, 38.178986, 24.160292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.401619, 37.664673, 24.604240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.726278, 37.895741, 24.569525>,  <29.921074, 38.034382, 24.548695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.726278, 37.895741, 24.569525>,  <29.401619, 37.664673, 24.604240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.726278, 37.895741, 24.569525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342493, -0.350237, 0.871798,
		0.473212, -0.737316, -0.482115,
		0.811646, 0.577667, -0.086790,
		29.969772, 38.069042, 24.543488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.135138, 37.359287, 24.780409>,  <29.401619, 37.664673, 24.604240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.135138, 37.359287, 24.780409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.138803, 37.750786, 24.862356>,  <30.141003, 37.985683, 24.911524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.138803, 37.750786, 24.862356>,  <30.135138, 37.359287, 24.780409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.138803, 37.750786, 24.862356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297137, -0.198287, 0.934019,
		0.954791, 0.052314, -0.292639,
		0.009164, 0.978747, 0.204867,
		30.141552, 38.044411, 24.923817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.824810, 37.594269, 25.148926>,  <30.135138, 37.359287, 24.780409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.824810, 37.594269, 25.148926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.543028, 37.859550, 25.250048>,  <30.373959, 38.018719, 25.310720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.543028, 37.859550, 25.250048>,  <30.824810, 37.594269, 25.148926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.543028, 37.859550, 25.250048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305537, -0.038123, 0.951417,
		0.640617, 0.747471, -0.175776,
		-0.704455, 0.663200, 0.252803,
		30.331692, 38.058510, 25.325888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092163, 38.168015, 25.630991>,  <30.824810, 37.594269, 25.148926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092163, 38.168015, 25.630991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.698624, 38.159462, 25.702084>,  <30.462500, 38.154331, 25.744740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.698624, 38.159462, 25.702084>,  <31.092163, 38.168015, 25.630991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.698624, 38.159462, 25.702084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177677, 0.004355, 0.984079,
		-0.021814, 0.999762, -0.000486,
		-0.983847, -0.021380, 0.177730,
		30.403469, 38.153049, 25.755402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070787, 38.460541, 26.274769>,  <31.092163, 38.168015, 25.630991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070787, 38.460541, 26.274769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.716358, 38.288609, 26.205347>,  <30.503700, 38.185448, 26.163694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.716358, 38.288609, 26.205347>,  <31.070787, 38.460541, 26.274769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.716358, 38.288609, 26.205347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091529, -0.204802, 0.974514,
		-0.454421, 0.879376, 0.142128,
		-0.886072, -0.429831, -0.173555,
		30.450537, 38.159660, 26.153280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.563585, 38.749363, 26.773615>,  <31.070787, 38.460541, 26.274769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.563585, 38.749363, 26.773615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.393347, 38.406822, 26.656637>,  <30.291204, 38.201298, 26.586451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.393347, 38.406822, 26.656637>,  <30.563585, 38.749363, 26.773615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.393347, 38.406822, 26.656637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083483, -0.284641, 0.954992,
		-0.901055, 0.430853, 0.049650,
		-0.425594, -0.856356, -0.292446,
		30.265669, 38.149914, 26.568903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.944658, 38.652687, 27.145424>,  <30.563585, 38.749363, 26.773615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.944658, 38.652687, 27.145424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.027725, 38.277336, 27.034920>,  <30.077564, 38.052124, 26.968618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.027725, 38.277336, 27.034920>,  <29.944658, 38.652687, 27.145424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.027725, 38.277336, 27.034920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064414, -0.294920, 0.953348,
		-0.976077, -0.180183, -0.121689,
		0.207666, -0.938380, -0.276259,
		30.090025, 37.995823, 26.952042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.408848, 38.260796, 27.426731>,  <29.944658, 38.652687, 27.145424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.408848, 38.260796, 27.426731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.716166, 38.016689, 27.349470>,  <29.900557, 37.870228, 27.303114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.716166, 38.016689, 27.349470>,  <29.408848, 38.260796, 27.426731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.716166, 38.016689, 27.349470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002336, -0.304422, 0.952535,
		-0.640096, -0.731373, -0.235310,
		0.768292, -0.610263, -0.193151,
		29.946653, 37.833611, 27.291525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.201820, 37.594875, 27.547140>,  <29.408848, 38.260796, 27.426731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.201820, 37.594875, 27.547140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.598207, 37.567589, 27.593323>,  <29.836040, 37.551216, 27.621033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.598207, 37.567589, 27.593323>,  <29.201820, 37.594875, 27.547140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.598207, 37.567589, 27.593323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133716, -0.437326, 0.889307,
		-0.010175, -0.896712, -0.442498,
		0.990968, -0.068217, 0.115455,
		29.895498, 37.547123, 27.627958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.183960, 37.075954, 27.961267>,  <29.201820, 37.594875, 27.547140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.183960, 37.075954, 27.961267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.566515, 37.192127, 27.973743>,  <29.796047, 37.261829, 27.981228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.566515, 37.192127, 27.973743>,  <29.183960, 37.075954, 27.961267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.566515, 37.192127, 27.973743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087274, -0.386011, 0.918356,
		0.278760, -0.875582, -0.394523,
		0.956387, 0.290433, 0.031189,
		29.853432, 37.279259, 27.983101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.577593, 36.438301, 28.010221>,  <29.183960, 37.075954, 27.961267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.577593, 36.438301, 28.010221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.794701, 36.734226, 28.169260>,  <29.924965, 36.911781, 28.264683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.794701, 36.734226, 28.169260>,  <29.577593, 36.438301, 28.010221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.794701, 36.734226, 28.169260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126050, -0.539788, 0.832310,
		0.830370, -0.401634, -0.386232,
		0.542767, 0.739810, 0.397598,
		29.957531, 36.956169, 28.288540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.215431, 36.169621, 28.286556>,  <29.577593, 36.438301, 28.010221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.215431, 36.169621, 28.286556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.148243, 36.500782, 28.500607>,  <30.107929, 36.699478, 28.629036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.148243, 36.500782, 28.500607>,  <30.215431, 36.169621, 28.286556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.148243, 36.500782, 28.500607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205941, -0.501390, 0.840355,
		0.964040, 0.251360, -0.086280,
		-0.167972, 0.827905, 0.535125,
		30.097851, 36.749153, 28.661144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.663126, 36.086651, 28.780039>,  <30.215431, 36.169621, 28.286556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.663126, 36.086651, 28.780039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.441774, 36.376053, 28.945114>,  <30.308964, 36.549694, 29.044159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.441774, 36.376053, 28.945114>,  <30.663126, 36.086651, 28.780039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.441774, 36.376053, 28.945114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046102, -0.468104, 0.882470,
		0.831652, 0.507367, 0.225684,
		-0.553380, 0.723504, 0.412690,
		30.275761, 36.593105, 29.068922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.981047, 36.137123, 29.352600>,  <30.663126, 36.086651, 28.780039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.981047, 36.137123, 29.352600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.620224, 36.299496, 29.411268>,  <30.403730, 36.396919, 29.446470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.620224, 36.299496, 29.411268>,  <30.981047, 36.137123, 29.352600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.620224, 36.299496, 29.411268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064490, -0.462762, 0.884133,
		0.426776, 0.788078, 0.443616,
		-0.902055, 0.405936, 0.146672,
		30.349607, 36.421276, 29.455271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.193907, 36.544411, 29.845070>,  <30.981047, 36.137123, 29.352600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.193907, 36.544411, 29.845070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.798058, 36.493511, 29.871756>,  <30.560547, 36.462971, 29.887768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.798058, 36.493511, 29.871756>,  <31.193907, 36.544411, 29.845070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.798058, 36.493511, 29.871756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120284, -0.479839, 0.869072,
		-0.078573, 0.868080, 0.490166,
		-0.989625, -0.127245, 0.066714,
		30.501169, 36.455338, 29.891769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.015184, 36.597076, 30.604864>,  <31.193907, 36.544411, 29.845070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.015184, 36.597076, 30.604864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.695017, 36.415295, 30.448509>,  <30.502916, 36.306225, 30.354696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.695017, 36.415295, 30.448509>,  <31.015184, 36.597076, 30.604864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.695017, 36.415295, 30.448509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058765, -0.589463, 0.805656,
		-0.596551, 0.667834, 0.445112,
		-0.800421, -0.454457, -0.390889,
		30.454891, 36.278957, 30.331242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.420118, 36.768654, 31.019033>,  <31.015184, 36.597076, 30.604864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.420118, 36.768654, 31.019033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.332394, 36.430561, 30.824106>,  <30.279758, 36.227703, 30.707150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.332394, 36.430561, 30.824106>,  <30.420118, 36.768654, 31.019033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.332394, 36.430561, 30.824106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195980, -0.451135, 0.870671,
		-0.955769, 0.286452, -0.066711,
		-0.219310, -0.845235, -0.487320,
		30.266602, 36.176991, 30.677910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.004414, 36.377426, 31.558699>,  <30.420118, 36.768654, 31.019033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.004414, 36.377426, 31.558699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.053349, 36.093540, 31.281185>,  <30.082708, 35.923206, 31.114677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.053349, 36.093540, 31.281185>,  <30.004414, 36.377426, 31.558699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.053349, 36.093540, 31.281185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320956, -0.689761, 0.649012,
		-0.939160, 0.143276, -0.312171,
		0.122336, -0.709719, -0.693782,
		30.090050, 35.880623, 31.073051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.412720, 36.023228, 31.489132>,  <30.004414, 36.377426, 31.558699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.412720, 36.023228, 31.489132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.718031, 35.782860, 31.394224>,  <29.901218, 35.638638, 31.337280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.718031, 35.782860, 31.394224>,  <29.412720, 36.023228, 31.489132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.718031, 35.782860, 31.394224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256672, -0.619070, 0.742208,
		-0.592895, -0.505612, -0.626763,
		0.763279, -0.600923, -0.237267,
		29.947014, 35.602581, 31.323044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.126633, 35.278160, 31.459875>,  <29.412720, 36.023228, 31.489132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.126633, 35.278160, 31.459875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.520247, 35.274555, 31.530973>,  <29.756414, 35.272392, 31.573633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.520247, 35.274555, 31.530973>,  <29.126633, 35.278160, 31.459875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.520247, 35.274555, 31.530973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132347, -0.704793, 0.696958,
		0.118992, -0.709356, -0.694734,
		0.984035, -0.009014, 0.177745,
		29.815456, 35.271851, 31.584297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.361731, 34.527927, 31.607288>,  <29.126633, 35.278160, 31.459875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.361731, 34.527927, 31.607288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.668585, 34.754379, 31.727951>,  <29.852697, 34.890251, 31.800348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.668585, 34.754379, 31.727951>,  <29.361731, 34.527927, 31.607288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.668585, 34.754379, 31.727951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098886, -0.568991, 0.816377,
		0.633815, -0.596444, -0.492477,
		0.767137, 0.566131, 0.301655,
		29.898726, 34.924217, 31.818447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.815735, 34.033928, 31.900766>,  <29.361731, 34.527927, 31.607288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.815735, 34.033928, 31.900766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.923885, 34.380653, 32.068352>,  <29.988775, 34.588688, 32.168903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.923885, 34.380653, 32.068352>,  <29.815735, 34.033928, 31.900766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.923885, 34.380653, 32.068352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093055, -0.456662, 0.884760,
		0.958247, -0.200231, -0.204133,
		0.270376, 0.866814, 0.418963,
		30.004999, 34.640697, 32.194042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.417404, 33.944695, 32.326229>,  <29.815735, 34.033928, 31.900766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.417404, 33.944695, 32.326229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.226057, 34.261627, 32.477684>,  <30.111248, 34.451786, 32.568558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.226057, 34.261627, 32.477684>,  <30.417404, 33.944695, 32.326229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.226057, 34.261627, 32.477684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020077, -0.421193, 0.906749,
		0.877930, 0.441361, 0.185577,
		-0.478367, 0.792336, 0.378640,
		30.082546, 34.499329, 32.591274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.632774, 33.849293, 32.962570>,  <30.417404, 33.944695, 32.326229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.632774, 33.849293, 32.962570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.342402, 34.121811, 33.000221>,  <30.168179, 34.285320, 33.022812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.342402, 34.121811, 33.000221>,  <30.632774, 33.849293, 32.962570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.342402, 34.121811, 33.000221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344632, -0.478769, 0.807471,
		0.595190, 0.553730, 0.582349,
		-0.725932, 0.681295, 0.094125,
		30.124622, 34.326199, 33.028458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.232021, 34.331860, 32.874081>,  <30.632774, 33.849293, 32.962570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.232021, 34.331860, 32.874081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.473965, 34.241863, 32.568523>,  <31.619131, 34.187866, 32.385189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.473965, 34.241863, 32.568523>,  <31.232021, 34.331860, 32.874081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.473965, 34.241863, 32.568523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747225, 0.492007, 0.446748,
		0.275323, -0.841015, 0.465716,
		0.604857, -0.224995, -0.763888,
		31.655422, 34.174366, 32.339355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898153, 34.099621, 33.186577>,  <31.232021, 34.331860, 32.874081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898153, 34.099621, 33.186577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.984219, 34.164192, 32.801319>,  <32.035858, 34.202934, 32.570164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.984219, 34.164192, 32.801319>,  <31.898153, 34.099621, 33.186577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.984219, 34.164192, 32.801319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878854, 0.398026, 0.263042,
		0.425818, -0.903060, -0.056227,
		0.215163, 0.161423, -0.963144,
		32.048767, 34.212620, 32.512375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.639553, 33.789936, 33.107964>,  <31.898153, 34.099621, 33.186577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.639553, 33.789936, 33.107964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536358, 34.119770, 32.906570>,  <32.474442, 34.317673, 32.785732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536358, 34.119770, 32.906570>,  <32.639553, 33.789936, 33.107964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536358, 34.119770, 32.906570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810710, 0.468231, 0.351439,
		0.525540, -0.317515, -0.789298,
		-0.257987, 0.824587, -0.503487,
		32.458961, 34.367146, 32.755524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243797, 34.134022, 32.827053>,  <32.639553, 33.789936, 33.107964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243797, 34.134022, 32.827053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960972, 34.397896, 32.928940>,  <32.791279, 34.556221, 32.990070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960972, 34.397896, 32.928940>,  <33.243797, 34.134022, 32.827053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960972, 34.397896, 32.928940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692369, 0.572541, 0.439115,
		0.143844, 0.486838, -0.861567,
		-0.707061, 0.659686, 0.254715,
		32.748852, 34.595802, 33.005356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354988, 34.785263, 32.652901>,  <33.243797, 34.134022, 32.827053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354988, 34.785263, 32.652901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127716, 34.808178, 32.981266>,  <32.991356, 34.821926, 33.178284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127716, 34.808178, 32.981266>,  <33.354988, 34.785263, 32.652901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127716, 34.808178, 32.981266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656261, 0.633414, 0.410010,
		-0.496486, 0.771690, -0.397488,
		-0.568175, 0.057292, 0.820911,
		32.957264, 34.825367, 33.227539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323746, 35.442177, 32.802807>,  <33.354988, 34.785263, 32.652901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323746, 35.442177, 32.802807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.246376, 35.249989, 33.144974>,  <33.199955, 35.134678, 33.350273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.246376, 35.249989, 33.144974>,  <33.323746, 35.442177, 32.802807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.246376, 35.249989, 33.144974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550024, 0.668884, 0.500068,
		-0.812441, 0.567226, 0.134889,
		-0.193426, -0.480468, 0.855416,
		33.188347, 35.105846, 33.401600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.968937, 35.882572, 33.288143>,  <33.323746, 35.442177, 32.802807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.968937, 35.882572, 33.288143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168301, 35.608440, 33.500526>,  <33.287918, 35.443962, 33.627956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168301, 35.608440, 33.500526>,  <32.968937, 35.882572, 33.288143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168301, 35.608440, 33.500526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304424, 0.711800, 0.632982,
		-0.811737, -0.153845, 0.563396,
		0.498407, -0.685326, 0.530961,
		33.317822, 35.402843, 33.659813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745312, 36.023758, 33.954937>,  <32.968937, 35.882572, 33.288143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.745312, 36.023758, 33.954937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079346, 35.808140, 33.998882>,  <33.279766, 35.678768, 34.025249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079346, 35.808140, 33.998882>,  <32.745312, 36.023758, 33.954937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079346, 35.808140, 33.998882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341759, 0.664825, 0.664235,
		-0.431093, -0.517143, 0.739406,
		0.835081, -0.539046, 0.109863,
		33.329868, 35.646427, 34.031841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811180, 35.934433, 34.612289>,  <32.745312, 36.023758, 33.954937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811180, 35.934433, 34.612289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179806, 35.860294, 34.475838>,  <33.400982, 35.815811, 34.393967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179806, 35.860294, 34.475838>,  <32.811180, 35.934433, 34.612289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179806, 35.860294, 34.475838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387050, 0.370258, 0.844453,
		-0.030213, -0.910250, 0.412956,
		0.921563, -0.185348, -0.341126,
		33.456276, 35.804691, 34.373501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137421, 35.485901, 35.077435>,  <32.811180, 35.934433, 34.612289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137421, 35.485901, 35.077435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.422428, 35.684719, 34.879337>,  <33.593433, 35.804008, 34.760479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.422428, 35.684719, 34.879337>,  <33.137421, 35.485901, 35.077435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422428, 35.684719, 34.879337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404378, 0.285917, 0.868752,
		0.573404, -0.819268, 0.002729,
		0.712521, 0.497043, -0.495240,
		33.636185, 35.833832, 34.730766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853138, 35.398071, 35.429089>,  <33.137421, 35.485901, 35.077435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853138, 35.398071, 35.429089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957130, 35.713039, 35.205524>,  <34.019527, 35.902020, 35.071388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957130, 35.713039, 35.205524>,  <33.853138, 35.398071, 35.429089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957130, 35.713039, 35.205524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557849, 0.349967, 0.752547,
		0.788171, -0.507435, -0.348277,
		0.259984, 0.787422, -0.558906,
		34.035126, 35.949265, 35.037853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567081, 35.489677, 35.516384>,  <33.853138, 35.398071, 35.429089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567081, 35.489677, 35.516384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435669, 35.841389, 35.378437>,  <34.356823, 36.052418, 35.295670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435669, 35.841389, 35.378437>,  <34.567081, 35.489677, 35.516384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435669, 35.841389, 35.378437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351963, 0.452809, 0.819199,
		0.876466, 0.147748, -0.458234,
		-0.328528, 0.879281, -0.344869,
		34.337112, 36.105171, 35.274975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062424, 35.933372, 35.678650>,  <34.567081, 35.489677, 35.516384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062424, 35.933372, 35.678650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764229, 36.196301, 35.634514>,  <34.585312, 36.354057, 35.608032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764229, 36.196301, 35.634514>,  <35.062424, 35.933372, 35.678650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764229, 36.196301, 35.634514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293847, 0.472717, 0.830779,
		0.598250, 0.586912, -0.545556,
		-0.745487, 0.657323, -0.110341,
		34.540581, 36.393497, 35.601410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326134, 36.580143, 35.859158>,  <35.062424, 35.933372, 35.678650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326134, 36.580143, 35.859158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932133, 36.639343, 35.894623>,  <34.695732, 36.674862, 35.915901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932133, 36.639343, 35.894623>,  <35.326134, 36.580143, 35.859158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932133, 36.639343, 35.894623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137488, 0.362963, 0.921604,
		0.104214, 0.919975, -0.377869,
		-0.985006, 0.147997, 0.088660,
		34.636631, 36.683743, 35.921219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243931, 37.281071, 36.176689>,  <35.326134, 36.580143, 35.859158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243931, 37.281071, 36.176689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901211, 37.081184, 36.227562>,  <34.695580, 36.961254, 36.258083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901211, 37.081184, 36.227562>,  <35.243931, 37.281071, 36.176689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901211, 37.081184, 36.227562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081443, 0.374689, 0.923567,
		-0.509172, 0.780956, -0.361733,
		-0.856803, -0.499715, 0.127178,
		34.644169, 36.931271, 36.265717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863194, 37.769714, 36.480930>,  <35.243931, 37.281071, 36.176689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.863194, 37.769714, 36.480930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.693390, 37.415672, 36.557224>,  <34.591507, 37.203247, 36.603001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.693390, 37.415672, 36.557224>,  <34.863194, 37.769714, 36.480930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693390, 37.415672, 36.557224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128347, 0.267355, 0.955012,
		-0.896283, 0.380927, -0.227094,
		-0.424505, -0.885108, 0.190735,
		34.566040, 37.150139, 36.614445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090824, 37.909401, 36.750465>,  <34.863194, 37.769714, 36.480930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090824, 37.909401, 36.750465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.211132, 37.542942, 36.856461>,  <34.283318, 37.323067, 36.920059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.211132, 37.542942, 36.856461>,  <34.090824, 37.909401, 36.750465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.211132, 37.542942, 36.856461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247703, 0.193273, 0.949362,
		-0.920966, -0.351181, -0.168800,
		0.300774, -0.916143, 0.264986,
		34.301365, 37.268101, 36.935955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551380, 37.734394, 37.249451>,  <34.090824, 37.909401, 36.750465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.551380, 37.734394, 37.249451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835831, 37.463299, 37.324249>,  <34.006500, 37.300640, 37.369129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835831, 37.463299, 37.324249>,  <33.551380, 37.734394, 37.249451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835831, 37.463299, 37.324249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111079, 0.154330, 0.981755,
		-0.694235, -0.718923, 0.034465,
		0.711125, -0.677741, 0.186998,
		34.049168, 37.259975, 37.380348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315247, 37.184582, 37.747543>,  <33.551380, 37.734394, 37.249451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315247, 37.184582, 37.747543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712475, 37.209721, 37.787262>,  <33.950813, 37.224804, 37.811092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712475, 37.209721, 37.787262>,  <33.315247, 37.184582, 37.747543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712475, 37.209721, 37.787262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108330, 0.162153, 0.980801,
		0.045540, -0.984762, 0.167838,
		0.993071, 0.062847, 0.099295,
		34.010395, 37.228577, 37.817051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518070, 36.683277, 38.341309>,  <33.315247, 37.184582, 37.747543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518070, 36.683277, 38.341309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831371, 36.922428, 38.273129>,  <34.019352, 37.065918, 38.232220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831371, 36.922428, 38.273129>,  <33.518070, 36.683277, 38.341309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831371, 36.922428, 38.273129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052296, 0.209838, 0.976337,
		0.619501, -0.773631, 0.133089,
		0.783252, 0.597882, -0.170452,
		34.066345, 37.101791, 38.221992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.099224, 36.464680, 38.789948>,  <33.518070, 36.683277, 38.341309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.099224, 36.464680, 38.789948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147617, 36.854790, 38.715981>,  <34.176651, 37.088856, 38.671600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147617, 36.854790, 38.715981>,  <34.099224, 36.464680, 38.789948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147617, 36.854790, 38.715981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084892, 0.195773, 0.976968,
		0.989018, -0.102496, 0.106479,
		0.120981, 0.975278, -0.184922,
		34.183910, 37.147373, 38.660503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619987, 36.707188, 39.240326>,  <34.099224, 36.464680, 38.789948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619987, 36.707188, 39.240326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.449005, 37.056786, 39.147881>,  <34.346416, 37.266544, 39.092415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.449005, 37.056786, 39.147881>,  <34.619987, 36.707188, 39.240326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449005, 37.056786, 39.147881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094858, 0.210873, 0.972900,
		0.899048, 0.437791, -0.007232,
		-0.427452, 0.873998, -0.231112,
		34.320770, 37.318985, 39.078548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967476, 37.203403, 39.586563>,  <34.619987, 36.707188, 39.240326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967476, 37.203403, 39.586563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628689, 37.393711, 39.491661>,  <34.425419, 37.507896, 39.434719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628689, 37.393711, 39.491661>,  <34.967476, 37.203403, 39.586563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628689, 37.393711, 39.491661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150179, 0.213994, 0.965222,
		0.509995, 0.853141, -0.109795,
		-0.846966, 0.475770, -0.237260,
		34.374599, 37.536442, 39.420483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977432, 37.604549, 40.105267>,  <34.967476, 37.203403, 39.586563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977432, 37.604549, 40.105267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604130, 37.621212, 39.962555>,  <34.380146, 37.631210, 39.876926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604130, 37.621212, 39.962555>,  <34.977432, 37.604549, 40.105267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604130, 37.621212, 39.962555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338891, 0.227159, 0.912990,
		0.119079, 0.972966, -0.197881,
		-0.933259, 0.041658, -0.356780,
		34.324150, 37.633709, 39.855522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792305, 38.194920, 40.316124>,  <34.977432, 37.604549, 40.105267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792305, 38.194920, 40.316124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470654, 37.966381, 40.250465>,  <34.277664, 37.829258, 40.211071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470654, 37.966381, 40.250465>,  <34.792305, 38.194920, 40.316124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470654, 37.966381, 40.250465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316212, 0.177289, 0.931975,
		-0.503376, 0.801334, -0.323229,
		-0.804128, -0.571343, -0.164148,
		34.229416, 37.794979, 40.201221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377144, 38.530304, 40.695541>,  <34.792305, 38.194920, 40.316124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377144, 38.530304, 40.695541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.184135, 38.186134, 40.630001>,  <34.068329, 37.979633, 40.590679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.184135, 38.186134, 40.630001>,  <34.377144, 38.530304, 40.695541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.184135, 38.186134, 40.630001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401560, 0.051065, 0.914408,
		-0.778409, 0.507019, -0.370150,
		-0.482524, -0.860421, -0.163849,
		34.039379, 37.928009, 40.580845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677887, 38.690544, 40.823978>,  <34.377144, 38.530304, 40.695541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677887, 38.690544, 40.823978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.714165, 38.293568, 40.857067>,  <33.735931, 38.055382, 40.876919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.714165, 38.293568, 40.857067>,  <33.677887, 38.690544, 40.823978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714165, 38.293568, 40.857067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433277, 0.035468, 0.900563,
		-0.896686, -0.117514, -0.426784,
		0.090691, -0.992438, 0.082720,
		33.741371, 37.995838, 40.881882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995350, 38.493305, 41.018856>,  <33.677887, 38.690544, 40.823978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995350, 38.493305, 41.018856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.259739, 38.209339, 41.116123>,  <33.418373, 38.038960, 41.174484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.259739, 38.209339, 41.116123>,  <32.995350, 38.493305, 41.018856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259739, 38.209339, 41.116123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339507, 0.006076, 0.940584,
		-0.669216, -0.704256, -0.237007,
		0.660972, -0.709920, 0.243166,
		33.458031, 37.996365, 41.189072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657673, 37.981445, 41.421215>,  <32.995350, 38.493305, 41.018856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657673, 37.981445, 41.421215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043861, 37.920486, 41.505722>,  <33.275574, 37.883911, 41.556427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043861, 37.920486, 41.505722>,  <32.657673, 37.981445, 41.421215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.043861, 37.920486, 41.505722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217771, -0.027155, 0.975622,
		-0.142947, -0.987946, -0.059406,
		0.965475, -0.152399, 0.211265,
		33.333504, 37.874767, 41.569103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605419, 37.506374, 41.973927>,  <32.657673, 37.981445, 41.421215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605419, 37.506374, 41.973927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955486, 37.697685, 42.003147>,  <33.165527, 37.812473, 42.020679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955486, 37.697685, 42.003147>,  <32.605419, 37.506374, 41.973927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955486, 37.697685, 42.003147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106755, 0.043622, 0.993328,
		0.471899, -0.877125, 0.089235,
		0.875165, 0.478276, 0.073053,
		33.218037, 37.841167, 42.025063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964828, 37.199867, 42.567345>,  <32.605419, 37.506374, 41.973927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964828, 37.199867, 42.567345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150894, 37.548923, 42.507858>,  <33.262535, 37.758358, 42.472168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150894, 37.548923, 42.507858>,  <32.964828, 37.199867, 42.567345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150894, 37.548923, 42.507858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028791, 0.152990, 0.987808,
		0.884757, -0.463774, 0.046041,
		0.465163, 0.872644, -0.148712,
		33.290443, 37.810719, 42.463245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221291, 37.338284, 43.201584>,  <32.964828, 37.199867, 42.567345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221291, 37.338284, 43.201584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298283, 37.689400, 43.026112>,  <33.344479, 37.900070, 42.920830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298283, 37.689400, 43.026112>,  <33.221291, 37.338284, 43.201584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298283, 37.689400, 43.026112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100418, 0.427073, 0.898624,
		0.976150, -0.217015, -0.005944,
		0.192477, 0.877788, -0.438680,
		33.356026, 37.952736, 42.894508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819241, 37.547050, 43.521004>,  <33.221291, 37.338284, 43.201584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819241, 37.547050, 43.521004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651321, 37.867832, 43.351002>,  <33.550571, 38.060303, 43.249001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651321, 37.867832, 43.351002>,  <33.819241, 37.547050, 43.521004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651321, 37.867832, 43.351002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091188, 0.503166, 0.859365,
		0.903026, 0.322003, -0.284356,
		-0.419796, 0.801959, -0.425010,
		33.525383, 38.108421, 43.223499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212414, 38.061115, 43.570267>,  <33.819241, 37.547050, 43.521004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212414, 38.061115, 43.570267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851078, 38.231880, 43.553692>,  <33.634277, 38.334339, 43.543747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851078, 38.231880, 43.553692>,  <34.212414, 38.061115, 43.570267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851078, 38.231880, 43.553692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154026, 0.413039, 0.897594,
		0.400312, 0.804451, -0.438872,
		-0.903342, 0.426915, -0.041438,
		33.580074, 38.359955, 43.541260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265980, 38.659317, 44.054920>,  <34.212414, 38.061115, 43.570267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265980, 38.659317, 44.054920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873108, 38.623524, 43.988808>,  <33.637386, 38.602047, 43.949139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873108, 38.623524, 43.988808>,  <34.265980, 38.659317, 44.054920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873108, 38.623524, 43.988808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187937, 0.455651, 0.870093,
		-0.002548, 0.885649, -0.464348,
		-0.982178, -0.089485, -0.165285,
		33.578453, 38.596680, 43.939220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972290, 39.282898, 44.225006>,  <34.265980, 38.659317, 44.054920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972290, 39.282898, 44.225006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.658398, 39.035961, 44.247227>,  <33.470062, 38.887798, 44.260559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.658398, 39.035961, 44.247227>,  <33.972290, 39.282898, 44.225006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.658398, 39.035961, 44.247227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204873, 0.342924, 0.916750,
		-0.584996, 0.708023, -0.395580,
		-0.784733, -0.617339, 0.055554,
		33.422977, 38.850758, 44.263893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466225, 39.791401, 44.328339>,  <33.972290, 39.282898, 44.225006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466225, 39.791401, 44.328339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343605, 39.430744, 44.450371>,  <33.270035, 39.214352, 44.523590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343605, 39.430744, 44.450371>,  <33.466225, 39.791401, 44.328339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.343605, 39.430744, 44.450371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287200, 0.393190, 0.873452,
		-0.907493, 0.180136, -0.379483,
		-0.306549, -0.901639, 0.305082,
		33.251640, 39.160252, 44.541897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860214, 40.035992, 44.672615>,  <33.466225, 39.791401, 44.328339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860214, 40.035992, 44.672615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.953590, 39.662785, 44.782150>,  <33.009617, 39.438862, 44.847870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.953590, 39.662785, 44.782150>,  <32.860214, 40.035992, 44.672615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.953590, 39.662785, 44.782150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321269, 0.191794, 0.927363,
		-0.917764, -0.304461, -0.254976,
		0.233443, -0.933016, 0.273835,
		33.023624, 39.382881, 44.864300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.376331, 39.747189, 45.119938>,  <32.860214, 40.035992, 44.672615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.376331, 39.747189, 45.119938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671074, 39.496216, 45.220634>,  <32.847919, 39.345631, 45.281052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671074, 39.496216, 45.220634>,  <32.376331, 39.747189, 45.119938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671074, 39.496216, 45.220634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254750, 0.087220, 0.963065,
		-0.626213, -0.773772, -0.095569,
		0.736857, -0.627431, 0.251737,
		32.892132, 39.307987, 45.296154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.040859, 39.182491, 45.494919>,  <32.376331, 39.747189, 45.119938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.040859, 39.182491, 45.494919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425365, 39.198807, 45.603954>,  <32.656071, 39.208595, 45.669376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425365, 39.198807, 45.603954>,  <32.040859, 39.182491, 45.494919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425365, 39.198807, 45.603954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274737, 0.062438, 0.959490,
		0.022107, -0.997215, 0.071223,
		0.961265, 0.040779, 0.272592,
		32.713745, 39.211044, 45.685730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.086189, 38.803661, 46.081600>,  <32.040859, 39.182491, 45.494919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.086189, 38.803661, 46.081600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.421249, 39.021656, 46.096153>,  <32.622288, 39.152454, 46.104885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.421249, 39.021656, 46.096153>,  <32.086189, 38.803661, 46.081600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.421249, 39.021656, 46.096153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170213, 0.197164, 0.965481,
		0.519001, -0.814933, 0.257919,
		0.837654, 0.544987, 0.036384,
		32.672546, 39.185150, 46.107067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347870, 38.618362, 46.766514>,  <32.086189, 38.803661, 46.081600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347870, 38.618362, 46.766514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549362, 38.948311, 46.663868>,  <32.670258, 39.146278, 46.602280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549362, 38.948311, 46.663868>,  <32.347870, 38.618362, 46.766514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549362, 38.948311, 46.663868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060419, 0.329970, 0.942056,
		0.861747, -0.459035, 0.216053,
		0.503728, 0.824868, -0.256616,
		32.700481, 39.195770, 46.586884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817780, 38.782433, 47.264317>,  <32.347870, 38.618362, 46.766514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817780, 38.782433, 47.264317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821384, 39.141514, 47.088116>,  <32.823547, 39.356964, 46.982395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821384, 39.141514, 47.088116>,  <32.817780, 38.782433, 47.264317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821384, 39.141514, 47.088116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003820, 0.440546, 0.897722,
		0.999952, -0.006407, 0.007399,
		0.009011, 0.897707, -0.440500,
		32.824089, 39.410828, 46.955967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280022, 39.296413, 47.696220>,  <32.817780, 38.782433, 47.264317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280022, 39.296413, 47.696220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027546, 39.505394, 47.466908>,  <32.876060, 39.630783, 47.329319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027546, 39.505394, 47.466908>,  <33.280022, 39.296413, 47.696220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.027546, 39.505394, 47.466908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159150, 0.636152, 0.754971,
		0.759128, 0.567765, -0.318383,
		-0.631186, 0.522449, -0.573281,
		32.838188, 39.662128, 47.294922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446854, 40.006306, 47.756634>,  <33.280022, 39.296413, 47.696220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446854, 40.006306, 47.756634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064442, 39.993935, 47.639984>,  <32.834995, 39.986511, 47.569992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064442, 39.993935, 47.639984>,  <33.446854, 40.006306, 47.756634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064442, 39.993935, 47.639984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268755, 0.490356, 0.829049,
		0.117360, 0.870973, -0.477108,
		-0.956032, -0.030928, -0.291627,
		32.777634, 39.984657, 47.552498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045639, 40.574188, 47.994846>,  <33.446854, 40.006306, 47.756634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045639, 40.574188, 47.994846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762230, 40.300304, 47.926537>,  <32.592186, 40.135975, 47.885551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762230, 40.300304, 47.926537>,  <33.045639, 40.574188, 47.994846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762230, 40.300304, 47.926537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423308, 0.218755, 0.879180,
		-0.564629, 0.695207, -0.444838,
		-0.708522, -0.684714, -0.170772,
		32.549675, 40.094891, 47.875305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.445972, 40.914848, 48.222324>,  <33.045639, 40.574188, 47.994846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.445972, 40.914848, 48.222324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366066, 40.523201, 48.237442>,  <32.318123, 40.288212, 48.246513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366066, 40.523201, 48.237442>,  <32.445972, 40.914848, 48.222324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366066, 40.523201, 48.237442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507867, 0.136444, 0.850561,
		-0.837954, 0.150717, -0.524517,
		-0.199762, -0.979116, 0.037790,
		32.306137, 40.229465, 48.248779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014080, 40.875961, 48.832874>,  <32.445972, 40.914848, 48.222324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014080, 40.875961, 48.832874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.052120, 40.498863, 48.705009>,  <32.074944, 40.272602, 48.628292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.052120, 40.498863, 48.705009>,  <32.014080, 40.875961, 48.832874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.052120, 40.498863, 48.705009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685682, -0.294830, 0.665520,
		-0.721662, 0.155893, -0.674464,
		0.095102, -0.942748, -0.319660,
		32.080650, 40.216038, 48.609112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.219479, 40.695171, 48.603973>,  <32.014080, 40.875961, 48.832874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.219479, 40.695171, 48.603973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.467875, 40.404476, 48.721424>,  <31.616913, 40.230057, 48.791897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.467875, 40.404476, 48.721424>,  <31.219479, 40.695171, 48.603973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.467875, 40.404476, 48.721424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665083, -0.290315, 0.688028,
		-0.414773, -0.622547, -0.663626,
		0.620990, -0.726741, 0.293630,
		31.654171, 40.186455, 48.809513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.788137, 40.127831, 48.348736>,  <31.219479, 40.695171, 48.603973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.788137, 40.127831, 48.348736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.060074, 40.100304, 48.640785>,  <31.223236, 40.083786, 48.816013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.060074, 40.100304, 48.640785>,  <30.788137, 40.127831, 48.348736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.060074, 40.100304, 48.640785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720174, -0.250601, 0.646953,
		0.138447, -0.965641, -0.219931,
		0.679839, -0.068820, 0.730125,
		31.264025, 40.079659, 48.859821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.600286, 39.526161, 48.705498>,  <30.788137, 40.127831, 48.348736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.600286, 39.526161, 48.705498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.810625, 39.751114, 48.960751>,  <30.936829, 39.886086, 49.113903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.810625, 39.751114, 48.960751>,  <30.600286, 39.526161, 48.705498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.810625, 39.751114, 48.960751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646029, -0.223948, 0.729721,
		0.553291, -0.795973, 0.245554,
		0.525847, 0.562383, 0.638130,
		30.968380, 39.919830, 49.152191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.883345, 39.135544, 49.254547>,  <30.600286, 39.526161, 48.705498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.883345, 39.135544, 49.254547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.832834, 39.516346, 49.366081>,  <30.802528, 39.744827, 49.433002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.832834, 39.516346, 49.366081>,  <30.883345, 39.135544, 49.254547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.832834, 39.516346, 49.366081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632153, -0.293844, 0.716964,
		0.764484, -0.085730, 0.638916,
		-0.126277, 0.952001, 0.278834,
		30.794950, 39.801945, 49.449730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.006634, 39.249790, 50.021141>,  <30.883345, 39.135544, 49.254547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.006634, 39.249790, 50.021141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.735773, 39.442352, 49.798534>,  <30.573257, 39.557888, 49.664970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.735773, 39.442352, 49.798534>,  <31.006634, 39.249790, 50.021141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.735773, 39.442352, 49.798534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731936, -0.362820, 0.576743,
		0.075730, 0.797879, 0.598041,
		-0.677152, 0.481404, -0.556520,
		30.532627, 39.586773, 49.631577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.470512, 38.960480, 50.199177>,  <31.006634, 39.249790, 50.021141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.470512, 38.960480, 50.199177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.285295, 39.253704, 49.999889>,  <30.174166, 39.429638, 49.880318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.285295, 39.253704, 49.999889>,  <30.470512, 38.960480, 50.199177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.285295, 39.253704, 49.999889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883801, -0.339376, 0.322057,
		0.067004, 0.589449, 0.805022,
		-0.463041, 0.733058, -0.498216,
		30.146383, 39.473621, 49.850426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778278, 38.993744, 50.863667>,  <30.470512, 38.960480, 50.199177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.778278, 38.993744, 50.863667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.795427, 38.625347, 51.018551>,  <30.805717, 38.404308, 51.111481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.795427, 38.625347, 51.018551>,  <30.778278, 38.993744, 50.863667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.795427, 38.625347, 51.018551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274965, -0.361721, -0.890815,
		0.960498, 0.144662, 0.237733,
		0.042874, -0.920994, 0.387210,
		30.808289, 38.349049, 51.134712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.470732, 38.749084, 50.881889>,  <30.778278, 38.993744, 50.863667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.470732, 38.749084, 50.881889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.213619, 38.450340, 50.813744>,  <31.059351, 38.271091, 50.772854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.213619, 38.450340, 50.813744>,  <31.470732, 38.749084, 50.881889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.213619, 38.450340, 50.813744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448609, -0.186721, -0.874005,
		0.620951, -0.638224, 0.455071,
		-0.642782, -0.746864, -0.170368,
		31.020784, 38.226280, 50.762634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.849243, 38.077324, 50.549637>,  <31.470732, 38.749084, 50.881889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.849243, 38.077324, 50.549637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.459105, 38.055103, 50.464207>,  <31.225021, 38.041771, 50.412949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.459105, 38.055103, 50.464207>,  <31.849243, 38.077324, 50.549637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.459105, 38.055103, 50.464207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220271, -0.304347, -0.926744,
		-0.013516, -0.950940, 0.309081,
		-0.975345, -0.055556, -0.213578,
		31.166500, 38.038437, 50.400135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.386578, 37.369537, 50.588867>,  <31.849243, 38.077324, 50.549637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.386578, 37.369537, 50.588867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.301037, 37.651344, 50.318188>,  <31.249712, 37.820431, 50.155781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.301037, 37.651344, 50.318188>,  <31.386578, 37.369537, 50.588867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.301037, 37.651344, 50.318188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225144, -0.638526, -0.735931,
		-0.950567, -0.309734, -0.022068,
		-0.213852, 0.704520, -0.676697,
		31.236881, 37.862701, 50.115177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.952785, 37.102345, 49.995293>,  <31.386578, 37.369537, 50.588867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.952785, 37.102345, 49.995293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.122736, 37.431114, 49.843540>,  <31.224707, 37.628376, 49.752487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.122736, 37.431114, 49.843540>,  <30.952785, 37.102345, 49.995293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.122736, 37.431114, 49.843540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173357, -0.485205, -0.857043,
		-0.888498, 0.298367, -0.348637,
		0.424874, 0.821920, -0.379380,
		31.250198, 37.677689, 49.729725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.672510, 37.204788, 49.297867>,  <30.952785, 37.102345, 49.995293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.672510, 37.204788, 49.297867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.041077, 37.359909, 49.307713>,  <31.262217, 37.452980, 49.313618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.041077, 37.359909, 49.307713>,  <30.672510, 37.204788, 49.297867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041077, 37.359909, 49.307713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289850, -0.643743, -0.708225,
		-0.258805, 0.659703, -0.705558,
		0.921416, 0.387798, 0.024611,
		31.317501, 37.476250, 49.315094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.856594, 37.204834, 48.568581>,  <30.672510, 37.204788, 49.297867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.856594, 37.204834, 48.568581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.187319, 37.208630, 48.793541>,  <31.385754, 37.210907, 48.928516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.187319, 37.208630, 48.793541>,  <30.856594, 37.204834, 48.568581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.187319, 37.208630, 48.793541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451408, -0.607716, -0.653384,
		0.335578, 0.794097, -0.506751,
		0.826812, 0.009490, 0.562398,
		31.435362, 37.211475, 48.962261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.426510, 37.377674, 48.118557>,  <30.856594, 37.204834, 48.568581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.426510, 37.377674, 48.118557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.606686, 37.190655, 48.422794>,  <31.714790, 37.078445, 48.605339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.606686, 37.190655, 48.422794>,  <31.426510, 37.377674, 48.118557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.606686, 37.190655, 48.422794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640146, -0.424713, -0.640181,
		0.622349, 0.775254, 0.107991,
		0.450438, -0.467546, 0.760596,
		31.741817, 37.050392, 48.650974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.055256, 37.239208, 47.877491>,  <31.426510, 37.377674, 48.118557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.055256, 37.239208, 47.877491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.025875, 36.988403, 48.187706>,  <32.008247, 36.837921, 48.373837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.025875, 36.988403, 48.187706>,  <32.055256, 37.239208, 47.877491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025875, 36.988403, 48.187706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371618, -0.738845, -0.562146,
		0.925476, 0.246916, 0.287274,
		-0.073448, -0.627008, 0.775542,
		32.003841, 36.800301, 48.420368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696384, 36.903248, 47.929821>,  <32.055256, 37.239208, 47.877491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696384, 36.903248, 47.929821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.464172, 36.642227, 48.124619>,  <32.324844, 36.485615, 48.241497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.464172, 36.642227, 48.124619>,  <32.696384, 36.903248, 47.929821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.464172, 36.642227, 48.124619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453102, -0.755840, -0.472656,
		0.676522, -0.053733, 0.734460,
		-0.580531, -0.652547, 0.486996,
		32.290012, 36.446465, 48.270718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130043, 36.268002, 48.145905>,  <32.696384, 36.903248, 47.929821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130043, 36.268002, 48.145905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748177, 36.150673, 48.166199>,  <32.519058, 36.080276, 48.178375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748177, 36.150673, 48.166199>,  <33.130043, 36.268002, 48.145905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748177, 36.150673, 48.166199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247245, -0.876245, -0.413599,
		0.165775, -0.382305, 0.909044,
		-0.954667, -0.293321, 0.050737,
		32.461777, 36.062675, 48.181419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138042, 35.590218, 48.325100>,  <33.130043, 36.268002, 48.145905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138042, 35.590218, 48.325100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771374, 35.616825, 48.167477>,  <32.551373, 35.632790, 48.072903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771374, 35.616825, 48.167477>,  <33.138042, 35.590218, 48.325100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771374, 35.616825, 48.167477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115465, -0.899912, -0.420507,
		-0.382589, -0.430968, 0.817247,
		-0.916675, 0.066518, -0.394058,
		32.496372, 35.636780, 48.049259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900303, 34.965336, 48.321548>,  <33.138042, 35.590218, 48.325100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900303, 34.965336, 48.321548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652683, 35.123917, 48.050373>,  <32.504112, 35.219067, 47.887669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652683, 35.123917, 48.050373>,  <32.900303, 34.965336, 48.321548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.652683, 35.123917, 48.050373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073470, -0.830209, -0.552590,
		-0.781906, -0.391890, 0.484815,
		-0.619052, 0.396454, -0.677937,
		32.466969, 35.242855, 47.846992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477959, 34.405472, 48.031525>,  <32.900303, 34.965336, 48.321548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477959, 34.405472, 48.031525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.432716, 34.687809, 47.751812>,  <32.405571, 34.857212, 47.583984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.432716, 34.687809, 47.751812>,  <32.477959, 34.405472, 48.031525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.432716, 34.687809, 47.751812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133774, -0.708209, -0.693214,
		-0.984537, 0.015142, 0.174524,
		-0.113103, 0.705841, -0.699283,
		32.398785, 34.899563, 47.542027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984934, 34.056374, 47.531948>,  <32.477959, 34.405472, 48.031525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984934, 34.056374, 47.531948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192684, 34.354919, 47.365486>,  <32.317333, 34.534046, 47.265610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192684, 34.354919, 47.365486>,  <31.984934, 34.056374, 47.531948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192684, 34.354919, 47.365486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270931, -0.605686, -0.748158,
		-0.810459, 0.275827, -0.516793,
		0.519377, 0.746367, -0.416154,
		32.348495, 34.578831, 47.240639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919928, 33.883030, 46.824707>,  <31.984934, 34.056374, 47.531948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919928, 33.883030, 46.824707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220795, 34.146194, 46.839630>,  <32.401314, 34.304092, 46.848583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220795, 34.146194, 46.839630>,  <31.919928, 33.883030, 46.824707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.220795, 34.146194, 46.839630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337895, -0.336460, -0.878989,
		-0.565747, 0.673754, -0.475380,
		0.752169, 0.657914, 0.037307,
		32.446445, 34.343567, 46.850822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.889282, 34.412979, 46.312077>,  <31.919928, 33.883030, 46.824707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.889282, 34.412979, 46.312077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276169, 34.363907, 46.401016>,  <32.508301, 34.334461, 46.454380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276169, 34.363907, 46.401016>,  <31.889282, 34.412979, 46.312077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276169, 34.363907, 46.401016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198644, -0.180003, -0.963400,
		0.158219, 0.975985, -0.149732,
		0.967216, -0.122685, 0.222354,
		32.566334, 34.327103, 46.467724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324017, 34.903587, 46.004219>,  <31.889282, 34.412979, 46.312077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324017, 34.903587, 46.004219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542194, 34.573956, 46.065388>,  <32.673100, 34.376179, 46.102089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542194, 34.573956, 46.065388>,  <32.324017, 34.903587, 46.004219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542194, 34.573956, 46.065388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152040, -0.082147, -0.984955,
		0.824240, 0.560490, 0.080486,
		0.545446, -0.824077, 0.152926,
		32.705830, 34.326733, 46.111267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023277, 34.954674, 45.554737>,  <32.324017, 34.903587, 46.004219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023277, 34.954674, 45.554737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.018917, 34.559986, 45.619564>,  <33.016300, 34.323174, 45.658459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.018917, 34.559986, 45.619564>,  <33.023277, 34.954674, 45.554737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018917, 34.559986, 45.619564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154339, -0.161790, -0.974681,
		0.987958, 0.014388, 0.154053,
		-0.010900, -0.986720, 0.162063,
		33.015648, 34.263969, 45.668182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496052, 34.795464, 45.006729>,  <33.023277, 34.954674, 45.554737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496052, 34.795464, 45.006729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326679, 34.451485, 45.120708>,  <33.225056, 34.245098, 45.189095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326679, 34.451485, 45.120708>,  <33.496052, 34.795464, 45.006729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326679, 34.451485, 45.120708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017437, -0.306740, -0.951634,
		0.905761, -0.407919, 0.114888,
		-0.423430, -0.859949, 0.284946,
		33.199650, 34.193501, 45.206192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965134, 34.261406, 44.834038>,  <33.496052, 34.795464, 45.006729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965134, 34.261406, 44.834038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587883, 34.130768, 44.809242>,  <33.361530, 34.052383, 44.794365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587883, 34.130768, 44.809242>,  <33.965134, 34.261406, 44.834038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.587883, 34.130768, 44.809242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109041, -0.127771, -0.985791,
		0.314035, -0.936488, 0.156117,
		-0.943129, -0.326596, -0.061990,
		33.304943, 34.032787, 44.790646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958176, 33.647083, 44.342766>,  <33.965134, 34.261406, 44.834038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958176, 33.647083, 44.342766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582489, 33.784389, 44.345226>,  <33.357079, 33.866772, 44.346703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582489, 33.784389, 44.345226>,  <33.958176, 33.647083, 44.342766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582489, 33.784389, 44.345226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032782, -0.071823, -0.996879,
		-0.341754, -0.936488, 0.078710,
		-0.939217, 0.343267, 0.006155,
		33.300724, 33.887371, 44.347073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586258, 33.170460, 43.940594>,  <33.958176, 33.647083, 44.342766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586258, 33.170460, 43.940594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.346939, 33.489052, 43.975582>,  <33.203346, 33.680206, 43.996574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.346939, 33.489052, 43.975582>,  <33.586258, 33.170460, 43.940594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.346939, 33.489052, 43.975582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182284, -0.028995, -0.982818,
		-0.780262, -0.603965, 0.162534,
		-0.598300, 0.796484, 0.087470,
		33.167450, 33.727997, 44.001823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967148, 32.999344, 43.469986>,  <33.586258, 33.170460, 43.940594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967148, 32.999344, 43.469986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955929, 33.395996, 43.520390>,  <32.949200, 33.633987, 43.550632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955929, 33.395996, 43.520390>,  <32.967148, 32.999344, 43.469986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955929, 33.395996, 43.520390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003551, 0.126154, -0.992004,
		-0.999600, -0.027372, -0.007060,
		-0.028044, 0.991633, 0.126006,
		32.947517, 33.693485, 43.558193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382610, 33.209579, 43.195911>,  <32.967148, 32.999344, 43.469986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382610, 33.209579, 43.195911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610390, 33.538364, 43.199947>,  <32.747059, 33.735638, 43.202370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610390, 33.538364, 43.199947>,  <32.382610, 33.209579, 43.195911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610390, 33.538364, 43.199947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165909, 0.126948, -0.977936,
		-0.805111, 0.555208, 0.208661,
		0.569447, 0.821966, 0.010093,
		32.781223, 33.784954, 43.202976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.000729, 33.777664, 42.732132>,  <32.382610, 33.209579, 43.195911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.000729, 33.777664, 42.732132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381603, 33.893616, 42.770737>,  <32.610126, 33.963188, 42.793900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381603, 33.893616, 42.770737>,  <32.000729, 33.777664, 42.732132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381603, 33.893616, 42.770737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029457, 0.227321, -0.973374,
		-0.304099, 0.929675, 0.207912,
		0.952185, 0.289878, 0.096513,
		32.667259, 33.980579, 42.799690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.043526, 34.372208, 42.406334>,  <32.000729, 33.777664, 42.732132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.043526, 34.372208, 42.406334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412144, 34.217056, 42.413410>,  <32.633312, 34.123966, 42.417656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412144, 34.217056, 42.413410>,  <32.043526, 34.372208, 42.406334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.412144, 34.217056, 42.413410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086817, 0.161432, -0.983058,
		0.378447, 0.907465, 0.182441,
		0.921543, -0.387874, 0.017690,
		32.688606, 34.100693, 42.418716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390900, 34.949383, 42.169308>,  <32.043526, 34.372208, 42.406334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390900, 34.949383, 42.169308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610382, 34.619297, 42.115730>,  <32.742073, 34.421246, 42.083584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610382, 34.619297, 42.115730>,  <32.390900, 34.949383, 42.169308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610382, 34.619297, 42.115730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121911, 0.237489, -0.963710,
		0.827078, 0.512466, 0.230914,
		0.548708, -0.825214, -0.133946,
		32.774994, 34.371735, 42.075546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989429, 35.147118, 41.804756>,  <32.390900, 34.949383, 42.169308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989429, 35.147118, 41.804756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957386, 34.756901, 41.722885>,  <32.938160, 34.522770, 41.673763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957386, 34.756901, 41.722885>,  <32.989429, 35.147118, 41.804756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957386, 34.756901, 41.722885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188591, 0.186792, -0.964127,
		0.978783, -0.115836, 0.169015,
		-0.080110, -0.975546, -0.204675,
		32.933353, 34.464237, 41.661484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426498, 35.031853, 41.264145>,  <32.989429, 35.147118, 41.804756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426498, 35.031853, 41.264145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169079, 34.725746, 41.258286>,  <33.014626, 34.542084, 41.254768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169079, 34.725746, 41.258286>,  <33.426498, 35.031853, 41.264145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169079, 34.725746, 41.258286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032540, 0.046482, -0.998389,
		0.764712, -0.642037, -0.054815,
		-0.643551, -0.765263, -0.014653,
		32.976013, 34.496166, 41.253891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529636, 34.855049, 40.614754>,  <33.426498, 35.031853, 41.264145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529636, 34.855049, 40.614754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.238075, 34.599880, 40.714165>,  <33.063141, 34.446781, 40.773811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.238075, 34.599880, 40.714165>,  <33.529636, 34.855049, 40.614754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.238075, 34.599880, 40.714165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160255, -0.193954, -0.967833,
		0.665601, -0.745280, 0.039143,
		-0.728899, -0.637918, 0.248531,
		33.019405, 34.408504, 40.788723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.611347, 34.130905, 40.262142>,  <33.529636, 34.855049, 40.614754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.611347, 34.130905, 40.262142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.220371, 34.176014, 40.333588>,  <32.985786, 34.203079, 40.376453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.220371, 34.176014, 40.333588>,  <33.611347, 34.130905, 40.262142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.220371, 34.176014, 40.333588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198226, -0.197596, -0.960032,
		-0.072972, -0.973775, 0.215491,
		-0.977436, 0.112771, 0.178609,
		32.927139, 34.209846, 40.387169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347927, 33.545460, 39.947475>,  <33.611347, 34.130905, 40.262142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347927, 33.545460, 39.947475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.051498, 33.809631, 39.995899>,  <32.873642, 33.968132, 40.024956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.051498, 33.809631, 39.995899>,  <33.347927, 33.545460, 39.947475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051498, 33.809631, 39.995899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250329, -0.104458, -0.962509,
		-0.623020, -0.743590, 0.242734,
		-0.741068, 0.660426, 0.121063,
		32.829178, 34.007759, 40.032219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785912, 33.242901, 39.819172>,  <33.347927, 33.545460, 39.947475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785912, 33.242901, 39.819172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710094, 33.627651, 39.740314>,  <32.664604, 33.858501, 39.693001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710094, 33.627651, 39.740314>,  <32.785912, 33.242901, 39.819172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710094, 33.627651, 39.740314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309362, -0.249065, -0.917748,
		-0.931862, -0.112967, 0.344778,
		-0.189547, 0.961876, -0.197147,
		32.653229, 33.916214, 39.681171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186058, 33.180569, 39.476612>,  <32.785912, 33.242901, 39.819172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186058, 33.180569, 39.476612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314182, 33.553600, 39.410046>,  <32.391056, 33.777420, 39.370106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314182, 33.553600, 39.410046>,  <32.186058, 33.180569, 39.476612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314182, 33.553600, 39.410046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261245, -0.081898, -0.961792,
		-0.910578, 0.351548, 0.217399,
		0.320311, 0.932581, -0.166415,
		32.410275, 33.833374, 39.360123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.674334, 33.542145, 39.131359>,  <32.186058, 33.180569, 39.476612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.674334, 33.542145, 39.131359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012562, 33.730221, 39.030220>,  <32.215500, 33.843067, 38.969536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012562, 33.730221, 39.030220>,  <31.674334, 33.542145, 39.131359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012562, 33.730221, 39.030220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309123, 0.045068, -0.949954,
		-0.435266, 0.881412, 0.183455,
		0.845569, 0.470193, -0.252848,
		32.266232, 33.871277, 38.954365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.543842, 33.869755, 38.455032>,  <31.674334, 33.542145, 39.131359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.543842, 33.869755, 38.455032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921824, 34.000523, 38.460594>,  <32.148613, 34.078983, 38.463932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921824, 34.000523, 38.460594>,  <31.543842, 33.869755, 38.455032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921824, 34.000523, 38.460594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033280, -0.053737, -0.998000,
		-0.325515, 0.943524, -0.061659,
		0.944951, 0.326916, 0.013909,
		32.205307, 34.098598, 38.464767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.589056, 34.452847, 37.963875>,  <31.543842, 33.869755, 38.455032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.589056, 34.452847, 37.963875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.937241, 34.263638, 38.018356>,  <32.146152, 34.150112, 38.051044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.937241, 34.263638, 38.018356>,  <31.589056, 34.452847, 37.963875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.937241, 34.263638, 38.018356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150982, -0.006804, -0.988513,
		0.468512, 0.881026, 0.065495,
		0.870460, -0.473019, 0.136207,
		32.198380, 34.121731, 38.059219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140003, 34.840271, 37.512508>,  <31.589056, 34.452847, 37.963875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.140003, 34.840271, 37.512508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289284, 34.474796, 37.576870>,  <32.378853, 34.255512, 37.615486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289284, 34.474796, 37.576870>,  <32.140003, 34.840271, 37.512508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289284, 34.474796, 37.576870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417748, 0.010646, -0.908501,
		0.828375, 0.406273, 0.385665,
		0.373205, -0.913690, 0.160901,
		32.401245, 34.200691, 37.625141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830406, 34.840557, 37.289356>,  <32.140003, 34.840271, 37.512508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830406, 34.840557, 37.289356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757076, 34.447346, 37.286846>,  <32.713078, 34.211418, 37.285339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757076, 34.447346, 37.286846>,  <32.830406, 34.840557, 37.289356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757076, 34.447346, 37.286846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403788, -0.069482, -0.912210,
		0.896296, -0.169764, 0.409675,
		-0.183325, -0.983032, -0.006272,
		32.702080, 34.152435, 37.284966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351967, 34.564762, 37.000732>,  <32.830406, 34.840557, 37.289356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351967, 34.564762, 37.000732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119003, 34.240517, 36.976383>,  <32.979225, 34.045971, 36.961773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119003, 34.240517, 36.976383>,  <33.351967, 34.564762, 37.000732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119003, 34.240517, 36.976383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486370, -0.287483, -0.825105,
		0.651339, -0.510158, 0.561690,
		-0.582410, -0.810612, -0.060876,
		32.944279, 33.997334, 36.958118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740368, 33.777752, 36.902966>,  <33.351967, 34.564762, 37.000732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740368, 33.777752, 36.902966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.382206, 33.824898, 36.731216>,  <33.167309, 33.853184, 36.628166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.382206, 33.824898, 36.731216>,  <33.740368, 33.777752, 36.902966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.382206, 33.824898, 36.731216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374855, -0.320846, -0.869794,
		-0.240276, -0.939770, 0.243106,
		-0.895405, 0.117861, -0.429369,
		33.113583, 33.860256, 36.602406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825989, 33.127800, 36.548401>,  <33.740368, 33.777752, 36.902966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825989, 33.127800, 36.548401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049126, 32.806908, 36.463329>,  <34.183010, 32.614372, 36.412289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049126, 32.806908, 36.463329>,  <33.825989, 33.127800, 36.548401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049126, 32.806908, 36.463329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038726, -0.230812, 0.972227,
		-0.829041, -0.550589, -0.097690,
		0.557846, -0.802233, -0.212675,
		34.216480, 32.566238, 36.399529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.537975, 32.554646, 36.906239>,  <33.825989, 33.127800, 36.548401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.537975, 32.554646, 36.906239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924187, 32.486496, 36.827526>,  <34.155914, 32.445606, 36.780296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924187, 32.486496, 36.827526>,  <33.537975, 32.554646, 36.906239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924187, 32.486496, 36.827526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152179, -0.243843, 0.957801,
		-0.211173, -0.954732, -0.209509,
		0.965530, -0.170379, -0.196783,
		34.213844, 32.435383, 36.768490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673885, 32.025913, 37.299194>,  <33.537975, 32.554646, 36.906239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673885, 32.025913, 37.299194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034595, 32.176338, 37.213989>,  <34.251022, 32.266594, 37.162868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034595, 32.176338, 37.213989>,  <33.673885, 32.025913, 37.299194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034595, 32.176338, 37.213989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296367, -0.179323, 0.938089,
		0.314582, -0.909077, -0.273162,
		0.901779, 0.376062, -0.213008,
		34.305130, 32.289158, 37.150085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085838, 31.506384, 37.470257>,  <33.673885, 32.025913, 37.299194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085838, 31.506384, 37.470257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286674, 31.852160, 37.480408>,  <34.407177, 32.059624, 37.486500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286674, 31.852160, 37.480408>,  <34.085838, 31.506384, 37.470257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286674, 31.852160, 37.480408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173133, -0.129230, 0.976383,
		0.847306, -0.485841, -0.214549,
		0.502093, 0.864441, 0.025382,
		34.437302, 32.111492, 37.488022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527920, 31.384262, 38.031609>,  <34.085838, 31.506384, 37.470257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.527920, 31.384262, 38.031609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575748, 31.777411, 37.975506>,  <34.604446, 32.013298, 37.941845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575748, 31.777411, 37.975506>,  <34.527920, 31.384262, 38.031609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575748, 31.777411, 37.975506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227726, 0.110355, 0.967452,
		0.966356, -0.147616, -0.210630,
		0.119567, 0.982869, -0.140258,
		34.611618, 32.072269, 37.933430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147205, 31.569336, 38.374054>,  <34.527920, 31.384262, 38.031609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147205, 31.569336, 38.374054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.902847, 31.884081, 38.339069>,  <34.756233, 32.072929, 38.318077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.902847, 31.884081, 38.339069>,  <35.147205, 31.569336, 38.374054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902847, 31.884081, 38.339069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138692, 0.215126, 0.966688,
		0.779467, 0.578417, -0.240552,
		-0.610898, 0.786864, -0.087462,
		34.719578, 32.120140, 38.312832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.601925, 32.135281, 38.632538>,  <35.147205, 31.569336, 38.374054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.601925, 32.135281, 38.632538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.221981, 32.249977, 38.682400>,  <34.994015, 32.318794, 38.712318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.221981, 32.249977, 38.682400>,  <35.601925, 32.135281, 38.632538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.221981, 32.249977, 38.682400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239383, 0.410470, 0.879892,
		0.201134, 0.865618, -0.458531,
		-0.949864, 0.286740, 0.124655,
		34.937023, 32.335999, 38.719795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652992, 32.780205, 38.962585>,  <35.601925, 32.135281, 38.632538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652992, 32.780205, 38.962585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.272469, 32.673996, 39.025208>,  <35.044155, 32.610271, 39.062782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.272469, 32.673996, 39.025208>,  <35.652992, 32.780205, 38.962585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272469, 32.673996, 39.025208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100190, 0.213975, 0.971687,
		-0.291504, 0.940060, -0.176954,
		-0.951308, -0.265521, 0.156559,
		34.987076, 32.594341, 39.072174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243416, 33.372105, 39.228973>,  <35.652992, 32.780205, 38.962585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243416, 33.372105, 39.228973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071220, 33.023945, 39.324543>,  <34.967903, 32.815048, 39.381886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071220, 33.023945, 39.324543>,  <35.243416, 33.372105, 39.228973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071220, 33.023945, 39.324543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333801, 0.092417, 0.938102,
		-0.838602, 0.483600, 0.250754,
		-0.430493, -0.870396, 0.238928,
		34.942074, 32.762825, 39.396221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921013, 33.519672, 39.878597>,  <35.243416, 33.372105, 39.228973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921013, 33.519672, 39.878597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899231, 33.120270, 39.880627>,  <34.886162, 32.880630, 39.881844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899231, 33.120270, 39.880627>,  <34.921013, 33.519672, 39.878597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899231, 33.120270, 39.880627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078323, 0.000797, 0.996928,
		-0.995440, 0.054682, 0.078163,
		-0.054452, -0.998504, 0.005077,
		34.882896, 32.820717, 39.882149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421394, 33.302574, 40.399216>,  <34.921013, 33.519672, 39.878597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421394, 33.302574, 40.399216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611557, 32.957088, 40.332306>,  <34.725655, 32.749798, 40.292160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611557, 32.957088, 40.332306>,  <34.421394, 33.302574, 40.399216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611557, 32.957088, 40.332306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031207, -0.173461, 0.984346,
		-0.879214, -0.473182, -0.055510,
		0.475404, -0.863719, -0.167276,
		34.754177, 32.697971, 40.282124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095715, 32.844074, 40.738457>,  <34.421394, 33.302574, 40.399216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095715, 32.844074, 40.738457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465664, 32.695354, 40.706520>,  <34.687634, 32.606121, 40.687359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465664, 32.695354, 40.706520>,  <34.095715, 32.844074, 40.738457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465664, 32.695354, 40.706520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006005, -0.195645, 0.980657,
		-0.380233, -0.907461, -0.178713,
		0.924871, -0.371804, -0.079839,
		34.743126, 32.583813, 40.682568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136612, 32.293816, 41.127346>,  <34.095715, 32.844074, 40.738457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136612, 32.293816, 41.127346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520531, 32.404228, 41.106941>,  <34.750881, 32.470474, 41.094700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520531, 32.404228, 41.106941>,  <34.136612, 32.293816, 41.127346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520531, 32.404228, 41.106941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087328, -0.120916, 0.988814,
		0.266777, -0.953512, -0.140160,
		0.959793, 0.276033, -0.051010,
		34.808468, 32.487038, 41.091637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517193, 31.831259, 41.467789>,  <34.136612, 32.293816, 41.127346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517193, 31.831259, 41.467789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.743324, 32.161041, 41.478195>,  <34.879002, 32.358910, 41.484440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.743324, 32.161041, 41.478195>,  <34.517193, 31.831259, 41.467789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743324, 32.161041, 41.478195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266009, -0.212076, 0.940353,
		0.780795, -0.524689, -0.339205,
		0.565330, 0.824454, 0.026016,
		34.912922, 32.408379, 41.486000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088680, 31.614136, 41.847160>,  <34.517193, 31.831259, 41.467789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088680, 31.614136, 41.847160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.123425, 32.012249, 41.864437>,  <35.144272, 32.251118, 41.874802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.123425, 32.012249, 41.864437>,  <35.088680, 31.614136, 41.847160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123425, 32.012249, 41.864437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441727, -0.077335, 0.893810,
		0.892935, -0.058560, -0.446361,
		0.086861, 0.995284, 0.043188,
		35.149483, 32.310833, 41.877392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724499, 31.821253, 42.143131>,  <35.088680, 31.614136, 41.847160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724499, 31.821253, 42.143131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507198, 32.153114, 42.194592>,  <35.376816, 32.352230, 42.225468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507198, 32.153114, 42.194592>,  <35.724499, 31.821253, 42.143131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507198, 32.153114, 42.194592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180656, -0.034125, 0.982954,
		0.819902, 0.557234, -0.131343,
		-0.543254, 0.829654, 0.128646,
		35.344223, 32.402012, 42.233185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088165, 32.202671, 42.596027>,  <35.724499, 31.821253, 42.143131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088165, 32.202671, 42.596027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713448, 32.334034, 42.644306>,  <35.488617, 32.412853, 42.673271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713448, 32.334034, 42.644306>,  <36.088165, 32.202671, 42.596027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713448, 32.334034, 42.644306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147739, 0.058585, 0.987290,
		0.317167, 0.942716, -0.103401,
		-0.936791, 0.328412, 0.120695,
		35.432411, 32.432556, 42.680515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161232, 32.479862, 43.199886>,  <36.088165, 32.202671, 42.596027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161232, 32.479862, 43.199886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761978, 32.478310, 43.175488>,  <35.522427, 32.477379, 43.160847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761978, 32.478310, 43.175488>,  <36.161232, 32.479862, 43.199886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761978, 32.478310, 43.175488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061103, 0.036703, 0.997456,
		-0.001632, 0.999318, -0.036871,
		-0.998130, -0.003881, -0.061001,
		35.462540, 32.477146, 43.157188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882908, 33.078156, 43.629944>,  <36.161232, 32.479862, 43.199886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.882908, 33.078156, 43.629944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578499, 32.823872, 43.578220>,  <35.395855, 32.671303, 43.547184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578499, 32.823872, 43.578220>,  <35.882908, 33.078156, 43.629944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578499, 32.823872, 43.578220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180307, 0.015793, 0.983484,
		-0.623168, 0.771767, -0.126641,
		-0.761020, -0.635710, -0.129313,
		35.350193, 32.633160, 43.539425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457211, 33.330139, 44.169128>,  <35.882908, 33.078156, 43.629944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457211, 33.330139, 44.169128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303707, 32.977016, 44.060768>,  <35.211605, 32.765144, 43.995754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303707, 32.977016, 44.060768>,  <35.457211, 33.330139, 44.169128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303707, 32.977016, 44.060768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334538, -0.140521, 0.931847,
		-0.860706, 0.448228, -0.241406,
		-0.383757, -0.882805, -0.270897,
		35.188580, 32.712173, 43.979500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736813, 33.375275, 44.366936>,  <35.457211, 33.330139, 44.169128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736813, 33.375275, 44.366936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837002, 32.988140, 44.357487>,  <34.897118, 32.755859, 44.351818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837002, 32.988140, 44.357487>,  <34.736813, 33.375275, 44.366936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837002, 32.988140, 44.357487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160623, -0.065604, 0.984833,
		-0.954705, -0.242884, -0.171889,
		0.250477, -0.967834, -0.023620,
		34.912144, 32.697788, 44.350399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223389, 33.074799, 44.712547>,  <34.736813, 33.375275, 44.366936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223389, 33.074799, 44.712547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.557343, 32.858223, 44.752159>,  <34.757717, 32.728279, 44.775928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.557343, 32.858223, 44.752159>,  <34.223389, 33.074799, 44.712547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557343, 32.858223, 44.752159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057645, 0.092922, 0.994003,
		-0.547392, -0.835591, 0.046368,
		0.834889, -0.541436, 0.099032,
		34.807808, 32.695793, 44.781868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132622, 32.783024, 45.302937>,  <34.223389, 33.074799, 44.712547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.132622, 32.783024, 45.302937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524696, 32.735977, 45.239193>,  <34.759941, 32.707748, 45.200947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524696, 32.735977, 45.239193>,  <34.132622, 32.783024, 45.302937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524696, 32.735977, 45.239193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189476, 0.322503, 0.927411,
		-0.057684, -0.939233, 0.338399,
		0.980189, -0.117615, -0.159359,
		34.818752, 32.700691, 45.191387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316475, 32.329887, 45.813274>,  <34.132622, 32.783024, 45.302937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316475, 32.329887, 45.813274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637287, 32.545681, 45.710747>,  <34.829777, 32.675159, 45.649231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637287, 32.545681, 45.710747>,  <34.316475, 32.329887, 45.813274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637287, 32.545681, 45.710747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135710, 0.253313, 0.957818,
		0.581658, -0.802987, 0.129951,
		0.802033, 0.539486, -0.256315,
		34.877895, 32.707527, 45.633854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944733, 32.102676, 46.263176>,  <34.316475, 32.329887, 45.813274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944733, 32.102676, 46.263176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044243, 32.460075, 46.113628>,  <35.103951, 32.674515, 46.023899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044243, 32.460075, 46.113628>,  <34.944733, 32.102676, 46.263176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044243, 32.460075, 46.113628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132263, 0.351054, 0.926967,
		0.959488, -0.280055, -0.030843,
		0.248774, 0.893493, -0.373873,
		35.118874, 32.728123, 46.001465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448833, 32.446674, 46.741669>,  <34.944733, 32.102676, 46.263176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448833, 32.446674, 46.741669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.305229, 32.753353, 46.528770>,  <35.219067, 32.937359, 46.401031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.305229, 32.753353, 46.528770>,  <35.448833, 32.446674, 46.741669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305229, 32.753353, 46.528770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083801, 0.594438, 0.799763,
		0.929563, 0.242523, -0.277662,
		-0.359013, 0.766698, -0.532244,
		35.197525, 32.983364, 46.369099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808060, 33.034710, 46.980274>,  <35.448833, 32.446674, 46.741669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808060, 33.034710, 46.980274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476223, 33.185410, 46.815430>,  <35.277122, 33.275829, 46.716522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476223, 33.185410, 46.815430>,  <35.808060, 33.034710, 46.980274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476223, 33.185410, 46.815430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009397, 0.728533, 0.684946,
		0.558290, 0.572099, -0.600845,
		-0.829593, 0.376752, -0.412109,
		35.227345, 33.298435, 46.691795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912296, 33.706528, 46.880047>,  <35.808060, 33.034710, 46.980274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912296, 33.706528, 46.880047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.514069, 33.668911, 46.880432>,  <35.275131, 33.646339, 46.880661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.514069, 33.668911, 46.880432>,  <35.912296, 33.706528, 46.880047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514069, 33.668911, 46.880432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056751, 0.608881, 0.791229,
		-0.074992, 0.787667, -0.611520,
		-0.995568, -0.094040, 0.000960,
		35.215397, 33.640697, 46.880722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683720, 34.406403, 46.929264>,  <35.912296, 33.706528, 46.880047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683720, 34.406403, 46.929264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.375801, 34.185829, 47.057846>,  <35.191048, 34.053486, 47.134995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.375801, 34.185829, 47.057846>,  <35.683720, 34.406403, 46.929264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375801, 34.185829, 47.057846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179242, 0.670113, 0.720292,
		-0.612602, 0.496862, -0.614692,
		-0.769799, -0.551431, 0.321454,
		35.144863, 34.020401, 47.154282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105259, 34.896580, 46.921150>,  <35.683720, 34.406403, 46.929264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105259, 34.896580, 46.921150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991726, 34.613960, 47.180450>,  <34.923607, 34.444389, 47.336029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991726, 34.613960, 47.180450>,  <35.105259, 34.896580, 46.921150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991726, 34.613960, 47.180450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275322, 0.707636, 0.650730,
		-0.918496, 0.006224, -0.395380,
		-0.283835, -0.706550, 0.648247,
		34.906574, 34.401997, 47.374924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487480, 35.132481, 47.215389>,  <35.105259, 34.896580, 46.921150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487480, 35.132481, 47.215389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634129, 34.866959, 47.476143>,  <34.722118, 34.707645, 47.632595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634129, 34.866959, 47.476143>,  <34.487480, 35.132481, 47.215389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634129, 34.866959, 47.476143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286075, 0.586291, 0.757907,
		-0.885298, -0.464349, 0.025046,
		0.366618, -0.663809, 0.651881,
		34.744114, 34.667816, 47.671707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039253, 35.060215, 47.684254>,  <34.487480, 35.132481, 47.215389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039253, 35.060215, 47.684254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.370373, 34.936924, 47.871765>,  <34.569046, 34.862949, 47.984272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.370373, 34.936924, 47.871765>,  <34.039253, 35.060215, 47.684254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370373, 34.936924, 47.871765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147010, 0.687196, 0.711442,
		-0.541424, -0.657844, 0.523547,
		0.827797, -0.308225, 0.468774,
		34.618713, 34.844456, 48.012398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830757, 35.147350, 48.347313>,  <34.039253, 35.060215, 47.684254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830757, 35.147350, 48.347313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226749, 35.106812, 48.386658>,  <34.464344, 35.082489, 48.410263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226749, 35.106812, 48.386658>,  <33.830757, 35.147350, 48.347313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226749, 35.106812, 48.386658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018053, 0.599943, 0.799839,
		-0.140074, -0.793597, 0.592100,
		0.989976, -0.101348, 0.098363,
		34.523743, 35.076408, 48.416168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012749, 34.846737, 48.975315>,  <33.830757, 35.147350, 48.347313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012749, 34.846737, 48.975315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346687, 35.043415, 48.876305>,  <34.547050, 35.161423, 48.816898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346687, 35.043415, 48.876305>,  <34.012749, 34.846737, 48.975315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346687, 35.043415, 48.876305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194117, 0.683721, 0.703452,
		0.515123, -0.539224, 0.666248,
		0.834845, 0.491694, -0.247528,
		34.597141, 35.190922, 48.802048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351978, 34.976254, 49.590775>,  <34.012749, 34.846737, 48.975315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351978, 34.976254, 49.590775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.469379, 35.262550, 49.337296>,  <34.539822, 35.434326, 49.185207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.469379, 35.262550, 49.337296>,  <34.351978, 34.976254, 49.590775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.469379, 35.262550, 49.337296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344787, 0.697534, 0.628147,
		0.891615, 0.034126, 0.451507,
		0.293505, 0.715739, -0.633698,
		34.557430, 35.477272, 49.147186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530472, 35.437500, 49.990402>,  <34.351978, 34.976254, 49.590775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530472, 35.437500, 49.990402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.535725, 35.669235, 49.664410>,  <34.538876, 35.808277, 49.468815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.535725, 35.669235, 49.664410>,  <34.530472, 35.437500, 49.990402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.535725, 35.669235, 49.664410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119696, 0.810103, 0.573940,
		0.992724, 0.090011, 0.079986,
		0.013135, 0.579337, -0.814982,
		34.539665, 35.843037, 49.419914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974262, 36.049446, 50.201645>,  <34.530472, 35.437500, 49.990402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974262, 36.049446, 50.201645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710964, 36.143276, 49.915516>,  <34.552986, 36.199574, 49.743839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710964, 36.143276, 49.915516>,  <34.974262, 36.049446, 50.201645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710964, 36.143276, 49.915516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217615, 0.850354, 0.479105,
		0.720665, 0.471034, -0.508694,
		-0.658245, 0.234574, -0.715324,
		34.513493, 36.213650, 49.700920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077732, 36.728680, 50.086552>,  <34.974262, 36.049446, 50.201645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077732, 36.728680, 50.086552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715862, 36.659340, 49.930851>,  <34.498741, 36.617737, 49.837429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715862, 36.659340, 49.930851>,  <35.077732, 36.728680, 50.086552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715862, 36.659340, 49.930851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349916, 0.823519, 0.446515,
		0.243154, 0.540156, -0.805672,
		-0.904674, -0.173346, -0.389251,
		34.444462, 36.607338, 49.814075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771862, 37.269974, 49.636688>,  <35.077732, 36.728680, 50.086552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771862, 37.269974, 49.636688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447792, 37.094318, 49.792004>,  <34.253349, 36.988926, 49.885193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447792, 37.094318, 49.792004>,  <34.771862, 37.269974, 49.636688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447792, 37.094318, 49.792004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257280, 0.861581, 0.437590,
		-0.526708, 0.254625, -0.811015,
		-0.810176, -0.439140, 0.388291,
		34.204739, 36.962578, 49.908489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620777, 37.658016, 50.202740>,  <34.771862, 37.269974, 49.636688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620777, 37.658016, 50.202740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819435, 38.002724, 50.161362>,  <34.938629, 38.209549, 50.136536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819435, 38.002724, 50.161362>,  <34.620777, 37.658016, 50.202740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819435, 38.002724, 50.161362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130704, -0.192078, -0.972637,
		-0.858057, 0.469534, -0.208031,
		0.496644, 0.861768, -0.103444,
		34.968430, 38.261253, 50.130329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377407, 38.092083, 49.612289>,  <34.620777, 37.658016, 50.202740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377407, 38.092083, 49.612289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.741768, 38.245106, 49.674145>,  <34.960384, 38.336918, 49.711258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.741768, 38.245106, 49.674145>,  <34.377407, 38.092083, 49.612289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741768, 38.245106, 49.674145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167650, -0.000679, -0.985846,
		-0.377037, 0.923932, -0.064754,
		0.910899, 0.382557, 0.154641,
		35.015038, 38.359871, 49.720535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421093, 38.756016, 49.261997>,  <34.377407, 38.092083, 49.612289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421093, 38.756016, 49.261997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759686, 38.546036, 49.297546>,  <34.962841, 38.420048, 49.318878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759686, 38.546036, 49.297546>,  <34.421093, 38.756016, 49.261997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759686, 38.546036, 49.297546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110970, 0.010691, -0.993766,
		0.520724, 0.851068, 0.067303,
		0.846482, -0.524947, 0.088876,
		35.013630, 38.388554, 49.324211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730652, 38.782402, 48.550850>,  <34.421093, 38.756016, 49.261997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730652, 38.782402, 48.550850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006916, 38.556835, 48.731953>,  <35.172672, 38.421494, 48.840614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006916, 38.556835, 48.731953>,  <34.730652, 38.782402, 48.550850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006916, 38.556835, 48.731953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514664, -0.056546, -0.855525,
		0.508047, 0.823893, 0.251174,
		0.690658, -0.563918, 0.452756,
		35.214115, 38.387661, 48.867779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389473, 39.025791, 48.302402>,  <34.730652, 38.782402, 48.550850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389473, 39.025791, 48.302402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439468, 38.655975, 48.446400>,  <35.469467, 38.434086, 48.532799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439468, 38.655975, 48.446400>,  <35.389473, 39.025791, 48.302402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439468, 38.655975, 48.446400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451357, -0.270135, -0.850473,
		0.883547, 0.268784, 0.383536,
		0.124987, -0.924544, 0.359995,
		35.476963, 38.378613, 48.554398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838409, 38.809845, 47.848305>,  <35.389473, 39.025791, 48.302402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838409, 38.809845, 47.848305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.748554, 38.456932, 48.013775>,  <35.694641, 38.245186, 48.113056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.748554, 38.456932, 48.013775>,  <35.838409, 38.809845, 47.848305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748554, 38.456932, 48.013775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211697, -0.458567, -0.863076,
		0.951170, -0.106304, 0.289785,
		-0.224634, -0.882279, 0.413671,
		35.681164, 38.192249, 48.137875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352421, 38.311234, 47.640301>,  <35.838409, 38.809845, 47.848305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352421, 38.311234, 47.640301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.014954, 38.120892, 47.739731>,  <35.812473, 38.006687, 47.799389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.014954, 38.120892, 47.739731>,  <36.352421, 38.311234, 47.640301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014954, 38.120892, 47.739731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023408, -0.495176, -0.868478,
		0.536356, -0.726888, 0.428902,
		-0.843667, -0.475853, 0.248575,
		35.761852, 37.978134, 47.814304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515614, 37.624397, 47.587471>,  <36.352421, 38.311234, 47.640301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515614, 37.624397, 47.587471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.117237, 37.600117, 47.560894>,  <35.878212, 37.585548, 47.544949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.117237, 37.600117, 47.560894>,  <36.515614, 37.624397, 47.587471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117237, 37.600117, 47.560894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088742, -0.539564, -0.837255,
		0.014970, -0.839754, 0.542761,
		-0.995942, -0.060699, -0.066444,
		35.818455, 37.581905, 47.540962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325459, 36.960052, 47.290127>,  <36.515614, 37.624397, 47.587471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325459, 36.960052, 47.290127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008270, 37.189220, 47.207222>,  <35.817955, 37.326721, 47.157478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008270, 37.189220, 47.207222>,  <36.325459, 36.960052, 47.290127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008270, 37.189220, 47.207222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030470, -0.377060, -0.925687,
		-0.608492, -0.727731, 0.316456,
		-0.792975, 0.572916, -0.207264,
		35.770378, 37.361095, 47.145042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704216, 36.500740, 47.084747>,  <36.325459, 36.960052, 47.290127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704216, 36.500740, 47.084747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.638046, 36.870136, 46.946297>,  <35.598343, 37.091774, 46.863224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.638046, 36.870136, 46.946297>,  <35.704216, 36.500740, 47.084747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638046, 36.870136, 46.946297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001593, -0.351215, -0.936293,
		-0.986220, -0.154339, 0.059572,
		-0.165429, 0.923487, -0.346130,
		35.588417, 37.147182, 46.842457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337929, 36.339378, 46.515400>,  <35.704216, 36.500740, 47.084747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337929, 36.339378, 46.515400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454391, 36.719162, 46.468479>,  <35.524269, 36.947033, 46.440327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454391, 36.719162, 46.468479>,  <35.337929, 36.339378, 46.515400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454391, 36.719162, 46.468479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009735, -0.125544, -0.992040,
		-0.956626, 0.287696, -0.045796,
		0.291155, 0.949458, -0.117299,
		35.541737, 37.003998, 46.433289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886078, 36.525467, 45.990177>,  <35.337929, 36.339378, 46.515400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886078, 36.525467, 45.990177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142056, 36.832039, 45.968044>,  <35.295643, 37.015980, 45.954765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142056, 36.832039, 45.968044>,  <34.886078, 36.525467, 45.990177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142056, 36.832039, 45.968044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059304, -0.022527, -0.997986,
		-0.766128, 0.641938, 0.031036,
		0.639946, 0.766426, -0.055329,
		35.334038, 37.061966, 45.951447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605164, 36.936886, 45.576534>,  <34.886078, 36.525467, 45.990177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605164, 36.936886, 45.576534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990284, 37.041210, 45.548252>,  <35.221355, 37.103806, 45.531281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990284, 37.041210, 45.548252>,  <34.605164, 36.936886, 45.576534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990284, 37.041210, 45.548252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004076, -0.247614, -0.968850,
		-0.270198, 0.933094, -0.237339,
		0.962796, 0.260814, -0.070708,
		35.279121, 37.119453, 45.527039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624035, 37.393841, 44.967278>,  <34.605164, 36.936886, 45.576534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624035, 37.393841, 44.967278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976967, 37.225830, 45.052197>,  <35.188725, 37.125023, 45.103149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976967, 37.225830, 45.052197>,  <34.624035, 37.393841, 44.967278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976967, 37.225830, 45.052197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128391, -0.219155, -0.967206,
		0.452778, 0.880653, -0.139440,
		0.882331, -0.420026, 0.212296,
		35.241665, 37.099823, 45.115887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802795, 37.448074, 44.399632>,  <34.624035, 37.393841, 44.967278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802795, 37.448074, 44.399632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.070904, 37.193413, 44.552162>,  <35.231770, 37.040615, 44.643681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.070904, 37.193413, 44.552162>,  <34.802795, 37.448074, 44.399632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070904, 37.193413, 44.552162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206076, -0.333947, -0.919789,
		0.712928, 0.695091, -0.092637,
		0.670273, -0.636653, 0.381322,
		35.271984, 37.002419, 44.666557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384151, 37.503613, 43.952339>,  <34.802795, 37.448074, 44.399632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384151, 37.503613, 43.952339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452816, 37.153236, 44.132675>,  <35.494015, 36.943008, 44.240875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452816, 37.153236, 44.132675>,  <35.384151, 37.503613, 43.952339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452816, 37.153236, 44.132675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168420, -0.424801, -0.889482,
		0.970653, 0.228618, 0.074606,
		0.171659, -0.875944, 0.450839,
		35.504314, 36.890453, 44.267925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054050, 37.284065, 43.861992>,  <35.384151, 37.503613, 43.952339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054050, 37.284065, 43.861992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.858356, 36.944588, 43.942364>,  <35.740940, 36.740902, 43.990589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.858356, 36.944588, 43.942364>,  <36.054050, 37.284065, 43.861992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858356, 36.944588, 43.942364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323494, -0.390536, -0.861878,
		0.809938, -0.356662, 0.465610,
		-0.489236, -0.848690, 0.200931,
		35.711586, 36.689980, 44.002644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468258, 36.783543, 43.683949>,  <36.054050, 37.284065, 43.861992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468258, 36.783543, 43.683949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106098, 36.613724, 43.682861>,  <35.888802, 36.511833, 43.682209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106098, 36.613724, 43.682861>,  <36.468258, 36.783543, 43.683949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106098, 36.613724, 43.682861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277040, -0.585950, -0.761519,
		0.321706, -0.690235, 0.648136,
		-0.905402, -0.424546, -0.002719,
		35.834476, 36.486359, 43.682045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598167, 35.976433, 43.572918>,  <36.468258, 36.783543, 43.683949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.598167, 35.976433, 43.572918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.218620, 36.040779, 43.464275>,  <35.990891, 36.079388, 43.399090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.218620, 36.040779, 43.464275>,  <36.598167, 35.976433, 43.572918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218620, 36.040779, 43.464275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069568, -0.732693, -0.676995,
		-0.307904, -0.661275, 0.684040,
		-0.948871, 0.160862, -0.271602,
		35.933960, 36.089039, 43.382793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393551, 35.290813, 43.579590>,  <36.598167, 35.976433, 43.572918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393551, 35.290813, 43.579590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133549, 35.514496, 43.373764>,  <35.977547, 35.648705, 43.250271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133549, 35.514496, 43.373764>,  <36.393551, 35.290813, 43.579590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133549, 35.514496, 43.373764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207882, -0.782142, -0.587400,
		-0.730938, -0.274849, 0.624650,
		-0.650012, 0.559207, -0.514561,
		35.938545, 35.682259, 43.219395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895828, 34.775082, 43.141457>,  <36.393551, 35.290813, 43.579590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895828, 34.775082, 43.141457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827957, 35.114342, 42.940716>,  <35.787235, 35.317898, 42.820271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827957, 35.114342, 42.940716>,  <35.895828, 34.775082, 43.141457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827957, 35.114342, 42.940716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253512, -0.529664, -0.809437,
		-0.952335, -0.010117, 0.304887,
		-0.169677, 0.848147, -0.501852,
		35.777054, 35.368786, 42.790161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364098, 34.587662, 42.720730>,  <35.895828, 34.775082, 43.141457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.364098, 34.587662, 42.720730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.485020, 34.928051, 42.548935>,  <35.557575, 35.132282, 42.445858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.485020, 34.928051, 42.548935>,  <35.364098, 34.587662, 42.720730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485020, 34.928051, 42.548935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083487, -0.472478, -0.877379,
		-0.949547, 0.229382, -0.213879,
		0.302308, 0.850969, -0.429489,
		35.575710, 35.183342, 42.420090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945965, 34.729919, 42.052940>,  <35.364098, 34.587662, 42.720730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945965, 34.729919, 42.052940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309330, 34.894878, 42.025497>,  <35.527351, 34.993855, 42.009033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309330, 34.894878, 42.025497>,  <34.945965, 34.729919, 42.052940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309330, 34.894878, 42.025497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109003, -0.392064, -0.913457,
		-0.403605, 0.822322, -0.401110,
		0.908417, 0.412398, -0.068604,
		35.581856, 35.018597, 42.004917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951855, 34.955170, 41.424175>,  <34.945965, 34.729919, 42.052940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951855, 34.955170, 41.424175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339779, 34.945992, 41.521278>,  <35.572533, 34.940483, 41.579540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339779, 34.945992, 41.521278>,  <34.951855, 34.955170, 41.424175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339779, 34.945992, 41.521278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227365, -0.274652, -0.934276,
		0.088114, 0.961270, -0.261144,
		0.969815, -0.022948, 0.242760,
		35.630722, 34.939106, 41.594105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306320, 35.165184, 40.807323>,  <34.951855, 34.955170, 41.424175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306320, 35.165184, 40.807323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596397, 34.974991, 41.006527>,  <35.770443, 34.860874, 41.126049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596397, 34.974991, 41.006527>,  <35.306320, 35.165184, 40.807323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596397, 34.974991, 41.006527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391503, -0.310228, -0.866305,
		0.566409, 0.823209, -0.038822,
		0.725194, -0.475484, 0.498005,
		35.813957, 34.832344, 41.155930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936596, 35.332581, 40.330521>,  <35.306320, 35.165184, 40.807323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.936596, 35.332581, 40.330521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035408, 35.027744, 40.569916>,  <36.094696, 34.844841, 40.713554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035408, 35.027744, 40.569916>,  <35.936596, 35.332581, 40.330521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035408, 35.027744, 40.569916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507434, -0.424439, -0.749908,
		0.825522, 0.488944, 0.281863,
		0.247029, -0.762093, 0.598491,
		36.109516, 34.799118, 40.749462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715637, 35.371262, 40.364155>,  <35.936596, 35.332581, 40.330521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715637, 35.371262, 40.364155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618275, 34.996105, 40.463039>,  <36.559856, 34.771011, 40.522369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618275, 34.996105, 40.463039>,  <36.715637, 35.371262, 40.364155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618275, 34.996105, 40.463039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600379, -0.345872, -0.721052,
		0.761773, -0.027086, 0.647278,
		-0.243406, -0.937891, 0.247214,
		36.545254, 34.714737, 40.537205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299179, 34.974289, 40.352173>,  <36.715637, 35.371262, 40.364155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299179, 34.974289, 40.352173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012730, 34.696774, 40.321617>,  <36.840862, 34.530266, 40.303284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012730, 34.696774, 40.321617>,  <37.299179, 34.974289, 40.352173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012730, 34.696774, 40.321617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477410, -0.407040, -0.778716,
		0.509167, -0.594123, 0.622709,
		-0.716120, -0.693784, -0.076388,
		36.797894, 34.488640, 40.298702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662594, 34.380699, 40.287342>,  <37.299179, 34.974289, 40.352173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662594, 34.380699, 40.287342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.293835, 34.303665, 40.152866>,  <37.072578, 34.257446, 40.072182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.293835, 34.303665, 40.152866>,  <37.662594, 34.380699, 40.287342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293835, 34.303665, 40.152866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385858, -0.534771, -0.751754,
		-0.035010, -0.822759, 0.567312,
		-0.921894, -0.192583, -0.336191,
		37.017265, 34.245892, 40.052010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641479, 33.679226, 40.222069>,  <37.662594, 34.380699, 40.287342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641479, 33.679226, 40.222069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.352707, 33.812706, 39.979595>,  <37.179443, 33.892792, 39.834110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.352707, 33.812706, 39.979595>,  <37.641479, 33.679226, 40.222069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352707, 33.812706, 39.979595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352153, -0.576923, -0.736986,
		-0.595659, -0.745521, 0.298982,
		-0.721928, 0.333705, -0.606186,
		37.136127, 33.912815, 39.797741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488983, 33.146889, 39.909260>,  <37.641479, 33.679226, 40.222069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488983, 33.146889, 39.909260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.353767, 33.433834, 39.665581>,  <37.272636, 33.605999, 39.519371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.353767, 33.433834, 39.665581>,  <37.488983, 33.146889, 39.909260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353767, 33.433834, 39.665581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561892, -0.365441, -0.742112,
		-0.754988, -0.593167, -0.279545,
		-0.338039, 0.717360, -0.609199,
		37.252357, 33.649044, 39.482822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347931, 32.851723, 39.260227>,  <37.488983, 33.146889, 39.909260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347931, 32.851723, 39.260227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384087, 33.244301, 39.192593>,  <37.405781, 33.479847, 39.152012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384087, 33.244301, 39.192593>,  <37.347931, 32.851723, 39.260227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384087, 33.244301, 39.192593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613189, -0.188633, -0.767083,
		-0.784747, -0.034344, -0.618864,
		0.090394, 0.981447, -0.169088,
		37.411205, 33.538734, 39.141865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228977, 32.946571, 38.459393>,  <37.347931, 32.851723, 39.260227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228977, 32.946571, 38.459393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.428158, 33.259758, 38.608524>,  <37.547668, 33.447670, 38.698006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.428158, 33.259758, 38.608524>,  <37.228977, 32.946571, 38.459393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428158, 33.259758, 38.608524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723784, -0.138416, -0.676001,
		-0.477681, 0.606468, -0.635624,
		0.497954, 0.782967, 0.372833,
		37.577545, 33.494648, 38.720375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371834, 33.330219, 37.829567>,  <37.228977, 32.946571, 38.459393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371834, 33.330219, 37.829567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.651314, 33.477459, 38.074947>,  <37.819000, 33.565804, 38.222176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.651314, 33.477459, 38.074947>,  <37.371834, 33.330219, 37.829567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651314, 33.477459, 38.074947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573597, 0.224232, -0.787849,
		-0.427560, 0.902344, -0.054468,
		0.698698, 0.368096, 0.613455,
		37.860924, 33.587887, 38.258984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757595, 33.825451, 37.474323>,  <37.371834, 33.330219, 37.829567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757595, 33.825451, 37.474323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003181, 33.780445, 37.786831>,  <38.150532, 33.753441, 37.974335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003181, 33.780445, 37.786831>,  <37.757595, 33.825451, 37.474323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003181, 33.780445, 37.786831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767663, 0.315448, -0.557841,
		-0.183683, 0.942248, 0.280051,
		0.613966, -0.112519, 0.781271,
		38.187370, 33.746689, 38.021214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176899, 34.406792, 37.448971>,  <37.757595, 33.825451, 37.474323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176899, 34.406792, 37.448971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.398632, 34.150440, 37.661381>,  <38.531670, 33.996628, 37.788826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.398632, 34.150440, 37.661381>,  <38.176899, 34.406792, 37.448971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398632, 34.150440, 37.661381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822647, 0.325018, -0.466493,
		0.126375, 0.695437, 0.707388,
		0.554330, -0.640883, 0.531024,
		38.564930, 33.958176, 37.820686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843082, 34.756500, 37.619793>,  <38.176899, 34.406792, 37.448971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.843082, 34.756500, 37.619793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913429, 34.372051, 37.704941>,  <38.955639, 34.141380, 37.756027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913429, 34.372051, 37.704941>,  <38.843082, 34.756500, 37.619793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913429, 34.372051, 37.704941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965702, 0.126486, -0.226762,
		0.191022, 0.245447, 0.950403,
		0.175871, -0.961123, 0.212867,
		38.966190, 34.083714, 37.768803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415314, 34.718056, 38.115246>,  <38.843082, 34.756500, 37.619793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415314, 34.718056, 38.115246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389698, 34.401924, 37.871517>,  <39.374329, 34.212246, 37.725281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389698, 34.401924, 37.871517>,  <39.415314, 34.718056, 38.115246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389698, 34.401924, 37.871517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956739, 0.125026, -0.262715,
		0.283813, -0.599786, 0.748136,
		-0.064037, -0.790332, -0.609322,
		39.370487, 34.164825, 37.688721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102325, 34.449749, 38.049034>,  <39.415314, 34.718056, 38.115246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102325, 34.449749, 38.049034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.938152, 34.240208, 37.750473>,  <39.839649, 34.114483, 37.571335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.938152, 34.240208, 37.750473>,  <40.102325, 34.449749, 38.049034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.938152, 34.240208, 37.750473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911871, -0.230479, -0.339664,
		0.005905, -0.820032, 0.572287,
		-0.410435, -0.523858, -0.746402,
		39.815022, 34.083050, 37.526554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549042, 33.929615, 37.947235>,  <40.102325, 34.449749, 38.049034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.549042, 33.929615, 37.947235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.347969, 33.935223, 37.601490>,  <40.227325, 33.938587, 37.394043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.347969, 33.935223, 37.601490>,  <40.549042, 33.929615, 37.947235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.347969, 33.935223, 37.601490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835341, -0.249504, -0.489850,
		-0.222528, -0.968272, 0.113711,
		-0.502680, 0.014018, -0.864359,
		40.197166, 33.939430, 37.342182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.871544, 33.381145, 37.471767>,  <40.549042, 33.929615, 37.947235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.871544, 33.381145, 37.471767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.667713, 33.674538, 37.291840>,  <40.545414, 33.850574, 37.183884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.667713, 33.674538, 37.291840>,  <40.871544, 33.381145, 37.471767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.667713, 33.674538, 37.291840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696191, 0.044274, -0.716489,
		-0.505615, -0.678268, -0.533203,
		-0.509579, 0.733480, -0.449819,
		40.514839, 33.894581, 37.156895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923866, 33.233906, 36.814095>,  <40.871544, 33.381145, 37.471767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.923866, 33.233906, 36.814095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.817219, 33.619389, 36.808727>,  <40.753231, 33.850677, 36.805508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.817219, 33.619389, 36.808727>,  <40.923866, 33.233906, 36.814095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.817219, 33.619389, 36.808727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763241, 0.202612, -0.613524,
		-0.588540, -0.173816, -0.789562,
		-0.266615, 0.963710, -0.013418,
		40.737236, 33.908501, 36.804703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.777115, 33.503483, 36.145058>,  <40.923866, 33.233906, 36.814095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.777115, 33.503483, 36.145058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.941742, 33.777683, 36.385292>,  <41.040516, 33.942204, 36.529434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.941742, 33.777683, 36.385292>,  <40.777115, 33.503483, 36.145058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.941742, 33.777683, 36.385292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776301, 0.081561, -0.625064,
		-0.477464, 0.723493, -0.498584,
		0.411565, 0.685496, 0.600591,
		41.065212, 33.983334, 36.565468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939587, 34.299259, 35.864601>,  <40.777115, 33.503483, 36.145058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.939587, 34.299259, 35.864601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.172581, 34.077404, 36.102287>,  <41.312378, 33.944290, 36.244900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.172581, 34.077404, 36.102287>,  <40.939587, 34.299259, 35.864601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.172581, 34.077404, 36.102287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696988, -0.035344, -0.716211,
		0.418237, 0.831344, 0.365985,
		0.582483, -0.554633, 0.594219,
		41.347324, 33.911015, 36.280552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.654346, 34.610886, 36.061588>,  <40.939587, 34.299259, 35.864601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.654346, 34.610886, 36.061588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.647282, 34.211021, 36.053974>,  <41.643044, 33.971104, 36.049404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.647282, 34.211021, 36.053974>,  <41.654346, 34.610886, 36.061588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.647282, 34.211021, 36.053974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686548, 0.001717, -0.727082,
		0.726869, -0.025913, 0.686287,
		-0.017663, -0.999663, -0.019038,
		41.641983, 33.911121, 36.048264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.387367, 34.356945, 36.160339>,  <41.654346, 34.610886, 36.061588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.387367, 34.356945, 36.160339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.148129, 34.124168, 35.939930>,  <42.004585, 33.984501, 35.807686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.148129, 34.124168, 35.939930>,  <42.387367, 34.356945, 36.160339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.148129, 34.124168, 35.939930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661701, 0.029317, -0.749195,
		0.452141, -0.812702, 0.367536,
		-0.598097, -0.581941, -0.551021,
		41.968700, 33.949585, 35.774624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.138416, 34.529926, 35.934753>,  <42.387367, 34.356945, 36.160339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.138416, 34.529926, 35.934753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.398582, 34.681107, 36.198303>,  <43.554680, 34.771816, 36.356434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.398582, 34.681107, 36.198303>,  <43.138416, 34.529926, 35.934753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.398582, 34.681107, 36.198303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350188, -0.918939, 0.181438,
		0.674042, 0.112722, -0.730041,
		0.650411, 0.377949, 0.658877,
		43.593704, 34.794491, 36.395966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.533348, 34.067528, 36.320526>,  <43.138416, 34.529926, 35.934753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.533348, 34.067528, 36.320526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.840828, 34.244427, 36.505356>,  <44.025318, 34.350567, 36.616253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.840828, 34.244427, 36.505356>,  <43.533348, 34.067528, 36.320526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.840828, 34.244427, 36.505356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578814, 0.173592, 0.796768,
		0.272158, -0.879932, 0.389421,
		0.768703, 0.442250, 0.462073,
		44.071438, 34.377102, 36.643978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.686924, 33.657841, 36.944008>,  <43.533348, 34.067528, 36.320526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.686924, 33.657841, 36.944008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.780731, 34.046104, 36.965237>,  <43.837017, 34.279064, 36.977974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.780731, 34.046104, 36.965237>,  <43.686924, 33.657841, 36.944008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.780731, 34.046104, 36.965237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606043, 0.103300, 0.788696,
		0.760074, -0.217130, 0.612488,
		0.234519, 0.970662, 0.053074,
		43.851086, 34.337303, 36.981159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.600712, 33.821255, 37.753616>,  <43.686924, 33.657841, 36.944008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.600712, 33.821255, 37.753616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.679840, 34.182869, 37.602043>,  <43.727318, 34.399837, 37.511097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.679840, 34.182869, 37.602043>,  <43.600712, 33.821255, 37.753616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.679840, 34.182869, 37.602043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297386, 0.423705, 0.855591,
		0.934039, -0.056564, 0.352664,
		0.197822, 0.904032, -0.378936,
		43.739185, 34.454079, 37.488361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.036713, 34.185474, 38.294315>,  <43.600712, 33.821255, 37.753616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.036713, 34.185474, 38.294315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.840294, 34.464802, 38.085999>,  <43.722443, 34.632397, 37.961010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.840294, 34.464802, 38.085999>,  <44.036713, 34.185474, 38.294315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.840294, 34.464802, 38.085999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366846, 0.376475, 0.850700,
		0.790125, 0.608784, 0.071309,
		-0.491047, 0.698318, -0.520793,
		43.692982, 34.674297, 37.929760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.180103, 34.808758, 38.633968>,  <44.036713, 34.185474, 38.294315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.180103, 34.808758, 38.633968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.858921, 34.904156, 38.415470>,  <43.666214, 34.961395, 38.284370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.858921, 34.904156, 38.415470>,  <44.180103, 34.808758, 38.633968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.858921, 34.904156, 38.415470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469282, 0.312065, 0.826069,
		0.367480, 0.919638, -0.138652,
		-0.802953, 0.238497, -0.546247,
		43.618034, 34.975704, 38.251595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.975414, 35.547249, 38.795612>,  <44.180103, 34.808758, 38.633968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.975414, 35.547249, 38.795612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.633091, 35.404194, 38.646114>,  <43.427696, 35.318359, 38.556416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.633091, 35.404194, 38.646114>,  <43.975414, 35.547249, 38.795612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.633091, 35.404194, 38.646114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494102, 0.351244, 0.795293,
		-0.153153, 0.865286, -0.477308,
		-0.855808, -0.357640, -0.373746,
		43.376350, 35.296902, 38.533989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.547012, 36.122311, 38.889107>,  <43.975414, 35.547249, 38.795612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.547012, 36.122311, 38.889107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.326313, 35.790703, 38.852665>,  <43.193893, 35.591740, 38.830799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.326313, 35.790703, 38.852665>,  <43.547012, 36.122311, 38.889107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.326313, 35.790703, 38.852665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444369, 0.199777, 0.873285,
		-0.705768, 0.522319, -0.478617,
		-0.551750, -0.829019, -0.091106,
		43.160789, 35.541996, 38.825333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.822311, 36.275105, 39.062710>,  <43.547012, 36.122311, 38.889107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.822311, 36.275105, 39.062710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.859142, 35.883163, 39.133610>,  <42.881241, 35.647999, 39.176147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.859142, 35.883163, 39.133610>,  <42.822311, 36.275105, 39.062710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.859142, 35.883163, 39.133610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468380, 0.114459, 0.876082,
		-0.878715, -0.163689, -0.448403,
		0.092081, -0.979849, 0.177245,
		42.886768, 35.589207, 39.186783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.184147, 36.111542, 39.370907>,  <42.822311, 36.275105, 39.062710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.184147, 36.111542, 39.370907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.412350, 35.797401, 39.467022>,  <42.549271, 35.608917, 39.524693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.412350, 35.797401, 39.467022>,  <42.184147, 36.111542, 39.370907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.412350, 35.797401, 39.467022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494957, -0.095299, 0.863676,
		-0.655392, -0.611668, -0.443085,
		0.570508, -0.785354, 0.240291,
		42.583504, 35.561794, 39.539108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.656086, 35.516216, 39.679077>,  <42.184147, 36.111542, 39.370907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.656086, 35.516216, 39.679077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.029591, 35.453419, 39.807724>,  <42.253693, 35.415741, 39.884914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.029591, 35.453419, 39.807724>,  <41.656086, 35.516216, 39.679077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.029591, 35.453419, 39.807724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353472, -0.263750, 0.897493,
		-0.056076, -0.951729, -0.301774,
		0.933763, -0.156996, 0.321620,
		42.309719, 35.406319, 39.904209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.699013, 34.956291, 40.054955>,  <41.656086, 35.516216, 39.679077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.699013, 34.956291, 40.054955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.055717, 35.094810, 40.171463>,  <42.269741, 35.177921, 40.241367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.055717, 35.094810, 40.171463>,  <41.699013, 34.956291, 40.054955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.055717, 35.094810, 40.171463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159893, -0.361010, 0.918752,
		0.423317, -0.865879, -0.266564,
		0.891761, 0.346301, 0.291270,
		42.323246, 35.198700, 40.258842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.049660, 34.414753, 40.369728>,  <41.699013, 34.956291, 40.054955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.049660, 34.414753, 40.369728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.239635, 34.729000, 40.528343>,  <42.353619, 34.917549, 40.623512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.239635, 34.729000, 40.528343>,  <42.049660, 34.414753, 40.369728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.239635, 34.729000, 40.528343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233099, -0.322200, 0.917525,
		0.848587, -0.528199, 0.030102,
		0.474937, 0.785616, 0.396537,
		42.382118, 34.964684, 40.647305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.530743, 34.128365, 40.931988>,  <42.049660, 34.414753, 40.369728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.530743, 34.128365, 40.931988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.462215, 34.517227, 40.995934>,  <42.421101, 34.750546, 41.034302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.462215, 34.517227, 40.995934>,  <42.530743, 34.128365, 40.931988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.462215, 34.517227, 40.995934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325723, -0.209028, 0.922069,
		0.929815, 0.105895, 0.352464,
		-0.171317, 0.972159, 0.159865,
		42.410820, 34.808876, 41.043892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.817135, 34.291958, 41.580975>,  <42.530743, 34.128365, 40.931988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.817135, 34.291958, 41.580975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.568260, 34.600285, 41.526234>,  <42.418934, 34.785278, 41.493389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.568260, 34.600285, 41.526234>,  <42.817135, 34.291958, 41.580975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.568260, 34.600285, 41.526234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269669, -0.046906, 0.961810,
		0.734958, 0.635330, 0.237049,
		-0.622186, 0.770815, -0.136855,
		42.381603, 34.831528, 41.485176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.063564, 34.864826, 42.059475>,  <42.817135, 34.291958, 41.580975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.063564, 34.864826, 42.059475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.676689, 34.891911, 41.961525>,  <42.444565, 34.908161, 41.902756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.676689, 34.891911, 41.961525>,  <43.063564, 34.864826, 42.059475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.676689, 34.891911, 41.961525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237258, 0.104058, 0.965858,
		0.090880, 0.992264, -0.084578,
		-0.967186, 0.067710, -0.244879,
		42.386532, 34.912224, 41.888062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.805527, 35.271885, 42.574574>,  <43.063564, 34.864826, 42.059475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.805527, 35.271885, 42.574574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.475147, 35.097450, 42.431667>,  <42.276920, 34.992790, 42.345924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.475147, 35.097450, 42.431667>,  <42.805527, 35.271885, 42.574574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.475147, 35.097450, 42.431667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304868, -0.187561, 0.933743,
		-0.474204, 0.880141, 0.021966,
		-0.825946, -0.436088, -0.357269,
		42.227364, 34.966625, 42.324486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.219570, 35.519066, 43.018311>,  <42.805527, 35.271885, 42.574574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.219570, 35.519066, 43.018311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.060276, 35.224289, 42.799835>,  <41.964699, 35.047421, 42.668751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.060276, 35.224289, 42.799835>,  <42.219570, 35.519066, 43.018311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.060276, 35.224289, 42.799835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413431, -0.387328, 0.824046,
		-0.818831, 0.553974, -0.150429,
		-0.398234, -0.736947, -0.546186,
		41.940807, 35.003204, 42.635979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.643177, 35.357761, 43.367344>,  <42.219570, 35.519066, 43.018311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.643177, 35.357761, 43.367344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.678444, 35.036171, 43.132107>,  <41.699604, 34.843216, 42.990963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.678444, 35.036171, 43.132107>,  <41.643177, 35.357761, 43.367344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.678444, 35.036171, 43.132107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232495, -0.590697, 0.772672,
		-0.968593, 0.068606, -0.238999,
		0.088166, -0.803971, -0.588096,
		41.704895, 34.794979, 42.955677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.014431, 35.080868, 43.253716>,  <41.643177, 35.357761, 43.367344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.014431, 35.080868, 43.253716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.247116, 34.764133, 43.179302>,  <41.386726, 34.574093, 43.134655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.247116, 34.764133, 43.179302>,  <41.014431, 35.080868, 43.253716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.247116, 34.764133, 43.179302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412476, -0.484296, 0.771571,
		-0.701050, -0.372101, -0.608334,
		0.581715, -0.791832, -0.186033,
		41.421631, 34.526585, 43.123493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.546295, 34.519482, 43.174843>,  <41.014431, 35.080868, 43.253716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.546295, 34.519482, 43.174843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.901581, 34.367935, 43.278801>,  <41.114750, 34.277008, 43.341175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.901581, 34.367935, 43.278801>,  <40.546295, 34.519482, 43.174843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.901581, 34.367935, 43.278801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424310, -0.459499, 0.780270,
		-0.176195, -0.803320, -0.568887,
		0.888210, -0.378864, 0.259895,
		41.168045, 34.254276, 43.356770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387230, 33.989594, 43.568905>,  <40.546295, 34.519482, 43.174843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.387230, 33.989594, 43.568905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.767719, 34.044952, 43.679184>,  <40.996014, 34.078167, 43.745354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.767719, 34.044952, 43.679184>,  <40.387230, 33.989594, 43.568905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.767719, 34.044952, 43.679184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202425, -0.394362, 0.896383,
		0.232786, -0.908473, -0.347112,
		0.951228, 0.138402, 0.275699,
		41.053089, 34.086472, 43.761894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668732, 33.338409, 43.669254>,  <40.387230, 33.989594, 43.568905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.668732, 33.338409, 43.669254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.866032, 33.620171, 43.873421>,  <40.984409, 33.789227, 43.995922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.866032, 33.620171, 43.873421>,  <40.668732, 33.338409, 43.669254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.866032, 33.620171, 43.873421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135091, -0.517612, 0.844884,
		0.859335, -0.485689, -0.160153,
		0.493248, 0.704403, 0.510414,
		41.014008, 33.831493, 44.026546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.032619, 32.808041, 43.942448>,  <40.668732, 33.338409, 43.669254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.032619, 32.808041, 43.942448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.161388, 33.185314, 43.909531>,  <41.238651, 33.411678, 43.889782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.161388, 33.185314, 43.909531>,  <41.032619, 32.808041, 43.942448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.161388, 33.185314, 43.909531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538046, -0.110740, 0.835610,
		0.779020, -0.313277, -0.543125,
		0.321923, 0.943183, -0.082289,
		41.257965, 33.468269, 43.884846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.666920, 32.649574, 43.716694>,  <41.032619, 32.808041, 43.942448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.666920, 32.649574, 43.716694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.583817, 32.985775, 43.916847>,  <41.533955, 33.187496, 44.036942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.583817, 32.985775, 43.916847>,  <41.666920, 32.649574, 43.716694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.583817, 32.985775, 43.916847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628028, -0.277573, 0.727003,
		0.749943, 0.465301, -0.470192,
		-0.207762, 0.840505, 0.500386,
		41.521488, 33.237926, 44.066963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.267937, 33.007290, 43.819183>,  <41.666920, 32.649574, 43.716694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.267937, 33.007290, 43.819183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.021847, 33.093891, 44.122398>,  <41.874191, 33.145851, 44.304329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.021847, 33.093891, 44.122398>,  <42.267937, 33.007290, 43.819183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.021847, 33.093891, 44.122398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747989, -0.143412, 0.648032,
		0.249015, 0.965690, -0.073713,
		-0.615227, 0.216507, 0.758037,
		41.837280, 33.158844, 44.349808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.614624, 32.288780, 43.792171>,  <42.267937, 33.007290, 43.819183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.614624, 32.288780, 43.792171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.459522, 31.975468, 43.597805>,  <42.366463, 31.787479, 43.481186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.459522, 31.975468, 43.597805>,  <42.614624, 32.288780, 43.792171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.459522, 31.975468, 43.597805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221417, -0.590876, 0.775783,
		-0.894776, 0.193220, 0.402545,
		-0.387751, -0.783282, -0.485919,
		42.343197, 31.740482, 43.452030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.106339, 31.978762, 44.254246>,  <42.614624, 32.288780, 43.792171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.106339, 31.978762, 44.254246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.262352, 31.712620, 43.999630>,  <42.355961, 31.552935, 43.846859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.262352, 31.712620, 43.999630>,  <42.106339, 31.978762, 44.254246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.262352, 31.712620, 43.999630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058434, -0.672010, 0.738234,
		-0.918947, -0.325128, -0.223224,
		0.390028, -0.665354, -0.636540,
		42.379360, 31.513014, 43.808670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.997883, 31.292545, 44.434139>,  <42.106339, 31.978762, 44.254246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.997883, 31.292545, 44.434139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.345695, 31.288792, 44.236622>,  <42.554382, 31.286539, 44.118111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.345695, 31.288792, 44.236622>,  <41.997883, 31.292545, 44.434139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.345695, 31.288792, 44.236622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406630, -0.553847, 0.726571,
		-0.280303, -0.832566, -0.477770,
		0.869530, -0.009384, -0.493791,
		42.606556, 31.285976, 44.088486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.344296, 30.559916, 44.367146>,  <41.997883, 31.292545, 44.434139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.344296, 30.559916, 44.367146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.614433, 30.854641, 44.379879>,  <42.776516, 31.031477, 44.387520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.614433, 30.854641, 44.379879>,  <42.344296, 30.559916, 44.367146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.614433, 30.854641, 44.379879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578794, -0.556270, 0.596290,
		0.457063, -0.384277, -0.802138,
		0.675345, 0.736814, 0.031833,
		42.817036, 31.075686, 44.389427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.909534, 30.395155, 44.076324>,  <42.344296, 30.559916, 44.367146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.909534, 30.395155, 44.076324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.956947, 30.648657, 44.382084>,  <42.985394, 30.800758, 44.565540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.956947, 30.648657, 44.382084>,  <42.909534, 30.395155, 44.076324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.956947, 30.648657, 44.382084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343656, -0.748435, 0.567226,
		0.931585, 0.195457, -0.306506,
		0.118532, 0.633752, 0.764401,
		42.992508, 30.838783, 44.611404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.246330, 30.373873, 43.619976>,  <42.909534, 30.395155, 44.076324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.246330, 30.373873, 43.619976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.059086, 30.511280, 43.294312>,  <41.946739, 30.593725, 43.098911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.059086, 30.511280, 43.294312>,  <42.246330, 30.373873, 43.619976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.059086, 30.511280, 43.294312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873642, 0.318311, -0.368006,
		0.132741, -0.883557, -0.449119,
		-0.468113, 0.343520, -0.814165,
		41.918652, 30.614336, 43.050060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.649235, 30.210630, 43.045906>,  <42.246330, 30.373873, 43.619976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.649235, 30.210630, 43.045906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.422733, 30.510763, 42.909458>,  <42.286831, 30.690842, 42.827591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.422733, 30.510763, 42.909458>,  <42.649235, 30.210630, 43.045906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.422733, 30.510763, 42.909458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697538, 0.215774, -0.683288,
		-0.439087, -0.624856, -0.645567,
		-0.566253, 0.750331, -0.341117,
		42.252857, 30.735863, 42.807121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.454689, 30.094408, 42.203190>,  <42.649235, 30.210630, 43.045906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.454689, 30.094408, 42.203190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.449852, 30.484125, 42.293179>,  <42.446949, 30.717955, 42.347172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.449852, 30.484125, 42.293179>,  <42.454689, 30.094408, 42.203190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.449852, 30.484125, 42.293179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553567, 0.193886, -0.809921,
		-0.832717, 0.114739, -0.541680,
		-0.012094, 0.974291, 0.224968,
		42.446224, 30.776413, 42.360668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.384502, 30.354662, 41.546440>,  <42.454689, 30.094408, 42.203190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.384502, 30.354662, 41.546440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.525574, 30.655106, 41.769672>,  <42.610218, 30.835373, 41.903610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.525574, 30.655106, 41.769672>,  <42.384502, 30.354662, 41.546440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.525574, 30.655106, 41.769672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552931, 0.313864, -0.771853,
		-0.754907, 0.580794, -0.304619,
		0.352679, 0.751111, 0.558077,
		42.631378, 30.880440, 41.937096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.504215, 30.854971, 41.074272>,  <42.384502, 30.354662, 41.546440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.504215, 30.854971, 41.074272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.705925, 31.042057, 41.364639>,  <42.826950, 31.154308, 41.538860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.705925, 31.042057, 41.364639>,  <42.504215, 30.854971, 41.074272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.705925, 31.042057, 41.364639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426500, 0.596048, -0.680312,
		-0.750873, 0.652664, 0.101090,
		0.504270, 0.467713, 0.725918,
		42.857204, 31.182371, 41.582413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.399693, 31.637695, 41.032204>,  <42.504215, 30.854971, 41.074272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.399693, 31.637695, 41.032204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.740780, 31.547176, 41.220528>,  <42.945431, 31.492865, 41.333523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.740780, 31.547176, 41.220528>,  <42.399693, 31.637695, 41.032204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.740780, 31.547176, 41.220528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500306, 0.613001, -0.611493,
		-0.150228, 0.756980, 0.635934,
		0.852717, -0.226298, 0.470812,
		42.996593, 31.479286, 41.361771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.815460, 32.287071, 41.018353>,  <42.399693, 31.637695, 41.032204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.815460, 32.287071, 41.018353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.082542, 32.010448, 41.128571>,  <43.242790, 31.844475, 41.194702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.082542, 32.010448, 41.128571>,  <42.815460, 32.287071, 41.018353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.082542, 32.010448, 41.128571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701610, 0.460879, -0.543446,
		0.248830, 0.556185, 0.792933,
		0.667703, -0.691555, 0.275544,
		43.282852, 31.802982, 41.211235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.355373, 32.672665, 41.131226>,  <42.815460, 32.287071, 41.018353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.355373, 32.672665, 41.131226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.516315, 32.306847, 41.114605>,  <43.612881, 32.087357, 41.104633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.516315, 32.306847, 41.114605>,  <43.355373, 32.672665, 41.131226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.516315, 32.306847, 41.114605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568987, 0.285364, -0.771246,
		0.717194, 0.286671, 0.635179,
		0.402352, -0.914542, -0.041549,
		43.637020, 32.032486, 41.102139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.058891, 32.758968, 41.265007>,  <43.355373, 32.672665, 41.131226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.058891, 32.758968, 41.265007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.087894, 32.383461, 41.130272>,  <44.105297, 32.158157, 41.049431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.087894, 32.383461, 41.130272>,  <44.058891, 32.758968, 41.265007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.087894, 32.383461, 41.130272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704480, 0.287274, -0.648985,
		0.706010, -0.190234, 0.682174,
		0.072511, -0.938768, -0.336835,
		44.109650, 32.101830, 41.029221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.765602, 32.596909, 41.371319>,  <44.058891, 32.758968, 41.265007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.765602, 32.596909, 41.371319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.606598, 32.374973, 41.078979>,  <44.511196, 32.241814, 40.903576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.606598, 32.374973, 41.078979>,  <44.765602, 32.596909, 41.371319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.606598, 32.374973, 41.078979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786603, 0.204067, -0.582762,
		0.472481, -0.806542, 0.355319,
		-0.397513, -0.554839, -0.730846,
		44.487343, 32.208523, 40.859726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.381187, 32.119686, 41.101326>,  <44.765602, 32.596909, 41.371319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.381187, 32.119686, 41.101326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.087975, 32.127728, 40.829369>,  <44.912048, 32.132553, 40.666195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.087975, 32.127728, 40.829369>,  <45.381187, 32.119686, 41.101326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.087975, 32.127728, 40.829369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674918, 0.145758, -0.723354,
		0.084555, -0.989116, -0.120417,
		-0.733032, 0.020108, -0.679897,
		44.868065, 32.133759, 40.625401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.627060, 31.754034, 40.455181>,  <45.381187, 32.119686, 41.101326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.627060, 31.754034, 40.455181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.330429, 31.977854, 40.307144>,  <45.152451, 32.112144, 40.218323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.330429, 31.977854, 40.307144>,  <45.627060, 31.754034, 40.455181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.330429, 31.977854, 40.307144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516617, 0.124374, -0.847135,
		-0.427985, -0.819410, -0.381307,
		-0.741576, 0.559551, -0.370091,
		45.107956, 32.145718, 40.196117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.654171, 31.671114, 39.730614>,  <45.627060, 31.754034, 40.455181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.654171, 31.671114, 39.730614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.420345, 31.992580, 39.775173>,  <45.280052, 32.185459, 39.801910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.420345, 31.992580, 39.775173>,  <45.654171, 31.671114, 39.730614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.420345, 31.992580, 39.775173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253793, 0.311533, -0.915716,
		-0.770635, -0.507019, -0.386075,
		-0.584561, 0.803666, 0.111400,
		45.244976, 32.233681, 39.808594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.290897, 31.693674, 39.172699>,  <45.654171, 31.671114, 39.730614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.290897, 31.693674, 39.172699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.303497, 32.077312, 39.285225>,  <45.311058, 32.307495, 39.352741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.303497, 32.077312, 39.285225>,  <45.290897, 31.693674, 39.172699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.303497, 32.077312, 39.285225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260890, 0.263812, -0.928623,
		-0.964854, 0.102645, -0.241909,
		0.031500, 0.959097, 0.281319,
		45.312946, 32.365040, 39.369621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.894985, 32.066994, 38.681553>,  <45.290897, 31.693674, 39.172699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.894985, 32.066994, 38.681553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.103241, 32.369789, 38.839493>,  <45.228195, 32.551464, 38.934258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.103241, 32.369789, 38.839493>,  <44.894985, 32.066994, 38.681553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.103241, 32.369789, 38.839493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179286, 0.355230, -0.917425,
		-0.834740, 0.548439, 0.049230,
		0.520640, 0.756985, 0.394852,
		45.259434, 32.596886, 38.957947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.797771, 32.626598, 38.242924>,  <44.894985, 32.066994, 38.681553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.797771, 32.626598, 38.242924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.132168, 32.748695, 38.425327>,  <45.332806, 32.821953, 38.534771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.132168, 32.748695, 38.425327>,  <44.797771, 32.626598, 38.242924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.132168, 32.748695, 38.425327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290503, 0.458829, -0.839693,
		-0.465540, 0.834449, 0.294904,
		0.835991, 0.305240, 0.456013,
		45.382965, 32.840267, 38.562130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.829388, 33.427452, 38.045361>,  <44.797771, 32.626598, 38.242924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.829388, 33.427452, 38.045361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.199009, 33.339325, 38.170319>,  <45.420780, 33.286449, 38.245293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.199009, 33.339325, 38.170319>,  <44.829388, 33.427452, 38.045361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.199009, 33.339325, 38.170319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373487, 0.694484, -0.614979,
		-0.081463, 0.684947, 0.724024,
		0.924051, -0.220316, 0.312394,
		45.476223, 33.273232, 38.264038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.169537, 34.056164, 38.283566>,  <44.829388, 33.427452, 38.045361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.169537, 34.056164, 38.283566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.444481, 33.788540, 38.170509>,  <45.609447, 33.627964, 38.102676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.444481, 33.788540, 38.170509>,  <45.169537, 34.056164, 38.283566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.444481, 33.788540, 38.170509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286146, 0.607129, -0.741293,
		0.667571, 0.428661, 0.608768,
		0.687364, -0.669063, -0.282642,
		45.650688, 33.587822, 38.085716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.755455, 34.512375, 38.297421>,  <45.169537, 34.056164, 38.283566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.755455, 34.512375, 38.297421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.835262, 34.176022, 38.096184>,  <45.883148, 33.974209, 37.975441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.835262, 34.176022, 38.096184>,  <45.755455, 34.512375, 38.297421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.835262, 34.176022, 38.096184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598531, 0.511094, -0.616882,
		0.775856, -0.178037, 0.605269,
		0.199521, -0.840884, -0.503096,
		45.895119, 33.923756, 37.945255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.463390, 34.590466, 38.183556>,  <45.755455, 34.512375, 38.297421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.463390, 34.590466, 38.183556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.324123, 34.332390, 37.911522>,  <46.240562, 34.177544, 37.748302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.324123, 34.332390, 37.911522>,  <46.463390, 34.590466, 38.183556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.324123, 34.332390, 37.911522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605573, 0.398994, -0.688538,
		0.715586, -0.651566, 0.251791,
		-0.348165, -0.645186, -0.680085,
		46.219673, 34.138832, 37.707497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.085899, 34.460327, 37.764992>,  <46.463390, 34.590466, 38.183556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.085899, 34.460327, 37.764992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.758347, 34.368073, 37.554756>,  <46.561817, 34.312721, 37.428616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.758347, 34.368073, 37.554756>,  <47.085899, 34.460327, 37.764992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.758347, 34.368073, 37.554756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387757, 0.452858, -0.802847,
		0.423178, -0.861238, -0.281409,
		-0.818880, -0.230629, -0.525590,
		46.512684, 34.298882, 37.397079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.343304, 34.272755, 37.121929>,  <47.085899, 34.460327, 37.764992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.343304, 34.272755, 37.121929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.957924, 34.335003, 37.034706>,  <46.726696, 34.372353, 36.982372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.957924, 34.335003, 37.034706>,  <47.343304, 34.272755, 37.121929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.957924, 34.335003, 37.034706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265776, 0.453220, -0.850855,
		-0.033582, -0.877710, -0.478015,
		-0.963450, 0.155619, -0.218054,
		46.668888, 34.381687, 36.969292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.366665, 34.575317, 36.415916>,  <47.343304, 34.272755, 37.121929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.366665, 34.575317, 36.415916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.991776, 34.648201, 36.534851>,  <46.766842, 34.691933, 36.606213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.991776, 34.648201, 36.534851>,  <47.366665, 34.575317, 36.415916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.991776, 34.648201, 36.534851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000115, 0.852795, -0.522246,
		-0.348727, -0.489427, -0.799281,
		-0.937225, 0.182213, 0.297336,
		46.710609, 34.702866, 36.624050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.911907, 34.664013, 35.884392>,  <47.366665, 34.575317, 36.415916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.911907, 34.664013, 35.884392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.687794, 34.836430, 36.167316>,  <46.553326, 34.939880, 36.337070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.687794, 34.836430, 36.167316>,  <46.911907, 34.664013, 35.884392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.687794, 34.836430, 36.167316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037156, 0.839988, -0.541331,
		-0.827469, -0.329578, -0.454614,
		-0.560281, 0.431043, 0.707310,
		46.519711, 34.965744, 36.379509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.020000, 34.851376, 35.257484>,  <46.911907, 34.664013, 35.884392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.020000, 34.851376, 35.257484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.157589, 35.221180, 35.191795>,  <47.240143, 35.443062, 35.152382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.157589, 35.221180, 35.191795>,  <47.020000, 34.851376, 35.257484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.157589, 35.221180, 35.191795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833975, -0.220428, 0.505863,
		0.431475, -0.310958, -0.846838,
		0.343969, 0.924509, -0.164222,
		47.260780, 35.498531, 35.142529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.584808, 34.876427, 34.773228>,  <47.020000, 34.851376, 35.257484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.584808, 34.876427, 34.773228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.598492, 35.161739, 35.053246>,  <47.606701, 35.332928, 35.221256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.598492, 35.161739, 35.053246>,  <47.584808, 34.876427, 34.773228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.598492, 35.161739, 35.053246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825908, -0.414598, 0.382079,
		0.562766, 0.565103, -0.603285,
		0.034207, 0.713279, 0.700045,
		47.608753, 35.375725, 35.263260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.331882, 39.515541, 41.425747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.951019, 39.408955, 41.485588>,  <36.722500, 39.345001, 41.521492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.951019, 39.408955, 41.485588>,  <37.331882, 39.515541, 41.425747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951019, 39.408955, 41.485588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082963, -0.245774, -0.965770,
		0.294116, -0.931982, 0.211910,
		-0.952163, -0.266468, 0.149606,
		36.665371, 39.329014, 41.530468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330273, 38.916195, 41.108036>,  <37.331882, 39.515541, 41.425747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330273, 38.916195, 41.108036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.940414, 39.003288, 41.128658>,  <36.706501, 39.055546, 41.141029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.940414, 39.003288, 41.128658>,  <37.330273, 38.916195, 41.108036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940414, 39.003288, 41.128658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104690, -0.240114, -0.965083,
		-0.197751, -0.946011, 0.256821,
		-0.974646, 0.217732, 0.051555,
		36.648022, 39.068607, 41.144123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975441, 38.341846, 40.793533>,  <37.330273, 38.916195, 41.108036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975441, 38.341846, 40.793533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.716515, 38.646328, 40.777752>,  <36.561161, 38.829018, 40.768284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.716515, 38.646328, 40.777752>,  <36.975441, 38.341846, 40.793533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716515, 38.646328, 40.777752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249745, -0.260714, -0.932553,
		-0.720149, -0.593799, 0.358870,
		-0.647311, 0.761204, -0.039454,
		36.522320, 38.874687, 40.765915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274223, 38.096127, 40.548180>,  <36.975441, 38.341846, 40.793533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274223, 38.096127, 40.548180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.290413, 38.487286, 40.466122>,  <36.300125, 38.721981, 40.416889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.290413, 38.487286, 40.466122>,  <36.274223, 38.096127, 40.548180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290413, 38.487286, 40.466122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273817, -0.186595, -0.943508,
		-0.960930, 0.094357, 0.260212,
		0.040472, 0.977895, -0.205141,
		36.302555, 38.780655, 40.404579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763950, 38.181927, 40.025982>,  <36.274223, 38.096127, 40.548180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763950, 38.181927, 40.025982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.967056, 38.522812, 39.975533>,  <36.088921, 38.727345, 39.945263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.967056, 38.522812, 39.975533>,  <35.763950, 38.181927, 40.025982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967056, 38.522812, 39.975533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054924, -0.114084, -0.991952,
		-0.859743, 0.510606, -0.011121,
		0.507765, 0.852213, -0.126128,
		36.119385, 38.778477, 39.937695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399506, 38.693363, 39.445774>,  <35.763950, 38.181927, 40.025982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399506, 38.693363, 39.445774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.780212, 38.816082, 39.447224>,  <36.008636, 38.889713, 39.448093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.780212, 38.816082, 39.447224>,  <35.399506, 38.693363, 39.445774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780212, 38.816082, 39.447224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033435, -0.091970, -0.995200,
		-0.304993, 0.947320, -0.097792,
		0.951767, 0.306799, 0.003623,
		36.065742, 38.908123, 39.448311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464363, 39.282921, 38.926758>,  <35.399506, 38.693363, 39.445774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464363, 39.282921, 38.926758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.821442, 39.110943, 38.980774>,  <36.035690, 39.007755, 39.013184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.821442, 39.110943, 38.980774>,  <35.464363, 39.282921, 38.926758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821442, 39.110943, 38.980774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055169, -0.193134, -0.979620,
		0.447267, 0.881954, -0.148691,
		0.892698, -0.429948, 0.135039,
		36.089252, 38.981956, 39.021286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869625, 39.520794, 38.332397>,  <35.464363, 39.282921, 38.926758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869625, 39.520794, 38.332397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.078182, 39.209057, 38.471409>,  <36.203316, 39.022015, 38.554813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.078182, 39.209057, 38.471409>,  <35.869625, 39.520794, 38.332397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078182, 39.209057, 38.471409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278170, -0.229785, -0.932642,
		0.806701, 0.582948, 0.096980,
		0.521397, -0.779340, 0.347527,
		36.234600, 38.975254, 38.575668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531414, 39.498867, 38.083431>,  <35.869625, 39.520794, 38.332397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531414, 39.498867, 38.083431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.500080, 39.115582, 38.193485>,  <36.481281, 38.885612, 38.259518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.500080, 39.115582, 38.193485>,  <36.531414, 39.498867, 38.083431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500080, 39.115582, 38.193485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363208, -0.284443, -0.887227,
		0.928409, 0.030432, 0.370311,
		-0.078333, -0.958210, 0.275133,
		36.476582, 38.828117, 38.276024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175976, 39.100578, 37.878696>,  <36.531414, 39.498867, 38.083431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175976, 39.100578, 37.878696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.896526, 38.818268, 37.925697>,  <36.728855, 38.648884, 37.953899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.896526, 38.818268, 37.925697>,  <37.175976, 39.100578, 37.878696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896526, 38.818268, 37.925697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386448, -0.510430, -0.768192,
		0.602146, -0.491270, 0.629344,
		-0.698626, -0.705773, 0.117503,
		36.686939, 38.606537, 37.960949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485561, 38.384258, 37.910923>,  <37.175976, 39.100578, 37.878696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485561, 38.384258, 37.910923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.100304, 38.314426, 37.829075>,  <36.869148, 38.272530, 37.779964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.100304, 38.314426, 37.829075>,  <37.485561, 38.384258, 37.910923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100304, 38.314426, 37.829075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268975, -0.626585, -0.731467,
		-0.000515, -0.759549, 0.650450,
		-0.963147, -0.174578, -0.204622,
		36.811359, 38.262054, 37.767689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439438, 37.650455, 37.809574>,  <37.485561, 38.384258, 37.910923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439438, 37.650455, 37.809574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.097115, 37.778732, 37.647217>,  <36.891720, 37.855698, 37.549805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.097115, 37.778732, 37.647217>,  <37.439438, 37.650455, 37.809574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097115, 37.778732, 37.647217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065360, -0.711317, -0.699826,
		-0.513146, -0.625446, 0.587790,
		-0.855809, 0.320696, -0.405888,
		36.840370, 37.874943, 37.525452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149902, 37.049671, 37.697357>,  <37.439438, 37.650455, 37.809574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149902, 37.049671, 37.697357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.010864, 37.326576, 37.444393>,  <36.927441, 37.492722, 37.292614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.010864, 37.326576, 37.444393>,  <37.149902, 37.049671, 37.697357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010864, 37.326576, 37.444393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197685, -0.605203, -0.771136,
		-0.916568, -0.393064, 0.073517,
		-0.347598, 0.692265, -0.632412,
		36.906586, 37.534256, 37.254669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870934, 36.627510, 37.205639>,  <37.149902, 37.049671, 37.697357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870934, 36.627510, 37.205639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.928802, 36.982529, 37.030678>,  <36.963524, 37.195541, 36.925701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.928802, 36.982529, 37.030678>,  <36.870934, 36.627510, 37.205639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928802, 36.982529, 37.030678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294106, -0.460648, -0.837440,
		-0.944760, -0.007487, -0.327678,
		0.144674, 0.887551, -0.437404,
		36.972206, 37.248795, 36.899456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623642, 36.564297, 36.534565>,  <36.870934, 36.627510, 37.205639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623642, 36.564297, 36.534565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.871735, 36.877151, 36.510654>,  <37.020592, 37.064865, 36.496307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.871735, 36.877151, 36.510654>,  <36.623642, 36.564297, 36.534565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.871735, 36.877151, 36.510654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341897, -0.338140, -0.876794,
		-0.705985, 0.523380, -0.477136,
		0.620235, 0.782135, -0.059779,
		37.057804, 37.111794, 36.492722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580620, 36.849823, 35.830078>,  <36.623642, 36.564297, 36.534565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580620, 36.849823, 35.830078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.932133, 36.983139, 35.966705>,  <37.143040, 37.063129, 36.048679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.932133, 36.983139, 35.966705>,  <36.580620, 36.849823, 35.830078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932133, 36.983139, 35.966705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450773, -0.344712, -0.823393,
		-0.156685, 0.877549, -0.453163,
		0.878779, 0.333288, 0.341564,
		37.195766, 37.083126, 36.069176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859112, 37.338558, 35.342052>,  <36.580620, 36.849823, 35.830078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859112, 37.338558, 35.342052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.187611, 37.251156, 35.552883>,  <37.384708, 37.198715, 35.679382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.187611, 37.251156, 35.552883>,  <36.859112, 37.338558, 35.342052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187611, 37.251156, 35.552883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511057, -0.129068, -0.849801,
		0.253716, 0.967262, 0.005674,
		0.821248, -0.218508, 0.527073,
		37.433987, 37.185604, 35.711006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376770, 37.811337, 35.080284>,  <36.859112, 37.338558, 35.342052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376770, 37.811337, 35.080284> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.562321, 37.510693, 35.267860>,  <37.673653, 37.330307, 35.380405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.562321, 37.510693, 35.267860>,  <37.376770, 37.811337, 35.080284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562321, 37.510693, 35.267860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537322, -0.182153, -0.823472,
		0.704344, 0.633964, 0.319357,
		0.463880, -0.751605, 0.468941,
		37.701485, 37.285210, 35.408543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054016, 37.970596, 34.972748>,  <37.376770, 37.811337, 35.080284>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054016, 37.970596, 34.972748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.060963, 37.579605, 35.056873>,  <38.065132, 37.345009, 35.107349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.060963, 37.579605, 35.056873>,  <38.054016, 37.970596, 34.972748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060963, 37.579605, 35.056873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529394, -0.169454, -0.831281,
		0.848199, 0.125779, 0.514528,
		0.017369, -0.977479, 0.210317,
		38.066174, 37.286362, 35.119968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585426, 37.834805, 34.692894>,  <38.054016, 37.970596, 34.972748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585426, 37.834805, 34.692894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.439976, 37.467255, 34.754147>,  <38.352703, 37.246727, 34.790897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.439976, 37.467255, 34.754147>,  <38.585426, 37.834805, 34.692894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439976, 37.467255, 34.754147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457853, -0.319453, -0.829651,
		0.811261, -0.231574, 0.536870,
		-0.363630, -0.918871, 0.153133,
		38.330887, 37.191593, 34.800087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098656, 37.417839, 34.462612>,  <38.585426, 37.834805, 34.692894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098656, 37.417839, 34.462612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.762711, 37.202061, 34.438553>,  <38.561142, 37.072594, 34.424118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.762711, 37.202061, 34.438553>,  <39.098656, 37.417839, 34.462612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762711, 37.202061, 34.438553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279568, -0.334929, -0.899814,
		0.465258, -0.772539, 0.432109,
		-0.839867, -0.539449, -0.060149,
		38.510750, 37.040226, 34.420509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373676, 36.677628, 34.359493>,  <39.098656, 37.417839, 34.462612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.373676, 36.677628, 34.359493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.003735, 36.744137, 34.222672>,  <38.781769, 36.784042, 34.140579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.003735, 36.744137, 34.222672>,  <39.373676, 36.677628, 34.359493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003735, 36.744137, 34.222672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234600, -0.458484, -0.857179,
		-0.299352, -0.873010, 0.385023,
		-0.924852, 0.166272, -0.342057,
		38.726280, 36.794018, 34.120056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125561, 36.592587, 34.660187>,  <39.373676, 36.677628, 34.359493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125561, 36.592587, 34.660187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.167557, 36.212902, 34.778824>,  <40.192753, 35.985092, 34.850006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.167557, 36.212902, 34.778824>,  <40.125561, 36.592587, 34.660187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.167557, 36.212902, 34.778824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033371, 0.301439, 0.952901,
		-0.993914, -0.090145, 0.063324,
		0.104988, -0.949215, 0.296596,
		40.199055, 35.928139, 34.867802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563080, 36.476776, 35.126255>,  <40.125561, 36.592587, 34.660187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563080, 36.476776, 35.126255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.843529, 36.206635, 35.217754>,  <40.011799, 36.044548, 35.272655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.843529, 36.206635, 35.217754>,  <39.563080, 36.476776, 35.126255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.843529, 36.206635, 35.217754> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078194, 0.246050, 0.966098,
		-0.708744, -0.695236, 0.119702,
		0.701119, -0.675356, 0.228749,
		40.053864, 36.004028, 35.286381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332439, 36.234428, 35.725758>,  <39.563080, 36.476776, 35.126255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332439, 36.234428, 35.725758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.724316, 36.155609, 35.710938>,  <39.959442, 36.108318, 35.702045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.724316, 36.155609, 35.710938>,  <39.332439, 36.234428, 35.725758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724316, 36.155609, 35.710938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094688, 0.291799, 0.951781,
		-0.176734, -0.935962, 0.304532,
		0.979694, -0.197048, -0.037054,
		40.018223, 36.096497, 35.699821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457581, 35.855522, 36.385883>,  <39.332439, 36.234428, 35.725758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457581, 35.855522, 36.385883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.825798, 35.942924, 36.256367>,  <40.046730, 35.995369, 36.178658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.825798, 35.942924, 36.256367>,  <39.457581, 35.855522, 36.385883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825798, 35.942924, 36.256367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312254, 0.086428, 0.946059,
		0.234709, -0.971999, 0.011330,
		0.920549, 0.218511, -0.323796,
		40.101963, 36.008476, 36.159229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835644, 35.462399, 36.761379>,  <39.457581, 35.855522, 36.385883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835644, 35.462399, 36.761379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.058006, 35.770618, 36.636658>,  <40.191422, 35.955551, 36.561825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.058006, 35.770618, 36.636658>,  <39.835644, 35.462399, 36.761379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.058006, 35.770618, 36.636658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164499, 0.265708, 0.949916,
		0.814808, -0.579353, 0.020953,
		0.555904, 0.770552, -0.311804,
		40.224777, 36.001785, 36.543118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.496529, 35.486858, 37.266678>,  <39.835644, 35.462399, 36.761379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.496529, 35.486858, 37.266678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.465313, 35.840107, 37.081631>,  <40.446583, 36.052055, 36.970604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.465313, 35.840107, 37.081631>,  <40.496529, 35.486858, 37.266678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.465313, 35.840107, 37.081631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197718, 0.468525, 0.861041,
		0.977147, -0.024269, -0.211174,
		-0.078044, 0.883117, -0.462616,
		40.441898, 36.105042, 36.942844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.159199, 35.896362, 37.377201>,  <40.496529, 35.486858, 37.266678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.159199, 35.896362, 37.377201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.849052, 36.139194, 37.307610>,  <40.662964, 36.284893, 37.265854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.849052, 36.139194, 37.307610>,  <41.159199, 35.896362, 37.377201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.849052, 36.139194, 37.307610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307938, 0.603972, 0.735114,
		0.551349, 0.516406, -0.655240,
		-0.775364, 0.607077, -0.173978,
		40.616444, 36.321316, 37.255417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.412544, 36.481419, 37.589401>,  <41.159199, 35.896362, 37.377201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.412544, 36.481419, 37.589401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.017899, 36.542923, 37.567661>,  <40.781113, 36.579826, 37.554619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.017899, 36.542923, 37.567661>,  <41.412544, 36.481419, 37.589401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.017899, 36.542923, 37.567661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037923, 0.540440, 0.840528,
		0.158616, 0.827213, -0.539035,
		-0.986612, 0.153763, -0.054351,
		40.721916, 36.589050, 37.551357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403969, 37.110580, 37.801991>,  <41.412544, 36.481419, 37.589401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.403969, 37.110580, 37.801991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.023399, 36.997673, 37.851170>,  <40.795059, 36.929928, 37.880676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.023399, 36.997673, 37.851170>,  <41.403969, 37.110580, 37.801991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.023399, 36.997673, 37.851170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081853, 0.616855, 0.782809,
		-0.296802, 0.734721, -0.609995,
		-0.951424, -0.282269, 0.122945,
		40.737972, 36.912991, 37.888054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.026409, 37.659046, 38.219349>,  <41.403969, 37.110580, 37.801991>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.026409, 37.659046, 38.219349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.780689, 37.349014, 38.278530>,  <40.633259, 37.162994, 38.314041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.780689, 37.349014, 38.278530>,  <41.026409, 37.659046, 38.219349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.780689, 37.349014, 38.278530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204589, 0.337540, 0.918809,
		-0.762092, 0.534151, -0.365922,
		-0.614296, -0.775080, 0.147955,
		40.596401, 37.116489, 38.322918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.374348, 37.909550, 38.441509>,  <41.026409, 37.659046, 38.219349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.374348, 37.909550, 38.441509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.375523, 37.535225, 38.582508>,  <40.376228, 37.310631, 38.667107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.375523, 37.535225, 38.582508>,  <40.374348, 37.909550, 38.441509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.375523, 37.535225, 38.582508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264681, 0.339198, 0.902712,
		-0.964331, -0.095953, -0.246694,
		0.002940, -0.935809, 0.352496,
		40.376404, 37.254482, 38.688255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701504, 37.832737, 38.693398>,  <40.374348, 37.909550, 38.441509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701504, 37.832737, 38.693398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.928822, 37.563797, 38.883125>,  <40.065212, 37.402431, 38.996964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.928822, 37.563797, 38.883125>,  <39.701504, 37.832737, 38.693398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928822, 37.563797, 38.883125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512508, 0.161740, 0.843312,
		-0.643721, -0.722344, -0.252671,
		0.568294, -0.672354, 0.474322,
		40.099312, 37.362091, 39.025421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297787, 37.481499, 39.242359>,  <39.701504, 37.832737, 38.693398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297787, 37.481499, 39.242359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.663250, 37.395821, 39.380547>,  <39.882526, 37.344414, 39.463459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.663250, 37.395821, 39.380547>,  <39.297787, 37.481499, 39.242359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663250, 37.395821, 39.380547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360373, -0.033675, 0.932200,
		-0.188043, -0.976210, -0.107959,
		0.913658, -0.214199, 0.345467,
		39.937347, 37.331562, 39.484188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193336, 36.764961, 39.499268>,  <39.297787, 37.481499, 39.242359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.193336, 36.764961, 39.499268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.423710, 37.051537, 39.656757>,  <39.561932, 37.223480, 39.751251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.423710, 37.051537, 39.656757>,  <39.193336, 36.764961, 39.499268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423710, 37.051537, 39.656757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567153, 0.003301, 0.823606,
		0.588765, -0.697641, 0.408232,
		0.575928, 0.716440, 0.393726,
		39.596489, 37.266468, 39.774876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361458, 36.637329, 40.349136>,  <39.193336, 36.764961, 39.499268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361458, 36.637329, 40.349136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.440296, 37.025871, 40.296040>,  <39.487598, 37.258995, 40.264179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.440296, 37.025871, 40.296040>,  <39.361458, 36.637329, 40.349136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.440296, 37.025871, 40.296040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403635, 0.203794, 0.891934,
		0.893438, -0.122215, 0.432240,
		0.197096, 0.971355, -0.132747,
		39.499424, 37.317280, 40.256214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.672020, 36.838509, 40.922649>,  <39.361458, 36.637329, 40.349136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.672020, 36.838509, 40.922649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.525772, 37.175976, 40.765400>,  <39.438023, 37.378456, 40.671051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.525772, 37.175976, 40.765400>,  <39.672020, 36.838509, 40.922649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525772, 37.175976, 40.765400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308774, 0.288508, 0.906323,
		0.878054, 0.452758, 0.155017,
		-0.365622, 0.843666, -0.393126,
		39.416084, 37.429077, 40.647461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960129, 37.390945, 41.402824>,  <39.672020, 36.838509, 40.922649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960129, 37.390945, 41.402824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.657627, 37.556980, 41.200527>,  <39.476124, 37.656601, 41.079147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.657627, 37.556980, 41.200527>,  <39.960129, 37.390945, 41.402824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657627, 37.556980, 41.200527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336898, 0.415578, 0.844864,
		0.560870, 0.809318, -0.174441,
		-0.756257, 0.415090, -0.505743,
		39.430752, 37.681507, 41.048805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029675, 38.081673, 41.457218>,  <39.960129, 37.390945, 41.402824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.029675, 38.081673, 41.457218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.644398, 37.989315, 41.402161>,  <39.413231, 37.933899, 41.369125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.644398, 37.989315, 41.402161>,  <40.029675, 38.081673, 41.457218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644398, 37.989315, 41.402161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213924, 0.348330, 0.912635,
		-0.162776, 0.908490, -0.384903,
		-0.963193, -0.230895, -0.137648,
		39.355438, 37.920048, 41.360867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.639320, 38.657520, 41.821262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.361763, 38.379902, 41.744522>,  <39.195229, 38.213329, 41.698479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.361763, 38.379902, 41.744522>,  <39.639320, 38.657520, 41.821262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361763, 38.379902, 41.744522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402733, 0.153206, 0.902404,
		-0.596918, 0.703440, -0.385825,
		-0.693898, -0.694046, -0.191847,
		39.153595, 38.171688, 41.686970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052746, 38.996861, 41.919392>,  <39.639320, 38.657520, 41.821262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052746, 38.996861, 41.919392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.947205, 38.611828, 41.944130>,  <38.883881, 38.380810, 41.958973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.947205, 38.611828, 41.944130>,  <39.052746, 38.996861, 41.919392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947205, 38.611828, 41.944130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519013, 0.195730, 0.832055,
		-0.813023, 0.187439, -0.551234,
		-0.263853, -0.962578, 0.061850,
		38.868050, 38.323055, 41.962685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392857, 38.992790, 42.033691>,  <39.052746, 38.996861, 41.919392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392857, 38.992790, 42.033691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.498966, 38.636826, 42.182114>,  <38.562634, 38.423244, 42.271168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.498966, 38.636826, 42.182114>,  <38.392857, 38.992790, 42.033691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498966, 38.636826, 42.182114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482578, 0.210624, 0.850151,
		-0.834715, -0.404586, -0.373580,
		0.265274, -0.889914, 0.371055,
		38.578548, 38.369850, 42.293430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829506, 38.698402, 42.329590>,  <38.392857, 38.992790, 42.033691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829506, 38.698402, 42.329590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.112637, 38.480888, 42.509937>,  <38.282516, 38.350380, 42.618145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.112637, 38.480888, 42.509937>,  <37.829506, 38.698402, 42.329590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112637, 38.480888, 42.509937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338894, 0.298600, 0.892182,
		-0.619784, -0.784305, 0.027070,
		0.707826, -0.543786, 0.450864,
		38.324986, 38.317753, 42.645195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478413, 38.269577, 42.903534>,  <37.829506, 38.698402, 42.329590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478413, 38.269577, 42.903534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.868954, 38.308865, 42.980564>,  <38.103279, 38.332436, 43.026783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.868954, 38.308865, 42.980564>,  <37.478413, 38.269577, 42.903534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868954, 38.308865, 42.980564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215983, 0.405133, 0.888380,
		0.009234, -0.908967, 0.416766,
		0.976353, 0.098218, 0.192580,
		38.161861, 38.338329, 43.038338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581047, 37.949528, 43.593601>,  <37.478413, 38.269577, 42.903534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581047, 37.949528, 43.593601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.903423, 38.173508, 43.516739>,  <38.096848, 38.307896, 43.470623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.903423, 38.173508, 43.516739>,  <37.581047, 37.949528, 43.593601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903423, 38.173508, 43.516739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216698, 0.581091, 0.784459,
		0.550914, -0.590586, 0.589663,
		0.805938, 0.559948, -0.192152,
		38.145203, 38.341492, 43.459091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984001, 37.871162, 44.185261>,  <37.581047, 37.949528, 43.593601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984001, 37.871162, 44.185261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.105549, 38.200428, 43.993401>,  <38.178478, 38.397987, 43.878284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.105549, 38.200428, 43.993401>,  <37.984001, 37.871162, 44.185261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105549, 38.200428, 43.993401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080225, 0.523778, 0.848069,
		0.949329, -0.219224, 0.225199,
		0.303871, 0.823163, -0.479650,
		38.196709, 38.447376, 43.849506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434811, 38.108372, 44.647556>,  <37.984001, 37.871162, 44.185261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434811, 38.108372, 44.647556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.383629, 38.441277, 44.431789>,  <38.352921, 38.641018, 44.302330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.383629, 38.441277, 44.431789>,  <38.434811, 38.108372, 44.647556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383629, 38.441277, 44.431789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098159, 0.551842, 0.828152,
		0.986911, 0.053017, -0.152304,
		-0.127954, 0.832262, -0.539415,
		38.345242, 38.690956, 44.269966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068447, 38.523804, 44.866653>,  <38.434811, 38.108372, 44.647556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068447, 38.523804, 44.866653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.751415, 38.716286, 44.716843>,  <38.561195, 38.831776, 44.626957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.751415, 38.716286, 44.716843>,  <39.068447, 38.523804, 44.866653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.751415, 38.716286, 44.716843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010561, 0.603279, 0.797460,
		0.609682, 0.636003, -0.473062,
		-0.792576, 0.481201, -0.374525,
		38.513641, 38.860645, 44.604485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114159, 39.243832, 45.098534>,  <39.068447, 38.523804, 44.866653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114159, 39.243832, 45.098534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.724606, 39.227703, 45.009159>,  <38.490871, 39.218025, 44.955536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.724606, 39.227703, 45.009159>,  <39.114159, 39.243832, 45.098534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724606, 39.227703, 45.009159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219574, 0.417621, 0.881691,
		0.057759, 0.907726, -0.415569,
		-0.973884, -0.040323, -0.223435,
		38.432442, 39.215607, 44.942127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844906, 39.858166, 45.433861>,  <39.114159, 39.243832, 45.098534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844906, 39.858166, 45.433861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.526749, 39.621918, 45.379444>,  <38.335854, 39.480167, 45.346794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.526749, 39.621918, 45.379444>,  <38.844906, 39.858166, 45.433861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526749, 39.621918, 45.379444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394675, 0.334383, 0.855815,
		-0.459973, 0.734406, -0.499071,
		-0.795397, -0.590623, -0.136045,
		38.288128, 39.444733, 45.338631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267441, 40.397678, 45.541107>,  <38.844906, 39.858166, 45.433861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267441, 40.397678, 45.541107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.129276, 40.022312, 45.537731>,  <38.046375, 39.797092, 45.535706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.129276, 40.022312, 45.537731>,  <38.267441, 40.397678, 45.541107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129276, 40.022312, 45.537731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636614, 0.227700, 0.736801,
		-0.689501, 0.259875, -0.676057,
		-0.345414, -0.938412, -0.008441,
		38.025654, 39.740788, 45.535198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.506462, 40.404839, 45.538837>,  <38.267441, 40.397678, 45.541107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.506462, 40.404839, 45.538837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.636314, 40.062992, 45.700947>,  <37.714226, 39.857883, 45.798214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.636314, 40.062992, 45.700947>,  <37.506462, 40.404839, 45.538837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636314, 40.062992, 45.700947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532468, 0.189007, 0.825078,
		-0.781723, -0.483645, -0.393696,
		0.324633, -0.854613, 0.405276,
		37.733704, 39.806606, 45.822529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921249, 40.132481, 45.916615>,  <37.506462, 40.404839, 45.538837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921249, 40.132481, 45.916615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.249699, 39.958641, 46.064602>,  <37.446770, 39.854336, 46.153393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.249699, 39.958641, 46.064602>,  <36.921249, 40.132481, 45.916615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249699, 39.958641, 46.064602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390245, 0.045505, 0.919586,
		-0.416490, -0.899472, -0.132236,
		0.821124, -0.434602, 0.369967,
		37.496037, 39.828259, 46.175591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651836, 39.707272, 46.317379>,  <36.921249, 40.132481, 45.916615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651836, 39.707272, 46.317379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.027088, 39.755344, 46.447281>,  <37.252239, 39.784187, 46.525223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.027088, 39.755344, 46.447281>,  <36.651836, 39.707272, 46.317379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027088, 39.755344, 46.447281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303405, -0.166745, 0.938159,
		0.166904, -0.978648, -0.119964,
		0.938130, 0.120185, 0.324757,
		37.308529, 39.791401, 46.544708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.694870, 39.212074, 46.845558>,  <36.651836, 39.707272, 46.317379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.694870, 39.212074, 46.845558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.986526, 39.478134, 46.909973>,  <37.161518, 39.637772, 46.948620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.986526, 39.478134, 46.909973>,  <36.694870, 39.212074, 46.845558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986526, 39.478134, 46.909973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311122, 0.112587, 0.943677,
		0.609558, -0.738172, 0.289035,
		0.729138, 0.665151, 0.161033,
		37.205269, 39.677681, 46.958282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924824, 39.075157, 47.458893>,  <36.694870, 39.212074, 46.845558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924824, 39.075157, 47.458893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.064968, 39.448193, 47.424217>,  <37.149055, 39.672016, 47.403412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.064968, 39.448193, 47.424217>,  <36.924824, 39.075157, 47.458893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064968, 39.448193, 47.424217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435285, 0.244085, 0.866573,
		0.829321, -0.265880, 0.491462,
		0.350363, 0.932593, -0.086691,
		37.170078, 39.727970, 47.398209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143085, 39.164856, 48.126987>,  <36.924824, 39.075157, 47.458893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143085, 39.164856, 48.126987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.123158, 39.532047, 47.969593>,  <37.111202, 39.752361, 47.875156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.123158, 39.532047, 47.969593>,  <37.143085, 39.164856, 48.126987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123158, 39.532047, 47.969593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248084, 0.370250, 0.895192,
		0.967457, 0.142214, 0.209291,
		-0.049819, 0.917982, -0.393482,
		37.108212, 39.807442, 47.851547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546371, 39.538536, 48.555096>,  <37.143085, 39.164856, 48.126987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546371, 39.538536, 48.555096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.302532, 39.797798, 48.372547>,  <37.156227, 39.953358, 48.263020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.302532, 39.797798, 48.372547>,  <37.546371, 39.538536, 48.555096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302532, 39.797798, 48.372547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136341, 0.481404, 0.865830,
		0.780895, 0.590034, -0.205094,
		-0.609602, 0.648159, -0.456371,
		37.119652, 39.992245, 48.235634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828182, 40.130074, 48.848061>,  <37.546371, 39.538536, 48.555096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828182, 40.130074, 48.848061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.470158, 40.185040, 48.678360>,  <37.255344, 40.218018, 48.576538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.470158, 40.185040, 48.678360>,  <37.828182, 40.130074, 48.848061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470158, 40.185040, 48.678360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239125, 0.655125, 0.716681,
		0.376420, 0.742919, -0.553515,
		-0.895057, 0.137414, -0.424252,
		37.201641, 40.226265, 48.551083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710251, 40.859539, 48.817234>,  <37.828182, 40.130074, 48.848061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710251, 40.859539, 48.817234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.346962, 40.692200, 48.812927>,  <37.128990, 40.591797, 48.810345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.346962, 40.692200, 48.812927>,  <37.710251, 40.859539, 48.817234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346962, 40.692200, 48.812927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215504, 0.445500, 0.868958,
		-0.358732, 0.791527, -0.494769,
		-0.908223, -0.418348, -0.010763,
		37.074493, 40.566696, 48.809700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123341, 41.246918, 48.907677>,  <37.710251, 40.859539, 48.817234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123341, 41.246918, 48.907677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.039196, 40.899361, 49.086906>,  <36.988708, 40.690826, 49.194443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.039196, 40.899361, 49.086906>,  <37.123341, 41.246918, 48.907677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.039196, 40.899361, 49.086906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175532, 0.484449, 0.857028,
		-0.961737, 0.101631, -0.254427,
		-0.210357, -0.868896, 0.448073,
		36.976089, 40.638691, 49.221329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383595, 41.159470, 49.152676>,  <37.123341, 41.246918, 48.907677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383595, 41.159470, 49.152676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.684456, 41.030949, 49.382816>,  <36.864971, 40.953838, 49.520901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.684456, 41.030949, 49.382816>,  <36.383595, 41.159470, 49.152676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684456, 41.030949, 49.382816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227294, 0.693024, 0.684146,
		-0.618551, -0.645357, 0.448229,
		0.752152, -0.321299, 0.575356,
		36.910103, 40.934559, 49.555424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733318, 40.885399, 49.450798>,  <36.383595, 41.159470, 49.152676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733318, 40.885399, 49.450798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.771061, 40.575970, 49.701454>,  <35.793705, 40.390312, 49.851849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.771061, 40.575970, 49.701454>,  <35.733318, 40.885399, 49.450798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771061, 40.575970, 49.701454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962421, 0.090123, 0.256173,
		-0.254644, -0.627263, -0.736001,
		0.094357, -0.773575, 0.626641,
		35.799370, 40.343899, 49.889446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071323, 41.308834, 49.079498>,  <35.733318, 40.885399, 49.450798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071323, 41.308834, 49.079498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.674919, 41.288982, 49.029808>,  <34.437077, 41.277073, 48.999996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.674919, 41.288982, 49.029808>,  <35.071323, 41.308834, 49.079498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674919, 41.288982, 49.029808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133718, -0.342097, -0.930102,
		0.003664, -0.938353, 0.345659,
		-0.991013, -0.049629, -0.124221,
		34.377617, 41.274094, 48.992542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973305, 40.641781, 48.726711>,  <35.071323, 41.308834, 49.079498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973305, 40.641781, 48.726711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.687668, 40.902195, 48.623779>,  <34.516285, 41.058445, 48.562019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.687668, 40.902195, 48.623779>,  <34.973305, 40.641781, 48.726711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687668, 40.902195, 48.623779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198793, -0.163872, -0.966244,
		-0.671230, -0.741145, -0.012402,
		-0.714095, 0.651038, -0.257330,
		34.473438, 41.097507, 48.546581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674450, 40.253887, 48.262276>,  <34.973305, 40.641781, 48.726711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674450, 40.253887, 48.262276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.543076, 40.617985, 48.161415>,  <34.464249, 40.836445, 48.100899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.543076, 40.617985, 48.161415>,  <34.674450, 40.253887, 48.262276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543076, 40.617985, 48.161415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256714, -0.170881, -0.951261,
		-0.908969, -0.377162, -0.177549,
		-0.328440, 0.910246, -0.252149,
		34.444542, 40.891060, 48.085770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166275, 40.163544, 47.790558>,  <34.674450, 40.253887, 48.262276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166275, 40.163544, 47.790558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.279560, 40.542213, 47.729118>,  <34.347530, 40.769417, 47.692253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.279560, 40.542213, 47.729118>,  <34.166275, 40.163544, 47.790558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279560, 40.542213, 47.729118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171536, -0.207580, -0.963061,
		-0.943591, 0.246406, -0.221179,
		0.283216, 0.946676, -0.153603,
		34.364525, 40.826218, 47.683037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.798485, 40.308640, 47.194260>,  <34.166275, 40.163544, 47.790558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.798485, 40.308640, 47.194260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.081318, 40.587666, 47.240627>,  <34.251019, 40.755081, 47.268448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.081318, 40.587666, 47.240627>,  <33.798485, 40.308640, 47.194260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081318, 40.587666, 47.240627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230181, -0.072044, -0.970477,
		-0.668622, 0.712888, -0.211508,
		0.707080, 0.697567, 0.115923,
		34.293442, 40.796936, 47.275406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728699, 40.769993, 46.608067>,  <33.798485, 40.308640, 47.194260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728699, 40.769993, 46.608067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.107082, 40.808746, 46.731857>,  <34.334114, 40.831997, 46.806129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.107082, 40.808746, 46.731857>,  <33.728699, 40.769993, 46.608067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107082, 40.808746, 46.731857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307983, 0.030373, -0.950907,
		-0.101528, 0.994832, -0.001107,
		0.945959, 0.096885, 0.309475,
		34.390869, 40.837811, 46.824699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032227, 41.208179, 46.188251>,  <33.728699, 40.769993, 46.608067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032227, 41.208179, 46.188251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.372387, 41.066467, 46.343838>,  <34.576485, 40.981438, 46.437191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.372387, 41.066467, 46.343838>,  <34.032227, 41.208179, 46.188251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372387, 41.066467, 46.343838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437882, 0.066742, -0.896552,
		0.291673, 0.932753, 0.211892,
		0.850403, -0.354283, 0.388969,
		34.627506, 40.960182, 46.460529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546555, 41.482868, 45.735062>,  <34.032227, 41.208179, 46.188251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.546555, 41.482868, 45.735062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.719341, 41.161633, 45.899235>,  <34.823013, 40.968891, 45.997738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.719341, 41.161633, 45.899235>,  <34.546555, 41.482868, 45.735062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719341, 41.161633, 45.899235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441733, -0.208359, -0.872616,
		0.786304, 0.558244, 0.264746,
		0.431970, -0.803088, 0.410428,
		34.848934, 40.920708, 46.022362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282310, 41.407421, 45.471058>,  <34.546555, 41.482868, 45.735062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282310, 41.407421, 45.471058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.162491, 41.048271, 45.600117>,  <35.090599, 40.832783, 45.677551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.162491, 41.048271, 45.600117>,  <35.282310, 41.407421, 45.471058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162491, 41.048271, 45.600117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477323, -0.433842, -0.764163,
		0.826096, -0.074897, 0.558530,
		-0.299547, -0.897871, 0.322645,
		35.072628, 40.778912, 45.696911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915401, 41.055859, 45.399197>,  <35.282310, 41.407421, 45.471058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915401, 41.055859, 45.399197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.644703, 40.761902, 45.416851>,  <35.482285, 40.585529, 45.427444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.644703, 40.761902, 45.416851>,  <35.915401, 41.055859, 45.399197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644703, 40.761902, 45.416851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469987, -0.477387, -0.742437,
		0.566681, -0.481699, 0.668460,
		-0.676746, -0.734893, 0.044134,
		35.441681, 40.541435, 45.430092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237297, 40.472240, 45.451939>,  <35.915401, 41.055859, 45.399197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237297, 40.472240, 45.451939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.888004, 40.349529, 45.300491>,  <35.678429, 40.275902, 45.209621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.888004, 40.349529, 45.300491>,  <36.237297, 40.472240, 45.451939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888004, 40.349529, 45.300491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483626, -0.450274, -0.750573,
		0.059778, -0.838534, 0.541559,
		-0.873231, -0.306780, -0.378621,
		35.626034, 40.257496, 45.186905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477020, 39.931492, 45.119781>,  <36.237297, 40.472240, 45.451939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477020, 39.931492, 45.119781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.104858, 39.993290, 44.986828>,  <35.881561, 40.030369, 44.907055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.104858, 39.993290, 44.986828>,  <36.477020, 39.931492, 45.119781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104858, 39.993290, 44.986828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169174, -0.623455, -0.763337,
		-0.325155, -0.766444, 0.553930,
		-0.930405, 0.154493, -0.332382,
		35.825737, 40.039639, 44.887112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198982, 39.305920, 44.940006>,  <36.477020, 39.931492, 45.119781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198982, 39.305920, 44.940006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.975056, 39.562218, 44.729843>,  <35.840698, 39.715996, 44.603745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.975056, 39.562218, 44.729843>,  <36.198982, 39.305920, 44.940006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975056, 39.562218, 44.729843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208170, -0.504992, -0.837645,
		-0.802041, -0.578302, 0.149319,
		-0.559817, 0.640742, -0.525410,
		35.807110, 39.754440, 44.572220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716579, 38.937870, 44.503841>,  <36.198982, 39.305920, 44.940006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716579, 38.937870, 44.503841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.769665, 39.300224, 44.342968>,  <35.801514, 39.517639, 44.246445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.769665, 39.300224, 44.342968>,  <35.716579, 38.937870, 44.503841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769665, 39.300224, 44.342968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249133, -0.423237, -0.871093,
		-0.959334, 0.015405, -0.281854,
		0.132711, 0.905888, -0.402187,
		35.809479, 39.571991, 44.222313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481541, 38.856396, 43.788811>,  <35.716579, 38.937870, 44.503841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481541, 38.856396, 43.788811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.662369, 39.212994, 43.776985>,  <35.770866, 39.426952, 43.769890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.662369, 39.212994, 43.776985>,  <35.481541, 38.856396, 43.788811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662369, 39.212994, 43.776985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308221, -0.187227, -0.932709,
		-0.837040, 0.412533, -0.359416,
		0.452066, 0.891494, -0.029565,
		35.797989, 39.480442, 43.768116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314220, 39.301826, 43.209343>,  <35.481541, 38.856396, 43.788811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314220, 39.301826, 43.209343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.669891, 39.453484, 43.311802>,  <35.883293, 39.544476, 43.373280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.669891, 39.453484, 43.311802>,  <35.314220, 39.301826, 43.209343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669891, 39.453484, 43.311802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246671, 0.074300, -0.966247,
		-0.385374, 0.922352, -0.027457,
		0.889180, 0.379139, 0.256151,
		35.936646, 39.567226, 43.388649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475281, 40.054188, 43.015995>,  <35.314220, 39.301826, 43.209343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475281, 40.054188, 43.015995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.820400, 39.853863, 43.043625>,  <36.027470, 39.733665, 43.060204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.820400, 39.853863, 43.043625>,  <35.475281, 40.054188, 43.015995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820400, 39.853863, 43.043625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210669, 0.231964, -0.949637,
		0.459570, 0.833893, 0.305644,
		0.862794, -0.500815, 0.069072,
		36.079239, 39.703617, 43.064346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793060, 40.441494, 42.581314>,  <35.475281, 40.054188, 43.015995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793060, 40.441494, 42.581314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.025005, 40.116879, 42.610092>,  <36.164173, 39.922112, 42.627361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.025005, 40.116879, 42.610092>,  <35.793060, 40.441494, 42.581314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025005, 40.116879, 42.610092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123389, 0.000184, -0.992358,
		0.805319, 0.584305, 0.100241,
		0.579859, -0.811534, 0.071949,
		36.198963, 39.873417, 42.631676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396999, 40.475216, 42.190018>,  <35.793060, 40.441494, 42.581314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396999, 40.475216, 42.190018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.401981, 40.079037, 42.244938>,  <36.404972, 39.841328, 42.277889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.401981, 40.079037, 42.244938>,  <36.396999, 40.475216, 42.190018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401981, 40.079037, 42.244938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287680, -0.127956, -0.949140,
		0.957646, 0.051322, 0.283339,
		0.012457, -0.990451, 0.137301,
		36.405720, 39.781902, 42.286129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005005, 40.247993, 41.784634>,  <36.396999, 40.475216, 42.190018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005005, 40.247993, 41.784634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.758205, 39.938972, 41.844612>,  <36.610126, 39.753559, 41.880600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.758205, 39.938972, 41.844612>,  <37.005005, 40.247993, 41.784634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758205, 39.938972, 41.844612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177903, -0.322531, -0.929690,
		0.766596, -0.546937, 0.336438,
		-0.616994, -0.772550, 0.149949,
		36.573109, 39.707207, 41.889595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.268665, 34.071415, 44.208916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.897087, 34.094517, 44.062645>,  <41.674141, 34.108379, 43.974884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.897087, 34.094517, 44.062645>,  <42.268665, 34.071415, 44.208916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.897087, 34.094517, 44.062645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368278, 0.043470, -0.928699,
		-0.037745, -0.997384, -0.061653,
		-0.928949, 0.057759, -0.365674,
		41.618401, 34.111843, 43.952942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.435291, 34.052013, 43.524033>,  <42.268665, 34.071415, 44.208916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.435291, 34.052013, 43.524033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.037788, 34.084171, 43.493088>,  <41.799286, 34.103466, 43.474522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.037788, 34.084171, 43.493088>,  <42.435291, 34.052013, 43.524033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.037788, 34.084171, 43.493088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092173, 0.200887, -0.975269,
		-0.062867, -0.976310, -0.207043,
		-0.993756, 0.080396, -0.077360,
		41.739662, 34.108292, 43.469879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.297935, 33.617222, 42.997257>,  <42.435291, 34.052013, 43.524033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.297935, 33.617222, 42.997257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.035339, 33.916561, 43.035194>,  <41.877781, 34.096165, 43.057957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.035339, 33.916561, 43.035194>,  <42.297935, 33.617222, 42.997257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.035339, 33.916561, 43.035194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181769, 0.278958, -0.942943,
		-0.732105, -0.601796, -0.319160,
		-0.656492, 0.748347, 0.094839,
		41.838390, 34.141064, 43.063644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.028141, 33.716248, 42.331413>,  <42.297935, 33.617222, 42.997257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.028141, 33.716248, 42.331413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.917145, 34.052467, 42.517517>,  <41.850548, 34.254200, 42.629181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.917145, 34.052467, 42.517517>,  <42.028141, 33.716248, 42.331413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.917145, 34.052467, 42.517517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119291, 0.450388, -0.884828,
		-0.953292, -0.301037, -0.024710,
		-0.277495, 0.840552, 0.465262,
		41.833897, 34.304634, 42.657097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.439896, 33.967022, 41.998806>,  <42.028141, 33.716248, 42.331413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.439896, 33.967022, 41.998806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.609993, 34.270821, 42.195717>,  <41.712051, 34.453098, 42.313866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.609993, 34.270821, 42.195717>,  <41.439896, 33.967022, 41.998806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.609993, 34.270821, 42.195717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085844, 0.507610, -0.857300,
		-0.901000, 0.406819, 0.150659,
		0.425241, 0.759494, 0.492280,
		41.737564, 34.498669, 42.343399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081741, 34.513180, 41.817806>,  <41.439896, 33.967022, 41.998806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081741, 34.513180, 41.817806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.420128, 34.665665, 41.966942>,  <41.623161, 34.757156, 42.056423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.420128, 34.665665, 41.966942>,  <41.081741, 34.513180, 41.817806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.420128, 34.665665, 41.966942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112111, 0.556426, -0.823299,
		-0.521310, 0.738287, 0.427982,
		0.845971, 0.381213, 0.372841,
		41.673920, 34.780029, 42.078793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139988, 35.267117, 41.581409>,  <41.081741, 34.513180, 41.817806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.139988, 35.267117, 41.581409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.511032, 35.152924, 41.677773>,  <41.733658, 35.084408, 41.735592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.511032, 35.152924, 41.677773>,  <41.139988, 35.267117, 41.581409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.511032, 35.152924, 41.677773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339083, 0.372949, -0.863673,
		0.156716, 0.882842, 0.442754,
		0.927611, -0.285481, 0.240910,
		41.789314, 35.067280, 41.750046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.485565, 35.766911, 41.313236>,  <41.139988, 35.267117, 41.581409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.485565, 35.766911, 41.313236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.780678, 35.500828, 41.359158>,  <41.957745, 35.341179, 41.386711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.780678, 35.500828, 41.359158>,  <41.485565, 35.766911, 41.313236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.780678, 35.500828, 41.359158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313583, 0.187137, -0.930938,
		0.597785, 0.722826, 0.346664,
		0.737779, -0.665209, 0.114799,
		42.002010, 35.301266, 41.393597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.118008, 36.018719, 41.206795>,  <41.485565, 35.766911, 41.313236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.118008, 36.018719, 41.206795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.206684, 35.631149, 41.162914>,  <42.259892, 35.398605, 41.136585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.206684, 35.631149, 41.162914>,  <42.118008, 36.018719, 41.206795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.206684, 35.631149, 41.162914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538871, 0.215499, -0.814358,
		0.812693, 0.121424, 0.569901,
		0.221696, -0.968925, -0.109703,
		42.273193, 35.340473, 41.130005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.869232, 36.010674, 41.202106>,  <42.118008, 36.018719, 41.206795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.869232, 36.010674, 41.202106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.740116, 35.681419, 41.015240>,  <42.662647, 35.483868, 40.903118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.740116, 35.681419, 41.015240>,  <42.869232, 36.010674, 41.202106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.740116, 35.681419, 41.015240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452059, 0.299566, -0.840180,
		0.831533, -0.482392, 0.275409,
		-0.322793, -0.823139, -0.467169,
		42.643276, 35.434479, 40.875088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.372532, 35.724205, 40.681732>,  <42.869232, 36.010674, 41.202106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.372532, 35.724205, 40.681732> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.042141, 35.554535, 40.533230>,  <42.843906, 35.452732, 40.444130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.042141, 35.554535, 40.533230>,  <43.372532, 35.724205, 40.681732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.042141, 35.554535, 40.533230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356512, 0.117062, -0.926928,
		0.436644, -0.897980, 0.054535,
		-0.825979, -0.424180, -0.371255,
		42.794346, 35.427280, 40.421852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.601654, 35.231567, 40.106575>,  <43.372532, 35.724205, 40.681732>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.601654, 35.231567, 40.106575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.210373, 35.310165, 40.079693>,  <42.975605, 35.357323, 40.063564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.210373, 35.310165, 40.079693>,  <43.601654, 35.231567, 40.106575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.210373, 35.310165, 40.079693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068113, -0.002160, -0.997675,
		-0.196185, -0.980502, -0.011271,
		-0.978198, 0.196496, -0.067209,
		42.916912, 35.369114, 40.059528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.433060, 34.588348, 39.808052>,  <43.601654, 35.231567, 40.106575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.433060, 34.588348, 39.808052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.171097, 34.878582, 39.723553>,  <43.013920, 35.052723, 39.672855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.171097, 34.878582, 39.723553>,  <43.433060, 34.588348, 39.808052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.171097, 34.878582, 39.723553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121922, -0.174424, -0.977093,
		-0.745811, -0.665659, 0.025766,
		-0.654906, 0.725585, -0.211246,
		42.974625, 35.096256, 39.660179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.951725, 34.284756, 39.329197>,  <43.433060, 34.588348, 39.808052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.951725, 34.284756, 39.329197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.947498, 34.680618, 39.271965>,  <42.944962, 34.918137, 39.237625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.947498, 34.680618, 39.271965>,  <42.951725, 34.284756, 39.329197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.947498, 34.680618, 39.271965> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138746, -0.140251, -0.980347,
		-0.990272, -0.030215, -0.135828,
		-0.010571, 0.989655, -0.143079,
		42.944328, 34.977516, 39.229042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.548668, 34.392178, 38.792988>,  <42.951725, 34.284756, 39.329197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.548668, 34.392178, 38.792988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.743313, 34.741547, 38.800297>,  <42.860100, 34.951168, 38.804684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.743313, 34.741547, 38.800297>,  <42.548668, 34.392178, 38.792988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.743313, 34.741547, 38.800297> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182174, -0.080994, -0.979925,
		-0.854411, 0.480175, -0.198528,
		0.486615, 0.873425, 0.018274,
		42.889297, 35.003574, 38.805779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.276146, 34.723293, 38.192699>,  <42.548668, 34.392178, 38.792988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.276146, 34.723293, 38.192699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.615021, 34.915890, 38.282536>,  <42.818348, 35.031448, 38.336437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.615021, 34.915890, 38.282536>,  <42.276146, 34.723293, 38.192699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.615021, 34.915890, 38.282536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282255, -0.049756, -0.958048,
		-0.450114, 0.875039, -0.178056,
		0.847189, 0.481488, 0.224588,
		42.869179, 35.060337, 38.349911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.492859, 35.217720, 37.615734>,  <42.276146, 34.723293, 38.192699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.492859, 35.217720, 37.615734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.829037, 35.118797, 37.808601>,  <43.030743, 35.059444, 37.924320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.829037, 35.118797, 37.808601>,  <42.492859, 35.217720, 37.615734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.829037, 35.118797, 37.808601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463199, -0.133929, -0.876077,
		0.281237, 0.959636, 0.001993,
		0.840448, -0.247308, 0.482168,
		43.081173, 35.044605, 37.953251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.037415, 35.551384, 37.288364>,  <42.492859, 35.217720, 37.615734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.037415, 35.551384, 37.288364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.222004, 35.252941, 37.480347>,  <43.332756, 35.073875, 37.595535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.222004, 35.252941, 37.480347>,  <43.037415, 35.551384, 37.288364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.222004, 35.252941, 37.480347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564455, -0.170444, -0.807675,
		0.684421, 0.643638, 0.342490,
		0.461475, -0.746110, 0.479960,
		43.360447, 35.029110, 37.624336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.657333, 35.679890, 37.021278>,  <43.037415, 35.551384, 37.288364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.657333, 35.679890, 37.021278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.705315, 35.305691, 37.154221>,  <43.734104, 35.081173, 37.233986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.705315, 35.305691, 37.154221>,  <43.657333, 35.679890, 37.021278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.705315, 35.305691, 37.154221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642542, -0.182048, -0.744311,
		0.756804, 0.302835, 0.579257,
		0.119951, -0.935494, 0.332359,
		43.741299, 35.025043, 37.253929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.353424, 35.524948, 37.145542>,  <43.657333, 35.679890, 37.021278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.353424, 35.524948, 37.145542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.211254, 35.155586, 37.087593>,  <44.125950, 34.933968, 37.052826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.211254, 35.155586, 37.087593>,  <44.353424, 35.524948, 37.145542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.211254, 35.155586, 37.087593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785883, -0.211320, -0.581147,
		0.506022, -0.320408, 0.800800,
		-0.355429, -0.923408, -0.144871,
		44.104626, 34.878563, 37.044132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.861561, 35.088875, 37.327324>,  <44.353424, 35.524948, 37.145542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.861561, 35.088875, 37.327324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.629066, 34.857368, 37.098522>,  <44.489571, 34.718464, 36.961243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.629066, 34.857368, 37.098522>,  <44.861561, 35.088875, 37.327324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.629066, 34.857368, 37.098522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812922, -0.381639, -0.439896,
		0.036299, -0.720681, 0.692316,
		-0.581240, -0.578767, -0.572004,
		44.454693, 34.683739, 36.926922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.375313, 34.600567, 37.000797>,  <44.861561, 35.088875, 37.327324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.375313, 34.600567, 37.000797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.773586, 34.563465, 37.002190>,  <46.012550, 34.541203, 37.003025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.773586, 34.563465, 37.002190>,  <45.375313, 34.600567, 37.000797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.773586, 34.563465, 37.002190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081075, -0.850810, 0.519182,
		-0.045191, -0.517223, -0.854657,
		0.995683, -0.092753, 0.003485,
		46.072292, 34.535641, 37.003235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.446297, 33.933533, 36.709534>,  <45.375313, 34.600567, 37.000797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.446297, 33.933533, 36.709534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.776581, 34.033852, 36.911644>,  <45.974751, 34.094044, 37.032909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.776581, 34.033852, 36.911644>,  <45.446297, 33.933533, 36.709534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.776581, 34.033852, 36.911644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254175, -0.634236, 0.730165,
		0.503589, -0.731332, -0.459947,
		0.825708, 0.250796, 0.505280,
		46.024292, 34.109089, 37.063229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.838295, 33.261654, 36.858326>,  <45.446297, 33.933533, 36.709534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.838295, 33.261654, 36.858326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.928448, 33.545975, 37.124847>,  <45.982540, 33.716568, 37.284760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.928448, 33.545975, 37.124847>,  <45.838295, 33.261654, 36.858326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.928448, 33.545975, 37.124847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157551, -0.648309, 0.744898,
		0.961447, -0.272864, -0.034130,
		0.225383, 0.710803, 0.666304,
		45.996063, 33.759216, 37.324738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.048489, 32.778358, 37.302982>,  <45.838295, 33.261654, 36.858326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.048489, 32.778358, 37.302982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.016140, 33.134377, 37.482437>,  <45.996731, 33.347988, 37.590111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.016140, 33.134377, 37.482437>,  <46.048489, 32.778358, 37.302982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.016140, 33.134377, 37.482437> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027495, -0.451937, 0.891626,
		0.996345, 0.059771, 0.061021,
		-0.080871, 0.890045, 0.448642,
		45.991879, 33.401390, 37.617031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.506371, 32.628578, 37.929558>,  <46.048489, 32.778358, 37.302982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.506371, 32.628578, 37.929558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.254395, 32.936642, 37.969616>,  <46.103207, 33.121479, 37.993652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.254395, 32.936642, 37.969616>,  <46.506371, 32.628578, 37.929558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.254395, 32.936642, 37.969616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188066, -0.276376, 0.942469,
		0.753528, 0.574867, 0.318941,
		-0.629942, 0.770159, 0.100144,
		46.065411, 33.167690, 37.999660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.622276, 32.760967, 38.712379>,  <46.506371, 32.628578, 37.929558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.622276, 32.760967, 38.712379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.288567, 32.930225, 38.570999>,  <46.088341, 33.031780, 38.486172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.288567, 32.930225, 38.570999>,  <46.622276, 32.760967, 38.712379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.288567, 32.930225, 38.570999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496161, -0.296664, 0.815974,
		0.240423, 0.856117, 0.457451,
		-0.834279, 0.423148, -0.353447,
		46.038284, 33.057171, 38.464966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.506134, 33.032314, 39.263073>,  <46.622276, 32.760967, 38.712379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.506134, 33.032314, 39.263073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.159027, 33.010750, 39.065456>,  <45.950764, 32.997810, 38.946888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.159027, 33.010750, 39.065456>,  <46.506134, 33.032314, 39.263073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.159027, 33.010750, 39.065456> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489407, -0.080100, 0.868369,
		-0.086391, 0.995328, 0.043122,
		-0.867766, -0.053916, -0.494040,
		45.898697, 32.994576, 38.917244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.006519, 33.450977, 39.561909>,  <46.506134, 33.032314, 39.263073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.006519, 33.450977, 39.561909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.787910, 33.172318, 39.376007>,  <45.656746, 33.005123, 39.264465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.787910, 33.172318, 39.376007>,  <46.006519, 33.450977, 39.561909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.787910, 33.172318, 39.376007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463226, -0.210860, 0.860790,
		-0.697664, 0.685728, -0.207464,
		-0.546522, -0.696646, -0.464757,
		45.623955, 32.963326, 39.236580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.409466, 33.541634, 39.818108>,  <46.006519, 33.450977, 39.561909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.409466, 33.541634, 39.818108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.354778, 33.172462, 39.674160>,  <45.321964, 32.950958, 39.587791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.354778, 33.172462, 39.674160>,  <45.409466, 33.541634, 39.818108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.354778, 33.172462, 39.674160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614749, -0.205818, 0.761396,
		-0.776783, 0.325328, -0.539231,
		-0.136720, -0.922931, -0.359870,
		45.313763, 32.895584, 39.566200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.590664, 33.330688, 39.894180>,  <45.409466, 33.541634, 39.818108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.590664, 33.330688, 39.894180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.788078, 32.983273, 39.876022>,  <44.906528, 32.774822, 39.865128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.788078, 32.983273, 39.876022>,  <44.590664, 33.330688, 39.894180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.788078, 32.983273, 39.876022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550182, -0.352210, 0.757131,
		-0.673586, -0.348699, -0.651684,
		0.493540, -0.868537, -0.045396,
		44.936142, 32.722710, 39.862404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.164524, 32.845684, 39.683846>,  <44.590664, 33.330688, 39.894180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.164524, 32.845684, 39.683846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.450001, 32.625996, 39.857746>,  <44.621284, 32.494183, 39.962086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.450001, 32.625996, 39.857746>,  <44.164524, 32.845684, 39.683846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.450001, 32.625996, 39.857746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698443, -0.510855, 0.501203,
		-0.053174, -0.661352, -0.748188,
		0.713688, -0.549218, 0.434752,
		44.664108, 32.461231, 39.988171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.957916, 32.170155, 39.693073>,  <44.164524, 32.845684, 39.683846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.957916, 32.170155, 39.693073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.233551, 32.144112, 39.981770>,  <44.398933, 32.128487, 40.154987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.233551, 32.144112, 39.981770>,  <43.957916, 32.170155, 39.693073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.233551, 32.144112, 39.981770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662860, -0.459132, 0.591451,
		0.292868, -0.885979, -0.359541,
		0.689090, -0.065108, 0.721745,
		44.440277, 32.124580, 40.198292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.960735, 31.461374, 39.861893>,  <43.957916, 32.170155, 39.693073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.960735, 31.461374, 39.861893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.113049, 31.677929, 40.161736>,  <44.204437, 31.807861, 40.341640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.113049, 31.677929, 40.161736>,  <43.960735, 31.461374, 39.861893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.113049, 31.677929, 40.161736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679468, -0.386017, 0.623950,
		0.627158, -0.746921, 0.220866,
		0.380784, 0.541387, 0.749603,
		44.227283, 31.840345, 40.386616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.963982, 31.005157, 40.343143>,  <43.960735, 31.461374, 39.861893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.963982, 31.005157, 40.343143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.995564, 31.356024, 40.532604>,  <44.014511, 31.566544, 40.646282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.995564, 31.356024, 40.532604>,  <43.963982, 31.005157, 40.343143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.995564, 31.356024, 40.532604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591118, -0.341398, 0.730771,
		0.802711, -0.337685, 0.491552,
		0.078956, 0.877164, 0.473656,
		44.019249, 31.619173, 40.674702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.183224, 30.860565, 40.965004>,  <43.963982, 31.005157, 40.343143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.183224, 30.860565, 40.965004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.017792, 31.220617, 41.019718>,  <43.918533, 31.436649, 41.052547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.017792, 31.220617, 41.019718>,  <44.183224, 30.860565, 40.965004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.017792, 31.220617, 41.019718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641910, -0.394828, 0.657314,
		0.645677, 0.184049, 0.741099,
		-0.413584, 0.900131, 0.136789,
		43.893715, 31.490656, 41.060753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.215164, 30.959652, 41.666878>,  <44.183224, 30.860565, 40.965004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.215164, 30.959652, 41.666878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.924763, 31.199825, 41.532772>,  <43.750523, 31.343929, 41.452309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.924763, 31.199825, 41.532772>,  <44.215164, 30.959652, 41.666878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.924763, 31.199825, 41.532772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587225, -0.287556, 0.756623,
		0.357894, 0.746184, 0.561356,
		-0.726002, 0.600433, -0.335264,
		43.706963, 31.379955, 41.432194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.971455, 31.215546, 42.219597>,  <44.215164, 30.959652, 41.666878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.971455, 31.215546, 42.219597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.698586, 31.323530, 41.947788>,  <43.534863, 31.388321, 41.784702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.698586, 31.323530, 41.947788>,  <43.971455, 31.215546, 42.219597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.698586, 31.323530, 41.947788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724707, -0.126179, 0.677405,
		0.097131, 0.954567, 0.281720,
		-0.682176, 0.269962, -0.679526,
		43.493931, 31.404518, 41.743931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.564575, 31.760395, 42.547432>,  <43.971455, 31.215546, 42.219597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.564575, 31.760395, 42.547432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.357758, 31.593912, 42.248249>,  <43.233669, 31.494022, 42.068741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.357758, 31.593912, 42.248249>,  <43.564575, 31.760395, 42.547432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.357758, 31.593912, 42.248249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737808, -0.226292, 0.635949,
		-0.433944, 0.880660, -0.190081,
		-0.517041, -0.416210, -0.747956,
		43.202644, 31.469049, 42.023861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.894287, 31.897131, 42.768185>,  <43.564575, 31.760395, 42.547432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.894287, 31.897131, 42.768185> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.822083, 31.591984, 42.519848>,  <42.778759, 31.408895, 42.370846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.822083, 31.591984, 42.519848>,  <42.894287, 31.897131, 42.768185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.822083, 31.591984, 42.519848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745649, -0.305495, 0.592182,
		-0.641422, 0.569827, -0.513687,
		-0.180513, -0.762869, -0.620842,
		42.767929, 31.363123, 42.333595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.278366, 32.013378, 42.650909>,  <42.894287, 31.897131, 42.768185>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.278366, 32.013378, 42.650909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.329144, 31.628639, 42.553970>,  <42.359608, 31.397795, 42.495808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.329144, 31.628639, 42.553970>,  <42.278366, 32.013378, 42.650909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.329144, 31.628639, 42.553970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794815, -0.244805, 0.555284,
		-0.593427, 0.122134, -0.795567,
		0.126940, -0.961849, -0.242348,
		42.367226, 31.340084, 42.481266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.572289, 31.800049, 42.535942>,  <42.278366, 32.013378, 42.650909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.572289, 31.800049, 42.535942> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.791462, 31.473352, 42.608276>,  <41.922966, 31.277334, 42.651676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.791462, 31.473352, 42.608276>,  <41.572289, 31.800049, 42.535942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.791462, 31.473352, 42.608276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755941, -0.390878, 0.525136,
		-0.358214, -0.424444, -0.831583,
		0.547938, -0.816738, 0.180836,
		41.955841, 31.228331, 42.662525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.719463, 36.367123, 39.640156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.521439, 36.657543, 39.449257>,  <40.402626, 36.831795, 39.334717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.521439, 36.657543, 39.449257>,  <40.719463, 36.367123, 39.640156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521439, 36.657543, 39.449257> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231101, -0.419454, -0.877867,
		-0.837561, -0.544887, 0.039863,
		-0.495059, 0.726055, -0.477243,
		40.372921, 36.875359, 39.306084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285637, 36.082836, 39.197044>,  <40.719463, 36.367123, 39.640156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285637, 36.082836, 39.197044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297508, 36.446327, 39.030514>,  <40.304630, 36.664421, 38.930595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297508, 36.446327, 39.030514>,  <40.285637, 36.082836, 39.197044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.297508, 36.446327, 39.030514> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011307, -0.416180, -0.909212,
		-0.999496, 0.031690, -0.002076,
		0.029677, 0.908730, -0.416328,
		40.306412, 36.718945, 38.905617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745911, 36.198750, 38.628773>,  <40.285637, 36.082836, 39.197044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.745911, 36.198750, 38.628773> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024696, 36.468559, 38.531406>,  <40.191967, 36.630447, 38.472988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024696, 36.468559, 38.531406>,  <39.745911, 36.198750, 38.628773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024696, 36.468559, 38.531406> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127427, -0.217543, -0.967697,
		-0.705692, 0.705469, -0.065667,
		0.696965, 0.674528, -0.243414,
		40.233788, 36.670918, 38.458382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529617, 36.448868, 38.014233>,  <39.745911, 36.198750, 38.628773>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529617, 36.448868, 38.014233> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906525, 36.582687, 38.008476>,  <40.132668, 36.662979, 38.005024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906525, 36.582687, 38.008476>,  <39.529617, 36.448868, 38.014233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.906525, 36.582687, 38.008476> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038730, -0.151564, -0.987688,
		-0.332609, 0.930111, -0.155772,
		0.942269, 0.334547, -0.014388,
		40.189205, 36.683052, 38.004158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490658, 36.925789, 37.549122>,  <39.529617, 36.448868, 38.014233>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.490658, 36.925789, 37.549122> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874390, 36.813793, 37.534729>,  <40.104630, 36.746597, 37.526093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874390, 36.813793, 37.534729>,  <39.490658, 36.925789, 37.549122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874390, 36.813793, 37.534729> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107429, -0.244238, -0.963746,
		0.261052, 0.928414, -0.264384,
		0.959328, -0.279990, -0.035980,
		40.162189, 36.729797, 37.523933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758636, 37.090275, 36.852325>,  <39.490658, 36.925789, 37.549122>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758636, 37.090275, 36.852325> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071613, 36.867264, 36.963287>,  <40.259399, 36.733456, 37.029865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071613, 36.867264, 36.963287>,  <39.758636, 37.090275, 36.852325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.071613, 36.867264, 36.963287> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066765, -0.367797, -0.927506,
		0.619138, 0.744238, -0.250555,
		0.782438, -0.557527, 0.277406,
		40.306343, 36.700005, 37.046509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.460224, 37.239151, 36.427292>,  <39.758636, 37.090275, 36.852325>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.460224, 37.239151, 36.427292> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.500965, 36.873978, 36.585369>,  <40.525410, 36.654873, 36.680214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.500965, 36.873978, 36.585369>,  <40.460224, 37.239151, 36.427292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.500965, 36.873978, 36.585369> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084341, -0.387905, -0.917833,
		0.991218, 0.126815, 0.037489,
		0.101853, -0.912934, 0.395194,
		40.531521, 36.600098, 36.703926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923092, 36.917389, 35.954437>,  <40.460224, 37.239151, 36.427292>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.923092, 36.917389, 35.954437> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.749752, 36.623672, 36.163445>,  <40.645748, 36.447441, 36.288849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.749752, 36.623672, 36.163445>,  <40.923092, 36.917389, 35.954437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.749752, 36.623672, 36.163445> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094621, -0.613650, -0.783888,
		0.896244, -0.290257, 0.335405,
		-0.433351, -0.734292, 0.522516,
		40.619747, 36.403385, 36.320198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.352455, 36.362370, 35.828426>,  <40.923092, 36.917389, 35.954437>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.352455, 36.362370, 35.828426> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972473, 36.275021, 35.917782>,  <40.744484, 36.222610, 35.971397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972473, 36.275021, 35.917782>,  <41.352455, 36.362370, 35.828426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.972473, 36.275021, 35.917782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091676, -0.488743, -0.867598,
		0.298638, -0.844657, 0.444264,
		-0.949953, -0.218370, 0.223392,
		40.687489, 36.209511, 35.984798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.234200, 35.696255, 35.616238>,  <41.352455, 36.362370, 35.828426>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.234200, 35.696255, 35.616238> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855633, 35.809200, 35.678925>,  <40.628490, 35.876968, 35.716537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855633, 35.809200, 35.678925>,  <41.234200, 35.696255, 35.616238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.855633, 35.809200, 35.678925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284676, -0.500357, -0.817681,
		-0.152470, -0.818483, 0.553930,
		-0.946421, 0.282362, 0.156713,
		40.571705, 35.893909, 35.725937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819801, 35.044285, 35.592823>,  <41.234200, 35.696255, 35.616238>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.819801, 35.044285, 35.592823> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.594009, 35.356709, 35.486008>,  <40.458534, 35.544163, 35.421917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.594009, 35.356709, 35.486008>,  <40.819801, 35.044285, 35.592823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.594009, 35.356709, 35.486008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197453, -0.441888, -0.875070,
		-0.801481, -0.441233, 0.403660,
		-0.564482, 0.781056, -0.267042,
		40.424664, 35.591026, 35.405895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277267, 34.671246, 35.303768>,  <40.819801, 35.044285, 35.592823>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277267, 34.671246, 35.303768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273273, 35.045033, 35.161407>,  <40.270878, 35.269306, 35.075989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273273, 35.045033, 35.161407>,  <40.277267, 34.671246, 35.303768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273273, 35.045033, 35.161407> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341844, -0.337668, -0.876996,
		-0.939704, 0.112909, 0.322814,
		-0.009983, 0.934469, -0.355905,
		40.270279, 35.325375, 35.054634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419682, 33.979889, 35.089787>,  <40.277267, 34.671246, 35.303768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.419682, 33.979889, 35.089787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164330, 34.175491, 35.327560>,  <40.011120, 34.292850, 35.470226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164330, 34.175491, 35.327560>,  <40.419682, 33.979889, 35.089787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.164330, 34.175491, 35.327560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741391, -0.598233, -0.304067,
		0.206922, -0.634818, 0.744439,
		-0.638376, 0.489002, 0.594435,
		39.972816, 34.322193, 35.505890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081585, 33.539024, 35.729309>,  <40.419682, 33.979889, 35.089787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081585, 33.539024, 35.729309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844681, 33.820549, 35.572403>,  <39.702538, 33.989464, 35.478260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844681, 33.820549, 35.572403>,  <40.081585, 33.539024, 35.729309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844681, 33.820549, 35.572403> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686197, -0.695750, -0.212285,
		-0.422329, 0.143444, 0.895021,
		-0.592260, 0.703815, -0.392266,
		39.667004, 34.031693, 35.454723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645958, 34.000244, 36.151695>,  <40.081585, 33.539024, 35.729309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645958, 34.000244, 36.151695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808590, 33.973457, 36.516159>,  <39.906170, 33.957386, 36.734837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808590, 33.973457, 36.516159>,  <39.645958, 34.000244, 36.151695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808590, 33.973457, 36.516159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894933, -0.229848, 0.382446,
		0.183818, -0.970920, -0.153378,
		0.406579, -0.066963, 0.911158,
		39.930565, 33.953369, 36.789505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165512, 33.624115, 36.578831>,  <39.645958, 34.000244, 36.151695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165512, 33.624115, 36.578831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403282, 33.701576, 36.891026>,  <39.545944, 33.748055, 37.078342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403282, 33.701576, 36.891026>,  <39.165512, 33.624115, 36.578831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.403282, 33.701576, 36.891026> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735284, -0.262089, 0.625034,
		0.325595, -0.945414, -0.013404,
		0.594429, 0.193652, 0.780483,
		39.581612, 33.759670, 37.125172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154678, 32.997898, 37.115730>,  <39.165512, 33.624115, 36.578831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154678, 32.997898, 37.115730> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222435, 33.358910, 37.274094>,  <39.263088, 33.575516, 37.369110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222435, 33.358910, 37.274094>,  <39.154678, 32.997898, 37.115730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.222435, 33.358910, 37.274094> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691778, -0.177233, 0.700022,
		0.701961, -0.392457, 0.594331,
		0.169393, 0.902533, 0.395904,
		39.273254, 33.629669, 37.392864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115398, 32.786922, 37.822277>,  <39.154678, 32.997898, 37.115730>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115398, 32.786922, 37.822277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085976, 33.185596, 37.808346>,  <39.068321, 33.424801, 37.799988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085976, 33.185596, 37.808346>,  <39.115398, 32.786922, 37.822277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085976, 33.185596, 37.808346> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685383, -0.025154, 0.727748,
		0.724458, 0.077403, 0.684960,
		-0.073559, 0.996683, -0.034828,
		39.063908, 33.484600, 37.797897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229866, 33.117355, 38.538719>,  <39.115398, 32.786922, 37.822277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229866, 33.117355, 38.538719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002735, 33.362164, 38.318539>,  <38.866455, 33.509048, 38.186428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002735, 33.362164, 38.318539>,  <39.229866, 33.117355, 38.538719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.002735, 33.362164, 38.318539> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664204, 0.054324, 0.745575,
		0.486210, 0.788974, 0.375659,
		-0.567832, 0.612020, -0.550453,
		38.832386, 33.545769, 38.153404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899277, 33.515091, 39.035294>,  <39.229866, 33.117355, 38.538719>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899277, 33.515091, 39.035294> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684242, 33.581825, 38.704678>,  <38.555222, 33.621864, 38.506310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684242, 33.581825, 38.704678>,  <38.899277, 33.515091, 39.035294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684242, 33.581825, 38.704678> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842261, -0.059776, 0.535746,
		0.039973, 0.984171, 0.172652,
		-0.537586, 0.166834, -0.826540,
		38.522968, 33.631874, 38.456715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545940, 34.052872, 39.269485>,  <38.899277, 33.515091, 39.035294>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545940, 34.052872, 39.269485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345245, 33.909897, 38.954399>,  <38.224827, 33.824112, 38.765347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345245, 33.909897, 38.954399>,  <38.545940, 34.052872, 39.269485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345245, 33.909897, 38.954399> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864835, 0.226088, 0.448269,
		0.017865, 0.906158, -0.422562,
		-0.501738, -0.357438, -0.787716,
		38.194725, 33.802666, 38.718082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191509, 34.575405, 39.164276>,  <38.545940, 34.052872, 39.269485>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191509, 34.575405, 39.164276> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012806, 34.255981, 39.002926>,  <37.905582, 34.064327, 38.906116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012806, 34.255981, 39.002926>,  <38.191509, 34.575405, 39.164276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012806, 34.255981, 39.002926> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882274, 0.318517, 0.346611,
		-0.148307, 0.510740, -0.846847,
		-0.446763, -0.798556, -0.403375,
		37.878777, 34.016415, 38.881912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524940, 34.803062, 38.802479>,  <38.191509, 34.575405, 39.164276>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524940, 34.803062, 38.802479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500412, 34.424385, 38.928978>,  <37.485695, 34.197178, 39.004875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500412, 34.424385, 38.928978>,  <37.524940, 34.803062, 38.802479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500412, 34.424385, 38.928978> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834940, 0.222265, 0.503462,
		-0.546915, -0.233174, -0.804061,
		-0.061320, -0.946693, 0.316246,
		37.482018, 34.140377, 39.023853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841621, 34.538044, 38.641842>,  <37.524940, 34.803062, 38.802479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841621, 34.538044, 38.641842> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973061, 34.284195, 38.921635>,  <37.051926, 34.131886, 39.089512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973061, 34.284195, 38.921635>,  <36.841621, 34.538044, 38.641842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973061, 34.284195, 38.921635> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823881, 0.169502, 0.540823,
		-0.461781, -0.754007, -0.467152,
		0.328602, -0.634620, 0.699485,
		37.071640, 34.093811, 39.131481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240105, 34.429672, 39.003666>,  <36.841621, 34.538044, 38.641842>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240105, 34.429672, 39.003666> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524521, 34.276833, 39.239777>,  <36.695171, 34.185131, 39.381443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524521, 34.276833, 39.239777>,  <36.240105, 34.429672, 39.003666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524521, 34.276833, 39.239777> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506435, 0.304077, 0.806883,
		-0.487796, -0.872662, 0.022704,
		0.711040, -0.382096, 0.590275,
		36.737831, 34.162205, 39.416859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849483, 33.953156, 39.506741>,  <36.240105, 34.429672, 39.003666>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849483, 33.953156, 39.506741> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194553, 34.038712, 39.690063>,  <36.401596, 34.090046, 39.800056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194553, 34.038712, 39.690063>,  <35.849483, 33.953156, 39.506741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194553, 34.038712, 39.690063> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501813, 0.248986, 0.828366,
		0.063063, -0.944595, 0.322124,
		0.862674, 0.213885, 0.458308,
		36.453354, 34.102879, 39.827557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832775, 33.614609, 40.127850>,  <35.849483, 33.953156, 39.506741>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832775, 33.614609, 40.127850> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108166, 33.897572, 40.191814>,  <36.273399, 34.067348, 40.230194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108166, 33.897572, 40.191814>,  <35.832775, 33.614609, 40.127850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108166, 33.897572, 40.191814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386247, 0.171017, 0.906403,
		0.613850, -0.685803, 0.390975,
		0.688478, 0.707409, 0.159910,
		36.314709, 34.109795, 40.239788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097954, 33.430859, 40.771763>,  <35.832775, 33.614609, 40.127850>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097954, 33.430859, 40.771763> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217934, 33.807964, 40.713482>,  <36.289921, 34.034225, 40.678513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217934, 33.807964, 40.713482>,  <36.097954, 33.430859, 40.771763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.217934, 33.807964, 40.713482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357757, 0.252762, 0.898956,
		0.884329, -0.217518, 0.413096,
		0.299954, 0.942761, -0.145706,
		36.307919, 34.090794, 40.669769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081348, 32.730091, 41.055416>,  <36.097954, 33.430859, 40.771763>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081348, 32.730091, 41.055416> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692696, 32.636227, 41.067188>,  <35.459503, 32.579910, 41.074253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692696, 32.636227, 41.067188>,  <36.081348, 32.730091, 41.055416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692696, 32.636227, 41.067188> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070653, -0.406774, -0.910793,
		0.225696, -0.882876, 0.411814,
		-0.971632, -0.234658, 0.029430,
		35.401207, 32.565830, 41.076015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924194, 32.295067, 40.412884>,  <36.081348, 32.730091, 41.055416>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924194, 32.295067, 40.412884> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541824, 32.347755, 40.517841>,  <35.312401, 32.379368, 40.580814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541824, 32.347755, 40.517841>,  <35.924194, 32.295067, 40.412884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541824, 32.347755, 40.517841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288892, -0.262579, -0.920648,
		-0.052375, -0.955877, 0.289062,
		-0.955928, 0.131727, 0.262392,
		35.255047, 32.387272, 40.596558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483761, 31.644405, 40.158146>,  <35.924194, 32.295067, 40.412884>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483761, 31.644405, 40.158146> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258976, 31.975071, 40.169640>,  <35.124104, 32.173470, 40.176537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258976, 31.975071, 40.169640>,  <35.483761, 31.644405, 40.158146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258976, 31.975071, 40.169640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359939, -0.213109, -0.908311,
		-0.744741, -0.520783, 0.417307,
		-0.561964, 0.826662, 0.028738,
		35.090385, 32.223068, 40.178261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823448, 31.522078, 39.830315>,  <35.483761, 31.644405, 40.158146>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823448, 31.522078, 39.830315> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855110, 31.920773, 39.836628>,  <34.874107, 32.159988, 39.840416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855110, 31.920773, 39.836628>,  <34.823448, 31.522078, 39.830315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855110, 31.920773, 39.836628> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482470, 0.052160, -0.874358,
		-0.872329, 0.061590, 0.485025,
		0.079151, 0.996737, 0.015785,
		34.878857, 32.219795, 39.841362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170021, 31.741934, 39.650738>,  <34.823448, 31.522078, 39.830315>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170021, 31.741934, 39.650738> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407291, 32.055260, 39.576370>,  <34.549652, 32.243256, 39.531750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407291, 32.055260, 39.576370>,  <34.170021, 31.741934, 39.650738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407291, 32.055260, 39.576370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394495, 0.081501, -0.915276,
		-0.701796, 0.616261, 0.357358,
		0.593174, 0.783313, -0.185915,
		34.585243, 32.290253, 39.520596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709774, 32.235394, 39.320496>,  <34.170021, 31.741934, 39.650738>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709774, 32.235394, 39.320496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089130, 32.328861, 39.234745>,  <34.316746, 32.384941, 39.183296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089130, 32.328861, 39.234745>,  <33.709774, 32.235394, 39.320496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.089130, 32.328861, 39.234745> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196281, -0.098411, -0.975597,
		-0.249061, 0.967324, -0.047467,
		0.948390, 0.233666, -0.214377,
		34.373646, 32.398960, 39.170433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717083, 32.787426, 38.769081>,  <33.709774, 32.235394, 39.320496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717083, 32.787426, 38.769081> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077213, 32.613731, 38.757347>,  <34.293289, 32.509514, 38.750305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077213, 32.613731, 38.757347>,  <33.717083, 32.787426, 38.769081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077213, 32.613731, 38.757347> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054678, -0.045986, -0.997445,
		0.431775, 0.899626, -0.065145,
		0.900322, -0.434234, -0.029334,
		34.347309, 32.483459, 38.748547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060520, 33.224091, 38.241535>,  <33.717083, 32.787426, 38.769081>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060520, 33.224091, 38.241535> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249367, 32.872955, 38.273773>,  <34.362675, 32.662273, 38.293118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249367, 32.872955, 38.273773>,  <34.060520, 33.224091, 38.241535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249367, 32.872955, 38.273773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015627, -0.099750, -0.994890,
		0.881397, 0.468446, -0.060812,
		0.472118, -0.877843, 0.080599,
		34.391003, 32.609604, 38.297955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587914, 33.343685, 37.806232>,  <34.060520, 33.224091, 38.241535>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587914, 33.343685, 37.806232> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594994, 32.945351, 37.841984>,  <34.599243, 32.706348, 37.863434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594994, 32.945351, 37.841984>,  <34.587914, 33.343685, 37.806232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594994, 32.945351, 37.841984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023894, -0.088943, -0.995750,
		0.999558, 0.019759, 0.022220,
		0.017699, -0.995840, 0.089376,
		34.600304, 32.646599, 37.868797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190868, 33.161083, 37.434200>,  <34.587914, 33.343685, 37.806232>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190868, 33.161083, 37.434200> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956684, 32.837662, 37.457817>,  <34.816174, 32.643608, 37.471985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956684, 32.837662, 37.457817>,  <35.190868, 33.161083, 37.434200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956684, 32.837662, 37.457817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131860, -0.166827, -0.977129,
		0.799907, -0.564283, 0.204285,
		-0.585458, -0.808550, 0.059039,
		34.781048, 32.595097, 37.475529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523472, 32.755695, 36.883751>,  <35.190868, 33.161083, 37.434200>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523472, 32.755695, 36.883751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154415, 32.625195, 36.966015>,  <34.932980, 32.546894, 37.015373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154415, 32.625195, 36.966015>,  <35.523472, 32.755695, 36.883751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154415, 32.625195, 36.966015> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229586, 0.036167, -0.972616,
		0.309877, -0.944592, -0.108272,
		-0.922641, -0.326249, 0.205658,
		34.877625, 32.527321, 37.027714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507351, 32.196167, 36.505226>,  <35.523472, 32.755695, 36.883751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507351, 32.196167, 36.505226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125885, 32.290733, 36.579670>,  <34.897007, 32.347473, 36.624336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125885, 32.290733, 36.579670>,  <35.507351, 32.196167, 36.505226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125885, 32.290733, 36.579670> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209868, -0.079436, -0.974497,
		-0.215600, -0.968400, 0.125371,
		-0.953663, 0.236413, 0.186110,
		34.839787, 32.361656, 36.635502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.790947, 31.851873, 44.776340> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.478077, 32.100868, 44.787052>,  <35.290356, 32.250263, 44.793480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.478077, 32.100868, 44.787052>,  <35.790947, 31.851873, 44.776340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478077, 32.100868, 44.787052> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019053, 0.019069, -0.999637,
		-0.622770, -0.782399, -0.003055,
		-0.782173, 0.622485, 0.026783,
		35.243423, 32.287613, 44.795086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287796, 31.500546, 44.426228>,  <35.790947, 31.851873, 44.776340>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287796, 31.500546, 44.426228> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.162804, 31.880508, 44.423889>,  <35.087811, 32.108486, 44.422485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.162804, 31.880508, 44.423889>,  <35.287796, 31.500546, 44.426228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162804, 31.880508, 44.423889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031291, -0.016445, -0.999375,
		-0.949410, -0.312099, 0.034862,
		-0.312478, 0.949907, -0.005847,
		35.069061, 32.165482, 44.422134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736668, 31.507528, 43.830658>,  <35.287796, 31.500546, 44.426228>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736668, 31.507528, 43.830658> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.863632, 31.884199, 43.875366>,  <34.939812, 32.110203, 43.902191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.863632, 31.884199, 43.875366>,  <34.736668, 31.507528, 43.830658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863632, 31.884199, 43.875366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015686, 0.123065, -0.992275,
		-0.948160, 0.313201, 0.053833,
		0.317407, 0.941679, 0.111772,
		34.958855, 32.166702, 43.908897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362789, 31.753328, 43.358559>,  <34.736668, 31.507528, 43.830658>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362789, 31.753328, 43.358559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.659698, 32.015602, 43.413849>,  <34.837845, 32.172966, 43.447021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.659698, 32.015602, 43.413849>,  <34.362789, 31.753328, 43.358559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659698, 32.015602, 43.413849> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044253, 0.157857, -0.986470,
		-0.668631, 0.738350, 0.088157,
		0.742276, 0.655684, 0.138222,
		34.882381, 32.212307, 43.455315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162888, 32.350315, 43.087875>,  <34.362789, 31.753328, 43.358559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162888, 32.350315, 43.087875> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.561996, 32.374935, 43.098194>,  <34.801460, 32.389709, 43.104385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.561996, 32.374935, 43.098194>,  <34.162888, 32.350315, 43.087875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561996, 32.374935, 43.098194> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032585, -0.112044, -0.993169,
		-0.058243, 0.991795, -0.113800,
		0.997770, 0.061553, 0.025792,
		34.861328, 32.393402, 43.105930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.293880, 33.007847, 42.696411>,  <34.162888, 32.350315, 43.087875>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.293880, 33.007847, 42.696411> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.642078, 32.811008, 42.700146>,  <34.850998, 32.692905, 42.702385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.642078, 32.811008, 42.700146>,  <34.293880, 33.007847, 42.696411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642078, 32.811008, 42.700146> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030634, 0.035241, -0.998909,
		0.491226, 0.869830, 0.045752,
		0.870493, -0.492092, 0.009335,
		34.903225, 32.663380, 42.702946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722851, 33.475834, 42.306118>,  <34.293880, 33.007847, 42.696411>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722851, 33.475834, 42.306118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.897625, 33.116077, 42.311478>,  <35.002491, 32.900223, 42.314693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.897625, 33.116077, 42.311478>,  <34.722851, 33.475834, 42.306118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897625, 33.116077, 42.311478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000181, -0.014987, -0.999888,
		0.899491, 0.436888, -0.006711,
		0.436939, -0.899391, 0.013402,
		35.028706, 32.846260, 42.315498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137623, 33.629696, 41.751854>,  <34.722851, 33.475834, 42.306118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137623, 33.629696, 41.751854> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.145302, 33.234470, 41.813000>,  <35.149910, 32.997337, 41.849686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.145302, 33.234470, 41.813000>,  <35.137623, 33.629696, 41.751854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145302, 33.234470, 41.813000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124835, -0.149322, -0.980877,
		0.991992, 0.037916, 0.120478,
		0.019201, -0.988061, 0.152860,
		35.151062, 32.938053, 41.858856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742111, 33.437428, 41.514469>,  <35.137623, 33.629696, 41.751854>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742111, 33.437428, 41.514469> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.481300, 33.134209, 41.508411>,  <35.324814, 32.952278, 41.504776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.481300, 33.134209, 41.508411>,  <35.742111, 33.437428, 41.514469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481300, 33.134209, 41.508411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197498, -0.150526, -0.968678,
		0.732025, -0.634590, 0.247860,
		-0.652023, -0.758048, -0.015141,
		35.285694, 32.906796, 41.503868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399643, 33.707165, 41.432888>,  <35.742111, 33.437428, 41.514469>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399643, 33.707165, 41.432888> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.307659, 34.038765, 41.228973>,  <36.252468, 34.237724, 41.106625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.307659, 34.038765, 41.228973>,  <36.399643, 33.707165, 41.432888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307659, 34.038765, 41.228973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315731, 0.431945, 0.844830,
		0.920561, 0.355232, 0.162410,
		-0.229958, 0.828996, -0.509789,
		36.238670, 34.287464, 41.076038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548313, 34.153210, 41.867149>,  <36.399643, 33.707165, 41.432888>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548313, 34.153210, 41.867149> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.348854, 34.402786, 41.626465>,  <36.229179, 34.552532, 41.482056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.348854, 34.402786, 41.626465>,  <36.548313, 34.153210, 41.867149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348854, 34.402786, 41.626465> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265632, 0.550774, 0.791257,
		0.825100, 0.554392, -0.108904,
		-0.498648, 0.623938, -0.601708,
		36.199261, 34.589966, 41.445953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844521, 34.874969, 41.827755>,  <36.548313, 34.153210, 41.867149>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844521, 34.874969, 41.827755> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.455421, 34.926960, 41.750942>,  <36.221962, 34.958157, 41.704857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.455421, 34.926960, 41.750942>,  <36.844521, 34.874969, 41.827755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455421, 34.926960, 41.750942> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055431, 0.673776, 0.736854,
		0.225160, 0.727414, -0.648207,
		-0.972744, 0.129979, -0.192028,
		36.163597, 34.965954, 41.693333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731884, 35.577892, 41.841534>,  <36.844521, 34.874969, 41.827755>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731884, 35.577892, 41.841534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.378891, 35.406242, 41.918552>,  <36.167095, 35.303253, 41.964764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.378891, 35.406242, 41.918552>,  <36.731884, 35.577892, 41.841534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378891, 35.406242, 41.918552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167975, 0.669927, 0.723176,
		-0.439324, 0.605848, -0.663282,
		-0.882485, -0.429123, 0.192547,
		36.114147, 35.277504, 41.976318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211773, 36.117001, 41.839226>,  <36.731884, 35.577892, 41.841534>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211773, 36.117001, 41.839226> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.049343, 35.825214, 42.059399>,  <35.951885, 35.650143, 42.191502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.049343, 35.825214, 42.059399>,  <36.211773, 36.117001, 41.839226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049343, 35.825214, 42.059399> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362971, 0.681528, 0.635430,
		-0.838661, 0.058243, -0.541530,
		-0.406078, -0.729470, 0.550431,
		35.927521, 35.606373, 42.224529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594120, 36.412697, 42.010548>,  <36.211773, 36.117001, 41.839226>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594120, 36.412697, 42.010548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.639843, 36.100975, 42.257000>,  <35.667278, 35.913940, 42.404869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.639843, 36.100975, 42.257000>,  <35.594120, 36.412697, 42.010548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639843, 36.100975, 42.257000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112608, 0.606030, 0.787431,
		-0.987043, -0.159390, -0.018483,
		0.114307, -0.779309, 0.616126,
		35.674133, 35.867184, 42.441837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076550, 36.474949, 42.560997>,  <35.594120, 36.412697, 42.010548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076550, 36.474949, 42.560997> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.327240, 36.231148, 42.755199>,  <35.477654, 36.084869, 42.871719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.327240, 36.231148, 42.755199>,  <35.076550, 36.474949, 42.560997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327240, 36.231148, 42.755199> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116849, 0.542501, 0.831889,
		-0.770425, -0.578101, 0.268782,
		0.626730, -0.609501, 0.485507,
		35.515259, 36.048298, 42.900852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706120, 36.294212, 43.119225>,  <35.076550, 36.474949, 42.560997>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706120, 36.294212, 43.119225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.087563, 36.207863, 43.203156>,  <35.316429, 36.156055, 43.253513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.087563, 36.207863, 43.203156>,  <34.706120, 36.294212, 43.119225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087563, 36.207863, 43.203156> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115696, 0.380684, 0.917439,
		-0.277927, -0.899155, 0.338049,
		0.953610, -0.215870, 0.209831,
		35.373646, 36.143101, 43.266106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670517, 35.923370, 43.813694>,  <34.706120, 36.294212, 43.119225>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670517, 35.923370, 43.813694> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.036160, 36.080742, 43.774437>,  <35.255543, 36.175163, 43.750885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.036160, 36.080742, 43.774437>,  <34.670517, 35.923370, 43.813694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036160, 36.080742, 43.774437> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050337, 0.350260, 0.935299,
		0.402349, -0.850018, 0.339977,
		0.914102, 0.393430, -0.098140,
		35.310390, 36.198769, 43.744995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129585, 35.601982, 44.336628>,  <34.670517, 35.923370, 43.813694>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129585, 35.601982, 44.336628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.300808, 35.947826, 44.231392>,  <35.403542, 36.155334, 44.168251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.300808, 35.947826, 44.231392>,  <35.129585, 35.601982, 44.336628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300808, 35.947826, 44.231392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185772, 0.369076, 0.910644,
		0.884453, -0.340931, 0.318606,
		0.428056, 0.864609, -0.263094,
		35.429226, 36.207211, 44.152462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612709, 35.704483, 44.849434>,  <35.129585, 35.601982, 44.336628>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612709, 35.704483, 44.849434> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.585049, 36.065533, 44.679497>,  <35.568451, 36.282162, 44.577534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.585049, 36.065533, 44.679497>,  <35.612709, 35.704483, 44.849434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585049, 36.065533, 44.679497> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012923, 0.425016, 0.905094,
		0.997522, 0.068082, -0.017727,
		-0.069155, 0.902622, -0.424842,
		35.564301, 36.336319, 44.552044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083847, 36.126621, 45.066364>,  <35.612709, 35.704483, 44.849434>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.083847, 36.126621, 45.066364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.828152, 36.417503, 44.966328>,  <35.674732, 36.592033, 44.906303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.828152, 36.417503, 44.966328>,  <36.083847, 36.126621, 45.066364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828152, 36.417503, 44.966328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167542, 0.449107, 0.877629,
		0.750533, 0.519116, -0.408925,
		-0.639242, 0.727201, -0.250096,
		35.636379, 36.635662, 44.891300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377750, 36.578255, 45.534710>,  <36.083847, 36.126621, 45.066364>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377750, 36.578255, 45.534710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.055161, 36.755352, 45.377953>,  <35.861607, 36.861610, 45.283897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.055161, 36.755352, 45.377953>,  <36.377750, 36.578255, 45.534710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055161, 36.755352, 45.377953> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008105, 0.654457, 0.756056,
		0.591212, 0.612917, -0.524215,
		-0.806476, 0.442740, -0.391890,
		35.813217, 36.888176, 45.260384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567551, 37.345230, 45.472900>,  <36.377750, 36.578255, 45.534710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567551, 37.345230, 45.472900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.171215, 37.299530, 45.501686>,  <35.933414, 37.272110, 45.518959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.171215, 37.299530, 45.501686>,  <36.567551, 37.345230, 45.472900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171215, 37.299530, 45.501686> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019934, 0.403380, 0.914816,
		-0.133544, 0.907873, -0.397408,
		-0.990842, -0.114246, 0.071966,
		35.873962, 37.265255, 45.523277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.867161, 39.189850, 42.771912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.092091, 38.883621, 42.896935>,  <33.227047, 38.699883, 42.971951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.092091, 38.883621, 42.896935>,  <32.867161, 39.189850, 42.771912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092091, 38.883621, 42.896935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083666, -0.323370, -0.942567,
		0.822674, 0.556177, -0.117786,
		0.562323, -0.765571, 0.312561,
		33.260788, 38.653950, 42.990704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480907, 39.135231, 42.323486>,  <32.867161, 39.189850, 42.771912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480907, 39.135231, 42.323486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.450066, 38.776791, 42.498325>,  <33.431561, 38.561726, 42.603230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.450066, 38.776791, 42.498325>,  <33.480907, 39.135231, 42.323486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450066, 38.776791, 42.498325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182726, -0.443682, -0.877358,
		0.980136, 0.012221, 0.197951,
		-0.077105, -0.896101, 0.437102,
		33.426933, 38.507961, 42.629456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074833, 38.793045, 42.156422>,  <33.480907, 39.135231, 42.323486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074833, 38.793045, 42.156422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.801186, 38.521297, 42.262577>,  <33.636997, 38.358250, 42.326271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.801186, 38.521297, 42.262577>,  <34.074833, 38.793045, 42.156422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801186, 38.521297, 42.262577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206365, -0.529284, -0.822965,
		0.699564, -0.508243, 0.502294,
		-0.684122, -0.679373, 0.265384,
		33.595947, 38.317486, 42.342194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450825, 38.278877, 42.029091>,  <34.074833, 38.793045, 42.156422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450825, 38.278877, 42.029091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.066624, 38.168732, 42.045124>,  <33.836102, 38.102646, 42.054745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.066624, 38.168732, 42.045124>,  <34.450825, 38.278877, 42.029091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066624, 38.168732, 42.045124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092806, -0.452814, -0.886762,
		0.262332, -0.848018, 0.460485,
		-0.960505, -0.275362, 0.040086,
		33.778473, 38.086124, 42.057152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531395, 37.632263, 41.792629>,  <34.450825, 38.278877, 42.029091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531395, 37.632263, 41.792629> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.148144, 37.734070, 41.740150>,  <33.918194, 37.795155, 41.708664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.148144, 37.734070, 41.740150>,  <34.531395, 37.632263, 41.792629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148144, 37.734070, 41.740150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006611, -0.477718, -0.878488,
		-0.286266, -0.840836, 0.459397,
		-0.958127, 0.254518, -0.131195,
		33.860706, 37.810425, 41.700790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.272446, 37.003578, 41.551174>,  <34.531395, 37.632263, 41.792629>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.272446, 37.003578, 41.551174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.039928, 37.304855, 41.428020>,  <33.900417, 37.485622, 41.354126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.039928, 37.304855, 41.428020>,  <34.272446, 37.003578, 41.551174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039928, 37.304855, 41.428020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099744, -0.309573, -0.945630,
		-0.807557, -0.580400, 0.104826,
		-0.581295, 0.753194, -0.307889,
		33.865540, 37.530815, 41.335655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809071, 36.725021, 41.044197>,  <34.272446, 37.003578, 41.551174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809071, 36.725021, 41.044197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.800541, 37.120705, 40.986210>,  <33.795425, 37.358112, 40.951416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.800541, 37.120705, 40.986210>,  <33.809071, 36.725021, 41.044197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.800541, 37.120705, 40.986210> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189070, -0.138396, -0.972162,
		-0.981732, -0.048136, -0.184078,
		-0.021320, 0.989206, -0.144969,
		33.794144, 37.417465, 40.942719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462223, 36.781342, 40.354172>,  <33.809071, 36.725021, 41.044197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.462223, 36.781342, 40.354172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.624702, 37.135948, 40.442787>,  <33.722191, 37.348713, 40.495956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.624702, 37.135948, 40.442787>,  <33.462223, 36.781342, 40.354172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624702, 37.135948, 40.442787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131143, 0.183378, -0.974256,
		-0.904323, 0.424799, -0.041773,
		0.406203, 0.886520, 0.221542,
		33.746563, 37.401905, 40.509251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091171, 37.223228, 39.953686>,  <33.462223, 36.781342, 40.354172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091171, 37.223228, 39.953686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.438766, 37.407085, 40.026989>,  <33.647324, 37.517399, 40.070969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.438766, 37.407085, 40.026989>,  <33.091171, 37.223228, 39.953686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438766, 37.407085, 40.026989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149838, 0.108529, -0.982736,
		-0.471596, 0.881448, 0.025439,
		0.868991, 0.459643, 0.183256,
		33.699463, 37.544979, 40.081966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070393, 37.851921, 39.624599>,  <33.091171, 37.223228, 39.953686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070393, 37.851921, 39.624599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.462177, 37.778442, 39.657825>,  <33.697250, 37.734356, 39.677761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.462177, 37.778442, 39.657825>,  <33.070393, 37.851921, 39.624599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462177, 37.778442, 39.657825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119117, 0.194891, -0.973565,
		0.162657, 0.963469, 0.212771,
		0.979466, -0.183701, 0.083065,
		33.756016, 37.723331, 39.682743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388138, 38.299473, 39.138180>,  <33.070393, 37.851921, 39.624599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388138, 38.299473, 39.138180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.671066, 38.032848, 39.232319>,  <33.840824, 37.872875, 39.288803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.671066, 38.032848, 39.232319>,  <33.388138, 38.299473, 39.138180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671066, 38.032848, 39.232319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350854, 0.042006, -0.935488,
		0.613674, 0.744265, 0.263577,
		0.707323, -0.666562, 0.235351,
		33.883263, 37.832878, 39.302925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019672, 38.523338, 38.788326>,  <33.388138, 38.299473, 39.138180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019672, 38.523338, 38.788326> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.078552, 38.133938, 38.858330>,  <34.113880, 37.900299, 38.900333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.078552, 38.133938, 38.858330>,  <34.019672, 38.523338, 38.788326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078552, 38.133938, 38.858330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250393, -0.134496, -0.958757,
		0.956888, 0.184954, 0.223960,
		0.147204, -0.973500, 0.175009,
		34.122715, 37.841888, 38.910831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554462, 38.306313, 38.347713>,  <34.019672, 38.523338, 38.788326>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554462, 38.306313, 38.347713> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.410473, 37.946110, 38.445293>,  <34.324078, 37.729988, 38.503841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.410473, 37.946110, 38.445293>,  <34.554462, 38.306313, 38.347713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410473, 37.946110, 38.445293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126878, -0.306299, -0.943442,
		0.924293, -0.308667, 0.224515,
		-0.359978, -0.900503, 0.243947,
		34.302479, 37.675961, 38.518478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011333, 37.950703, 37.995625>,  <34.554462, 38.306313, 38.347713>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011333, 37.950703, 37.995625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.721294, 37.682178, 38.057034>,  <34.547272, 37.521065, 38.093880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.721294, 37.682178, 38.057034>,  <35.011333, 37.950703, 37.995625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721294, 37.682178, 38.057034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082240, -0.305759, -0.948551,
		0.683715, -0.675168, 0.276914,
		-0.725100, -0.671312, 0.153526,
		34.503765, 37.480785, 38.103092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666225, 37.802994, 38.279392>,  <35.011333, 37.950703, 37.995625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666225, 37.802994, 38.279392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.968571, 38.044079, 38.177094>,  <36.149979, 38.188732, 38.115715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.968571, 38.044079, 38.177094>,  <35.666225, 37.802994, 38.279392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968571, 38.044079, 38.177094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029820, 0.421900, 0.906152,
		0.654054, -0.677297, 0.336870,
		0.755860, 0.602718, -0.255748,
		36.195328, 38.224895, 38.100368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234776, 37.695206, 38.819691>,  <35.666225, 37.802994, 38.279392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234776, 37.695206, 38.819691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.300098, 38.034916, 38.618870>,  <36.339291, 38.238743, 38.498375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.300098, 38.034916, 38.618870>,  <36.234776, 37.695206, 38.819691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300098, 38.034916, 38.618870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277554, 0.448783, 0.849445,
		0.946729, -0.278066, -0.162433,
		0.163305, 0.849278, -0.502054,
		36.349091, 38.289700, 38.468254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925163, 37.956646, 39.031219>,  <36.234776, 37.695206, 38.819691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925163, 37.956646, 39.031219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.699497, 38.263592, 38.909321>,  <36.564098, 38.447758, 38.836182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.699497, 38.263592, 38.909321>,  <36.925163, 37.956646, 39.031219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699497, 38.263592, 38.909321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016449, 0.379471, 0.925058,
		0.825499, 0.516872, -0.226707,
		-0.564165, 0.767363, -0.304750,
		36.530247, 38.493801, 38.817894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289917, 38.516449, 39.360878>,  <36.925163, 37.956646, 39.031219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289917, 38.516449, 39.360878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.914055, 38.614815, 39.265743>,  <36.688538, 38.673836, 39.208660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.914055, 38.614815, 39.265743>,  <37.289917, 38.516449, 39.360878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914055, 38.614815, 39.265743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080152, 0.517611, 0.851854,
		0.332594, 0.819515, -0.466666,
		-0.939658, 0.245917, -0.237840,
		36.632156, 38.688591, 39.194389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334499, 39.123539, 39.512661>,  <37.289917, 38.516449, 39.360878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334499, 39.123539, 39.512661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.940147, 39.061409, 39.487625>,  <36.703537, 39.024132, 39.472603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.940147, 39.061409, 39.487625>,  <37.334499, 39.123539, 39.512661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940147, 39.061409, 39.487625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129242, 0.468075, 0.874187,
		-0.106492, 0.869930, -0.481540,
		-0.985878, -0.155329, -0.062585,
		36.644382, 39.014809, 39.468849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990269, 39.718140, 39.784454>,  <37.334499, 39.123539, 39.512661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990269, 39.718140, 39.784454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.693863, 39.452621, 39.825008>,  <36.516022, 39.293312, 39.849342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.693863, 39.452621, 39.825008>,  <36.990269, 39.718140, 39.784454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693863, 39.452621, 39.825008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053188, 0.208535, 0.976567,
		-0.669382, 0.718255, -0.189833,
		-0.741012, -0.663794, 0.101388,
		36.471558, 39.253483, 39.855423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330967, 40.014637, 40.145508>,  <36.990269, 39.718140, 39.784454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330967, 40.014637, 40.145508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.333923, 39.623306, 40.228279>,  <36.335697, 39.388508, 40.277943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.333923, 39.623306, 40.228279>,  <36.330967, 40.014637, 40.145508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333923, 39.623306, 40.228279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092336, 0.205386, 0.974315,
		-0.995700, -0.026312, -0.088816,
		0.007394, -0.978327, 0.206933,
		36.336143, 39.329807, 40.290359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729900, 39.917793, 40.697449>,  <36.330967, 40.014637, 40.145508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729900, 39.917793, 40.697449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.984783, 39.610275, 40.719078>,  <36.137714, 39.425766, 40.732056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.984783, 39.610275, 40.719078>,  <35.729900, 39.917793, 40.697449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984783, 39.610275, 40.719078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018506, 0.085402, 0.996174,
		-0.770470, -0.633769, 0.068646,
		0.637207, -0.768793, 0.054071,
		36.175945, 39.379639, 40.735298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411224, 39.451992, 41.152374>,  <35.729900, 39.917793, 40.697449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411224, 39.451992, 41.152374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.799084, 39.354202, 41.153591>,  <36.031799, 39.295528, 41.154324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.799084, 39.354202, 41.153591>,  <35.411224, 39.451992, 41.152374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799084, 39.354202, 41.153591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014071, -0.043366, 0.998960,
		-0.244090, -0.968685, -0.045490,
		0.969650, -0.244476, 0.003045,
		36.089977, 39.280861, 41.154503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440178, 38.941589, 41.601643>,  <35.411224, 39.451992, 41.152374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440178, 38.941589, 41.601643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.810043, 39.090736, 41.570736>,  <36.031963, 39.180225, 41.552193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.810043, 39.090736, 41.570736>,  <35.440178, 38.941589, 41.601643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810043, 39.090736, 41.570736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078499, 0.011893, 0.996843,
		0.372610, -0.927808, -0.018273,
		0.924662, 0.372868, -0.077264,
		36.087440, 39.202599, 41.547558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858318, 38.593468, 42.100037>,  <35.440178, 38.941589, 41.601643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858318, 38.593468, 42.100037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.073193, 38.925640, 42.040939>,  <36.202118, 39.124943, 42.005482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.073193, 38.925640, 42.040939>,  <35.858318, 38.593468, 42.100037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073193, 38.925640, 42.040939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163791, 0.069121, 0.984070,
		0.827410, -0.552824, -0.098886,
		0.537183, 0.830426, -0.147739,
		36.234348, 39.174767, 41.996616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443657, 38.535229, 42.580524>,  <35.858318, 38.593468, 42.100037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443657, 38.535229, 42.580524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.429131, 38.918583, 42.467258>,  <36.420414, 39.148594, 42.399300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.429131, 38.918583, 42.467258>,  <36.443657, 38.535229, 42.580524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429131, 38.918583, 42.467258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020900, 0.284016, 0.958591,
		0.999122, 0.028893, -0.030344,
		-0.036315, 0.958384, -0.283163,
		36.418236, 39.206097, 42.382309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039635, 38.895802, 42.799660>,  <36.443657, 38.535229, 42.580524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039635, 38.895802, 42.799660> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.760918, 39.177662, 42.746075>,  <36.593689, 39.346779, 42.713924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.760918, 39.177662, 42.746075>,  <37.039635, 38.895802, 42.799660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760918, 39.177662, 42.746075> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030190, 0.215410, 0.976057,
		0.716636, 0.676066, -0.171370,
		-0.696794, 0.704651, -0.133960,
		36.551880, 39.389057, 42.705887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308262, 39.456028, 43.248795>,  <37.039635, 38.895802, 42.799660>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308262, 39.456028, 43.248795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.916454, 39.507420, 43.186775>,  <36.681370, 39.538254, 43.149563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.916454, 39.507420, 43.186775>,  <37.308262, 39.456028, 43.248795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916454, 39.507420, 43.186775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110651, 0.299893, 0.947534,
		0.168233, 0.945282, -0.279534,
		-0.979517, 0.128476, -0.155048,
		36.622601, 39.545963, 43.140263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954926, 39.670567, 43.530407>,  <37.308262, 39.456028, 43.248795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954926, 39.670567, 43.530407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.082619, 39.373108, 43.765381>,  <38.159237, 39.194633, 43.906364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.082619, 39.373108, 43.765381>,  <37.954926, 39.670567, 43.530407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082619, 39.373108, 43.765381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269281, -0.523138, -0.808588,
		0.908612, 0.416316, 0.033244,
		0.319237, -0.743645, 0.587435,
		38.178391, 39.150013, 43.941612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641083, 39.542416, 43.291477>,  <37.954926, 39.670567, 43.530407>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641083, 39.542416, 43.291477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.496655, 39.203125, 43.446468>,  <38.409996, 38.999550, 43.539463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.496655, 39.203125, 43.446468>,  <38.641083, 39.542416, 43.291477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496655, 39.203125, 43.446468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418778, -0.518746, -0.745337,
		0.833217, -0.106853, 0.542524,
		-0.361074, -0.848225, 0.387480,
		38.388332, 38.948658, 43.562714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234848, 39.068813, 43.351421>,  <38.641083, 39.542416, 43.291477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234848, 39.068813, 43.351421> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.896942, 38.855476, 43.368977>,  <38.694199, 38.727474, 43.379509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.896942, 38.855476, 43.368977>,  <39.234848, 39.068813, 43.351421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896942, 38.855476, 43.368977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348605, -0.610674, -0.711022,
		0.406020, -0.585343, 0.701799,
		-0.844761, -0.533340, 0.043893,
		38.643513, 38.695473, 43.382145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437214, 38.401245, 43.352016>,  <39.234848, 39.068813, 43.351421>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437214, 38.401245, 43.352016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.055153, 38.385586, 43.234612>,  <38.825916, 38.376190, 43.164169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.055153, 38.385586, 43.234612>,  <39.437214, 38.401245, 43.352016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055153, 38.385586, 43.234612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261524, -0.576426, -0.774170,
		-0.138885, -0.816211, 0.560812,
		-0.955152, -0.039145, -0.293516,
		38.768608, 38.373844, 43.146557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374092, 37.751701, 43.114910>,  <39.437214, 38.401245, 43.352016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.374092, 37.751701, 43.114910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.037830, 37.923206, 42.982571>,  <38.836075, 38.026112, 42.903168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.037830, 37.923206, 42.982571>,  <39.374092, 37.751701, 43.114910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037830, 37.923206, 42.982571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056116, -0.538658, -0.840653,
		-0.538658, -0.725264, 0.428764,
		0.840653, -0.428764, 0.330852,
		38.785633, 38.051834, 42.883316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088223, 37.268730, 42.744263>,  <39.374092, 37.751701, 43.114910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.088223, 37.268730, 42.744263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.901302, 37.585316, 42.586678>,  <38.789150, 37.775269, 42.492126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.901302, 37.585316, 42.586678>,  <39.088223, 37.268730, 42.744263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901302, 37.585316, 42.586678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125135, -0.381915, -0.915687,
		-0.875197, -0.477201, 0.079429,
		-0.467301, 0.791467, -0.393966,
		38.761112, 37.822754, 42.468487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713974, 37.034672, 42.125942>,  <39.088223, 37.268730, 42.744263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713974, 37.034672, 42.125942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.724243, 37.430595, 42.069916>,  <38.730404, 37.668148, 42.036301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.724243, 37.430595, 42.069916>,  <38.713974, 37.034672, 42.125942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724243, 37.430595, 42.069916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168991, -0.142391, -0.975278,
		-0.985283, 0.001368, -0.170924,
		0.025672, 0.989810, -0.140064,
		38.731945, 37.727539, 42.027897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199268, 37.310051, 41.540798>,  <38.713974, 37.034672, 42.125942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199268, 37.310051, 41.540798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.499649, 37.572170, 41.573448>,  <38.679878, 37.729443, 41.593037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.499649, 37.572170, 41.573448>,  <38.199268, 37.310051, 41.540798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499649, 37.572170, 41.573448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236033, -0.150919, -0.959954,
		-0.616734, 0.740144, -0.268004,
		0.750951, 0.655294, 0.081621,
		38.724934, 37.768757, 41.597935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162945, 37.692215, 40.936699>,  <38.199268, 37.310051, 41.540798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162945, 37.692215, 40.936699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.524025, 37.801060, 41.070019>,  <38.740673, 37.866367, 41.150009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.524025, 37.801060, 41.070019>,  <38.162945, 37.692215, 40.936699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524025, 37.801060, 41.070019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347348, -0.003711, -0.937729,
		-0.253927, 0.962259, -0.097866,
		0.902702, 0.272108, 0.333297,
		38.794834, 37.882690, 41.170010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408794, 38.264122, 40.465446>,  <38.162945, 37.692215, 40.936699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.408794, 38.264122, 40.465446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.728867, 38.089504, 40.629959>,  <38.920910, 37.984734, 40.728664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.728867, 38.089504, 40.629959>,  <38.408794, 38.264122, 40.465446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728867, 38.089504, 40.629959> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471789, 0.034747, -0.881027,
		0.370313, 0.899013, 0.233758,
		0.800177, -0.436540, 0.411277,
		38.968918, 37.958542, 40.753342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928982, 38.535793, 40.145428>,  <38.408794, 38.264122, 40.465446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928982, 38.535793, 40.145428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.108212, 38.214748, 40.302929>,  <39.215752, 38.022121, 40.397430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.108212, 38.214748, 40.302929>,  <38.928982, 38.535793, 40.145428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108212, 38.214748, 40.302929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482913, -0.153360, -0.862134,
		0.752343, 0.576455, 0.318873,
		0.448079, -0.802609, 0.393757,
		39.242634, 37.973965, 40.421055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699463, 38.556530, 40.096115>,  <38.928982, 38.535793, 40.145428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699463, 38.556530, 40.096115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.631233, 38.163353, 40.123627>,  <39.590294, 37.927448, 40.140133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.631233, 38.163353, 40.123627>,  <39.699463, 38.556530, 40.096115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631233, 38.163353, 40.123627> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608878, -0.160025, -0.776956,
		0.774708, -0.090652, 0.625787,
		-0.170574, -0.982942, 0.068777,
		39.580059, 37.868469, 40.144260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343048, 38.296089, 40.126415>,  <39.699463, 38.556530, 40.096115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.343048, 38.296089, 40.126415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.139870, 37.963219, 40.037449>,  <40.017963, 37.763496, 39.984070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.139870, 37.963219, 40.037449>,  <40.343048, 38.296089, 40.126415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139870, 37.963219, 40.037449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651567, -0.202295, -0.731120,
		0.563429, -0.516289, 0.644976,
		-0.507945, -0.832179, -0.222418,
		39.987488, 37.713566, 39.970722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799274, 37.699471, 40.077389>,  <40.343048, 38.296089, 40.126415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.799274, 37.699471, 40.077389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.491585, 37.650829, 39.826469>,  <40.306969, 37.621647, 39.675919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.491585, 37.650829, 39.826469>,  <40.799274, 37.699471, 40.077389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.491585, 37.650829, 39.826469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638869, -0.164247, -0.751577,
		-0.011641, -0.978896, 0.204029,
		-0.769227, -0.121599, -0.627298,
		40.260818, 37.614349, 39.638279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.545746, 38.479523, 27.210474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.734398, 38.183575, 27.018572>,  <26.847589, 38.006008, 26.903431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.734398, 38.183575, 27.018572>,  <26.545746, 38.479523, 27.210474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.734398, 38.183575, 27.018572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174546, -0.454969, 0.873234,
		-0.864350, -0.495580, -0.085435,
		0.471628, -0.739868, -0.479753,
		26.875887, 37.961613, 26.874645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.217003, 37.913765, 27.524076>,  <26.545746, 38.479523, 27.210474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.217003, 37.913765, 27.524076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.562351, 37.784451, 27.369116>,  <26.769560, 37.706863, 27.276140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.562351, 37.784451, 27.369116>,  <26.217003, 37.913765, 27.524076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.562351, 37.784451, 27.369116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155546, -0.559861, 0.813856,
		-0.479999, -0.762916, -0.433081,
		0.863369, -0.323286, -0.387402,
		26.821362, 37.687466, 27.252895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.126669, 37.171982, 27.462008>,  <26.217003, 37.913765, 27.524076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.126669, 37.171982, 27.462008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.517643, 37.256264, 27.467989>,  <26.752228, 37.306831, 27.471577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.517643, 37.256264, 27.467989>,  <26.126669, 37.171982, 27.462008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.517643, 37.256264, 27.467989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110586, -0.570742, 0.813648,
		0.179972, -0.793636, -0.581165,
		0.977436, 0.210703, 0.014952,
		26.810873, 37.319473, 27.472475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.370304, 36.607944, 27.581440>,  <26.126669, 37.171982, 27.462008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.370304, 36.607944, 27.581440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.699265, 36.822559, 27.657110>,  <26.896641, 36.951328, 27.702513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.699265, 36.822559, 27.657110>,  <26.370304, 36.607944, 27.581440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.699265, 36.822559, 27.657110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269377, -0.660134, 0.701184,
		0.501090, -0.525695, -0.687425,
		0.822402, 0.536533, 0.189176,
		26.945986, 36.983521, 27.713863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.849672, 36.121994, 27.684828>,  <26.370304, 36.607944, 27.581440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.849672, 36.121994, 27.684828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.979780, 36.458050, 27.858435>,  <27.057844, 36.659683, 27.962599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.979780, 36.458050, 27.858435>,  <26.849672, 36.121994, 27.684828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.979780, 36.458050, 27.858435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331618, -0.531170, 0.779671,
		0.885567, -0.109676, -0.451378,
		0.325269, 0.840137, 0.434016,
		27.077360, 36.710091, 27.988640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.532776, 36.016251, 28.079756>,  <26.849672, 36.121994, 27.684828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.532776, 36.016251, 28.079756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.379786, 36.351036, 28.236320>,  <27.287992, 36.551907, 28.330259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.379786, 36.351036, 28.236320>,  <27.532776, 36.016251, 28.079756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.379786, 36.351036, 28.236320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370057, -0.249400, 0.894907,
		0.846624, 0.487122, -0.214336,
		-0.382474, 0.836966, 0.391411,
		27.265043, 36.602127, 28.353745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.921432, 36.089714, 28.719097>,  <27.532776, 36.016251, 28.079756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.921432, 36.089714, 28.719097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.650848, 36.372200, 28.802679>,  <27.488497, 36.541691, 28.852829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.650848, 36.372200, 28.802679>,  <27.921432, 36.089714, 28.719097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.650848, 36.372200, 28.802679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141802, -0.153520, 0.977918,
		0.722698, 0.691154, 0.003708,
		-0.676461, 0.706214, 0.208956,
		27.447910, 36.584064, 28.865366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.177296, 36.453865, 29.237633>,  <27.921432, 36.089714, 28.719097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.177296, 36.453865, 29.237633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.789536, 36.544075, 29.276411>,  <27.556879, 36.598202, 29.299677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.789536, 36.544075, 29.276411>,  <28.177296, 36.453865, 29.237633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.789536, 36.544075, 29.276411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040289, -0.243398, 0.969089,
		0.242148, 0.943343, 0.226864,
		-0.969402, 0.225523, 0.096945,
		27.498714, 36.611732, 29.305494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.157637, 36.831573, 29.750822>,  <28.177296, 36.453865, 29.237633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.157637, 36.831573, 29.750822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.772081, 36.725094, 29.747868>,  <27.540749, 36.661205, 29.746094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.772081, 36.725094, 29.747868>,  <28.157637, 36.831573, 29.750822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.772081, 36.725094, 29.747868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045257, -0.191083, 0.980530,
		-0.262431, 0.944788, 0.196231,
		-0.963889, -0.266202, -0.007388,
		27.482914, 36.645233, 29.745651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.874977, 37.184361, 30.321295>,  <28.157637, 36.831573, 29.750822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.874977, 37.184361, 30.321295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.620195, 36.885952, 30.243580>,  <27.467327, 36.706909, 30.196951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.620195, 36.885952, 30.243580>,  <27.874977, 37.184361, 30.321295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.620195, 36.885952, 30.243580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027240, -0.273651, 0.961443,
		-0.770422, 0.607101, 0.194625,
		-0.636952, -0.746018, -0.194289,
		27.429110, 36.662148, 30.185293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.405718, 37.151264, 30.903126>,  <27.874977, 37.184361, 30.321295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.405718, 37.151264, 30.903126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.354296, 36.801899, 30.715246>,  <27.323442, 36.592278, 30.602518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.354296, 36.801899, 30.715246>,  <27.405718, 37.151264, 30.903126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.354296, 36.801899, 30.715246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158452, -0.449453, 0.879139,
		-0.978962, 0.187441, -0.080616,
		-0.128554, -0.873417, -0.469698,
		27.315729, 36.539875, 30.574337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.730373, 36.755478, 31.171150>,  <27.405718, 37.151264, 30.903126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.730373, 36.755478, 31.171150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.935440, 36.453892, 31.006857>,  <27.058481, 36.272938, 30.908281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.935440, 36.453892, 31.006857>,  <26.730373, 36.755478, 31.171150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.935440, 36.453892, 31.006857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122250, -0.537613, 0.834283,
		-0.849839, -0.377498, -0.367790,
		0.512669, -0.753968, -0.410735,
		27.089241, 36.227703, 30.883636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.398701, 36.185856, 31.430998>,  <26.730373, 36.755478, 31.171150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.398701, 36.185856, 31.430998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.750456, 36.037685, 31.311356>,  <26.961508, 35.948784, 31.239571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.750456, 36.037685, 31.311356>,  <26.398701, 36.185856, 31.430998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.750456, 36.037685, 31.311356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024483, -0.592208, 0.805413,
		-0.475479, -0.715592, -0.511711,
		0.879387, -0.370429, -0.299103,
		27.014271, 35.926556, 31.221624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.352362, 35.461929, 31.429567>,  <26.398701, 36.185856, 31.430998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.352362, 35.461929, 31.429567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.733585, 35.570103, 31.484037>,  <26.962320, 35.635006, 31.516720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.733585, 35.570103, 31.484037>,  <26.352362, 35.461929, 31.429567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.733585, 35.570103, 31.484037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064812, -0.621531, 0.780704,
		0.295767, -0.735230, -0.609883,
		0.953059, 0.270435, 0.136177,
		27.019503, 35.651234, 31.524891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.686811, 34.876675, 31.738705>,  <26.352362, 35.461929, 31.429567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.686811, 34.876675, 31.738705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.964025, 35.161369, 31.784555>,  <27.130354, 35.332184, 31.812065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.964025, 35.161369, 31.784555>,  <26.686811, 34.876675, 31.738705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.964025, 35.161369, 31.784555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338730, -0.461851, 0.819729,
		0.636369, -0.529273, -0.561164,
		0.693034, 0.711733, 0.114627,
		27.171936, 35.374889, 31.818943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.096834, 34.500443, 32.077206>,  <26.686811, 34.876675, 31.738705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.096834, 34.500443, 32.077206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.193163, 34.882488, 32.146221>,  <27.250959, 35.111713, 32.187630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.193163, 34.882488, 32.146221>,  <27.096834, 34.500443, 32.077206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.193163, 34.882488, 32.146221> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347081, -0.250764, 0.903688,
		0.906389, -0.157741, -0.391889,
		0.240820, 0.955110, 0.172541,
		27.265409, 35.169022, 32.197983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.813164, 34.546253, 32.244587>,  <27.096834, 34.500443, 32.077206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.813164, 34.546253, 32.244587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.629745, 34.864685, 32.402569>,  <27.519695, 35.055744, 32.497356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.629745, 34.864685, 32.402569>,  <27.813164, 34.546253, 32.244587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.629745, 34.864685, 32.402569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280396, -0.292123, 0.914353,
		0.843276, 0.530015, -0.089268,
		-0.458544, 0.796083, 0.394954,
		27.492182, 35.103512, 32.521053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.274628, 34.940422, 32.668102>,  <27.813164, 34.546253, 32.244587>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.274628, 34.940422, 32.668102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.917229, 35.064190, 32.798283>,  <27.702789, 35.138451, 32.876392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.917229, 35.064190, 32.798283>,  <28.274628, 34.940422, 32.668102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.917229, 35.064190, 32.798283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274443, -0.197385, 0.941127,
		0.355446, 0.930213, 0.091444,
		-0.893499, 0.309423, 0.325450,
		27.649179, 35.157017, 32.895916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.428789, 35.303284, 33.340302>,  <28.274628, 34.940422, 32.668102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.428789, 35.303284, 33.340302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.044258, 35.195026, 33.360714>,  <27.813540, 35.130070, 33.372959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.044258, 35.195026, 33.360714>,  <28.428789, 35.303284, 33.340302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.044258, 35.195026, 33.360714> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121987, -0.252309, 0.959927,
		-0.246927, 0.929026, 0.275567,
		-0.961325, -0.270647, 0.051027,
		27.755861, 35.113831, 33.376022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.158434, 35.166454, 33.098370>,  <28.428789, 35.303284, 33.340302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.158434, 35.166454, 33.098370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.463408, 34.907627, 33.097984>,  <29.646393, 34.752331, 33.097755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.463408, 34.907627, 33.097984>,  <29.158434, 35.166454, 33.098370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.463408, 34.907627, 33.097984> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482468, 0.569480, -0.665520,
		0.431180, 0.506953, 0.746379,
		0.762436, -0.647063, -0.000960,
		29.692139, 34.713509, 33.097698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.795107, 35.640503, 33.052444>,  <29.158434, 35.166454, 33.098370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.795107, 35.640503, 33.052444> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.848736, 35.273819, 32.901886>,  <29.880913, 35.053810, 32.811550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.848736, 35.273819, 32.901886>,  <29.795107, 35.640503, 33.052444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.848736, 35.273819, 32.901886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448544, 0.394824, -0.801825,
		0.883648, -0.061327, 0.464118,
		0.134071, -0.916708, -0.376393,
		29.888958, 34.998806, 32.788967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.438435, 35.676941, 32.864674>,  <29.795107, 35.640503, 33.052444>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.438435, 35.676941, 32.864674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.307850, 35.362137, 32.655277>,  <30.229498, 35.173256, 32.529640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.307850, 35.362137, 32.655277>,  <30.438435, 35.676941, 32.864674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307850, 35.362137, 32.655277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278358, 0.449222, -0.848950,
		0.903294, -0.422867, 0.072416,
		-0.326462, -0.787009, -0.523487,
		30.209911, 35.126034, 32.498230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.979713, 35.482773, 32.319366>,  <30.438435, 35.676941, 32.864674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.979713, 35.482773, 32.319366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.645498, 35.309788, 32.183804>,  <30.444969, 35.205997, 32.102467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.645498, 35.309788, 32.183804>,  <30.979713, 35.482773, 32.319366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.645498, 35.309788, 32.183804> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136735, 0.433753, -0.890596,
		0.532151, -0.790465, -0.303283,
		-0.835535, -0.432463, -0.338906,
		30.394838, 35.180050, 32.082130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.133310, 35.236092, 31.602386>,  <30.979713, 35.482773, 32.319366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.133310, 35.236092, 31.602386> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.733631, 35.249481, 31.611183>,  <30.493824, 35.257515, 31.616461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.733631, 35.249481, 31.611183>,  <31.133310, 35.236092, 31.602386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.733631, 35.249481, 31.611183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002021, 0.590544, -0.807003,
		-0.039999, -0.806311, -0.590138,
		-0.999198, 0.033472, 0.021991,
		30.433872, 35.259521, 31.617781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.906654, 34.790077, 31.036610>,  <31.133310, 35.236092, 31.602386>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.906654, 34.790077, 31.036610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.618561, 35.048393, 31.137976>,  <30.445704, 35.203381, 31.198795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.618561, 35.048393, 31.137976>,  <30.906654, 34.790077, 31.036610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.618561, 35.048393, 31.137976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214418, 0.554636, -0.803992,
		-0.659762, -0.524726, -0.537937,
		-0.720235, 0.645787, 0.253417,
		30.402491, 35.242130, 31.214001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.404678, 34.852612, 30.391525>,  <30.906654, 34.790077, 31.036610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.404678, 34.852612, 30.391525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.302345, 35.178131, 30.600248>,  <30.240946, 35.373444, 30.725483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.302345, 35.178131, 30.600248>,  <30.404678, 34.852612, 30.391525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.302345, 35.178131, 30.600248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109851, 0.511803, -0.852051,
		-0.960460, -0.275301, -0.041538,
		-0.255830, 0.813798, 0.521808,
		30.225595, 35.422272, 30.756790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.971039, 35.086636, 29.997158>,  <30.404678, 34.852612, 30.391525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.971039, 35.086636, 29.997158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.058907, 35.410591, 30.214718>,  <30.111628, 35.604965, 30.345253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.058907, 35.410591, 30.214718>,  <29.971039, 35.086636, 29.997158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.058907, 35.410591, 30.214718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040268, 0.564570, -0.824402,
		-0.974743, 0.159193, 0.156631,
		0.219669, 0.809888, 0.543900,
		30.124807, 35.653557, 30.377888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.480385, 35.572823, 29.843193>,  <29.971039, 35.086636, 29.997158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.480385, 35.572823, 29.843193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.779390, 35.800831, 29.979605>,  <29.958794, 35.937637, 30.061453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.779390, 35.800831, 29.979605>,  <29.480385, 35.572823, 29.843193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.779390, 35.800831, 29.979605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164748, 0.656467, -0.736144,
		-0.643493, 0.494093, 0.584627,
		0.747513, 0.570020, 0.341031,
		30.003645, 35.971836, 30.081915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.242035, 36.237999, 29.915882>,  <29.480385, 35.572823, 29.843193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.242035, 36.237999, 29.915882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.638144, 36.287483, 29.890406>,  <29.875809, 36.317173, 29.875120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.638144, 36.287483, 29.890406>,  <29.242035, 36.237999, 29.915882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.638144, 36.287483, 29.890406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129083, 0.645847, -0.752475,
		-0.051955, 0.753377, 0.655534,
		0.990272, 0.123713, -0.063693,
		29.935225, 36.324596, 29.871298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.262613, 37.009201, 29.713528>,  <29.242035, 36.237999, 29.915882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.262613, 37.009201, 29.713528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.619308, 36.840324, 29.648342>,  <29.833326, 36.738998, 29.609230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.619308, 36.840324, 29.648342>,  <29.262613, 37.009201, 29.713528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.619308, 36.840324, 29.648342> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196827, 0.686082, -0.700394,
		0.407506, 0.592493, 0.694904,
		0.891739, -0.422190, -0.162964,
		29.886829, 36.713669, 29.599453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.613016, 37.587086, 29.605564>,  <29.262613, 37.009201, 29.713528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.613016, 37.587086, 29.605564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.798311, 37.269505, 29.448061>,  <29.909489, 37.078957, 29.353559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.798311, 37.269505, 29.448061>,  <29.613016, 37.587086, 29.605564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.798311, 37.269505, 29.448061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018038, 0.435766, -0.899879,
		0.886050, 0.423961, 0.187542,
		0.463238, -0.793955, -0.393758,
		29.937283, 37.031319, 29.329933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129084, 37.965107, 29.215582>,  <29.613016, 37.587086, 29.605564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.129084, 37.965107, 29.215582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.116823, 37.593426, 29.068266>,  <30.109467, 37.370415, 28.979876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.116823, 37.593426, 29.068266>,  <30.129084, 37.965107, 29.215582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.116823, 37.593426, 29.068266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276635, 0.346185, -0.896454,
		0.960486, -0.129358, 0.246440,
		-0.030649, -0.929205, -0.368291,
		30.107628, 37.314663, 28.957779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.694834, 37.878803, 28.814884>,  <30.129084, 37.965107, 29.215582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.694834, 37.878803, 28.814884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.460001, 37.605057, 28.641920>,  <30.319101, 37.440811, 28.538141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.460001, 37.605057, 28.641920>,  <30.694834, 37.878803, 28.814884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.460001, 37.605057, 28.641920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250772, 0.354132, -0.900946,
		0.769706, -0.637366, -0.036285,
		-0.587082, -0.684365, -0.432411,
		30.283876, 37.399746, 28.512197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.052746, 37.719406, 28.167936>,  <30.694834, 37.878803, 28.814884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.052746, 37.719406, 28.167936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.688976, 37.565983, 28.103651>,  <30.470715, 37.473930, 28.065081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.688976, 37.565983, 28.103651>,  <31.052746, 37.719406, 28.167936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.688976, 37.565983, 28.103651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114441, 0.140711, -0.983414,
		0.399812, -0.912733, -0.084071,
		-0.909425, -0.383560, -0.160712,
		30.416149, 37.450916, 28.055437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.168283, 37.338558, 27.624987>,  <31.052746, 37.719406, 28.167936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.168283, 37.338558, 27.624987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.774200, 37.406704, 27.632368>,  <30.537750, 37.447594, 27.636797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.774200, 37.406704, 27.632368>,  <31.168283, 37.338558, 27.624987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.774200, 37.406704, 27.632368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019075, 0.216042, -0.976198,
		-0.170298, -0.961406, -0.216096,
		-0.985208, 0.170367, 0.018453,
		30.478638, 37.457813, 27.637903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.889477, 37.005821, 26.891027>,  <31.168283, 37.338558, 27.624987>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.889477, 37.005821, 26.891027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.595385, 37.241432, 27.025183>,  <30.418930, 37.382797, 27.105677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.595385, 37.241432, 27.025183>,  <30.889477, 37.005821, 26.891027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.595385, 37.241432, 27.025183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284922, 0.180401, -0.941422,
		-0.615025, -0.787722, 0.035190,
		-0.735230, 0.589024, 0.335390,
		30.374815, 37.418140, 27.125799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.308306, 36.797150, 26.549612>,  <30.889477, 37.005821, 26.891027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.308306, 36.797150, 26.549612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.254128, 37.174519, 26.670683>,  <30.221621, 37.400940, 26.743326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.254128, 37.174519, 26.670683>,  <30.308306, 36.797150, 26.549612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.254128, 37.174519, 26.670683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400016, 0.227418, -0.887845,
		-0.906445, -0.241332, 0.346580,
		-0.135447, 0.943419, 0.302679,
		30.213493, 37.457546, 26.761486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.733238, 37.068535, 26.043291>,  <30.308306, 36.797150, 26.549612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.733238, 37.068535, 26.043291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.895918, 37.397026, 26.203379>,  <29.993526, 37.594120, 26.299431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.895918, 37.397026, 26.203379>,  <29.733238, 37.068535, 26.043291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.895918, 37.397026, 26.203379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146627, 0.491087, -0.858682,
		-0.901718, 0.290544, 0.320140,
		0.406701, 0.821230, 0.400220,
		30.017929, 37.643394, 26.323444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.302366, 37.607059, 26.000050>,  <29.733238, 37.068535, 26.043291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.302366, 37.607059, 26.000050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.657137, 37.787205, 26.041103>,  <29.869999, 37.895294, 26.065737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.657137, 37.787205, 26.041103>,  <29.302366, 37.607059, 26.000050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.657137, 37.787205, 26.041103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220534, 0.608101, -0.762612,
		-0.405869, 0.653745, 0.638661,
		0.886924, 0.450367, 0.102636,
		29.923214, 37.922314, 26.071894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.097603, 38.333561, 25.930780>,  <29.302366, 37.607059, 26.000050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.097603, 38.333561, 25.930780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.489668, 38.279873, 25.872444>,  <29.724907, 38.247662, 25.837442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.489668, 38.279873, 25.872444>,  <29.097603, 38.333561, 25.930780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.489668, 38.279873, 25.872444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069265, 0.457456, -0.886531,
		0.185706, 0.879044, 0.439084,
		0.980161, -0.134221, -0.145839,
		29.783716, 38.239605, 25.828693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.359852, 38.886784, 25.522846>,  <29.097603, 38.333561, 25.930780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.359852, 38.886784, 25.522846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.654427, 38.623135, 25.461895>,  <29.831171, 38.464947, 25.425323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.654427, 38.623135, 25.461895>,  <29.359852, 38.886784, 25.522846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.654427, 38.623135, 25.461895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131539, 0.360456, -0.923455,
		0.663594, 0.660023, 0.352154,
		0.736438, -0.659121, -0.152378,
		29.875359, 38.425400, 25.416182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.939915, 39.239643, 25.262133>,  <29.359852, 38.886784, 25.522846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.939915, 39.239643, 25.262133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.948252, 38.859112, 25.139145>,  <29.953253, 38.630795, 25.065351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.948252, 38.859112, 25.139145>,  <29.939915, 39.239643, 25.262133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.948252, 38.859112, 25.139145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090182, 0.304495, -0.948235,
		0.995707, 0.047490, -0.079447,
		0.020841, -0.951329, -0.307470,
		29.954504, 38.573711, 25.046904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.288185, 37.931816, 45.974239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.992802, 37.662663, 45.956799>,  <35.815571, 37.501171, 45.946335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.992802, 37.662663, 45.956799>,  <36.288185, 37.931816, 45.974239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992802, 37.662663, 45.956799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253818, 0.217477, 0.942486,
		-0.624704, 0.707055, -0.331389,
		-0.738459, -0.672887, -0.043605,
		35.771263, 37.460796, 45.943718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724339, 38.314140, 46.126606>,  <36.288185, 37.931816, 45.974239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724339, 38.314140, 46.126606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.659168, 37.931171, 46.221935>,  <35.620064, 37.701389, 46.279133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.659168, 37.931171, 46.221935>,  <35.724339, 38.314140, 46.126606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659168, 37.931171, 46.221935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175953, 0.265871, 0.947815,
		-0.970822, 0.112493, -0.211780,
		-0.162929, -0.957422, 0.238319,
		35.610291, 37.643944, 46.293430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119179, 38.280685, 46.398819>,  <35.724339, 38.314140, 46.126606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119179, 38.280685, 46.398819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.273674, 37.939220, 46.538582>,  <35.366371, 37.734341, 46.622440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.273674, 37.939220, 46.538582>,  <35.119179, 38.280685, 46.398819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273674, 37.939220, 46.538582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294971, 0.244604, 0.923667,
		-0.873965, -0.459818, -0.157331,
		0.386235, -0.853661, 0.349408,
		35.389545, 37.683121, 46.643406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574261, 37.933517, 46.883980>,  <35.119179, 38.280685, 46.398819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574261, 37.933517, 46.883980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.940533, 37.791409, 46.959152>,  <35.160294, 37.706142, 47.004257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.940533, 37.791409, 46.959152>,  <34.574261, 37.933517, 46.883980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940533, 37.791409, 46.959152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105658, 0.238366, 0.965411,
		-0.387778, -0.903861, 0.180729,
		0.915677, -0.355270, 0.187933,
		35.215237, 37.684826, 47.015533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608738, 37.953442, 47.570717>,  <34.574261, 37.933517, 46.883980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608738, 37.953442, 47.570717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.973766, 37.792042, 47.544170>,  <35.192783, 37.695202, 47.528244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.973766, 37.792042, 47.544170>,  <34.608738, 37.953442, 47.570717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973766, 37.792042, 47.544170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112866, 0.092557, 0.989290,
		-0.393037, -0.910286, 0.130006,
		0.912570, -0.403501, -0.066362,
		35.247536, 37.670990, 47.524261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632557, 37.427994, 48.095287>,  <34.608738, 37.953442, 47.570717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632557, 37.427994, 48.095287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.993858, 37.574203, 48.005375>,  <35.210640, 37.661930, 47.951427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.993858, 37.574203, 48.005375>,  <34.632557, 37.427994, 48.095287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993858, 37.574203, 48.005375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156451, 0.207241, 0.965699,
		0.399570, -0.907437, 0.130004,
		0.903253, 0.365526, -0.224777,
		35.264835, 37.683861, 47.937943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154774, 37.079330, 48.598263>,  <34.632557, 37.427994, 48.095287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154774, 37.079330, 48.598263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.303654, 37.434479, 48.490082>,  <35.392982, 37.647568, 48.425175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.303654, 37.434479, 48.490082>,  <35.154774, 37.079330, 48.598263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303654, 37.434479, 48.490082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082076, 0.258762, 0.962448,
		0.924515, -0.380425, 0.023439,
		0.372204, 0.887873, -0.270453,
		35.415314, 37.700840, 48.408947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787708, 37.158730, 48.961002>,  <35.154774, 37.079330, 48.598263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787708, 37.158730, 48.961002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.684460, 37.530342, 48.854969>,  <35.622513, 37.753311, 48.791348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.684460, 37.530342, 48.854969>,  <35.787708, 37.158730, 48.961002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684460, 37.530342, 48.854969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150452, 0.309688, 0.938860,
		0.954326, 0.202456, -0.219712,
		-0.258120, 0.929035, -0.265083,
		35.607025, 37.809052, 48.775444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257008, 37.641994, 49.267441>,  <35.787708, 37.158730, 48.961002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257008, 37.641994, 49.267441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.949696, 37.875298, 49.161949>,  <35.765308, 38.015278, 49.098656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.949696, 37.875298, 49.161949>,  <36.257008, 37.641994, 49.267441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949696, 37.875298, 49.161949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026164, 0.440277, 0.897481,
		0.639575, 0.682619, -0.353518,
		-0.768283, 0.583256, -0.263730,
		35.719212, 38.050274, 49.082829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404945, 38.286324, 49.509617>,  <36.257008, 37.641994, 49.267441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404945, 38.286324, 49.509617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.007076, 38.295765, 49.469475>,  <35.768356, 38.301430, 49.445389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.007076, 38.295765, 49.469475>,  <36.404945, 38.286324, 49.509617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007076, 38.295765, 49.469475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088473, 0.304355, 0.948441,
		0.052932, 0.952266, -0.300644,
		-0.994671, 0.023604, -0.100360,
		35.708675, 38.302845, 49.439365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224689, 38.788403, 49.930012>,  <36.404945, 38.286324, 49.509617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224689, 38.788403, 49.930012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.850071, 38.668148, 49.857899>,  <35.625301, 38.595997, 49.814632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.850071, 38.668148, 49.857899>,  <36.224689, 38.788403, 49.930012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850071, 38.668148, 49.857899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273700, 0.305794, 0.911909,
		-0.219021, 0.903388, -0.368673,
		-0.936546, -0.300633, -0.180282,
		35.569107, 38.577957, 49.803814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753864, 39.383301, 50.139748>,  <36.224689, 38.788403, 49.930012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753864, 39.383301, 50.139748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.527824, 39.053959, 50.160732>,  <35.392200, 38.856354, 50.173325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.527824, 39.053959, 50.160732>,  <35.753864, 39.383301, 50.139748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527824, 39.053959, 50.160732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406410, 0.333146, 0.850791,
		-0.717977, 0.459462, -0.522880,
		-0.565101, -0.823352, 0.052461,
		35.358295, 38.806953, 50.176472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326710, 39.912556, 50.175079>,  <35.753864, 39.383301, 50.139748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326710, 39.912556, 50.175079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.540913, 40.188622, 49.980389>,  <36.669434, 40.354263, 49.863575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.540913, 40.188622, 49.980389>,  <36.326710, 39.912556, 50.175079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540913, 40.188622, 49.980389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021621, -0.587342, -0.809050,
		-0.844256, 0.422726, -0.329446,
		0.535504, 0.690168, -0.486727,
		36.701565, 40.395672, 49.834370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382408, 39.582058, 49.589432>,  <36.326710, 39.912556, 50.175079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382408, 39.582058, 49.589432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.589966, 39.906559, 49.481644>,  <36.714500, 40.101261, 49.416969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.589966, 39.906559, 49.481644>,  <36.382408, 39.582058, 49.589432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589966, 39.906559, 49.481644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486241, -0.539371, -0.687494,
		-0.703077, 0.225710, -0.674343,
		0.518895, 0.811254, -0.269470,
		36.745636, 40.149937, 49.400803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391850, 39.610432, 48.963017>,  <36.382408, 39.582058, 49.589432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391850, 39.610432, 48.963017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.710468, 39.834480, 49.054043>,  <36.901638, 39.968910, 49.108658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.710468, 39.834480, 49.054043>,  <36.391850, 39.610432, 48.963017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710468, 39.834480, 49.054043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554230, -0.526113, -0.645007,
		-0.241553, 0.639901, -0.729506,
		0.796543, 0.560117, 0.227568,
		36.949432, 40.002514, 49.122314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845959, 40.116920, 48.700756>,  <36.391850, 39.610432, 48.963017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845959, 40.116920, 48.700756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.209076, 40.281967, 48.730873>,  <36.426945, 40.380993, 48.748943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.209076, 40.281967, 48.730873>,  <35.845959, 40.116920, 48.700756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209076, 40.281967, 48.730873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140296, -0.129540, -0.981599,
		-0.395266, 0.901648, -0.175483,
		0.907789, 0.412613, 0.075295,
		36.481411, 40.405750, 48.753460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905304, 40.501324, 48.139381>,  <35.845959, 40.116920, 48.700756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905304, 40.501324, 48.139381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.276627, 40.405758, 48.253334>,  <36.499420, 40.348419, 48.321705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.276627, 40.405758, 48.253334>,  <35.905304, 40.501324, 48.139381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276627, 40.405758, 48.253334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260889, -0.127359, -0.956931,
		0.264908, 0.962652, -0.055898,
		0.928311, -0.238915, 0.284884,
		36.555119, 40.334084, 48.338799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376171, 40.894291, 47.712215>,  <35.905304, 40.501324, 48.139381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376171, 40.894291, 47.712215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.630405, 40.625290, 47.863884>,  <36.782944, 40.463890, 47.954884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.630405, 40.625290, 47.863884>,  <36.376171, 40.894291, 47.712215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630405, 40.625290, 47.863884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344572, -0.192404, -0.918831,
		0.690874, 0.714645, 0.109438,
		0.635582, -0.672506, 0.379173,
		36.821079, 40.423538, 47.977634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004112, 41.032494, 47.373856>,  <36.376171, 40.894291, 47.712215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004112, 41.032494, 47.373856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.053490, 40.669109, 47.533588>,  <37.083115, 40.451080, 47.629429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.053490, 40.669109, 47.533588>,  <37.004112, 41.032494, 47.373856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053490, 40.669109, 47.533588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595862, -0.253933, -0.761883,
		0.793543, 0.331995, 0.509970,
		0.123443, -0.908459, 0.399331,
		37.090523, 40.396572, 47.653389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650372, 40.946953, 47.234089>,  <37.004112, 41.032494, 47.373856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650372, 40.946953, 47.234089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.507816, 40.576206, 47.281250>,  <37.422283, 40.353756, 47.309547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.507816, 40.576206, 47.281250>,  <37.650372, 40.946953, 47.234089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507816, 40.576206, 47.281250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612015, -0.326927, -0.720109,
		0.705993, -0.184479, 0.683771,
		-0.356388, -0.926869, 0.117905,
		37.400902, 40.298145, 47.316620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209557, 40.498493, 47.179264>,  <37.650372, 40.946953, 47.234089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209557, 40.498493, 47.179264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.887455, 40.275093, 47.099625>,  <37.694195, 40.141052, 47.051842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.887455, 40.275093, 47.099625>,  <38.209557, 40.498493, 47.179264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887455, 40.275093, 47.099625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461661, -0.379862, -0.801607,
		0.372071, -0.737413, 0.563725,
		-0.805253, -0.558505, -0.199099,
		37.645878, 40.107540, 47.039894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462570, 39.911983, 47.049240>,  <38.209557, 40.498493, 47.179264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462570, 39.911983, 47.049240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.101753, 39.836979, 46.893726>,  <37.885262, 39.791977, 46.800419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.101753, 39.836979, 46.893726>,  <38.462570, 39.911983, 47.049240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101753, 39.836979, 46.893726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430378, -0.459677, -0.776835,
		-0.033052, -0.868065, 0.495349,
		-0.902044, -0.187512, -0.388789,
		37.831139, 39.780727, 46.777088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519173, 39.234238, 46.678219>,  <38.462570, 39.911983, 47.049240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519173, 39.234238, 46.678219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.189751, 39.395947, 46.519058>,  <37.992100, 39.492973, 46.423561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.189751, 39.395947, 46.519058>,  <38.519173, 39.234238, 46.678219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189751, 39.395947, 46.519058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229353, -0.404255, -0.885424,
		-0.518808, -0.820452, 0.240203,
		-0.823550, 0.404274, -0.397903,
		37.942684, 39.517227, 46.399689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232456, 38.684853, 46.175152>,  <38.519173, 39.234238, 46.678219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232456, 38.684853, 46.175152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.071438, 39.034065, 46.065041>,  <37.974827, 39.243591, 45.998974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.071438, 39.034065, 46.065041>,  <38.232456, 38.684853, 46.175152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.071438, 39.034065, 46.065041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227304, -0.195974, -0.953901,
		-0.886730, -0.446561, -0.119554,
		-0.402546, 0.873028, -0.275281,
		37.950672, 39.295975, 45.982456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779633, 38.527439, 45.620121>,  <38.232456, 38.684853, 46.175152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779633, 38.527439, 45.620121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.822845, 38.922852, 45.577927>,  <37.848774, 39.160099, 45.552608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.822845, 38.922852, 45.577927>,  <37.779633, 38.527439, 45.620121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822845, 38.922852, 45.577927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337337, -0.136265, -0.931470,
		-0.935165, 0.065045, -0.348190,
		0.108033, 0.988535, -0.105488,
		37.855255, 39.219414, 45.546280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267288, 38.675915, 45.057487>,  <37.779633, 38.527439, 45.620121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267288, 38.675915, 45.057487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.573666, 38.920723, 45.136234>,  <37.757492, 39.067608, 45.183483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.573666, 38.920723, 45.136234>,  <37.267288, 38.675915, 45.057487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573666, 38.920723, 45.136234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255533, -0.008820, -0.966760,
		-0.589944, 0.790790, -0.163148,
		0.765943, 0.612024, 0.196870,
		37.803448, 39.104332, 45.195293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193676, 39.198017, 44.598232>,  <37.267288, 38.675915, 45.057487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193676, 39.198017, 44.598232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.573051, 39.166401, 44.721012>,  <37.800678, 39.147430, 44.794678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.573051, 39.166401, 44.721012>,  <37.193676, 39.198017, 44.598232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573051, 39.166401, 44.721012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303029, -0.057827, -0.951225,
		0.092936, 0.995193, -0.030894,
		0.948439, -0.079041, 0.306946,
		37.857582, 39.142689, 44.813095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545891, 39.681305, 44.137196>,  <37.193676, 39.198017, 44.598232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545891, 39.681305, 44.137196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.811096, 39.417698, 44.279247>,  <37.970219, 39.259533, 44.364479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.811096, 39.417698, 44.279247>,  <37.545891, 39.681305, 44.137196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811096, 39.417698, 44.279247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254748, -0.247451, -0.934811,
		0.703930, 0.710259, 0.003819,
		0.663013, -0.659014, 0.355126,
		38.009998, 39.219994, 44.385784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064217, 40.007526, 43.734318>,  <37.545891, 39.681305, 44.137196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064217, 40.007526, 43.734318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.709732, 39.855259, 43.628696>,  <36.497044, 39.763897, 43.565323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.709732, 39.855259, 43.628696>,  <37.064217, 40.007526, 43.734318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709732, 39.855259, 43.628696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402963, 0.352135, 0.844761,
		-0.228594, 0.855038, -0.465462,
		-0.886208, -0.380672, -0.264053,
		36.443871, 39.741058, 43.549480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577969, 40.521454, 43.826759>,  <37.064217, 40.007526, 43.734318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.577969, 40.521454, 43.826759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.335529, 40.204582, 43.798191>,  <36.190067, 40.014462, 43.781052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.335529, 40.204582, 43.798191>,  <36.577969, 40.521454, 43.826759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335529, 40.204582, 43.798191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561588, 0.362622, 0.743723,
		-0.563261, 0.490878, -0.664661,
		-0.606098, -0.792177, -0.071421,
		36.153698, 39.966930, 43.776764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856453, 40.811543, 43.717026>,  <36.577969, 40.521454, 43.826759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856453, 40.811543, 43.717026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.842167, 40.435253, 43.851940>,  <35.833595, 40.209480, 43.932888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.842167, 40.435253, 43.851940>,  <35.856453, 40.811543, 43.717026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842167, 40.435253, 43.851940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532500, 0.303512, 0.790142,
		-0.845676, -0.151385, -0.511776,
		-0.035714, -0.940725, 0.337286,
		35.831451, 40.153034, 43.953125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182388, 40.631824, 43.884979>,  <35.856453, 40.811543, 43.717026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182388, 40.631824, 43.884979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.373798, 40.350552, 44.095329>,  <35.488644, 40.181786, 44.221539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.373798, 40.350552, 44.095329>,  <35.182388, 40.631824, 43.884979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373798, 40.350552, 44.095329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564702, 0.212163, 0.797558,
		-0.672403, -0.678613, -0.295566,
		0.478525, -0.703187, 0.525873,
		35.517357, 40.139595, 44.253090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.734764, 40.144527, 44.174965>,  <35.182388, 40.631824, 43.884979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.734764, 40.144527, 44.174965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.058636, 40.125683, 44.408955>,  <35.252960, 40.114376, 44.549351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.058636, 40.125683, 44.408955>,  <34.734764, 40.144527, 44.174965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.058636, 40.125683, 44.408955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567451, 0.191467, 0.800837,
		-0.149731, -0.980368, 0.128295,
		0.809679, -0.047109, 0.584979,
		35.301540, 40.111549, 44.584450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435226, 39.951618, 44.789742>,  <34.734764, 40.144527, 44.174965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435226, 39.951618, 44.789742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.804733, 40.053715, 44.903931>,  <35.026440, 40.114975, 44.972446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.804733, 40.053715, 44.903931>,  <34.435226, 39.951618, 44.789742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804733, 40.053715, 44.903931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353369, 0.280893, 0.892317,
		0.147567, -0.925176, 0.349676,
		0.923772, 0.255241, 0.285478,
		35.081863, 40.130287, 44.989574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468292, 39.641537, 45.461266>,  <34.435226, 39.951618, 44.789742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468292, 39.641537, 45.461266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.745956, 39.929287, 45.451138>,  <34.912556, 40.101936, 45.445061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.745956, 39.929287, 45.451138>,  <34.468292, 39.641537, 45.461266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.745956, 39.929287, 45.451138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272640, 0.295316, 0.915673,
		0.666188, -0.628722, 0.401127,
		0.694162, 0.719373, -0.025321,
		34.954205, 40.145100, 45.443542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044640, 39.250896, 45.873383>,  <34.468292, 39.641537, 45.461266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044640, 39.250896, 45.873383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.648670, 39.264278, 45.818352>,  <33.411087, 39.272308, 45.785336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.648670, 39.264278, 45.818352>,  <34.044640, 39.250896, 45.873383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648670, 39.264278, 45.818352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118890, -0.331206, -0.936038,
		-0.076880, -0.942965, 0.323892,
		-0.989926, 0.033455, -0.137572,
		33.351692, 39.274315, 45.777081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851883, 38.566326, 45.603764>,  <34.044640, 39.250896, 45.873383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851883, 38.566326, 45.603764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.548893, 38.807430, 45.503429>,  <33.367100, 38.952091, 45.443230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.548893, 38.807430, 45.503429>,  <33.851883, 38.566326, 45.603764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548893, 38.807430, 45.503429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041857, -0.428247, -0.902692,
		-0.651522, -0.673266, 0.349616,
		-0.757474, 0.602758, -0.250832,
		33.321651, 38.988258, 45.428181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372253, 38.112118, 45.344147>,  <33.851883, 38.566326, 45.603764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372253, 38.112118, 45.344147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.271587, 38.477680, 45.216755>,  <33.211189, 38.697018, 45.140320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.271587, 38.477680, 45.216755>,  <33.372253, 38.112118, 45.344147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271587, 38.477680, 45.216755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080496, -0.347701, -0.934144,
		-0.964461, -0.209456, 0.161070,
		-0.251666, 0.913911, -0.318484,
		33.196087, 38.751854, 45.121208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777615, 38.039375, 44.946285>,  <33.372253, 38.112118, 45.344147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777615, 38.039375, 44.946285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.934502, 38.383163, 44.815155>,  <33.028633, 38.589436, 44.736477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.934502, 38.383163, 44.815155>,  <32.777615, 38.039375, 44.946285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934502, 38.383163, 44.815155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144199, -0.294524, -0.944702,
		-0.908499, 0.417802, 0.008418,
		0.392219, 0.859475, -0.327822,
		33.052166, 38.641006, 44.716808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424496, 38.099575, 44.403278>,  <32.777615, 38.039375, 44.946285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424496, 38.099575, 44.403278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.722485, 38.361423, 44.351929>,  <32.901279, 38.518532, 44.321117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.722485, 38.361423, 44.351929>,  <32.424496, 38.099575, 44.403278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722485, 38.361423, 44.351929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032956, -0.228321, -0.973028,
		-0.666280, 0.720649, -0.191667,
		0.744973, 0.654626, -0.128376,
		32.945976, 38.557812, 44.313416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254566, 38.547638, 43.889343>,  <32.424496, 38.099575, 44.403278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254566, 38.547638, 43.889343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.652866, 38.584198, 43.893852>,  <32.891846, 38.606136, 43.896557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.652866, 38.584198, 43.893852>,  <32.254566, 38.547638, 43.889343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.652866, 38.584198, 43.893852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018846, -0.082380, -0.996423,
		-0.090148, 0.992401, -0.083752,
		0.995750, 0.091404, 0.011277,
		32.951591, 38.611618, 43.897236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451027, 38.996094, 43.415520>,  <32.254566, 38.547638, 43.889343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.451027, 38.996094, 43.415520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.786453, 38.780323, 43.446072>,  <32.987709, 38.650860, 43.464401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.786453, 38.780323, 43.446072>,  <32.451027, 38.996094, 43.415520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786453, 38.780323, 43.446072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114613, 0.037620, -0.992698,
		0.532610, 0.841194, 0.093372,
		0.838564, -0.539423, 0.076375,
		33.038021, 38.618496, 43.468983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<33.284843, 36.118210, 49.997726> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.536572, 36.413410, 49.900314>,  <33.687607, 36.590530, 49.841869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.536572, 36.413410, 49.900314>,  <33.284843, 36.118210, 49.997726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536572, 36.413410, 49.900314> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377829, -0.564385, -0.733972,
		-0.679117, 0.369892, -0.634019,
		0.629321, 0.738003, -0.243527,
		33.725368, 36.634811, 49.827255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320850, 36.279995, 49.306671>,  <33.284843, 36.118210, 49.997726>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320850, 36.279995, 49.306671> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.667641, 36.429787, 49.438198>,  <33.875713, 36.519661, 49.517113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.667641, 36.429787, 49.438198>,  <33.320850, 36.279995, 49.306671>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667641, 36.429787, 49.438198> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492471, -0.542695, -0.680408,
		-0.076351, 0.751829, -0.654923,
		0.866973, 0.374481, 0.328818,
		33.927734, 36.542130, 49.536842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654003, 36.483109, 48.709412>,  <33.320850, 36.279995, 49.306671>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654003, 36.483109, 48.709412> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.913403, 36.406639, 49.004139>,  <34.069042, 36.360760, 49.180977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.913403, 36.406639, 49.004139>,  <33.654003, 36.483109, 48.709412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913403, 36.406639, 49.004139> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601469, -0.464597, -0.649911,
		0.466569, 0.864640, -0.186307,
		0.648497, -0.191171, 0.736821,
		34.107952, 36.349289, 49.225185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378590, 36.547668, 48.372650>,  <33.654003, 36.483109, 48.709412>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378590, 36.547668, 48.372650> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.445404, 36.334892, 48.704708>,  <34.485493, 36.207226, 48.903942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.445404, 36.334892, 48.704708>,  <34.378590, 36.547668, 48.372650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.445404, 36.334892, 48.704708> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561058, -0.641074, -0.523677,
		0.810749, 0.553232, 0.191367,
		0.167034, -0.531939, 0.830145,
		34.495514, 36.175312, 48.953751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094929, 36.365028, 48.356224>,  <34.378590, 36.547668, 48.372650>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094929, 36.365028, 48.356224> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.921703, 36.081451, 48.578884>,  <34.817768, 35.911304, 48.712479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.921703, 36.081451, 48.578884>,  <35.094929, 36.365028, 48.356224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921703, 36.081451, 48.578884> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578092, -0.692277, -0.431930,
		0.691567, 0.134740, 0.709633,
		-0.433064, -0.708941, 0.556648,
		34.791782, 35.868771, 48.745880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642147, 35.783901, 48.294331>,  <35.094929, 36.365028, 48.356224>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642147, 35.783901, 48.294331> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.331898, 35.610813, 48.478142>,  <35.145748, 35.506962, 48.588428>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.331898, 35.610813, 48.478142>,  <35.642147, 35.783901, 48.294331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331898, 35.610813, 48.478142> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220147, -0.867764, -0.445557,
		0.591566, -0.244418, 0.768316,
		-0.775619, -0.432718, 0.459532,
		35.099213, 35.480999, 48.616001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879761, 35.084526, 48.522293>,  <35.642147, 35.783901, 48.294331>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879761, 35.084526, 48.522293> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.483234, 35.084713, 48.469700>,  <35.245319, 35.084824, 48.438145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.483234, 35.084713, 48.469700>,  <35.879761, 35.084526, 48.522293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483234, 35.084713, 48.469700> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071140, -0.839072, -0.539348,
		-0.110577, -0.544019, 0.831755,
		-0.991318, 0.000468, -0.131483,
		35.185841, 35.084854, 48.430256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683643, 34.361767, 48.629406>,  <35.879761, 35.084526, 48.522293>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683643, 34.361767, 48.629406> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.367920, 34.515003, 48.437477>,  <35.178486, 34.606945, 48.322319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.367920, 34.515003, 48.437477>,  <35.683643, 34.361767, 48.629406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367920, 34.515003, 48.437477> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089849, -0.845134, -0.526949,
		-0.607385, -0.372814, 0.701493,
		-0.789310, 0.383090, -0.479825,
		35.131126, 34.629929, 48.293530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231983, 33.809052, 48.530151>,  <35.683643, 34.361767, 48.629406>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.231983, 33.809052, 48.530151> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.078506, 34.067123, 48.265873>,  <34.986420, 34.221966, 48.107307>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.078506, 34.067123, 48.265873>,  <35.231983, 33.809052, 48.530151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078506, 34.067123, 48.265873> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342284, -0.763856, -0.547142,
		-0.857683, 0.016211, 0.513923,
		-0.383694, 0.645183, -0.660695,
		34.963398, 34.260677, 48.067665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672832, 33.388641, 48.149391>,  <35.231983, 33.809052, 48.530151>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672832, 33.388641, 48.149391> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.750366, 33.700798, 47.911598>,  <34.796886, 33.888092, 47.768921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.750366, 33.700798, 47.911598>,  <34.672832, 33.388641, 48.149391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750366, 33.700798, 47.911598> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144723, -0.576600, -0.804107,
		-0.970300, 0.241902, 0.001174,
		0.193838, 0.780395, -0.594484,
		34.808517, 33.934917, 47.733253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126175, 33.376579, 47.507286>,  <34.672832, 33.388641, 48.149391>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126175, 33.376579, 47.507286> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.458473, 33.582207, 47.421875>,  <34.657852, 33.705582, 47.370628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.458473, 33.582207, 47.421875>,  <34.126175, 33.376579, 47.507286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458473, 33.582207, 47.421875> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115973, -0.535014, -0.836845,
		-0.544436, 0.670443, -0.504079,
		0.830746, 0.514069, -0.213528,
		34.707699, 33.736427, 47.357815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961491, 33.572365, 46.909718>,  <34.126175, 33.376579, 47.507286>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961491, 33.572365, 46.909718> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.359509, 33.611809, 46.914845>,  <34.598320, 33.635475, 46.917919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.359509, 33.611809, 46.914845>,  <33.961491, 33.572365, 46.909718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359509, 33.611809, 46.914845> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043460, -0.315350, -0.947980,
		-0.089441, 0.943838, -0.318072,
		0.995044, 0.098611, 0.012814,
		34.658020, 33.641392, 46.918690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784081, 34.311054, 46.781116>,  <33.961491, 33.572365, 46.909718>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784081, 34.311054, 46.781116> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.404869, 34.372097, 46.669437>,  <33.177341, 34.408722, 46.602428>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.404869, 34.372097, 46.669437>,  <33.784081, 34.311054, 46.781116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404869, 34.372097, 46.669437> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136045, 0.598825, 0.789241,
		0.287634, 0.786207, -0.546942,
		-0.948029, 0.152604, -0.279202,
		33.120461, 34.417877, 46.585678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549767, 35.016109, 46.950245>,  <33.784081, 34.311054, 46.781116>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549767, 35.016109, 46.950245> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.193939, 34.843967, 46.888962>,  <32.980442, 34.740685, 46.852192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.193939, 34.843967, 46.888962>,  <33.549767, 35.016109, 46.950245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.193939, 34.843967, 46.888962> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408507, 0.599321, 0.688431,
		-0.204445, 0.674991, -0.708936,
		-0.889564, -0.430351, -0.153210,
		32.927071, 34.714863, 46.842999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054771, 35.542278, 46.743488>,  <33.549767, 35.016109, 46.950245>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054771, 35.542278, 46.743488> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.835251, 35.244785, 46.896160>,  <32.703541, 35.066288, 46.987762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.835251, 35.244785, 46.896160>,  <33.054771, 35.542278, 46.743488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835251, 35.244785, 46.896160> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374815, 0.627028, 0.682897,
		-0.747218, 0.231715, -0.622876,
		-0.548798, -0.743736, 0.381676,
		32.670612, 35.021664, 47.010662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.308281, 35.841129, 46.657021>,  <33.054771, 35.542278, 46.743488>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.308281, 35.841129, 46.657021> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.336346, 35.546364, 46.925953>,  <32.353184, 35.369503, 47.087315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.336346, 35.546364, 46.925953>,  <32.308281, 35.841129, 46.657021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336346, 35.546364, 46.925953> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428184, 0.586498, 0.687516,
		-0.900964, -0.336120, -0.274386,
		0.070161, -0.736915, 0.672335,
		32.357395, 35.325291, 47.127655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.720146, 35.885853, 47.020157>,  <32.308281, 35.841129, 46.657021>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.720146, 35.885853, 47.020157> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.971876, 35.694172, 47.264881>,  <32.122913, 35.579163, 47.411716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.971876, 35.694172, 47.264881>,  <31.720146, 35.885853, 47.020157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.971876, 35.694172, 47.264881> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225359, 0.640906, 0.733793,
		-0.743750, -0.599672, 0.295346,
		0.629325, -0.479200, 0.611816,
		32.160675, 35.550411, 47.448425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.292107, 35.633190, 47.658100>,  <31.720146, 35.885853, 47.020157>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.292107, 35.633190, 47.658100> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.674568, 35.634594, 47.775238>,  <31.904045, 35.635437, 47.845520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.674568, 35.634594, 47.775238>,  <31.292107, 35.633190, 47.658100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.674568, 35.634594, 47.775238> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228690, 0.633596, 0.739092,
		-0.182951, -0.773656, 0.606618,
		0.956154, 0.003510, 0.292844,
		31.961414, 35.635647, 47.863091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.257099, 35.705593, 48.351208>,  <31.292107, 35.633190, 47.658100>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.257099, 35.705593, 48.351208> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.638620, 35.801907, 48.279339>,  <31.867533, 35.859695, 48.236217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.638620, 35.801907, 48.279339>,  <31.257099, 35.705593, 48.351208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.638620, 35.801907, 48.279339> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008697, 0.619926, 0.784612,
		0.300304, -0.746804, 0.593382,
		0.953804, 0.240783, -0.179671,
		31.924761, 35.874142, 48.225437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.642815, 35.586803, 48.976940>,  <31.257099, 35.705593, 48.351208>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.642815, 35.586803, 48.976940> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.835167, 35.866367, 48.765175>,  <31.950579, 36.034103, 48.638115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.835167, 35.866367, 48.765175>,  <31.642815, 35.586803, 48.976940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835167, 35.866367, 48.765175> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174128, 0.667916, 0.723580,
		0.859321, -0.255770, 0.442888,
		0.480882, 0.698906, -0.529417,
		31.979431, 36.076038, 48.606350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054207, 36.000870, 49.438839>,  <31.642815, 35.586803, 48.976940>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054207, 36.000870, 49.438839> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.027393, 36.240517, 49.119698>,  <32.011303, 36.384304, 48.928211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.027393, 36.240517, 49.119698>,  <32.054207, 36.000870, 49.438839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.027393, 36.240517, 49.119698> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027399, 0.798244, 0.601711,
		0.997374, 0.062196, -0.037096,
		-0.067036, 0.599114, -0.797852,
		32.007282, 36.420250, 48.880341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.376007, 36.519154, 49.653339>,  <32.054207, 36.000870, 49.438839>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.376007, 36.519154, 49.653339> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.203541, 36.686600, 49.333626>,  <32.100063, 36.787067, 49.141796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.203541, 36.686600, 49.333626>,  <32.376007, 36.519154, 49.653339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203541, 36.686600, 49.333626> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301216, 0.768251, 0.564853,
		0.850510, 0.484301, -0.205146,
		-0.431163, 0.418620, -0.799285,
		32.074192, 36.812187, 49.093842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.638145, 37.222389, 49.487537>,  <32.376007, 36.519154, 49.653339>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.638145, 37.222389, 49.487537> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.267406, 37.192081, 49.340450>,  <32.044964, 37.173897, 49.252197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.267406, 37.192081, 49.340450>,  <32.638145, 37.222389, 49.487537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267406, 37.192081, 49.340450> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256394, 0.843220, 0.472486,
		0.274268, 0.532202, -0.800961,
		-0.926844, -0.075773, -0.367722,
		31.989353, 37.169350, 49.230133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485039, 38.013336, 49.384281>,  <32.638145, 37.222389, 49.487537>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.485039, 38.013336, 49.384281> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.117905, 37.860920, 49.339752>,  <31.897625, 37.769470, 49.313034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.117905, 37.860920, 49.339752>,  <32.485039, 38.013336, 49.384281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117905, 37.860920, 49.339752> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382047, 0.771742, 0.508384,
		-0.107805, 0.509141, -0.853905,
		-0.917834, -0.381038, -0.111318,
		31.842554, 37.746609, 49.306358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054886, 38.486279, 49.102211>,  <32.485039, 38.013336, 49.384281>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054886, 38.486279, 49.102211> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.813662, 38.260475, 49.327652>,  <31.668926, 38.124992, 49.462917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.813662, 38.260475, 49.327652>,  <32.054886, 38.486279, 49.102211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813662, 38.260475, 49.327652> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290415, 0.813427, 0.503979,
		-0.742950, 0.140251, -0.654488,
		-0.603062, -0.564505, 0.563605,
		31.632744, 38.091125, 49.496735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423885, 39.073128, 48.632145>,  <32.054886, 38.486279, 49.102211>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423885, 39.073128, 48.632145> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.214066, 39.411186, 48.591026>,  <32.088173, 39.614021, 48.566353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.214066, 39.411186, 48.591026>,  <32.423885, 39.073128, 48.632145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.214066, 39.411186, 48.591026> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192602, 0.000183, -0.981277,
		-0.829306, -0.534531, -0.162874,
		-0.524552, 0.845149, -0.102801,
		32.056702, 39.664730, 48.560184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062008, 38.980396, 48.105778>,  <32.423885, 39.073128, 48.632145>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062008, 38.980396, 48.105778> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.114040, 39.374218, 48.152657>,  <32.145260, 39.610512, 48.180782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.114040, 39.374218, 48.152657>,  <32.062008, 38.980396, 48.105778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114040, 39.374218, 48.152657> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301745, 0.073281, -0.950569,
		-0.944473, 0.159016, -0.287551,
		0.130083, 0.984553, 0.117194,
		32.153065, 39.669582, 48.187813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.595299, 39.332695, 47.640583>,  <32.062008, 38.980396, 48.105778>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.595299, 39.332695, 47.640583> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.884497, 39.601677, 47.703938>,  <32.058014, 39.763065, 47.741951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.884497, 39.601677, 47.703938>,  <31.595299, 39.332695, 47.640583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.884497, 39.601677, 47.703938> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231018, -0.019265, -0.972759,
		-0.651084, 0.739888, -0.169278,
		0.722994, 0.672454, 0.158385,
		32.101395, 39.803413, 47.751453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.495813, 39.795387, 47.070442>,  <31.595299, 39.332695, 47.640583>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.495813, 39.795387, 47.070442> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.865450, 39.840897, 47.216377>,  <32.087231, 39.868202, 47.303940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.865450, 39.840897, 47.216377>,  <31.495813, 39.795387, 47.070442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.865450, 39.840897, 47.216377> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377729, -0.126774, -0.917196,
		-0.058104, 0.985385, -0.160128,
		0.924091, 0.113777, 0.364842,
		32.142677, 39.875031, 47.325829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.890081, 40.119202, 46.463051>,  <31.495813, 39.795387, 47.070442>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.890081, 40.119202, 46.463051> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.178638, 40.014202, 46.719391>,  <32.351772, 39.951202, 46.873196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.178638, 40.014202, 46.719391>,  <31.890081, 40.119202, 46.463051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.178638, 40.014202, 46.719391> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599141, -0.227519, -0.767636,
		0.347310, 0.937725, -0.006857,
		0.721392, -0.262499, 0.640849,
		32.395058, 39.935452, 46.911644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.518089, 40.499798, 46.344864>,  <31.890081, 40.119202, 46.463051>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.518089, 40.499798, 46.344864> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.588970, 40.148483, 46.522499>,  <32.631500, 39.937695, 46.629082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.588970, 40.148483, 46.522499>,  <32.518089, 40.499798, 46.344864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.588970, 40.148483, 46.522499> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506908, -0.305326, -0.806114,
		0.843590, 0.367959, 0.391104,
		0.177203, -0.878284, 0.444091,
		32.642132, 39.884998, 46.655727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190899, 40.334366, 46.186188>,  <32.518089, 40.499798, 46.344864>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190899, 40.334366, 46.186188> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.046810, 39.982147, 46.309391>,  <32.960358, 39.770817, 46.383312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.046810, 39.982147, 46.309391>,  <33.190899, 40.334366, 46.186188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046810, 39.982147, 46.309391> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429828, -0.449710, -0.782949,
		0.827941, -0.149646, 0.540481,
		-0.360225, -0.880549, 0.308011,
		32.938744, 39.717983, 46.401794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762764, 39.871574, 46.204361>,  <33.190899, 40.334366, 46.186188>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762764, 39.871574, 46.204361> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.422352, 39.662140, 46.188343>,  <33.218105, 39.536480, 46.178734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.422352, 39.662140, 46.188343>,  <33.762764, 39.871574, 46.204361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422352, 39.662140, 46.188343> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166078, -0.196033, -0.966431,
		0.498162, -0.829112, 0.253787,
		-0.851030, -0.523587, -0.040041,
		33.167042, 39.505062, 46.176331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548656, 39.709442, 46.173702>,  <33.762764, 39.871574, 46.204361>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548656, 39.709442, 46.173702> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.762562, 40.018276, 46.036350>,  <34.890907, 40.203575, 45.953941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.762562, 40.018276, 46.036350>,  <34.548656, 39.709442, 46.173702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762562, 40.018276, 46.036350> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132525, 0.477966, 0.868323,
		0.834543, -0.418843, 0.357921,
		0.534765, 0.772087, -0.343376,
		34.922993, 40.249901, 45.933338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067654, 39.827026, 46.696007>,  <34.548656, 39.709442, 46.173702>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.067654, 39.827026, 46.696007> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.027428, 40.170967, 46.495789>,  <35.003292, 40.377331, 46.375660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.027428, 40.170967, 46.495789>,  <35.067654, 39.827026, 46.696007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027428, 40.170967, 46.495789> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276132, 0.459207, 0.844322,
		0.955844, 0.223127, 0.191251,
		-0.100567, 0.859851, -0.500543,
		34.997257, 40.428921, 46.345627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550209, 40.257652, 46.976719>,  <35.067654, 39.827026, 46.696007>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550209, 40.257652, 46.976719> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.259037, 40.475315, 46.809860>,  <35.084335, 40.605911, 46.709743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.259037, 40.475315, 46.809860>,  <35.550209, 40.257652, 46.976719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259037, 40.475315, 46.809860> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170125, 0.446032, 0.878700,
		0.664211, 0.710599, -0.232105,
		-0.727929, 0.544155, -0.417150,
		35.040657, 40.638561, 46.684715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625366, 41.003006, 47.102837>,  <35.550209, 40.257652, 46.976719>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625366, 41.003006, 47.102837> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.234501, 40.945446, 47.040306>,  <34.999981, 40.910912, 47.002789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.234501, 40.945446, 47.040306>,  <35.625366, 41.003006, 47.102837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234501, 40.945446, 47.040306> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202651, 0.410114, 0.889235,
		-0.063848, 0.900611, -0.429911,
		-0.977167, -0.143898, -0.156324,
		34.941349, 40.902275, 46.993408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348530, 41.615089, 47.342052>,  <35.625366, 41.003006, 47.102837>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348530, 41.615089, 47.342052> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.031425, 41.372860, 47.314281>,  <34.841164, 41.227524, 47.297619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.031425, 41.372860, 47.314281>,  <35.348530, 41.615089, 47.342052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031425, 41.372860, 47.314281> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388490, 0.414213, 0.823106,
		-0.469694, 0.679493, -0.563629,
		-0.792757, -0.605572, -0.069423,
		34.793598, 41.191189, 47.293453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781593, 42.056347, 47.439716>,  <35.348530, 41.615089, 47.342052>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781593, 42.056347, 47.439716> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.654491, 41.683895, 47.511307>,  <34.578232, 41.460423, 47.554260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.654491, 41.683895, 47.511307>,  <34.781593, 42.056347, 47.439716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654491, 41.683895, 47.511307> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479192, 0.320579, 0.817070,
		-0.818173, 0.173864, -0.548055,
		-0.317754, -0.931129, 0.178975,
		34.559166, 41.404556, 47.564999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972298, 41.956203, 47.532482>,  <34.781593, 42.056347, 47.439716>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972298, 41.956203, 47.532482> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.164234, 41.677380, 47.745598>,  <34.279396, 41.510086, 47.873466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.164234, 41.677380, 47.745598>,  <33.972298, 41.956203, 47.532482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164234, 41.677380, 47.745598> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528376, 0.255198, 0.809749,
		-0.700409, -0.670062, -0.245854,
		0.479840, -0.697059, 0.532788,
		34.308186, 41.468262, 47.905434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548496, 41.947086, 48.244987>,  <33.972298, 41.956203, 47.532482>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548496, 41.947086, 48.244987> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.846970, 41.695450, 48.332127>,  <34.026054, 41.544468, 48.384411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.846970, 41.695450, 48.332127>,  <33.548496, 41.947086, 48.244987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846970, 41.695450, 48.332127> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107046, 0.209599, 0.971910,
		-0.657080, -0.748542, 0.089058,
		0.746182, -0.629089, 0.217852,
		34.070824, 41.506721, 48.397484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255043, 41.400501, 48.674011>,  <33.548496, 41.947086, 48.244987>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255043, 41.400501, 48.674011> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.637695, 41.498043, 48.737762>,  <33.867287, 41.556568, 48.776012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.637695, 41.498043, 48.737762>,  <33.255043, 41.400501, 48.674011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637695, 41.498043, 48.737762> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235629, 0.325972, 0.915544,
		0.171302, -0.913389, 0.369292,
		0.956627, 0.243851, 0.159382,
		33.924683, 41.571198, 48.785576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.442696, 36.674694, 33.659584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808075, 36.684406, 33.822075>,  <38.027302, 36.690235, 33.919571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808075, 36.684406, 33.822075>,  <37.442696, 36.674694, 33.659584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808075, 36.684406, 33.822075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401645, 0.214484, 0.890325,
		-0.065513, -0.976426, 0.205672,
		0.913449, 0.024279, 0.406228,
		38.082111, 36.691692, 33.943943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476540, 36.284164, 34.319210>,  <37.442696, 36.674694, 33.659584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476540, 36.284164, 34.319210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793842, 36.526459, 34.343964>,  <37.984222, 36.671837, 34.358814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793842, 36.526459, 34.343964>,  <37.476540, 36.284164, 34.319210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793842, 36.526459, 34.343964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202801, 0.167016, 0.964872,
		0.574122, -0.777939, 0.255330,
		0.793256, 0.605736, 0.061879,
		38.031818, 36.708179, 34.362526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824348, 36.011463, 34.826347>,  <37.476540, 36.284164, 34.319210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824348, 36.011463, 34.826347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.977955, 36.380737, 34.819946>,  <38.070118, 36.602303, 34.816105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.977955, 36.380737, 34.819946>,  <37.824348, 36.011463, 34.826347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977955, 36.380737, 34.819946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161147, 0.084079, 0.983343,
		0.909155, -0.375042, 0.181057,
		0.384018, 0.923187, -0.016004,
		38.093159, 36.657692, 34.815144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024059, 36.008240, 35.500095>,  <37.824348, 36.011463, 34.826347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024059, 36.008240, 35.500095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.050140, 36.391174, 35.387489>,  <38.065788, 36.620934, 35.319923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.050140, 36.391174, 35.387489>,  <38.024059, 36.008240, 35.500095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050140, 36.391174, 35.387489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163869, 0.288561, 0.943334,
		0.984325, -0.015375, 0.175693,
		0.065202, 0.957338, -0.281518,
		38.069702, 36.678375, 35.303032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429691, 36.394775, 35.979374>,  <38.024059, 36.008240, 35.500095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429691, 36.394775, 35.979374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193115, 36.664856, 35.803059>,  <38.051170, 36.826904, 35.697269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193115, 36.664856, 35.803059>,  <38.429691, 36.394775, 35.979374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193115, 36.664856, 35.803059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174479, 0.426534, 0.887483,
		0.787243, 0.601804, -0.134462,
		-0.591444, 0.675204, -0.440788,
		38.015682, 36.867416, 35.670822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412861, 36.907681, 36.472603>,  <38.429691, 36.394775, 35.979374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412861, 36.907681, 36.472603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.117363, 37.021255, 36.228100>,  <37.940063, 37.089401, 36.081398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.117363, 37.021255, 36.228100>,  <38.412861, 36.907681, 36.472603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117363, 37.021255, 36.228100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413062, 0.525903, 0.743509,
		0.532570, 0.801751, -0.271225,
		-0.738748, 0.283938, -0.611254,
		37.895741, 37.106438, 36.044724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203358, 37.648178, 36.619503>,  <38.412861, 36.907681, 36.472603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203358, 37.648178, 36.619503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892677, 37.466206, 36.445251>,  <37.706268, 37.357021, 36.340702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892677, 37.466206, 36.445251>,  <38.203358, 37.648178, 36.619503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892677, 37.466206, 36.445251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625417, 0.474903, 0.619129,
		-0.074781, 0.753327, -0.653380,
		-0.776699, -0.454935, -0.435630,
		37.659668, 37.329723, 36.314564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805195, 38.220249, 36.387306>,  <38.203358, 37.648178, 36.619503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805195, 38.220249, 36.387306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.601376, 37.879395, 36.435009>,  <37.479084, 37.674881, 36.463631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.601376, 37.879395, 36.435009>,  <37.805195, 38.220249, 36.387306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601376, 37.879395, 36.435009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657426, 0.474983, 0.584964,
		-0.555113, 0.219668, -0.802244,
		-0.509550, -0.852137, 0.119254,
		37.448509, 37.623753, 36.470783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138672, 38.403793, 36.308819>,  <37.805195, 38.220249, 36.387306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138672, 38.403793, 36.308819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.138390, 38.048038, 36.491680>,  <37.138222, 37.834583, 36.601395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.138390, 38.048038, 36.491680>,  <37.138672, 38.403793, 36.308819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138390, 38.048038, 36.491680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619746, 0.359160, 0.697795,
		-0.784802, -0.282824, -0.551450,
		-0.000706, -0.889390, 0.457149,
		37.138180, 37.781223, 36.628826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471142, 38.474983, 36.535889>,  <37.138672, 38.403793, 36.308819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471142, 38.474983, 36.535889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.608479, 38.170120, 36.755424>,  <36.690880, 37.987202, 36.887146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.608479, 38.170120, 36.755424>,  <36.471142, 38.474983, 36.535889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608479, 38.170120, 36.755424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610302, 0.263126, 0.747192,
		-0.713895, -0.591501, -0.374806,
		0.343344, -0.762162, 0.548839,
		36.711483, 37.941471, 36.920074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831505, 38.283432, 36.885620>,  <36.471142, 38.474983, 36.535889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831505, 38.283432, 36.885620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.156567, 38.188202, 37.098381>,  <36.351604, 38.131065, 37.226036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.156567, 38.188202, 37.098381>,  <35.831505, 38.283432, 36.885620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156567, 38.188202, 37.098381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482984, 0.235553, 0.843351,
		-0.326068, -0.942251, 0.076439,
		0.812654, -0.238071, 0.531899,
		36.400364, 38.116779, 37.257950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585854, 38.053177, 37.479046>,  <35.831505, 38.283432, 36.885620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.585854, 38.053177, 37.479046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967464, 38.145638, 37.555370>,  <36.196430, 38.201115, 37.601166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967464, 38.145638, 37.555370>,  <35.585854, 38.053177, 37.479046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967464, 38.145638, 37.555370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273005, 0.407371, 0.871503,
		0.123721, -0.883525, 0.451748,
		0.954024, 0.231153, 0.190807,
		36.253670, 38.214985, 37.612614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303623, 37.308880, 37.684292>,  <35.585854, 38.053177, 37.479046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303623, 37.308880, 37.684292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.909859, 37.266491, 37.740429>,  <34.673599, 37.241058, 37.774113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.909859, 37.266491, 37.740429>,  <35.303623, 37.308880, 37.684292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909859, 37.266491, 37.740429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065673, -0.518799, -0.852370,
		0.163140, -0.848303, 0.503753,
		-0.984415, -0.105972, 0.140347,
		34.614532, 37.234699, 37.782532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082909, 36.529774, 37.661232>,  <35.303623, 37.308880, 37.684292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082909, 36.529774, 37.661232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765873, 36.751812, 37.560303>,  <34.575649, 36.885033, 37.499744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765873, 36.751812, 37.560303>,  <35.082909, 36.529774, 37.661232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765873, 36.751812, 37.560303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100968, -0.527585, -0.843481,
		-0.601333, -0.643061, 0.474207,
		-0.792593, 0.555092, -0.252326,
		34.528095, 36.918339, 37.484604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584366, 36.101704, 37.415722>,  <35.082909, 36.529774, 37.661232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584366, 36.101704, 37.415722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.521152, 36.467712, 37.267262>,  <34.483223, 36.687317, 37.178185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.521152, 36.467712, 37.267262>,  <34.584366, 36.101704, 37.415722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521152, 36.467712, 37.267262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111417, -0.389997, -0.914051,
		-0.981127, -0.103102, 0.163583,
		-0.158038, 0.915026, -0.371149,
		34.473740, 36.742222, 37.155918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098499, 35.957523, 36.874405>,  <34.584366, 36.101704, 37.415722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098499, 35.957523, 36.874405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226463, 36.330368, 36.806488>,  <34.303242, 36.554073, 36.765736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226463, 36.330368, 36.806488>,  <34.098499, 35.957523, 36.874405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226463, 36.330368, 36.806488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208166, -0.105683, -0.972367,
		-0.924297, 0.346414, 0.160225,
		0.319908, 0.932110, -0.169794,
		34.322437, 36.610001, 36.755550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506958, 36.366936, 36.495167>,  <34.098499, 35.957523, 36.874405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506958, 36.366936, 36.495167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863403, 36.535427, 36.427662>,  <34.077271, 36.636524, 36.387157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863403, 36.535427, 36.427662>,  <33.506958, 36.366936, 36.495167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863403, 36.535427, 36.427662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111681, -0.156880, -0.981283,
		-0.439823, 0.893281, -0.092755,
		0.891113, 0.421232, -0.168762,
		34.130737, 36.661797, 36.377033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307186, 36.710678, 35.878750>,  <33.506958, 36.366936, 36.495167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307186, 36.710678, 35.878750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706333, 36.700993, 35.903008>,  <33.945820, 36.695179, 35.917561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706333, 36.700993, 35.903008>,  <33.307186, 36.710678, 35.878750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706333, 36.700993, 35.903008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057609, -0.110702, -0.992183,
		0.030739, 0.993559, -0.109070,
		0.997866, -0.024216, 0.060641,
		34.005692, 36.693729, 35.921200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551945, 37.181583, 35.381359>,  <33.307186, 36.710678, 35.878750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.551945, 37.181583, 35.381359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.854973, 36.930710, 35.453724>,  <34.036789, 36.780186, 35.497143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.854973, 36.930710, 35.453724>,  <33.551945, 37.181583, 35.381359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.854973, 36.930710, 35.453724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016375, -0.295329, -0.955255,
		0.652551, 0.720708, -0.234002,
		0.757568, -0.627185, 0.180916,
		34.082245, 36.742554, 35.507999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.047596, 37.302891, 34.986168>,  <33.551945, 37.181583, 35.381359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.047596, 37.302891, 34.986168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127258, 36.919792, 35.069168>,  <34.175056, 36.689934, 35.118969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127258, 36.919792, 35.069168>,  <34.047596, 37.302891, 34.986168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127258, 36.919792, 35.069168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234853, -0.252220, -0.938738,
		0.951410, 0.138224, -0.275161,
		0.199157, -0.957747, 0.207502,
		34.187004, 36.632469, 35.131420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302498, 36.965164, 34.370819>,  <34.047596, 37.302891, 34.986168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302498, 36.965164, 34.370819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262234, 36.615685, 34.561195>,  <34.238075, 36.405998, 34.675419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262234, 36.615685, 34.561195>,  <34.302498, 36.965164, 34.370819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262234, 36.615685, 34.561195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325890, -0.423023, -0.845486,
		0.940033, -0.240215, -0.242146,
		-0.100665, -0.873698, 0.475939,
		34.232033, 36.353577, 34.703976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605072, 36.412491, 33.930710>,  <34.302498, 36.965164, 34.370819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605072, 36.412491, 33.930710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355495, 36.212502, 34.170948>,  <34.205750, 36.092506, 34.315090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355495, 36.212502, 34.170948>,  <34.605072, 36.412491, 33.930710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355495, 36.212502, 34.170948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292970, -0.562842, -0.772902,
		0.724472, -0.658206, 0.204705,
		-0.623946, -0.499973, 0.600598,
		34.168312, 36.062508, 34.351128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629921, 35.727375, 33.824474>,  <34.605072, 36.412491, 33.930710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629921, 35.727375, 33.824474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271759, 35.738586, 34.002224>,  <34.056862, 35.745312, 34.108875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271759, 35.738586, 34.002224>,  <34.629921, 35.727375, 33.824474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271759, 35.738586, 34.002224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278441, -0.814042, -0.509712,
		0.347456, -0.580130, 0.736697,
		-0.895402, 0.028024, 0.444376,
		34.003139, 35.746994, 34.135536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459003, 35.055489, 34.202930>,  <34.629921, 35.727375, 33.824474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.459003, 35.055489, 34.202930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110836, 35.237976, 34.128910>,  <33.901936, 35.347469, 34.084499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110836, 35.237976, 34.128910>,  <34.459003, 35.055489, 34.202930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110836, 35.237976, 34.128910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303293, -0.792980, -0.528391,
		-0.387802, -0.403794, 0.828589,
		-0.870415, 0.456217, -0.185051,
		33.849712, 35.374840, 34.073395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894722, 34.597618, 34.443306>,  <34.459003, 35.055489, 34.202930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894722, 34.597618, 34.443306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741486, 34.851429, 34.174793>,  <33.649544, 35.003716, 34.013687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741486, 34.851429, 34.174793>,  <33.894722, 34.597618, 34.443306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741486, 34.851429, 34.174793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391249, -0.769776, -0.504350,
		-0.836761, 0.069429, 0.543149,
		-0.383086, 0.634527, -0.671283,
		33.626560, 35.041786, 33.973408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132710, 34.423195, 34.401897>,  <33.894722, 34.597618, 34.443306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.132710, 34.423195, 34.401897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.260098, 34.587044, 34.059952>,  <33.336529, 34.685352, 33.854786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.260098, 34.587044, 34.059952>,  <33.132710, 34.423195, 34.401897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.260098, 34.587044, 34.059952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372674, -0.775095, -0.510238,
		-0.871602, 0.481080, -0.094190,
		0.318472, 0.409622, -0.854860,
		33.355640, 34.709930, 33.803493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820286, 33.956169, 34.869476>,  <33.132710, 34.423195, 34.401897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820286, 33.956169, 34.869476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480614, 34.121033, 35.001541>,  <32.276810, 34.219952, 35.080780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480614, 34.121033, 35.001541>,  <32.820286, 33.956169, 34.869476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480614, 34.121033, 35.001541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527340, 0.628352, 0.571914,
		0.028261, 0.659770, -0.750936,
		-0.849184, 0.412162, 0.330165,
		32.225857, 34.244682, 35.100590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841358, 34.354599, 35.603237>,  <32.820286, 33.956169, 34.869476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841358, 34.354599, 35.603237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.865677, 33.956757, 35.636841>,  <32.880268, 33.718052, 35.657001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.865677, 33.956757, 35.636841>,  <32.841358, 34.354599, 35.603237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.865677, 33.956757, 35.636841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545829, 0.037335, 0.837064,
		-0.835688, -0.096742, -0.540617,
		0.060795, -0.994609, 0.084005,
		32.883915, 33.658375, 35.662041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211208, 34.247353, 35.940041>,  <32.841358, 34.354599, 35.603237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211208, 34.247353, 35.940041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481426, 33.960373, 36.008045>,  <32.643559, 33.788185, 36.048847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481426, 33.960373, 36.008045>,  <32.211208, 34.247353, 35.940041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.481426, 33.960373, 36.008045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248478, -0.004431, 0.968627,
		-0.694184, -0.696600, -0.181263,
		0.675549, -0.717446, 0.170014,
		32.684090, 33.745140, 36.059048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.852579, 33.757076, 36.370255>,  <32.211208, 34.247353, 35.940041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.852579, 33.757076, 36.370255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248806, 33.721859, 36.412258>,  <32.486542, 33.700729, 36.437462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248806, 33.721859, 36.412258>,  <31.852579, 33.757076, 36.370255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248806, 33.721859, 36.412258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100996, 0.048854, 0.993687,
		-0.092625, -0.994917, 0.039500,
		0.990565, -0.088051, 0.105008,
		32.545975, 33.695446, 36.443760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011589, 33.144630, 36.652771>,  <31.852579, 33.757076, 36.370255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.011589, 33.144630, 36.652771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.288399, 33.420383, 36.738422>,  <32.454483, 33.585835, 36.789814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.288399, 33.420383, 36.738422>,  <32.011589, 33.144630, 36.652771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.288399, 33.420383, 36.738422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254153, -0.044961, 0.966118,
		0.675653, -0.723000, 0.144095,
		0.692025, 0.689383, 0.214131,
		32.496006, 33.627197, 36.802662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.308479, 32.891682, 37.347298>,  <32.011589, 33.144630, 36.652771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.308479, 32.891682, 37.347298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.409698, 33.278278, 37.330048>,  <32.470432, 33.510235, 37.319698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.409698, 33.278278, 37.330048>,  <32.308479, 32.891682, 37.347298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.409698, 33.278278, 37.330048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130105, 0.078165, 0.988414,
		0.958664, -0.244509, 0.145525,
		0.253052, 0.966491, -0.043122,
		32.485615, 33.568226, 37.317112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744362, 32.955830, 37.875896>,  <32.308479, 32.891682, 37.347298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744362, 32.955830, 37.875896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640636, 33.336956, 37.812778>,  <32.578403, 33.565632, 37.774906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640636, 33.336956, 37.812778>,  <32.744362, 32.955830, 37.875896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640636, 33.336956, 37.812778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245447, 0.223035, 0.943404,
		0.934085, 0.205903, -0.291702,
		-0.259310, 0.952816, -0.157795,
		32.562843, 33.622803, 37.765438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287766, 33.403576, 38.263580>,  <32.744362, 32.955830, 37.875896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287766, 33.403576, 38.263580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935471, 33.584171, 38.206371>,  <32.724094, 33.692528, 38.172047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935471, 33.584171, 38.206371>,  <33.287766, 33.403576, 38.263580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935471, 33.584171, 38.206371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041747, 0.374827, 0.926154,
		0.471758, 0.809730, -0.348973,
		-0.880739, 0.451490, -0.143024,
		32.671249, 33.719620, 38.163464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504742, 34.039265, 38.410854>,  <33.287766, 33.403576, 38.263580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504742, 34.039265, 38.410854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106232, 34.064537, 38.434341>,  <32.867126, 34.079700, 38.448433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106232, 34.064537, 38.434341>,  <33.504742, 34.039265, 38.410854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106232, 34.064537, 38.434341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078172, 0.373686, 0.924255,
		0.036452, 0.925401, -0.377233,
		-0.996273, 0.063180, 0.058719,
		32.807350, 34.083492, 38.451958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.331615, 34.569687, 38.875233>,  <33.504742, 34.039265, 38.410854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.331615, 34.569687, 38.875233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974525, 34.389732, 38.865143>,  <32.760269, 34.281757, 38.859089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974525, 34.389732, 38.865143>,  <33.331615, 34.569687, 38.875233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974525, 34.389732, 38.865143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174024, 0.292598, 0.940267,
		-0.415634, 0.843793, -0.339502,
		-0.892729, -0.449888, -0.025226,
		32.706707, 34.254765, 38.857574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817417, 35.051697, 39.141846>,  <33.331615, 34.569687, 38.875233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817417, 35.051697, 39.141846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697227, 34.674946, 39.201958>,  <32.625114, 34.448895, 39.238026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697227, 34.674946, 39.201958>,  <32.817417, 35.051697, 39.141846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.697227, 34.674946, 39.201958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095457, 0.127076, 0.987289,
		-0.949001, 0.311001, 0.051726,
		-0.300474, -0.941876, 0.150283,
		32.607086, 34.392384, 39.247044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192883, 35.116394, 39.488789>,  <32.817417, 35.051697, 39.141846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192883, 35.116394, 39.488789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338394, 34.750309, 39.558136>,  <32.425701, 34.530659, 39.599743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338394, 34.750309, 39.558136>,  <32.192883, 35.116394, 39.488789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.338394, 34.750309, 39.558136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019131, 0.178739, 0.983711,
		-0.931290, -0.361167, 0.047512,
		0.363776, -0.915211, 0.173367,
		32.447529, 34.475746, 39.610146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.016914, 34.965359, 40.175129>,  <32.192883, 35.116394, 39.488789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.016914, 34.965359, 40.175129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245171, 34.640514, 40.126400>,  <32.382126, 34.445606, 40.097160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245171, 34.640514, 40.126400>,  <32.016914, 34.965359, 40.175129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245171, 34.640514, 40.126400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016893, -0.136711, 0.990467,
		-0.821025, -0.567260, -0.064294,
		0.570642, -0.812112, -0.121826,
		32.416363, 34.396881, 40.089851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.689062, 34.446129, 40.606518>,  <32.016914, 34.965359, 40.175129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.689062, 34.446129, 40.606518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075607, 34.369823, 40.537521>,  <32.307533, 34.324039, 40.496124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075607, 34.369823, 40.537521>,  <31.689062, 34.446129, 40.606518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075607, 34.369823, 40.537521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126285, -0.232304, 0.964410,
		-0.224018, -0.953758, -0.200404,
		0.966368, -0.190737, -0.172486,
		32.365517, 34.312595, 40.485775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.937706, 33.727417, 40.924389>,  <31.689062, 34.446129, 40.606518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.937706, 33.727417, 40.924389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.259884, 33.963253, 40.900249>,  <32.453190, 34.104755, 40.885765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.259884, 33.963253, 40.900249>,  <31.937706, 33.727417, 40.924389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259884, 33.963253, 40.900249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307211, -0.328251, 0.893237,
		0.506834, -0.737993, -0.445517,
		0.805444, 0.589590, -0.060351,
		32.501518, 34.140129, 40.882145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.301414, 33.382580, 41.255051>,  <31.937706, 33.727417, 40.924389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.301414, 33.382580, 41.255051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504795, 33.726948, 41.248180>,  <32.626823, 33.933567, 41.244057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504795, 33.726948, 41.248180>,  <32.301414, 33.382580, 41.255051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.504795, 33.726948, 41.248180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376972, -0.204613, 0.903341,
		0.774189, -0.465782, -0.428578,
		0.508453, 0.860919, -0.017178,
		32.657330, 33.985222, 41.243027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.914867, 33.158813, 41.419487>,  <32.301414, 33.382580, 41.255051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.914867, 33.158813, 41.419487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.919838, 33.548676, 41.508831>,  <32.922821, 33.782593, 41.562439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.919838, 33.548676, 41.508831>,  <32.914867, 33.158813, 41.419487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919838, 33.548676, 41.508831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405966, -0.209061, 0.889654,
		0.913804, 0.079622, -0.398275,
		0.012428, 0.974656, 0.223364,
		32.923565, 33.841072, 41.575840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515980, 33.292683, 41.927422>,  <32.914867, 33.158813, 41.419487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515980, 33.292683, 41.927422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280437, 33.613941, 41.963654>,  <33.139111, 33.806698, 41.985394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280437, 33.613941, 41.963654>,  <33.515980, 33.292683, 41.927422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280437, 33.613941, 41.963654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198476, 0.035055, 0.979479,
		0.783490, 0.594748, -0.180047,
		-0.588855, 0.803147, 0.090578,
		33.103783, 33.854885, 41.990826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935699, 33.728176, 42.446342>,  <33.515980, 33.292683, 41.927422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935699, 33.728176, 42.446342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552197, 33.841656, 42.439381>,  <33.322094, 33.909744, 42.435204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552197, 33.841656, 42.439381>,  <33.935699, 33.728176, 42.446342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552197, 33.841656, 42.439381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026447, 0.150014, 0.988330,
		0.283000, 0.947106, -0.151329,
		-0.958755, 0.283700, -0.017406,
		33.264568, 33.926765, 42.434158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915562, 34.342575, 42.891644>,  <33.935699, 33.728176, 42.446342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915562, 34.342575, 42.891644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530426, 34.237488, 42.866589>,  <33.299347, 34.174435, 42.851555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530426, 34.237488, 42.866589>,  <33.915562, 34.342575, 42.891644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530426, 34.237488, 42.866589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071525, 0.024391, 0.997140,
		-0.260443, 0.964563, -0.042275,
		-0.962836, -0.262722, -0.062638,
		33.241573, 34.158672, 42.847797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535088, 34.845146, 43.300400>,  <33.915562, 34.342575, 42.891644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535088, 34.845146, 43.300400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300842, 34.523499, 43.259502>,  <33.160294, 34.330509, 43.234962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300842, 34.523499, 43.259502>,  <33.535088, 34.845146, 43.300400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300842, 34.523499, 43.259502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203086, 0.023439, 0.978881,
		-0.784735, 0.594012, -0.177030,
		-0.585617, -0.804114, -0.102242,
		33.125156, 34.282265, 43.228828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049149, 34.995441, 43.743019>,  <33.535088, 34.845146, 43.300400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049149, 34.995441, 43.743019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.998478, 34.604191, 43.677021>,  <32.968075, 34.369442, 43.637421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.998478, 34.604191, 43.677021>,  <33.049149, 34.995441, 43.743019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.998478, 34.604191, 43.677021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296731, -0.121353, 0.947219,
		-0.946523, 0.168945, -0.274868,
		-0.126672, -0.978126, -0.164994,
		32.960476, 34.310753, 43.627522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426853, 34.813911, 44.044247>,  <33.049149, 34.995441, 43.743019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426853, 34.813911, 44.044247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.642872, 34.477757, 44.025917>,  <32.772484, 34.276062, 44.014919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.642872, 34.477757, 44.025917>,  <32.426853, 34.813911, 44.044247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642872, 34.477757, 44.025917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153708, -0.152014, 0.976353,
		-0.827481, -0.520232, -0.211268,
		0.540046, -0.840387, -0.045825,
		32.804886, 34.225639, 44.012169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.059566, 34.274708, 44.360905>,  <32.426853, 34.813911, 44.044247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.059566, 34.274708, 44.360905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445271, 34.169056, 44.369225>,  <32.676693, 34.105663, 44.374214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445271, 34.169056, 44.369225>,  <32.059566, 34.274708, 44.360905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445271, 34.169056, 44.369225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102196, -0.298374, 0.948962,
		-0.244443, -0.917175, -0.314704,
		0.964263, -0.264129, 0.020796,
		32.734550, 34.089817, 44.375465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072323, 33.683823, 44.880207>,  <32.059566, 34.274708, 44.360905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072323, 33.683823, 44.880207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457115, 33.784260, 44.837215>,  <32.687988, 33.844521, 44.811420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457115, 33.784260, 44.837215>,  <32.072323, 33.683823, 44.880207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457115, 33.784260, 44.837215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163877, -0.215816, 0.962584,
		0.218501, -0.943597, -0.248758,
		0.961978, 0.251091, -0.107478,
		32.745708, 33.859589, 44.804974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516613, 33.204990, 45.230118>,  <32.072323, 33.683823, 44.880207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516613, 33.204990, 45.230118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.688141, 33.565445, 45.255646>,  <32.791058, 33.781715, 45.270962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.688141, 33.565445, 45.255646>,  <32.516613, 33.204990, 45.230118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688141, 33.565445, 45.255646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125915, -0.129577, 0.983542,
		0.894571, -0.413727, -0.169031,
		0.428821, 0.901132, 0.063821,
		32.816788, 33.835785, 45.274792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880074, 33.018673, 45.780087>,  <32.516613, 33.204990, 45.230118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880074, 33.018673, 45.780087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.912277, 33.415424, 45.740692>,  <32.931599, 33.653473, 45.717056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.912277, 33.415424, 45.740692>,  <32.880074, 33.018673, 45.780087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.912277, 33.415424, 45.740692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218929, 0.078798, 0.972554,
		0.972414, -0.099861, -0.210806,
		0.080510, 0.991876, -0.098486,
		32.936432, 33.712986, 45.711147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541130, 33.295685, 46.122299>,  <32.880074, 33.018673, 45.780087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541130, 33.295685, 46.122299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264523, 33.584621, 46.120308>,  <33.098557, 33.757984, 46.119114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264523, 33.584621, 46.120308>,  <33.541130, 33.295685, 46.122299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264523, 33.584621, 46.120308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106041, 0.108331, 0.988443,
		0.714528, 0.683004, -0.151511,
		-0.691523, 0.722337, -0.004979,
		33.057064, 33.801323, 46.118813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176693, 33.868374, 46.090881>,  <33.541130, 33.295685, 46.122299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176693, 33.868374, 46.090881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468796, 33.673023, 46.281967>,  <34.644058, 33.555813, 46.396618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468796, 33.673023, 46.281967>,  <34.176693, 33.868374, 46.090881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468796, 33.673023, 46.281967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297586, -0.402041, -0.865913,
		0.614954, 0.774500, -0.148259,
		0.730256, -0.488377, 0.477717,
		34.687874, 33.526508, 46.425282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770390, 33.969147, 45.701836>,  <34.176693, 33.868374, 46.090881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770390, 33.969147, 45.701836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906517, 33.662251, 45.919285>,  <34.988194, 33.478111, 46.049755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906517, 33.662251, 45.919285>,  <34.770390, 33.969147, 45.701836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906517, 33.662251, 45.919285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399896, -0.405152, -0.822153,
		0.851040, 0.497182, 0.168938,
		0.340314, -0.767243, 0.543622,
		35.008610, 33.432079, 46.082371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479294, 33.840317, 45.497532>,  <34.770390, 33.969147, 45.701836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479294, 33.840317, 45.497532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321468, 33.501904, 45.640945>,  <35.226772, 33.298855, 45.726994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321468, 33.501904, 45.640945>,  <35.479294, 33.840317, 45.497532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321468, 33.501904, 45.640945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210899, -0.463157, -0.860818,
		0.894340, -0.264030, 0.361171,
		-0.394560, -0.846034, 0.358537,
		35.203102, 33.248093, 45.748505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959877, 33.354424, 45.226562>,  <35.479294, 33.840317, 45.497532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959877, 33.354424, 45.226562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635254, 33.151466, 45.342442>,  <35.440479, 33.029694, 45.411968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635254, 33.151466, 45.342442>,  <35.959877, 33.354424, 45.226562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635254, 33.151466, 45.342442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150276, -0.660411, -0.735713,
		0.564613, -0.553541, 0.612212,
		-0.811560, -0.507394, 0.289693,
		35.391785, 32.999249, 45.429348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090073, 32.640694, 45.054478>,  <35.959877, 33.354424, 45.226562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090073, 32.640694, 45.054478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.693367, 32.631138, 45.104824>,  <35.455345, 32.625404, 45.135033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.693367, 32.631138, 45.104824>,  <36.090073, 32.640694, 45.054478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693367, 32.631138, 45.104824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077527, -0.670257, -0.738069,
		0.101992, -0.741745, 0.662882,
		-0.991760, -0.023886, 0.125866,
		35.395840, 32.623974, 45.142582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
