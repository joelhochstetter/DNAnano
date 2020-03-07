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
	<-0.466091, 2.379320, 5.301088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.637768, 2.106445, 5.064304>,  <-0.740774, 1.942721, 4.922234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.637768, 2.106445, 5.064304>,  <-0.466091, 2.379320, 5.301088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.637768, 2.106445, 5.064304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902202, -0.292810, -0.316691,
		0.042710, -0.669988, 0.741142,
		-0.429193, -0.682186, -0.591959,
		-0.766526, 1.901790, 4.886716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.122929, 2.146768, 4.977162>,  <-0.466091, 2.379320, 5.301088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.122929, 2.146768, 4.977162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.154747, 1.881271, 4.865772>,  <-0.321353, 1.721974, 4.798938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.154747, 1.881271, 4.865772>,  <0.122929, 2.146768, 4.977162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.154747, 1.881271, 4.865772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697699, -0.525369, -0.487036,
		0.176964, -0.532387, 0.827798,
		-0.694191, -0.663741, -0.278474,
		-0.363004, 1.682149, 4.782230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.199890, 1.437679, 5.214016>,  <0.122929, 2.146768, 4.977162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.199890, 1.437679, 5.214016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.009350, 1.407791, 4.874420>,  <-0.134894, 1.389858, 4.670663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.009350, 1.407791, 4.874420>,  <0.199890, 1.437679, 5.214016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.009350, 1.407791, 4.874420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713740, -0.582807, -0.388473,
		-0.465771, -0.809168, 0.358198,
		-0.523100, -0.074720, -0.848990,
		-0.166280, 1.385375, 4.619723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.057736, 0.698698, 4.920886>,  <0.199890, 1.437679, 5.214016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.057736, 0.698698, 4.920886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.076797, 0.968384, 4.626087>,  <0.088235, 1.130195, 4.449208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.076797, 0.968384, 4.626087>,  <0.057736, 0.698698, 4.920886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.076797, 0.968384, 4.626087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765989, -0.498220, -0.406248,
		-0.641085, -0.545172, -0.540183,
		0.047655, 0.674214, -0.736997,
		0.091094, 1.170648, 4.404988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.018203, 0.332031, 4.339797>,  <0.057736, 0.698698, 4.920886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.018203, 0.332031, 4.339797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.220703, 0.667191, 4.258175>,  <0.342203, 0.868286, 4.209202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.220703, 0.667191, 4.258175>,  <0.018203, 0.332031, 4.339797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.220703, 0.667191, 4.258175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715503, -0.540185, -0.443007,
		-0.481422, 0.078271, -0.872987,
		0.506249, 0.837898, -0.204054,
		0.372578, 0.918560, 4.196959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.047449, 0.474509, 3.605004>,  <0.018203, 0.332031, 4.339797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.047449, 0.474509, 3.605004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.361828, 0.609528, 3.812214>,  <0.550455, 0.690539, 3.936540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.361828, 0.609528, 3.812214>,  <0.047449, 0.474509, 3.605004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.361828, 0.609528, 3.812214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617299, -0.475890, -0.626475,
		0.035059, 0.812152, -0.582391,
		0.785947, 0.337546, 0.518025,
		0.597612, 0.710791, 3.967621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.671595, 0.573669, 3.069041>,  <0.047449, 0.474509, 3.605004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.671595, 0.573669, 3.069041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.864197, 0.620010, 3.416542>,  <0.979758, 0.647815, 3.625043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.864197, 0.620010, 3.416542>,  <0.671595, 0.573669, 3.069041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.864197, 0.620010, 3.416542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832877, -0.369115, -0.412396,
		0.272892, 0.922134, -0.274223,
		0.481504, 0.115854, 0.868753,
		1.008648, 0.654767, 3.677168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.391983, 0.894044, 3.039185>,  <0.671595, 0.573669, 3.069041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.391983, 0.894044, 3.039185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.402832, 0.686691, 3.381073>,  <1.409342, 0.562280, 3.586205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.402832, 0.686691, 3.381073>,  <1.391983, 0.894044, 3.039185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.402832, 0.686691, 3.381073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897602, -0.363699, -0.249065,
		0.439972, 0.773953, 0.455436,
		0.027123, -0.518382, 0.854719,
		1.410969, 0.531177, 3.637489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.182076, -0.141531, 3.702466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.118415, -0.127838, 4.097130>,  <3.080219, -0.119623, 4.333929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.118415, -0.127838, 4.097130>,  <3.182076, -0.141531, 3.702466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.118415, -0.127838, 4.097130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986843, 0.023313, -0.159990,
		-0.028486, -0.999141, 0.030116,
		-0.159150, 0.034278, 0.986659,
		3.070669, -0.117569, 4.393128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.706032, -0.790314, 3.931593>,  <3.182076, -0.141531, 3.702466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.706032, -0.790314, 3.931593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.685822, -0.455582, 4.149643>,  <2.673695, -0.254742, 4.280473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.685822, -0.455582, 4.149643>,  <2.706032, -0.790314, 3.931593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.685822, -0.455582, 4.149643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971064, 0.086402, -0.222644,
		-0.233415, -0.540600, 0.808251,
		-0.050526, 0.836832, 0.545124,
		2.670664, -0.204532, 4.313180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.077903, -0.745766, 4.174311>,  <2.706032, -0.790314, 3.931593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.077903, -0.745766, 4.174311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.182990, -0.368149, 4.254074>,  <2.246042, -0.141579, 4.301932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.182990, -0.368149, 4.254074>,  <2.077903, -0.745766, 4.174311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.182990, -0.368149, 4.254074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888971, 0.317172, -0.330352,
		-0.375113, -0.090479, 0.922553,
		0.262718, 0.944042, 0.199408,
		2.261806, -0.084936, 4.313897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.526176, -0.434373, 4.639138>,  <2.077903, -0.745766, 4.174311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.526176, -0.434373, 4.639138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.633469, -0.146988, 4.382431>,  <1.697844, 0.025443, 4.228407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.633469, -0.146988, 4.382431>,  <1.526176, -0.434373, 4.639138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.633469, -0.146988, 4.382431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886658, 0.444601, 0.127149,
		0.376682, 0.534923, 0.756286,
		0.268231, 0.718462, -0.641767,
		1.713938, 0.068551, 4.189901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.129001, 0.091774, 4.947568>,  <1.526176, -0.434373, 4.639138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.129001, 0.091774, 4.947568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.236761, 0.194702, 4.576363>,  <1.301417, 0.256459, 4.353639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.236761, 0.194702, 4.576363>,  <1.129001, 0.091774, 4.947568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.236761, 0.194702, 4.576363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702147, 0.712004, -0.006406,
		0.659101, 0.653327, 0.372491,
		0.269400, 0.257321, -0.928014,
		1.317581, 0.271899, 4.297958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.356972, 0.780535, 4.977746>,  <1.129001, 0.091774, 4.947568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.356972, 0.780535, 4.977746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.269031, 0.716934, 4.592751>,  <1.216266, 0.678774, 4.361753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.269031, 0.716934, 4.592751>,  <1.356972, 0.780535, 4.977746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.269031, 0.716934, 4.592751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559730, 0.828625, -0.009033,
		0.798978, 0.536748, -0.271174,
		-0.219854, -0.159001, -0.962488,
		1.203074, 0.669234, 4.304004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.464054, 1.463628, 4.610701>,  <1.356972, 0.780535, 4.977746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.464054, 1.463628, 4.610701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.224515, 1.238358, 4.382942>,  <1.080791, 1.103195, 4.246287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.224515, 1.238358, 4.382942>,  <1.464054, 1.463628, 4.610701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.224515, 1.238358, 4.382942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646529, 0.759552, -0.071284,
		0.472632, 0.325444, -0.818966,
		-0.598848, -0.563177, -0.569397,
		1.044861, 1.069405, 4.212123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.209388, 1.922577, 4.077083>,  <1.464054, 1.463628, 4.610701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.209388, 1.922577, 4.077083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.948427, 1.621277, 4.110519>,  <0.791851, 1.440497, 4.130581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.948427, 1.621277, 4.110519>,  <1.209388, 1.922577, 4.077083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.948427, 1.621277, 4.110519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751044, 0.657352, 0.061817,
		-0.101512, -0.022451, -0.994581,
		-0.652402, -0.753250, 0.083590,
		0.752707, 1.395302, 4.135597>
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
