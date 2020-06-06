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
	<24.764124, 35.534088, 35.111607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.478674, 35.255466, 35.081814>,  <24.307404, 35.088295, 35.063938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.478674, 35.255466, 35.081814>,  <24.764124, 35.534088, 35.111607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.478674, 35.255466, 35.081814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428185, -0.349567, -0.833343,
		0.554432, -0.626589, 0.547715,
		-0.713626, -0.696556, -0.074485,
		24.264585, 35.046501, 35.059467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.077518, 34.826805, 35.009811>,  <24.764124, 35.534088, 35.111607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.077518, 34.826805, 35.009811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.722071, 34.879761, 34.834164>,  <24.508802, 34.911533, 34.728775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.722071, 34.879761, 34.834164>,  <25.077518, 34.826805, 35.009811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.722071, 34.879761, 34.834164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356400, -0.403285, -0.842817,
		-0.288672, -0.905447, 0.311183,
		-0.888621, 0.132393, -0.439118,
		24.455484, 34.919479, 34.702427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.797176, 34.226879, 34.873138>,  <25.077518, 34.826805, 35.009811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.797176, 34.226879, 34.873138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.720161, 34.535992, 34.631233>,  <24.673952, 34.721458, 34.486092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.720161, 34.535992, 34.631233>,  <24.797176, 34.226879, 34.873138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.720161, 34.535992, 34.631233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469192, -0.468780, -0.748401,
		-0.861852, -0.427841, -0.272328,
		-0.192535, 0.772785, -0.604759,
		24.662401, 34.767826, 34.449806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.348875, 34.069691, 34.226070>,  <24.797176, 34.226879, 34.873138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.348875, 34.069691, 34.226070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.626057, 34.356243, 34.193546>,  <24.792366, 34.528175, 34.174034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.626057, 34.356243, 34.193546>,  <24.348875, 34.069691, 34.226070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.626057, 34.356243, 34.193546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451309, -0.518943, -0.725960,
		-0.562260, 0.466361, -0.682913,
		0.692953, 0.716384, -0.081308,
		24.833942, 34.571159, 34.169155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.349867, 34.255222, 33.469414>,  <24.348875, 34.069691, 34.226070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.349867, 34.255222, 33.469414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.674841, 34.295021, 33.699215>,  <24.869825, 34.318901, 33.837097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.674841, 34.295021, 33.699215>,  <24.349867, 34.255222, 33.469414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.674841, 34.295021, 33.699215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538408, -0.506166, -0.673731,
		0.223761, 0.856678, -0.464794,
		0.812433, 0.099494, 0.574503,
		24.918571, 34.324871, 33.871567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.798714, 34.388981, 32.986649>,  <24.349867, 34.255222, 33.469414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.798714, 34.388981, 32.986649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.028437, 34.290676, 33.299000>,  <25.166271, 34.231693, 33.486412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.028437, 34.290676, 33.299000>,  <24.798714, 34.388981, 32.986649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.028437, 34.290676, 33.299000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682103, -0.383783, -0.622451,
		0.452663, 0.890118, -0.052774,
		0.574309, -0.245764, 0.780877,
		25.200729, 34.216946, 33.533264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.486460, 34.587349, 32.806847>,  <24.798714, 34.388981, 32.986649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.486460, 34.587349, 32.806847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.526556, 34.299644, 33.081833>,  <25.550613, 34.127022, 33.246826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.526556, 34.299644, 33.081833>,  <25.486460, 34.587349, 32.806847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.526556, 34.299644, 33.081833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781298, -0.370915, -0.501991,
		0.616056, 0.587438, 0.524778,
		0.100241, -0.719263, 0.687468,
		25.556627, 34.083866, 33.288074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.254425, 34.425667, 32.800510>,  <25.486460, 34.587349, 32.806847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.254425, 34.425667, 32.800510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.098257, 34.099697, 32.971844>,  <26.004557, 33.904114, 33.074642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.098257, 34.099697, 32.971844>,  <26.254425, 34.425667, 32.800510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.098257, 34.099697, 32.971844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669905, -0.570608, -0.475009,
		0.631507, 0.101488, 0.768699,
		-0.390419, -0.814927, 0.428331,
		25.981131, 33.855221, 33.100342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.793314, 33.979904, 32.858715>,  <26.254425, 34.425667, 32.800510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.793314, 33.979904, 32.858715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.488787, 33.726986, 32.916126>,  <26.306070, 33.575233, 32.950573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.488787, 33.726986, 32.916126>,  <26.793314, 33.979904, 32.858715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.488787, 33.726986, 32.916126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546761, -0.745049, -0.382041,
		0.348494, -0.212381, 0.912933,
		-0.761317, -0.632295, 0.143523,
		26.260391, 33.537296, 32.959183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.033739, 33.414742, 33.255455>,  <26.793314, 33.979904, 32.858715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.033739, 33.414742, 33.255455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.711636, 33.300903, 33.047390>,  <26.518373, 33.232601, 32.922550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.711636, 33.300903, 33.047390>,  <27.033739, 33.414742, 33.255455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.711636, 33.300903, 33.047390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542389, -0.707971, -0.452318,
		-0.239532, -0.646362, 0.724459,
		-0.805257, -0.284594, -0.520162,
		26.470058, 33.215527, 32.891342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.074200, 32.729794, 33.304684>,  <27.033739, 33.414742, 33.255455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.074200, 32.729794, 33.304684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.821617, 32.788673, 33.000160>,  <26.670067, 32.824001, 32.817444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.821617, 32.788673, 33.000160>,  <27.074200, 32.729794, 33.304684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.821617, 32.788673, 33.000160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416990, -0.763304, -0.493444,
		-0.653746, -0.629048, 0.420613,
		-0.631455, 0.147196, -0.761313,
		26.632181, 32.832832, 32.771767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.870045, 32.098171, 33.217758>,  <27.074200, 32.729794, 33.304684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.870045, 32.098171, 33.217758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.820667, 32.316334, 32.886143>,  <26.791040, 32.447231, 32.687176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.820667, 32.316334, 32.886143>,  <26.870045, 32.098171, 33.217758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.820667, 32.316334, 32.886143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493593, -0.691004, -0.528091,
		-0.860888, -0.474395, -0.183906,
		-0.123444, 0.545402, -0.829035,
		26.783634, 32.479954, 32.637432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.774540, 31.635910, 32.601612>,  <26.870045, 32.098171, 33.217758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.774540, 31.635910, 32.601612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.871962, 31.975698, 32.414387>,  <26.930414, 32.179569, 32.302052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.871962, 31.975698, 32.414387>,  <26.774540, 31.635910, 32.601612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.871962, 31.975698, 32.414387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389827, -0.527636, -0.754741,
		-0.888097, 0.001355, -0.459653,
		0.243552, 0.849469, -0.468064,
		26.945026, 32.230537, 32.273968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.696028, 31.494213, 31.876026>,  <26.774540, 31.635910, 32.601612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.696028, 31.494213, 31.876026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.935736, 31.814362, 31.882746>,  <27.079561, 32.006451, 31.886778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.935736, 31.814362, 31.882746>,  <26.696028, 31.494213, 31.876026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.935736, 31.814362, 31.882746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494142, -0.353314, -0.794350,
		-0.629838, 0.484333, -0.607227,
		0.599272, 0.800369, 0.016799,
		27.115517, 32.054474, 31.887785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.780867, 31.660587, 31.140961>,  <26.696028, 31.494213, 31.876026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.780867, 31.660587, 31.140961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.070580, 31.839346, 31.350990>,  <27.244408, 31.946600, 31.477007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.070580, 31.839346, 31.350990>,  <26.780867, 31.660587, 31.140961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.070580, 31.839346, 31.350990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664234, -0.247960, -0.705201,
		-0.184954, 0.859535, -0.476436,
		0.724282, 0.446894, 0.525072,
		27.287865, 31.973413, 31.508512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.074949, 32.146492, 30.686333>,  <26.780867, 31.660587, 31.140961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.074949, 32.146492, 30.686333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.361780, 32.062592, 30.952206>,  <27.533878, 32.012253, 31.111729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.361780, 32.062592, 30.952206>,  <27.074949, 32.146492, 30.686333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.361780, 32.062592, 30.952206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672689, -0.041358, -0.738768,
		0.182445, 0.976880, 0.111438,
		0.717079, -0.209748, 0.664683,
		27.576904, 31.999668, 31.151611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.623571, 32.698669, 30.596573>,  <27.074949, 32.146492, 30.686333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.623571, 32.698669, 30.596573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.770926, 32.358601, 30.747036>,  <27.859339, 32.154560, 30.837313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.770926, 32.358601, 30.747036>,  <27.623571, 32.698669, 30.596573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.770926, 32.358601, 30.747036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736224, 0.019720, -0.676450,
		0.567683, 0.526131, 0.633184,
		0.368388, -0.850175, 0.376156,
		27.881441, 32.103550, 30.859882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.304317, 32.665932, 30.488289>,  <27.623571, 32.698669, 30.596573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.304317, 32.665932, 30.488289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.291222, 32.280212, 30.593403>,  <28.283363, 32.048782, 30.656471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.291222, 32.280212, 30.593403>,  <28.304317, 32.665932, 30.488289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.291222, 32.280212, 30.593403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656751, -0.218950, -0.721623,
		0.753396, 0.148956, 0.640473,
		-0.032741, -0.964299, 0.262783,
		28.281399, 31.990923, 30.672237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.969107, 32.476944, 30.671419>,  <28.304317, 32.665932, 30.488289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.969107, 32.476944, 30.671419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.829750, 32.111923, 30.585749>,  <28.746136, 31.892910, 30.534346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.829750, 32.111923, 30.585749>,  <28.969107, 32.476944, 30.671419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.829750, 32.111923, 30.585749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777624, -0.153796, -0.609630,
		0.523379, -0.378938, 0.763204,
		-0.348390, -0.912553, -0.214177,
		28.725233, 31.838158, 30.521496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.459492, 31.949766, 30.802078>,  <28.969107, 32.476944, 30.671419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.459492, 31.949766, 30.802078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.206573, 31.790323, 30.536352>,  <29.054823, 31.694656, 30.376917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.206573, 31.790323, 30.536352>,  <29.459492, 31.949766, 30.802078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.206573, 31.790323, 30.536352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772969, -0.266826, -0.575607,
		0.052186, -0.877448, 0.476825,
		-0.632294, -0.398609, -0.664315,
		29.016886, 31.670740, 30.337057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.772741, 31.303356, 30.673674>,  <29.459492, 31.949766, 30.802078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.772741, 31.303356, 30.673674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501427, 31.345856, 30.382845>,  <29.338638, 31.371355, 30.208347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501427, 31.345856, 30.382845>,  <29.772741, 31.303356, 30.673674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.501427, 31.345856, 30.382845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705734, -0.181333, -0.684878,
		-0.204610, -0.977665, 0.048013,
		-0.678288, 0.106249, -0.727074,
		29.297941, 31.377731, 30.164722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.031380, 30.871124, 30.140724>,  <29.772741, 31.303356, 30.673674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.031380, 30.871124, 30.140724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.777895, 31.097155, 29.929403>,  <29.625805, 31.232773, 29.802610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.777895, 31.097155, 29.929403>,  <30.031380, 30.871124, 30.140724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.777895, 31.097155, 29.929403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565930, -0.126938, -0.814623,
		-0.527385, -0.815216, -0.239351,
		-0.633710, 0.565075, -0.528301,
		29.587782, 31.266678, 29.770914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.805578, 30.512623, 29.547504>,  <30.031380, 30.871124, 30.140724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.805578, 30.512623, 29.547504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.763350, 30.903553, 29.474083>,  <29.738012, 31.138111, 29.430031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.763350, 30.903553, 29.474083>,  <29.805578, 30.512623, 29.547504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.763350, 30.903553, 29.474083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506821, -0.105930, -0.855518,
		-0.855563, -0.183346, -0.484145,
		-0.105571, 0.977324, -0.183553,
		29.731678, 31.196751, 29.419018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.522522, 30.573795, 28.770901>,  <29.805578, 30.512623, 29.547504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.522522, 30.573795, 28.770901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.673712, 30.927984, 28.879030>,  <29.764425, 31.140497, 28.943909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.673712, 30.927984, 28.879030>,  <29.522522, 30.573795, 28.770901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.673712, 30.927984, 28.879030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426913, 0.092393, -0.899560,
		-0.821510, 0.455418, -0.343097,
		0.377976, 0.885470, 0.270326,
		29.787106, 31.193626, 28.960129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.521477, 31.086405, 28.085133>,  <29.522522, 30.573795, 28.770901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.521477, 31.086405, 28.085133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.787792, 31.268042, 28.321953>,  <29.947582, 31.377024, 28.464045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.787792, 31.268042, 28.321953>,  <29.521477, 31.086405, 28.085133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.787792, 31.268042, 28.321953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642410, 0.054740, -0.764404,
		-0.379519, 0.889272, -0.255268,
		0.665789, 0.454092, 0.592052,
		29.987530, 31.404268, 28.499569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.787617, 31.816166, 27.795841>,  <29.521477, 31.086405, 28.085133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.787617, 31.816166, 27.795841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.027939, 31.582590, 28.014217>,  <30.172132, 31.442444, 28.145243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.027939, 31.582590, 28.014217>,  <29.787617, 31.816166, 27.795841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.027939, 31.582590, 28.014217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738015, 0.142733, -0.659515,
		0.307193, 0.799151, 0.516711,
		0.600804, -0.583939, 0.545939,
		30.208179, 31.407408, 28.177999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.354958, 32.064426, 27.873869>,  <29.787617, 31.816166, 27.795841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.354958, 32.064426, 27.873869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.521954, 31.717096, 27.980986>,  <30.622150, 31.508698, 28.045256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.521954, 31.717096, 27.980986>,  <30.354958, 32.064426, 27.873869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.521954, 31.717096, 27.980986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802496, 0.214080, -0.556930,
		0.426268, 0.447414, 0.786204,
		0.417488, -0.868327, 0.267792,
		30.647200, 31.456598, 28.061323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.951101, 32.257366, 28.205887>,  <30.354958, 32.064426, 27.873869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.951101, 32.257366, 28.205887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.955549, 31.893463, 28.039888>,  <30.958218, 31.675121, 27.940290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.955549, 31.893463, 28.039888>,  <30.951101, 32.257366, 28.205887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.955549, 31.893463, 28.039888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874830, 0.209861, -0.436613,
		0.484303, -0.358194, 0.798216,
		0.011122, -0.909756, -0.414995,
		30.958885, 31.620537, 27.915390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.705904, 32.895199, 27.905628>,  <30.951101, 32.257366, 28.205887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.705904, 32.895199, 27.905628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879011, 33.160038, 27.660896>,  <30.982876, 33.318943, 27.514057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879011, 33.160038, 27.660896>,  <30.705904, 32.895199, 27.905628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879011, 33.160038, 27.660896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410922, 0.459195, 0.787580,
		0.802405, -0.592256, -0.073344,
		0.432771, 0.662097, -0.611831,
		31.008842, 33.358665, 27.477346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356585, 32.764965, 27.843557>,  <30.705904, 32.895199, 27.905628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356585, 32.764965, 27.843557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.267746, 33.154179, 27.818636>,  <31.214443, 33.387707, 27.803684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.267746, 33.154179, 27.818636>,  <31.356585, 32.764965, 27.843557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.267746, 33.154179, 27.818636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468103, 0.162462, 0.868611,
		0.855308, 0.163752, -0.491562,
		-0.222097, 0.973032, -0.062302,
		31.201117, 33.446087, 27.799946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.676025, 32.960293, 28.389250>,  <31.356585, 32.764965, 27.843557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.676025, 32.960293, 28.389250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493326, 33.303364, 28.294785>,  <31.383707, 33.509205, 28.238106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493326, 33.303364, 28.294785>,  <31.676025, 32.960293, 28.389250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.493326, 33.303364, 28.294785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205671, 0.360092, 0.909963,
		0.865494, 0.367053, -0.340871,
		-0.456750, 0.857675, -0.236165,
		31.356302, 33.560665, 28.223934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022713, 33.610123, 28.634535>,  <31.676025, 32.960293, 28.389250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022713, 33.610123, 28.634535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634674, 33.707211, 28.633442>,  <31.401852, 33.765465, 28.632786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634674, 33.707211, 28.633442>,  <32.022713, 33.610123, 28.634535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634674, 33.707211, 28.633442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079085, 0.326683, 0.941820,
		0.229494, 0.913435, -0.336108,
		-0.970092, 0.242723, -0.002733,
		31.343647, 33.780025, 28.632622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848215, 34.449005, 28.577967>,  <32.022713, 33.610123, 28.634535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848215, 34.449005, 28.577967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572485, 34.217743, 28.752583>,  <31.407047, 34.078987, 28.857351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572485, 34.217743, 28.752583>,  <31.848215, 34.449005, 28.577967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572485, 34.217743, 28.752583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200571, 0.426717, 0.881864,
		-0.696132, 0.695450, -0.178187,
		-0.689327, -0.578154, 0.436538,
		31.365686, 34.044296, 28.883545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356953, 34.915974, 28.991972>,  <31.848215, 34.449005, 28.577967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356953, 34.915974, 28.991972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444771, 34.564198, 29.160917>,  <31.497461, 34.353134, 29.262283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444771, 34.564198, 29.160917>,  <31.356953, 34.915974, 28.991972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444771, 34.564198, 29.160917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171019, 0.460913, 0.870811,
		-0.960496, -0.118950, 0.251592,
		0.219545, -0.879437, 0.422362,
		31.510633, 34.300365, 29.287626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062544, 35.461273, 28.449526>,  <31.356953, 34.915974, 28.991972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.062544, 35.461273, 28.449526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.927402, 35.782852, 28.253761>,  <30.846317, 35.975800, 28.136303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.927402, 35.782852, 28.253761>,  <31.062544, 35.461273, 28.449526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.927402, 35.782852, 28.253761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230899, 0.433300, 0.871170,
		0.912437, 0.407332, 0.039239,
		-0.337853, 0.803948, -0.489412,
		30.826046, 36.024036, 28.106937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.351542, 36.075733, 28.768137>,  <31.062544, 35.461273, 28.449526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.351542, 36.075733, 28.768137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.001463, 36.153473, 28.590931>,  <30.791416, 36.200115, 28.484608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.001463, 36.153473, 28.590931>,  <31.351542, 36.075733, 28.768137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.001463, 36.153473, 28.590931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360286, 0.349279, 0.864985,
		0.322842, 0.916643, -0.235667,
		-0.875196, 0.194345, -0.443016,
		30.738905, 36.211777, 28.458027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.091612, 36.690563, 29.070986>,  <31.351542, 36.075733, 28.768137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.091612, 36.690563, 29.070986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.774572, 36.504990, 28.912722>,  <30.584349, 36.393646, 28.817762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.774572, 36.504990, 28.912722>,  <31.091612, 36.690563, 29.070986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.774572, 36.504990, 28.912722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563938, 0.311016, 0.765012,
		-0.231861, 0.829476, -0.508143,
		-0.792600, -0.463938, -0.395660,
		30.536793, 36.365807, 28.794024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.575420, 36.992809, 29.402290>,  <31.091612, 36.690563, 29.070986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.575420, 36.992809, 29.402290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.388424, 36.662083, 29.277184>,  <30.276226, 36.463646, 29.202120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.388424, 36.662083, 29.277184>,  <30.575420, 36.992809, 29.402290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.388424, 36.662083, 29.277184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554393, -0.001362, 0.832254,
		-0.688549, 0.562468, -0.457745,
		-0.467493, -0.826818, -0.312766,
		30.248177, 36.414036, 29.183353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.865213, 37.106647, 29.493546>,  <30.575420, 36.992809, 29.402290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.865213, 37.106647, 29.493546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.902205, 36.708858, 29.473654>,  <29.924400, 36.470184, 29.461720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.902205, 36.708858, 29.473654>,  <29.865213, 37.106647, 29.493546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.902205, 36.708858, 29.473654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435973, -0.085343, 0.895904,
		-0.895196, -0.061172, -0.441455,
		0.092479, -0.994472, -0.049729,
		29.929949, 36.410519, 29.458735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.077011, 36.829601, 29.541517>,  <29.865213, 37.106647, 29.493546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.077011, 36.829601, 29.541517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.317644, 36.527248, 29.644852>,  <29.462023, 36.345837, 29.706852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.317644, 36.527248, 29.644852>,  <29.077011, 36.829601, 29.541517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.317644, 36.527248, 29.644852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567179, -0.176454, 0.804470,
		-0.562503, -0.630477, -0.534873,
		0.601580, -0.755885, 0.258338,
		29.498117, 36.300484, 29.722353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.630753, 36.298031, 29.667377>,  <29.077011, 36.829601, 29.541517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.630753, 36.298031, 29.667377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.976917, 36.199482, 29.841900>,  <29.184616, 36.140350, 29.946613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.976917, 36.199482, 29.841900>,  <28.630753, 36.298031, 29.667377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.976917, 36.199482, 29.841900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496545, -0.305012, 0.812657,
		-0.067137, -0.919929, -0.386295,
		0.865411, -0.246373, 0.436309,
		29.236540, 36.125568, 29.972792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.470940, 35.737495, 30.186363>,  <28.630753, 36.298031, 29.667377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.470940, 35.737495, 30.186363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.830231, 35.836040, 30.331964>,  <29.045805, 35.895168, 30.419325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.830231, 35.836040, 30.331964>,  <28.470940, 35.737495, 30.186363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.830231, 35.836040, 30.331964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316801, -0.211185, 0.924683,
		0.304678, -0.945890, -0.111644,
		0.898225, 0.246361, 0.364002,
		29.099699, 35.909950, 30.441166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.591301, 35.218647, 30.584139>,  <28.470940, 35.737495, 30.186363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.591301, 35.218647, 30.584139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.860466, 35.491734, 30.698040>,  <29.021965, 35.655586, 30.766380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.860466, 35.491734, 30.698040>,  <28.591301, 35.218647, 30.584139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.860466, 35.491734, 30.698040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159040, -0.242415, 0.957048,
		0.722425, -0.689294, -0.054544,
		0.672910, 0.682721, 0.284752,
		29.062340, 35.696548, 30.783466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.146372, 34.890850, 31.081076>,  <28.591301, 35.218647, 30.584139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.146372, 34.890850, 31.081076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.128038, 35.280933, 31.167679>,  <29.117039, 35.514984, 31.219641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.128038, 35.280933, 31.167679>,  <29.146372, 34.890850, 31.081076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.128038, 35.280933, 31.167679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121324, -0.220565, 0.967797,
		0.991554, 0.018092, 0.128426,
		-0.045836, 0.975204, 0.216507,
		29.114288, 35.573494, 31.232632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.597288, 34.921837, 31.634722>,  <29.146372, 34.890850, 31.081076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.597288, 34.921837, 31.634722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365128, 35.246613, 31.659664>,  <29.225832, 35.441479, 31.674629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365128, 35.246613, 31.659664>,  <29.597288, 34.921837, 31.634722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.365128, 35.246613, 31.659664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165096, -0.192305, 0.967348,
		0.797419, 0.551155, 0.245662,
		-0.580401, 0.811940, 0.062355,
		29.191008, 35.490196, 31.678371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.829548, 35.285858, 32.298382>,  <29.597288, 34.921837, 31.634722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.829548, 35.285858, 32.298382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.463436, 35.413918, 32.200596>,  <29.243769, 35.490753, 32.141922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.463436, 35.413918, 32.200596>,  <29.829548, 35.285858, 32.298382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.463436, 35.413918, 32.200596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300033, -0.136877, 0.944058,
		0.268779, 0.937426, 0.221337,
		-0.915281, 0.320151, -0.244469,
		29.188852, 35.509964, 32.127254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.617775, 35.748745, 32.753696>,  <29.829548, 35.285858, 32.298382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.617775, 35.748745, 32.753696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.261654, 35.636341, 32.610367>,  <29.047981, 35.568901, 32.524368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.261654, 35.636341, 32.610367>,  <29.617775, 35.748745, 32.753696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.261654, 35.636341, 32.610367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346499, -0.092516, 0.933477,
		-0.295464, 0.955236, -0.015001,
		-0.890303, -0.281006, -0.358324,
		28.994562, 35.552040, 32.502869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.973021, 36.174999, 33.151608>,  <29.617775, 35.748745, 32.753696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.973021, 36.174999, 33.151608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.819845, 35.857227, 32.963036>,  <28.727940, 35.666565, 32.849892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.819845, 35.857227, 32.963036>,  <28.973021, 36.174999, 33.151608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.819845, 35.857227, 32.963036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504065, -0.247963, 0.827305,
		-0.774131, 0.554435, -0.305489,
		-0.382937, -0.794428, -0.471427,
		28.704964, 35.618900, 32.821606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.249483, 36.222843, 33.270920>,  <28.973021, 36.174999, 33.151608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.249483, 36.222843, 33.270920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.349627, 35.841053, 33.206062>,  <28.409712, 35.611977, 33.167149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.349627, 35.841053, 33.206062>,  <28.249483, 36.222843, 33.270920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.349627, 35.841053, 33.206062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661788, -0.290957, 0.690928,
		-0.706653, -0.065675, -0.704506,
		0.250358, -0.954479, -0.162142,
		28.424734, 35.554710, 33.157421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.585615, 36.033783, 33.130939>,  <28.249483, 36.222843, 33.270920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.585615, 36.033783, 33.130939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.844673, 35.743439, 33.223621>,  <28.000109, 35.569233, 33.279232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.844673, 35.743439, 33.223621>,  <27.585615, 36.033783, 33.130939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.844673, 35.743439, 33.223621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606120, -0.306530, 0.733933,
		-0.461707, -0.615768, -0.638479,
		0.647646, -0.725858, 0.231702,
		28.038967, 35.525681, 33.293133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.186556, 35.467121, 33.332581>,  <27.585615, 36.033783, 33.130939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.186556, 35.467121, 33.332581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.543898, 35.347813, 33.467014>,  <27.758303, 35.276226, 33.547672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.543898, 35.347813, 33.467014>,  <27.186556, 35.467121, 33.332581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.543898, 35.347813, 33.467014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446614, -0.506962, 0.737242,
		-0.049518, -0.808717, -0.586110,
		0.893356, -0.298272, 0.336080,
		27.811905, 35.258331, 33.567837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.088459, 34.766323, 33.411625>,  <27.186556, 35.467121, 33.332581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.088459, 34.766323, 33.411625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.376436, 34.896645, 33.656750>,  <27.549223, 34.974838, 33.803825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.376436, 34.896645, 33.656750>,  <27.088459, 34.766323, 33.411625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.376436, 34.896645, 33.656750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430554, -0.482863, 0.762539,
		0.544341, -0.812832, -0.207358,
		0.719941, 0.325803, 0.612810,
		27.592419, 34.994385, 33.840591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.229992, 34.207924, 33.812054>,  <27.088459, 34.766323, 33.411625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.229992, 34.207924, 33.812054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.377419, 34.511066, 34.027390>,  <27.465874, 34.692951, 34.156590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.377419, 34.511066, 34.027390>,  <27.229992, 34.207924, 33.812054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.377419, 34.511066, 34.027390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410644, -0.386808, 0.825682,
		0.833985, -0.525383, 0.168647,
		0.368565, 0.757860, 0.538337,
		27.487988, 34.738426, 34.188892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.463835, 33.896751, 34.453018>,  <27.229992, 34.207924, 33.812054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.463835, 33.896751, 34.453018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.420046, 34.282612, 34.548904>,  <27.393772, 34.514130, 34.606434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.420046, 34.282612, 34.548904>,  <27.463835, 33.896751, 34.453018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.420046, 34.282612, 34.548904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418245, -0.263477, 0.869282,
		0.901714, -0.005098, 0.432304,
		-0.109470, 0.964652, 0.239713,
		27.387205, 34.572006, 34.620819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.881489, 34.044086, 35.166256>,  <27.463835, 33.896751, 34.453018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.881489, 34.044086, 35.166256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.625256, 34.344543, 35.102455>,  <27.471516, 34.524818, 35.064175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.625256, 34.344543, 35.102455>,  <27.881489, 34.044086, 35.166256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.625256, 34.344543, 35.102455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396089, -0.145271, 0.906647,
		0.657848, 0.643960, 0.390577,
		-0.640585, 0.751140, -0.159499,
		27.433081, 34.569885, 35.054604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.998140, 34.456696, 35.707539>,  <27.881489, 34.044086, 35.166256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.998140, 34.456696, 35.707539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.639330, 34.445648, 35.531094>,  <27.424044, 34.439018, 35.425228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.639330, 34.445648, 35.531094>,  <27.998140, 34.456696, 35.707539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.639330, 34.445648, 35.531094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392729, -0.408018, 0.824187,
		-0.202748, 0.912556, 0.355155,
		-0.897027, -0.027622, -0.441112,
		27.370222, 34.437363, 35.398762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.600048, 34.913746, 36.148212>,  <27.998140, 34.456696, 35.707539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.600048, 34.913746, 36.148212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.397108, 34.629387, 35.953392>,  <27.275343, 34.458771, 35.836502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.397108, 34.629387, 35.953392>,  <27.600048, 34.913746, 36.148212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.397108, 34.629387, 35.953392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002091, -0.564174, 0.825653,
		-0.861736, 0.419915, 0.284748,
		-0.507352, -0.710900, -0.487048,
		27.244902, 34.416119, 35.807278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.953119, 35.515842, 36.116173>,  <27.600048, 34.913746, 36.148212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.953119, 35.515842, 36.116173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.993341, 35.222164, 36.384754>,  <28.017475, 35.045956, 36.545902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.993341, 35.222164, 36.384754>,  <27.953119, 35.515842, 36.116173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.993341, 35.222164, 36.384754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482221, -0.554340, -0.678358,
		0.870260, 0.391999, 0.298304,
		0.100554, -0.734196, 0.671450,
		28.023508, 35.001904, 36.586189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.747072, 35.301125, 36.425564>,  <27.953119, 35.515842, 36.116173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.747072, 35.301125, 36.425564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.477266, 35.007763, 36.391731>,  <28.315382, 34.831745, 36.371433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.477266, 35.007763, 36.391731>,  <28.747072, 35.301125, 36.425564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.477266, 35.007763, 36.391731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664741, -0.553504, -0.501750,
		0.321168, -0.394661, 0.860868,
		-0.674515, -0.733400, -0.084580,
		28.274912, 34.787743, 36.366356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.395105, 35.349037, 36.197754>,  <28.747072, 35.301125, 36.425564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.395105, 35.349037, 36.197754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.622305, 35.318939, 35.869923>,  <29.758625, 35.300880, 35.673222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.622305, 35.318939, 35.869923>,  <29.395105, 35.349037, 36.197754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.622305, 35.318939, 35.869923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504778, 0.818378, 0.274693,
		0.650059, -0.569732, 0.502821,
		0.567999, -0.075246, -0.819582,
		29.792704, 35.296364, 35.624046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.126019, 35.526878, 36.340378>,  <29.395105, 35.349037, 36.197754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.126019, 35.526878, 36.340378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.076815, 35.606274, 35.951435>,  <30.047293, 35.653912, 35.718071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.076815, 35.606274, 35.951435>,  <30.126019, 35.526878, 36.340378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.076815, 35.606274, 35.951435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607163, 0.790074, 0.084471,
		0.784997, -0.579986, -0.217705,
		-0.123011, 0.198492, -0.972353,
		30.039911, 35.665821, 35.659729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812294, 35.826660, 36.529724>,  <30.126019, 35.526878, 36.340378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.812294, 35.826660, 36.529724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.823732, 35.426826, 36.531590>,  <30.830595, 35.186928, 36.532707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.823732, 35.426826, 36.531590>,  <30.812294, 35.826660, 36.529724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.823732, 35.426826, 36.531590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185791, -0.009900, -0.982540,
		0.982173, 0.027231, -0.185996,
		0.028597, -0.999580, 0.004664,
		30.832312, 35.126953, 36.532990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.458324, 35.639893, 36.133976>,  <30.812294, 35.826660, 36.529724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.458324, 35.639893, 36.133976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.237028, 35.306770, 36.126404>,  <31.104250, 35.106895, 36.121861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.237028, 35.306770, 36.126404>,  <31.458324, 35.639893, 36.133976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.237028, 35.306770, 36.126404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119355, -0.056753, -0.991228,
		0.824426, -0.550649, 0.130797,
		-0.553242, -0.832806, -0.018934,
		31.071056, 35.056931, 36.120724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.776621, 35.059410, 35.729206>,  <31.458324, 35.639893, 36.133976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.776621, 35.059410, 35.729206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377398, 35.042408, 35.710999>,  <31.137863, 35.032207, 35.700073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377398, 35.042408, 35.710999>,  <31.776621, 35.059410, 35.729206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377398, 35.042408, 35.710999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044757, 0.018755, -0.998822,
		0.043314, -0.998920, -0.016816,
		-0.998058, -0.042510, -0.045521,
		31.077980, 35.029659, 35.697342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403633, 35.443844, 35.463226>,  <31.776621, 35.059410, 35.729206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403633, 35.443844, 35.463226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.726532, 35.284164, 35.637119>,  <32.920273, 35.188358, 35.741455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.726532, 35.284164, 35.637119>,  <32.403633, 35.443844, 35.463226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726532, 35.284164, 35.637119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057939, 0.786607, 0.614730,
		-0.587361, -0.471052, 0.658116,
		0.807249, -0.399199, 0.434730,
		32.968708, 35.164406, 35.767540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244392, 35.490273, 36.142311>,  <32.403633, 35.443844, 35.463226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244392, 35.490273, 36.142311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638840, 35.424007, 36.137863>,  <32.875507, 35.384247, 36.135193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638840, 35.424007, 36.137863>,  <32.244392, 35.490273, 36.142311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638840, 35.424007, 36.137863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142584, 0.810612, 0.567959,
		-0.085073, -0.561661, 0.822982,
		0.986120, -0.165662, -0.011123,
		32.934677, 35.374310, 36.134525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457771, 35.418148, 36.799557>,  <32.244392, 35.490273, 36.142311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457771, 35.418148, 36.799557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755905, 35.561249, 36.574524>,  <32.934784, 35.647110, 36.439503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755905, 35.561249, 36.574524>,  <32.457771, 35.418148, 36.799557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755905, 35.561249, 36.574524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091746, 0.780771, 0.618044,
		0.660351, -0.512262, 0.549112,
		0.745331, 0.357748, -0.562581,
		32.979504, 35.668571, 36.405750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090908, 35.445129, 37.245770>,  <32.457771, 35.418148, 36.799557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090908, 35.445129, 37.245770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.130043, 35.710361, 36.948917>,  <33.153522, 35.869499, 36.770805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.130043, 35.710361, 36.948917>,  <33.090908, 35.445129, 37.245770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.130043, 35.710361, 36.948917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212071, 0.714689, 0.666518,
		0.972345, -0.222591, -0.070699,
		0.097833, 0.663078, -0.742129,
		33.159393, 35.909286, 36.726280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476757, 35.865746, 37.546032>,  <33.090908, 35.445129, 37.245770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476757, 35.865746, 37.546032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349045, 36.083736, 37.235920>,  <33.272415, 36.214531, 37.049854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349045, 36.083736, 37.235920>,  <33.476757, 35.865746, 37.546032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349045, 36.083736, 37.235920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010336, 0.820053, 0.572194,
		0.947602, 0.174679, -0.267464,
		-0.319285, 0.544977, -0.775279,
		33.253258, 36.247231, 37.003338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873943, 36.441498, 37.674232>,  <33.476757, 35.865746, 37.546032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873943, 36.441498, 37.674232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567482, 36.544621, 37.438763>,  <33.383606, 36.606495, 37.297482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567482, 36.544621, 37.438763>,  <33.873943, 36.441498, 37.674232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567482, 36.544621, 37.438763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153774, 0.815855, 0.557435,
		0.623984, 0.517606, -0.585430,
		-0.766158, 0.257806, -0.588675,
		33.337635, 36.621964, 37.262161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014374, 37.079338, 37.434635>,  <33.873943, 36.441498, 37.674232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014374, 37.079338, 37.434635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617565, 37.042610, 37.400063>,  <33.379482, 37.020573, 37.379318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617565, 37.042610, 37.400063>,  <34.014374, 37.079338, 37.434635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617565, 37.042610, 37.400063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125652, 0.777491, 0.616213,
		0.010615, 0.622154, -0.782823,
		-0.992017, -0.091822, -0.086428,
		33.319962, 37.015064, 37.374134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.744896, 37.669891, 37.335094>,  <34.014374, 37.079338, 37.434635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.744896, 37.669891, 37.335094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394825, 37.499222, 37.426319>,  <33.184784, 37.396820, 37.481052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394825, 37.499222, 37.426319>,  <33.744896, 37.669891, 37.335094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394825, 37.499222, 37.426319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175268, 0.718987, 0.672562,
		-0.450937, 0.548640, -0.704024,
		-0.875178, -0.426676, 0.228059,
		33.132271, 37.371220, 37.494736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121666, 38.237915, 37.322403>,  <33.744896, 37.669891, 37.335094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121666, 38.237915, 37.322403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000568, 37.938717, 37.558655>,  <32.927910, 37.759197, 37.700405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000568, 37.938717, 37.558655>,  <33.121666, 38.237915, 37.322403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.000568, 37.938717, 37.558655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182452, 0.653736, 0.734398,
		-0.935446, 0.114572, -0.334388,
		-0.302743, -0.747999, 0.590631,
		32.909744, 37.714317, 37.735844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.542664, 38.475208, 37.615570>,  <33.121666, 38.237915, 37.322403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.542664, 38.475208, 37.615570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672997, 38.192730, 37.867004>,  <32.751198, 38.023243, 38.017864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672997, 38.192730, 37.867004>,  <32.542664, 38.475208, 37.615570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672997, 38.192730, 37.867004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249069, 0.577262, 0.777646,
		-0.912029, -0.409945, 0.012200,
		0.325834, -0.706197, 0.628584,
		32.770748, 37.980869, 38.055580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.145912, 38.598110, 38.114525>,  <32.542664, 38.475208, 37.615570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.145912, 38.598110, 38.114525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.432419, 38.375305, 38.282673>,  <32.604321, 38.241623, 38.383560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.432419, 38.375305, 38.282673>,  <32.145912, 38.598110, 38.114525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.432419, 38.375305, 38.282673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202256, 0.410832, 0.888994,
		-0.667878, -0.721775, 0.181605,
		0.716263, -0.557008, 0.420369,
		32.647297, 38.208202, 38.408783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794174, 38.563507, 38.700310>,  <32.145912, 38.598110, 38.114525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.794174, 38.563507, 38.700310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180431, 38.476513, 38.757214>,  <32.412186, 38.424316, 38.791355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180431, 38.476513, 38.757214>,  <31.794174, 38.563507, 38.700310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.180431, 38.476513, 38.757214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028531, 0.455364, 0.889848,
		-0.258306, -0.863333, 0.433513,
		0.965642, -0.217484, 0.142255,
		32.470123, 38.411266, 38.799889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774742, 38.351509, 39.368786>,  <31.794174, 38.563507, 38.700310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774742, 38.351509, 39.368786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.170361, 38.393108, 39.326893>,  <32.407734, 38.418068, 39.301758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.170361, 38.393108, 39.326893>,  <31.774742, 38.351509, 39.368786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.170361, 38.393108, 39.326893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031448, 0.544810, 0.837970,
		0.144203, -0.832086, 0.535572,
		0.989048, 0.103995, -0.104731,
		32.467075, 38.424309, 39.295475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955738, 38.165741, 39.921696>,  <31.774742, 38.351509, 39.368786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955738, 38.165741, 39.921696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.251034, 38.386242, 39.766197>,  <32.428211, 38.518543, 39.672897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.251034, 38.386242, 39.766197>,  <31.955738, 38.165741, 39.921696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251034, 38.386242, 39.766197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100606, 0.659846, 0.744635,
		0.666998, -0.510606, 0.542582,
		0.738236, 0.551257, -0.388745,
		32.472504, 38.551620, 39.649574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393227, 38.305836, 40.483887>,  <31.955738, 38.165741, 39.921696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393227, 38.305836, 40.483887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457920, 38.573212, 40.193497>,  <32.496738, 38.733635, 40.019264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457920, 38.573212, 40.193497>,  <32.393227, 38.305836, 40.483887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457920, 38.573212, 40.193497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035894, 0.731186, 0.681234,
		0.986181, -0.136240, 0.094267,
		0.161738, 0.668436, -0.725971,
		32.506443, 38.773743, 39.975704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801956, 38.706074, 40.778763>,  <32.393227, 38.305836, 40.483887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801956, 38.706074, 40.778763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671803, 38.923916, 40.469563>,  <32.593712, 39.054623, 40.284042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671803, 38.923916, 40.469563>,  <32.801956, 38.706074, 40.778763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671803, 38.923916, 40.469563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152075, 0.776706, 0.611229,
		0.933273, 0.316438, -0.169907,
		-0.325384, 0.544605, -0.773001,
		32.574188, 39.087296, 40.237663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153202, 39.374039, 40.866459>,  <32.801956, 38.706074, 40.778763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.153202, 39.374039, 40.866459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818798, 39.418098, 40.651440>,  <32.618156, 39.444534, 40.522430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818798, 39.418098, 40.651440>,  <33.153202, 39.374039, 40.866459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818798, 39.418098, 40.651440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234998, 0.813386, 0.532146,
		0.495845, 0.571202, -0.654115,
		-0.836011, 0.110146, -0.537544,
		32.567993, 39.451141, 40.490177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154556, 40.038334, 40.749096>,  <33.153202, 39.374039, 40.866459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154556, 40.038334, 40.749096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772755, 39.928574, 40.702404>,  <32.543674, 39.862717, 40.674389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772755, 39.928574, 40.702404>,  <33.154556, 40.038334, 40.749096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772755, 39.928574, 40.702404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293655, 0.796867, 0.527986,
		-0.051861, 0.538244, -0.841192,
		-0.954504, -0.274402, -0.116732,
		32.486404, 39.846252, 40.667385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760223, 40.587952, 40.648842>,  <33.154556, 40.038334, 40.749096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760223, 40.587952, 40.648842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453190, 40.351612, 40.748211>,  <32.268970, 40.209808, 40.807831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453190, 40.351612, 40.748211>,  <32.760223, 40.587952, 40.648842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453190, 40.351612, 40.748211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294590, 0.669438, 0.681960,
		-0.569235, 0.450282, -0.687908,
		-0.767586, -0.590846, 0.248419,
		32.222916, 40.174358, 40.822735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097210, 41.004299, 40.752663>,  <32.760223, 40.587952, 40.648842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097210, 41.004299, 40.752663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047695, 40.671017, 40.968235>,  <32.017986, 40.471046, 41.097576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047695, 40.671017, 40.968235>,  <32.097210, 41.004299, 40.752663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047695, 40.671017, 40.968235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233106, 0.552326, 0.800373,
		-0.964540, -0.026549, -0.262598,
		-0.123790, -0.833205, 0.538929,
		32.010559, 40.421055, 41.129913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.435667, 41.105721, 41.103813>,  <32.097210, 41.004299, 40.752663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.435667, 41.105721, 41.103813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659969, 40.831314, 41.289257>,  <31.794552, 40.666672, 41.400524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659969, 40.831314, 41.289257>,  <31.435667, 41.105721, 41.103813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659969, 40.831314, 41.289257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118705, 0.487536, 0.864996,
		-0.819427, -0.540086, 0.191956,
		0.560758, -0.686015, 0.463611,
		31.828197, 40.625511, 41.428341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028290, 40.872147, 41.631748>,  <31.435667, 41.105721, 41.103813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.028290, 40.872147, 41.631748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.397713, 40.791599, 41.762280>,  <31.619368, 40.743271, 41.840599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.397713, 40.791599, 41.762280>,  <31.028290, 40.872147, 41.631748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.397713, 40.791599, 41.762280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215231, 0.432099, 0.875766,
		-0.317354, -0.879058, 0.355729,
		0.923559, -0.201364, 0.326329,
		31.674780, 40.731190, 41.860180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.922169, 40.822449, 42.331108>,  <31.028290, 40.872147, 41.631748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.922169, 40.822449, 42.331108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.319363, 40.848827, 42.291859>,  <31.557680, 40.864655, 42.268311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.319363, 40.848827, 42.291859>,  <30.922169, 40.822449, 42.331108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.319363, 40.848827, 42.291859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056647, 0.463075, 0.884507,
		0.103771, -0.883862, 0.456091,
		0.992987, 0.065950, -0.098122,
		31.617258, 40.868614, 42.262421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.221766, 40.509239, 42.935825>,  <30.922169, 40.822449, 42.331108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.221766, 40.509239, 42.935825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.520782, 40.738194, 42.801037>,  <31.700193, 40.875568, 42.720165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.520782, 40.738194, 42.801037>,  <31.221766, 40.509239, 42.935825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.520782, 40.738194, 42.801037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092763, 0.412383, 0.906275,
		0.657703, -0.708739, 0.255179,
		0.747544, 0.572388, -0.336970,
		31.745047, 40.909908, 42.699947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.859400, 40.444824, 43.450787>,  <31.221766, 40.509239, 42.935825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.859400, 40.444824, 43.450787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867840, 40.784035, 43.238972>,  <31.872904, 40.987560, 43.111881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867840, 40.784035, 43.238972>,  <31.859400, 40.444824, 43.450787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867840, 40.784035, 43.238972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124639, 0.523294, 0.842988,
		0.991978, -0.083787, -0.094656,
		0.021099, 0.848023, -0.529539,
		31.874170, 41.038441, 43.080109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345684, 40.848614, 43.748440>,  <31.859400, 40.444824, 43.450787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345684, 40.848614, 43.748440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141853, 41.114784, 43.530247>,  <32.019554, 41.274487, 43.399330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141853, 41.114784, 43.530247>,  <32.345684, 40.848614, 43.748440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141853, 41.114784, 43.530247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149640, 0.692840, 0.705394,
		0.847316, 0.277824, -0.452626,
		-0.509573, 0.665422, -0.545481,
		31.988981, 41.314411, 43.366604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731884, 41.443516, 43.575386>,  <32.345684, 40.848614, 43.748440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731884, 41.443516, 43.575386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354836, 41.576714, 43.565796>,  <32.128605, 41.656631, 43.560043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354836, 41.576714, 43.565796>,  <32.731884, 41.443516, 43.575386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.354836, 41.576714, 43.565796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220615, 0.675171, 0.703899,
		0.250582, 0.658222, -0.709896,
		-0.942623, 0.332998, -0.023973,
		32.072048, 41.676613, 43.558605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705124, 42.206310, 43.521412>,  <32.731884, 41.443516, 43.575386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705124, 42.206310, 43.521412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355206, 42.093212, 43.678787>,  <32.145256, 42.025352, 43.773212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355206, 42.093212, 43.678787>,  <32.705124, 42.206310, 43.521412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355206, 42.093212, 43.678787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059635, 0.743044, 0.666580,
		-0.480813, 0.606582, -0.633149,
		-0.874793, -0.282742, 0.393439,
		32.092766, 42.008389, 43.796818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525352, 42.801476, 43.951405>,  <32.705124, 42.206310, 43.521412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525352, 42.801476, 43.951405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234203, 42.550827, 44.062794>,  <32.059513, 42.400436, 44.129627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234203, 42.550827, 44.062794>,  <32.525352, 42.801476, 43.951405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.234203, 42.550827, 44.062794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107872, 0.505687, 0.855947,
		-0.677178, 0.592978, -0.435669,
		-0.727869, -0.626625, 0.278474,
		32.015842, 42.362839, 44.146336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129055, 43.158913, 44.312790>,  <32.525352, 42.801476, 43.951405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129055, 43.158913, 44.312790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.017288, 42.794392, 44.433758>,  <31.950230, 42.575680, 44.506340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.017288, 42.794392, 44.433758>,  <32.129055, 43.158913, 44.312790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.017288, 42.794392, 44.433758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047763, 0.327769, 0.943550,
		-0.958982, 0.249196, -0.135110,
		-0.279414, -0.911300, 0.302422,
		31.933464, 42.521000, 44.524483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.450357, 43.222797, 44.558601>,  <32.129055, 43.158913, 44.312790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.450357, 43.222797, 44.558601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.629005, 42.914543, 44.740437>,  <31.736195, 42.729591, 44.849537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.629005, 42.914543, 44.740437>,  <31.450357, 43.222797, 44.558601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.629005, 42.914543, 44.740437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036767, 0.491844, 0.869907,
		-0.893968, -0.405232, 0.191334,
		0.446620, -0.770634, 0.454592,
		31.762991, 42.683353, 44.876816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.106829, 43.213501, 45.216209>,  <31.450357, 43.222797, 44.558601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.106829, 43.213501, 45.216209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.414516, 42.970573, 45.295677>,  <31.599129, 42.824818, 45.343357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.414516, 42.970573, 45.295677>,  <31.106829, 43.213501, 45.216209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.414516, 42.970573, 45.295677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071344, 0.227337, 0.971199,
		-0.634988, -0.761240, 0.131544,
		0.769220, -0.607315, 0.198666,
		31.645283, 42.788380, 45.355278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.878824, 42.622028, 45.621742>,  <31.106829, 43.213501, 45.216209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.878824, 42.622028, 45.621742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.272182, 42.670193, 45.676056>,  <31.508198, 42.699093, 45.708645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.272182, 42.670193, 45.676056>,  <30.878824, 42.622028, 45.621742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.272182, 42.670193, 45.676056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160203, 0.224433, 0.961231,
		0.085271, -0.967021, 0.239997,
		0.983394, 0.120414, 0.135782,
		31.567200, 42.706318, 45.716789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.076836, 42.213192, 46.286118>,  <30.878824, 42.622028, 45.621742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.076836, 42.213192, 46.286118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.370047, 42.474808, 46.211391>,  <31.545973, 42.631779, 46.166557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.370047, 42.474808, 46.211391>,  <31.076836, 42.213192, 46.286118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.370047, 42.474808, 46.211391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039499, 0.315114, 0.948232,
		0.679049, -0.687702, 0.256821,
		0.733029, 0.654040, -0.186814,
		31.589956, 42.671021, 46.155346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.499205, 42.091724, 46.862343>,  <31.076836, 42.213192, 46.286118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.499205, 42.091724, 46.862343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572475, 42.453094, 46.707283>,  <31.616438, 42.669914, 46.614246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572475, 42.453094, 46.707283>,  <31.499205, 42.091724, 46.862343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572475, 42.453094, 46.707283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281862, 0.329507, 0.901099,
		0.941807, -0.274325, -0.194282,
		0.183177, 0.903422, -0.387654,
		31.627428, 42.724121, 46.590988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.095493, 42.338772, 47.206623>,  <31.499205, 42.091724, 46.862343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.095493, 42.338772, 47.206623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.895666, 42.648220, 47.050701>,  <31.775770, 42.833889, 46.957146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.895666, 42.648220, 47.050701>,  <32.095493, 42.338772, 47.206623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.895666, 42.648220, 47.050701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107145, 0.391348, 0.913984,
		0.859624, 0.498361, -0.112615,
		-0.499566, 0.773617, -0.389809,
		31.745796, 42.880306, 46.933758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422493, 42.733406, 47.595325>,  <32.095493, 42.338772, 47.206623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422493, 42.733406, 47.595325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.090511, 42.913063, 47.462997>,  <31.891321, 43.020855, 47.383602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.090511, 42.913063, 47.462997>,  <32.422493, 42.733406, 47.595325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.090511, 42.913063, 47.462997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164565, 0.369516, 0.914536,
		0.532998, 0.813468, -0.232770,
		-0.829959, 0.449140, -0.330820,
		31.841524, 43.047806, 47.363750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476715, 43.267872, 47.991653>,  <32.422493, 42.733406, 47.595325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476715, 43.267872, 47.991653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099350, 43.245007, 47.860996>,  <31.872931, 43.231285, 47.782600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099350, 43.245007, 47.860996>,  <32.476715, 43.267872, 47.991653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099350, 43.245007, 47.860996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326252, 0.336349, 0.883419,
		0.059364, 0.940001, -0.335968,
		-0.943417, -0.057167, -0.326644,
		31.816324, 43.227856, 47.763004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284485, 43.782837, 48.370876>,  <32.476715, 43.267872, 47.991653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284485, 43.782837, 48.370876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958771, 43.608746, 48.217239>,  <31.763344, 43.504292, 48.125057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958771, 43.608746, 48.217239>,  <32.284485, 43.782837, 48.370876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.958771, 43.608746, 48.217239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528029, 0.280542, 0.801549,
		-0.241100, 0.855498, -0.458251,
		-0.814282, -0.435224, -0.384089,
		31.714485, 43.478180, 48.102013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.661434, 44.251591, 48.254913>,  <32.284485, 43.782837, 48.370876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.661434, 44.251591, 48.254913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525919, 43.881500, 48.323246>,  <31.444611, 43.659447, 48.364246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525919, 43.881500, 48.323246>,  <31.661434, 44.251591, 48.254913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.525919, 43.881500, 48.323246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490071, 0.328528, 0.807403,
		-0.803152, 0.189817, -0.564727,
		-0.338788, -0.925224, 0.170834,
		31.424282, 43.603931, 48.374496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.037764, 44.393948, 48.572308>,  <31.661434, 44.251591, 48.254913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.037764, 44.393948, 48.572308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.100849, 44.010517, 48.667187>,  <31.138700, 43.780460, 48.724113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.100849, 44.010517, 48.667187>,  <31.037764, 44.393948, 48.572308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.100849, 44.010517, 48.667187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397591, 0.158237, 0.903815,
		-0.903907, -0.236853, -0.356164,
		0.157713, -0.958573, 0.237202,
		31.148163, 43.722946, 48.738346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.541174, 44.224785, 49.023884>,  <31.037764, 44.393948, 48.572308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.541174, 44.224785, 49.023884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.812197, 43.950951, 49.131405>,  <30.974810, 43.786648, 49.195919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.812197, 43.950951, 49.131405>,  <30.541174, 44.224785, 49.023884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.812197, 43.950951, 49.131405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275394, 0.102741, 0.955825,
		-0.681966, -0.721651, -0.118920,
		0.677555, -0.684590, 0.268804,
		31.015463, 43.745575, 49.212048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.913107, 44.630234, 49.030582>,  <30.541174, 44.224785, 49.023884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.913107, 44.630234, 49.030582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.967636, 44.254604, 49.156796>,  <30.000353, 44.029228, 49.232521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.967636, 44.254604, 49.156796>,  <29.913107, 44.630234, 49.030582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.967636, 44.254604, 49.156796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143012, 0.333822, 0.931724,
		-0.980287, -0.081891, 0.179807,
		0.136323, -0.939072, 0.315530,
		30.008533, 43.972881, 49.251453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.384840, 44.517742, 49.559784>,  <29.913107, 44.630234, 49.030582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.384840, 44.517742, 49.559784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.710087, 44.291191, 49.613533>,  <29.905235, 44.155262, 49.645782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.710087, 44.291191, 49.613533>,  <29.384840, 44.517742, 49.559784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.710087, 44.291191, 49.613533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069974, 0.134055, 0.988500,
		-0.577877, -0.813170, 0.069371,
		0.813119, -0.566377, 0.134368,
		29.954023, 44.121277, 49.653843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.174494, 43.907013, 49.888874>,  <29.384840, 44.517742, 49.559784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.174494, 43.907013, 49.888874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.553705, 43.987606, 49.987381>,  <29.781231, 44.035961, 50.046486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.553705, 43.987606, 49.987381>,  <29.174494, 43.907013, 49.888874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.553705, 43.987606, 49.987381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223698, -0.128362, 0.966169,
		0.226281, -0.971044, -0.076618,
		0.948028, 0.201486, 0.246266,
		29.838114, 44.048054, 50.061260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.382555, 43.464680, 50.408913>,  <29.174494, 43.907013, 49.888874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.382555, 43.464680, 50.408913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.618414, 43.781254, 50.473343>,  <29.759930, 43.971199, 50.512001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.618414, 43.781254, 50.473343>,  <29.382555, 43.464680, 50.408913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.618414, 43.781254, 50.473343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179881, -0.065737, 0.981489,
		0.787376, -0.607706, 0.103603,
		0.589646, 0.791437, 0.161075,
		29.795307, 44.018684, 50.521664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.827175, 43.308136, 50.974716>,  <29.382555, 43.464680, 50.408913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.827175, 43.308136, 50.974716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.772396, 43.703312, 50.945797>,  <29.739529, 43.940418, 50.928444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.772396, 43.703312, 50.945797>,  <29.827175, 43.308136, 50.974716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.772396, 43.703312, 50.945797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097640, 0.059167, 0.993461,
		0.985755, 0.143111, 0.088359,
		-0.136947, 0.987937, -0.072298,
		29.731312, 43.999691, 50.924107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106255, 42.740101, 51.238155>,  <29.827175, 43.308136, 50.974716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.106255, 42.740101, 51.238155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.925980, 42.647648, 50.893261>,  <29.817814, 42.592175, 50.686325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.925980, 42.647648, 50.893261>,  <30.106255, 42.740101, 51.238155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.925980, 42.647648, 50.893261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166782, 0.927089, -0.335694,
		0.876963, -0.295100, -0.379279,
		-0.450688, -0.231134, -0.862239,
		29.790773, 42.578308, 50.634590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.194376, 42.061432, 51.044170>,  <30.106255, 42.740101, 51.238155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.194376, 42.061432, 51.044170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.864096, 41.890980, 50.896317>,  <29.665928, 41.788708, 50.807606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.864096, 41.890980, 50.896317>,  <30.194376, 42.061432, 51.044170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.864096, 41.890980, 50.896317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529532, -0.359622, -0.768289,
		0.194465, -0.830109, 0.522592,
		-0.825699, -0.426134, -0.369635,
		29.616386, 41.763138, 50.785427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.265207, 41.392796, 50.999310>,  <30.194376, 42.061432, 51.044170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.265207, 41.392796, 50.999310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.997778, 41.520561, 50.730686>,  <29.837320, 41.597221, 50.569511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.997778, 41.520561, 50.730686>,  <30.265207, 41.392796, 50.999310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.997778, 41.520561, 50.730686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564420, -0.370024, -0.737911,
		-0.484190, -0.872386, 0.067104,
		-0.668573, 0.319414, -0.671554,
		29.797207, 41.616386, 50.529221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.974348, 40.797298, 50.548580>,  <30.265207, 41.392796, 50.999310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.974348, 40.797298, 50.548580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.984125, 41.139050, 50.340946>,  <29.989990, 41.344101, 50.216366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.984125, 41.139050, 50.340946>,  <29.974348, 40.797298, 50.548580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.984125, 41.139050, 50.340946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508015, -0.457814, -0.729607,
		-0.861001, -0.245870, -0.445224,
		0.024441, 0.854374, -0.519084,
		29.991457, 41.395363, 50.185223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.841101, 40.654751, 49.876850>,  <29.974348, 40.797298, 50.548580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.841101, 40.654751, 49.876850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.057962, 40.990147, 49.898788>,  <30.188080, 41.191383, 49.911953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.057962, 40.990147, 49.898788>,  <29.841101, 40.654751, 49.876850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.057962, 40.990147, 49.898788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555162, -0.308432, -0.772441,
		-0.630763, 0.449234, -0.632713,
		0.542156, 0.838486, 0.054850,
		30.220610, 41.241692, 49.915245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.806526, 40.972328, 49.230900>,  <29.841101, 40.654751, 49.876850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.806526, 40.972328, 49.230900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.136560, 41.134163, 49.388657>,  <30.334581, 41.231262, 49.483311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.136560, 41.134163, 49.388657>,  <29.806526, 40.972328, 49.230900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.136560, 41.134163, 49.388657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517639, -0.261502, -0.814657,
		-0.226462, 0.876315, -0.425190,
		0.825085, 0.404584, 0.394395,
		30.384087, 41.255539, 49.506973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.188679, 41.235428, 48.695225>,  <29.806526, 40.972328, 49.230900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.188679, 41.235428, 48.695225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.459972, 41.170429, 48.981888>,  <30.622747, 41.131432, 49.153885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.459972, 41.170429, 48.981888>,  <30.188679, 41.235428, 48.695225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.459972, 41.170429, 48.981888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640114, -0.348338, -0.684774,
		0.360909, 0.923178, -0.132241,
		0.678232, -0.162492, 0.716657,
		30.663443, 41.121681, 49.196884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812582, 41.447552, 48.392887>,  <30.188679, 41.235428, 48.695225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.812582, 41.447552, 48.392887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.936422, 41.230835, 48.705452>,  <31.010727, 41.100803, 48.892990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.936422, 41.230835, 48.705452>,  <30.812582, 41.447552, 48.392887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.936422, 41.230835, 48.705452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725219, -0.396958, -0.562567,
		0.614983, 0.740868, 0.270019,
		0.309602, -0.541792, 0.781414,
		31.029303, 41.068298, 48.939877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.446087, 41.187679, 48.138805>,  <30.812582, 41.447552, 48.392887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.446087, 41.187679, 48.138805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.472385, 41.055500, 48.515419>,  <31.488165, 40.976192, 48.741386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.472385, 41.055500, 48.515419>,  <31.446087, 41.187679, 48.138805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.472385, 41.055500, 48.515419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675600, -0.679654, -0.285719,
		0.734331, 0.654883, 0.178568,
		0.065748, -0.330453, 0.941530,
		31.492109, 40.956364, 48.797878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126183, 41.238960, 48.468719>,  <31.446087, 41.187679, 48.138805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126183, 41.238960, 48.468719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924280, 40.925465, 48.613483>,  <31.803141, 40.737366, 48.700340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924280, 40.925465, 48.613483>,  <32.126183, 41.238960, 48.468719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.924280, 40.925465, 48.613483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602614, -0.620077, -0.502356,
		0.618128, -0.035473, 0.785277,
		-0.504752, -0.783739, 0.361911,
		31.772854, 40.690342, 48.722057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617352, 40.856018, 48.792744>,  <32.126183, 41.238960, 48.468719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617352, 40.856018, 48.792744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.304077, 40.624271, 48.702446>,  <32.116112, 40.485222, 48.648266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.304077, 40.624271, 48.702446>,  <32.617352, 40.856018, 48.792744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304077, 40.624271, 48.702446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542791, -0.459916, -0.702748,
		0.303323, -0.672914, 0.674672,
		-0.783181, -0.579366, -0.225749,
		32.069122, 40.450462, 48.634720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988586, 40.266830, 48.689953>,  <32.617352, 40.856018, 48.792744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988586, 40.266830, 48.689953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.621292, 40.208771, 48.542564>,  <32.400917, 40.173935, 48.454132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.621292, 40.208771, 48.542564>,  <32.988586, 40.266830, 48.689953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621292, 40.208771, 48.542564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373261, -0.628142, -0.682726,
		-0.132358, -0.764441, 0.630961,
		-0.918236, -0.145149, -0.368475,
		32.345821, 40.165226, 48.432022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773560, 39.510456, 48.829029>,  <32.988586, 40.266830, 48.689953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773560, 39.510456, 48.829029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601147, 39.672085, 48.506306>,  <32.497700, 39.769062, 48.312672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601147, 39.672085, 48.506306>,  <32.773560, 39.510456, 48.829029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601147, 39.672085, 48.506306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269047, -0.795910, -0.542348,
		-0.861294, -0.450837, 0.234345,
		-0.431028, 0.404071, -0.806809,
		32.471836, 39.793304, 48.264263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618015, 39.025669, 48.382992>,  <32.773560, 39.510456, 48.829029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618015, 39.025669, 48.382992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560734, 39.309700, 48.107227>,  <32.526363, 39.480118, 47.941769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560734, 39.309700, 48.107227>,  <32.618015, 39.025669, 48.382992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560734, 39.309700, 48.107227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343205, -0.617736, -0.707540,
		-0.928280, -0.337931, -0.155239,
		-0.143203, 0.710074, -0.689411,
		32.517773, 39.522720, 47.900402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415993, 38.718273, 47.657730>,  <32.618015, 39.025669, 48.382992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415993, 38.718273, 47.657730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.523781, 39.088123, 47.550068>,  <32.588455, 39.310036, 47.485470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.523781, 39.088123, 47.550068>,  <32.415993, 38.718273, 47.657730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.523781, 39.088123, 47.550068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429348, -0.365532, -0.825861,
		-0.862001, 0.106984, -0.495488,
		0.269471, 0.924630, -0.269155,
		32.604622, 39.365513, 47.469322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.270668, 38.742100, 46.914799>,  <32.415993, 38.718273, 47.657730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.270668, 38.742100, 46.914799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549450, 39.023109, 46.972374>,  <32.716717, 39.191715, 47.006920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549450, 39.023109, 46.972374>,  <32.270668, 38.742100, 46.914799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549450, 39.023109, 46.972374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509048, -0.343286, -0.789319,
		-0.505102, 0.623391, -0.596872,
		0.696952, 0.702523, 0.143942,
		32.758537, 39.233868, 47.015556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373039, 39.078304, 46.275890>,  <32.270668, 38.742100, 46.914799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373039, 39.078304, 46.275890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708221, 39.146736, 46.483181>,  <32.909332, 39.187794, 46.607555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708221, 39.146736, 46.483181>,  <32.373039, 39.078304, 46.275890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708221, 39.146736, 46.483181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542234, -0.153596, -0.826069,
		-0.061722, 0.973212, -0.221470,
		0.837958, 0.171075, 0.518228,
		32.959610, 39.198059, 46.638649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.746311, 39.452381, 45.865055>,  <32.373039, 39.078304, 46.275890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.746311, 39.452381, 45.865055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.038059, 39.380272, 46.129032>,  <33.213108, 39.337006, 46.287418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.038059, 39.380272, 46.129032>,  <32.746311, 39.452381, 45.865055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038059, 39.380272, 46.129032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669245, -0.012043, -0.742944,
		0.141881, 0.983543, 0.111863,
		0.729370, -0.180273, 0.659940,
		33.256870, 39.326191, 46.327015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199512, 39.858707, 45.718975>,  <32.746311, 39.452381, 45.865055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199512, 39.858707, 45.718975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394833, 39.557236, 45.894943>,  <33.512024, 39.376350, 46.000523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394833, 39.557236, 45.894943>,  <33.199512, 39.858707, 45.718975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394833, 39.557236, 45.894943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483711, -0.185830, -0.855272,
		0.726354, 0.630420, 0.273824,
		0.488296, -0.753683, 0.439920,
		33.541321, 39.331131, 46.026920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812183, 39.813702, 45.245888>,  <33.199512, 39.858707, 45.718975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812183, 39.813702, 45.245888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810699, 39.467457, 45.446167>,  <33.809807, 39.259708, 45.566334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810699, 39.467457, 45.446167>,  <33.812183, 39.813702, 45.245888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810699, 39.467457, 45.446167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417584, -0.456300, -0.785757,
		0.908631, 0.206166, 0.363161,
		-0.003714, -0.865613, 0.500700,
		33.809586, 39.207771, 45.596378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506344, 39.583733, 45.171196>,  <33.812183, 39.813702, 45.245888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506344, 39.583733, 45.171196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311939, 39.256287, 45.293613>,  <34.195297, 39.059818, 45.367062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311939, 39.256287, 45.293613>,  <34.506344, 39.583733, 45.171196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311939, 39.256287, 45.293613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454572, -0.535866, -0.711486,
		0.746431, -0.206672, 0.632556,
		-0.486009, -0.818617, 0.306040,
		34.166138, 39.010700, 45.385426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091045, 39.176422, 45.271141>,  <34.506344, 39.583733, 45.171196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091045, 39.176422, 45.271141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.755116, 38.961155, 45.242657>,  <34.553558, 38.831993, 45.225567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.755116, 38.961155, 45.242657>,  <35.091045, 39.176422, 45.271141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755116, 38.961155, 45.242657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478389, -0.671685, -0.565670,
		0.256594, -0.509130, 0.821551,
		-0.839823, -0.538169, -0.071212,
		34.503170, 38.799706, 45.221294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289421, 38.454544, 45.384815>,  <35.091045, 39.176422, 45.271141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289421, 38.454544, 45.384815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939190, 38.462994, 45.191769>,  <34.729050, 38.468063, 45.075943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939190, 38.462994, 45.191769>,  <35.289421, 38.454544, 45.384815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939190, 38.462994, 45.191769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376797, -0.595323, -0.709658,
		-0.302300, -0.803209, 0.513294,
		-0.875579, 0.021122, -0.482612,
		34.676517, 38.469330, 45.046986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170719, 37.751648, 45.089016>,  <35.289421, 38.454544, 45.384815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170719, 37.751648, 45.089016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911415, 37.970585, 44.877293>,  <34.755833, 38.101948, 44.750259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911415, 37.970585, 44.877293>,  <35.170719, 37.751648, 45.089016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911415, 37.970585, 44.877293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117630, -0.614826, -0.779841,
		-0.752275, -0.567805, 0.334185,
		-0.648263, 0.547345, -0.529309,
		34.716938, 38.134789, 44.718498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907719, 37.229115, 44.737263>,  <35.170719, 37.751648, 45.089016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907719, 37.229115, 44.737263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815502, 37.561291, 44.534393>,  <34.760174, 37.760597, 44.412674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815502, 37.561291, 44.534393>,  <34.907719, 37.229115, 44.737263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815502, 37.561291, 44.534393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034432, -0.513923, -0.857145,
		-0.972453, -0.215070, 0.089887,
		-0.230541, 0.830439, -0.507171,
		34.746342, 37.810421, 44.382240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423618, 37.065643, 44.230885>,  <34.907719, 37.229115, 44.737263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423618, 37.065643, 44.230885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.537880, 37.421116, 44.087418>,  <34.606438, 37.634399, 44.001339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.537880, 37.421116, 44.087418>,  <34.423618, 37.065643, 44.230885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537880, 37.421116, 44.087418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164015, -0.323405, -0.931938,
		-0.944194, 0.325035, 0.053377,
		0.285651, 0.888685, -0.358667,
		34.623573, 37.687721, 43.979816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948017, 37.324078, 43.726482>,  <34.423618, 37.065643, 44.230885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948017, 37.324078, 43.726482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282276, 37.527576, 43.643669>,  <34.482834, 37.649677, 43.593979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282276, 37.527576, 43.643669>,  <33.948017, 37.324078, 43.726482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282276, 37.527576, 43.643669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108072, -0.217274, -0.970109,
		-0.538526, 0.833046, -0.126584,
		0.835650, 0.508749, -0.207037,
		34.532970, 37.680202, 43.581558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888290, 37.818008, 43.091419>,  <33.948017, 37.324078, 43.726482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888290, 37.818008, 43.091419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280491, 37.765785, 43.150173>,  <34.515812, 37.734451, 43.185425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280491, 37.765785, 43.150173>,  <33.888290, 37.818008, 43.091419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280491, 37.765785, 43.150173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122671, -0.177318, -0.976478,
		0.153528, 0.975456, -0.157845,
		0.980500, -0.130554, 0.146883,
		34.574642, 37.726620, 43.194237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190456, 38.261230, 42.658588>,  <33.888290, 37.818008, 43.091419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190456, 38.261230, 42.658588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.455338, 37.970993, 42.733433>,  <34.614265, 37.796852, 42.778339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.455338, 37.970993, 42.733433>,  <34.190456, 38.261230, 42.658588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455338, 37.970993, 42.733433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185940, -0.082779, -0.979068,
		0.725892, 0.683129, 0.080100,
		0.662199, -0.725591, 0.187110,
		34.653996, 37.753315, 42.789566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648399, 38.395142, 42.131634>,  <34.190456, 38.261230, 42.658588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648399, 38.395142, 42.131634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750484, 38.032730, 42.266674>,  <34.811737, 37.815281, 42.347698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750484, 38.032730, 42.266674>,  <34.648399, 38.395142, 42.131634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750484, 38.032730, 42.266674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239254, -0.279124, -0.929972,
		0.936815, 0.318114, 0.145535,
		0.255215, -0.906031, 0.337598,
		34.827049, 37.760921, 42.367954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160545, 38.234417, 41.727413>,  <34.648399, 38.395142, 42.131634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160545, 38.234417, 41.727413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052284, 37.880257, 41.878578>,  <34.987328, 37.667763, 41.969276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052284, 37.880257, 41.878578>,  <35.160545, 38.234417, 41.727413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052284, 37.880257, 41.878578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330186, -0.454131, -0.827491,
		0.904282, -0.099178, 0.415256,
		-0.270649, -0.885397, 0.377916,
		34.971088, 37.614639, 41.991955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698872, 37.656647, 41.561363>,  <35.160545, 38.234417, 41.727413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698872, 37.656647, 41.561363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370144, 37.451511, 41.660645>,  <35.172905, 37.328430, 41.720215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370144, 37.451511, 41.660645>,  <35.698872, 37.656647, 41.561363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370144, 37.451511, 41.660645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226624, -0.693942, -0.683437,
		0.522731, -0.505416, 0.686518,
		-0.821824, -0.512836, 0.248205,
		35.123596, 37.297661, 41.735107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999622, 37.107277, 41.637470>,  <35.698872, 37.656647, 41.561363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999622, 37.107277, 41.637470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.607876, 37.036869, 41.597748>,  <35.372829, 36.994625, 41.573914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.607876, 37.036869, 41.597748>,  <35.999622, 37.107277, 41.637470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607876, 37.036869, 41.597748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198195, -0.740292, -0.642407,
		0.039559, -0.648833, 0.759902,
		-0.979364, -0.176022, -0.099310,
		35.314068, 36.984062, 41.567955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883732, 36.450790, 41.584641>,  <35.999622, 37.107277, 41.637470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883732, 36.450790, 41.584641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551060, 36.590866, 41.412281>,  <35.351456, 36.674911, 41.308865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551060, 36.590866, 41.412281>,  <35.883732, 36.450790, 41.584641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551060, 36.590866, 41.412281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121083, -0.642982, -0.756249,
		-0.541887, -0.681134, 0.492356,
		-0.831683, 0.350185, -0.430897,
		35.301556, 36.695923, 41.283012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433052, 35.925320, 41.532970>,  <35.883732, 36.450790, 41.584641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433052, 35.925320, 41.532970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320953, 36.190823, 41.255589>,  <35.253693, 36.350124, 41.089157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320953, 36.190823, 41.255589>,  <35.433052, 35.925320, 41.532970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320953, 36.190823, 41.255589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226080, -0.656447, -0.719698,
		-0.932925, -0.358472, 0.033906,
		-0.280249, 0.663758, -0.693459,
		35.236877, 36.389950, 41.047550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865253, 35.612804, 40.946480>,  <35.433052, 35.925320, 41.532970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865253, 35.612804, 40.946480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043282, 35.929241, 40.778629>,  <35.150101, 36.119102, 40.677917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043282, 35.929241, 40.778629>,  <34.865253, 35.612804, 40.946480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043282, 35.929241, 40.778629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051267, -0.490338, -0.870023,
		-0.894026, 0.365710, -0.258792,
		0.445072, 0.791091, -0.419626,
		35.176804, 36.166569, 40.652740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503120, 35.769787, 40.290134>,  <34.865253, 35.612804, 40.946480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503120, 35.769787, 40.290134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855751, 35.950436, 40.235207>,  <35.067329, 36.058826, 40.202251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855751, 35.950436, 40.235207>,  <34.503120, 35.769787, 40.290134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855751, 35.950436, 40.235207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132598, -0.516123, -0.846188,
		-0.453035, 0.727771, -0.514886,
		0.881576, 0.451626, -0.137321,
		35.120224, 36.085922, 40.194012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545757, 35.847050, 39.593578>,  <34.503120, 35.769787, 40.290134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.545757, 35.847050, 39.593578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926956, 35.896400, 39.704269>,  <35.155674, 35.926010, 39.770683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926956, 35.896400, 39.704269>,  <34.545757, 35.847050, 39.593578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926956, 35.896400, 39.704269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301998, -0.460404, -0.834760,
		0.024411, 0.879093, -0.476025,
		0.952996, 0.123382, 0.276724,
		35.212856, 35.933414, 39.787285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875908, 35.872478, 38.924892>,  <34.545757, 35.847050, 39.593578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875908, 35.872478, 38.924892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195736, 35.842659, 39.163265>,  <35.387630, 35.824768, 39.306290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195736, 35.842659, 39.163265>,  <34.875908, 35.872478, 38.924892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195736, 35.842659, 39.163265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433620, -0.614883, -0.658705,
		0.415534, 0.785087, -0.459315,
		0.799566, -0.074546, 0.595934,
		35.435604, 35.820293, 39.342045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517159, 36.061172, 38.501080>,  <34.875908, 35.872478, 38.924892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517159, 36.061172, 38.501080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606701, 35.818684, 38.806335>,  <35.660427, 35.673191, 38.989491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606701, 35.818684, 38.806335>,  <35.517159, 36.061172, 38.501080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606701, 35.818684, 38.806335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514524, -0.591498, -0.620802,
		0.827740, 0.531624, 0.179505,
		0.223857, -0.606223, 0.763140,
		35.673859, 35.636818, 39.035278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236984, 35.883163, 38.401562>,  <35.517159, 36.061172, 38.501080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236984, 35.883163, 38.401562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.073143, 35.610214, 38.643753>,  <35.974838, 35.446445, 38.789066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.073143, 35.610214, 38.643753>,  <36.236984, 35.883163, 38.401562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073143, 35.610214, 38.643753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470311, -0.726655, -0.500779,
		0.781688, 0.079642, 0.618564,
		-0.409600, -0.682370, 0.605474,
		35.950264, 35.405502, 38.825394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827435, 35.524857, 38.606037>,  <36.236984, 35.883163, 38.401562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827435, 35.524857, 38.606037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.499847, 35.300213, 38.653164>,  <36.303295, 35.165424, 38.681438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.499847, 35.300213, 38.653164>,  <36.827435, 35.524857, 38.606037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499847, 35.300213, 38.653164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390898, -0.696307, -0.601960,
		0.420103, -0.446933, 0.789787,
		-0.818970, -0.561611, 0.117816,
		36.254158, 35.131729, 38.688507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030018, 34.851349, 38.664574>,  <36.827435, 35.524857, 38.606037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030018, 34.851349, 38.664574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.649204, 34.846752, 38.542263>,  <36.420715, 34.843994, 38.468876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.649204, 34.846752, 38.542263>,  <37.030018, 34.851349, 38.664574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649204, 34.846752, 38.542263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230881, -0.682781, -0.693184,
		-0.200811, -0.730533, 0.652684,
		-0.952034, -0.011493, -0.305776,
		36.363594, 34.843304, 38.450531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704670, 34.171265, 38.823315>,  <37.030018, 34.851349, 38.664574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704670, 34.171265, 38.823315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788376, 33.791912, 38.918633>,  <36.838600, 33.564301, 38.975822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788376, 33.791912, 38.918633>,  <36.704670, 34.171265, 38.823315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788376, 33.791912, 38.918633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048532, 0.253465, 0.966126,
		-0.976653, -0.190614, 0.099069,
		0.209268, -0.948378, 0.238296,
		36.851154, 33.507397, 38.990120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216915, 33.815762, 39.355694>,  <36.704670, 34.171265, 38.823315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216915, 33.815762, 39.355694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.577187, 33.643867, 39.381348>,  <36.793350, 33.540733, 39.396740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.577187, 33.643867, 39.381348>,  <36.216915, 33.815762, 39.355694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577187, 33.643867, 39.381348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009092, 0.166224, 0.986046,
		-0.434398, -0.887524, 0.153621,
		0.900675, -0.429733, 0.064137,
		36.847389, 33.514946, 39.400589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203087, 33.416767, 39.988419>,  <36.216915, 33.815762, 39.355694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203087, 33.416767, 39.988419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.589680, 33.479866, 39.907402>,  <36.821636, 33.517723, 39.858791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.589680, 33.479866, 39.907402>,  <36.203087, 33.416767, 39.988419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589680, 33.479866, 39.907402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182195, 0.134356, 0.974040,
		0.180862, -0.978297, 0.101113,
		0.966486, 0.157744, -0.202541,
		36.879627, 33.527187, 39.846642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476059, 33.011524, 40.346699>,  <36.203087, 33.416767, 39.988419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476059, 33.011524, 40.346699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760925, 33.282619, 40.273499>,  <36.931847, 33.445278, 40.229580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760925, 33.282619, 40.273499>,  <36.476059, 33.011524, 40.346699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760925, 33.282619, 40.273499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151727, 0.105915, 0.982731,
		0.685418, -0.727634, -0.027402,
		0.712166, 0.677740, -0.182997,
		36.974575, 33.485943, 40.218601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166245, 32.815910, 40.778904>,  <36.476059, 33.011524, 40.346699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166245, 32.815910, 40.778904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.189137, 33.207664, 40.701408>,  <37.202873, 33.442715, 40.654911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.189137, 33.207664, 40.701408>,  <37.166245, 32.815910, 40.778904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189137, 33.207664, 40.701408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183113, 0.180469, 0.966385,
		0.981424, -0.090786, -0.169008,
		0.057233, 0.979382, -0.193741,
		37.206306, 33.501480, 40.643288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516899, 33.039993, 41.325989>,  <37.166245, 32.815910, 40.778904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516899, 33.039993, 41.325989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.414558, 33.395699, 41.174332>,  <37.353153, 33.609123, 41.083336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.414558, 33.395699, 41.174332>,  <37.516899, 33.039993, 41.325989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414558, 33.395699, 41.174332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088367, 0.412069, 0.906858,
		0.962670, 0.198514, -0.184008,
		-0.255848, 0.889265, -0.379144,
		37.337803, 33.662479, 41.060589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117481, 33.594833, 41.344181>,  <37.516899, 33.039993, 41.325989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117481, 33.594833, 41.344181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.766907, 33.784218, 41.309109>,  <37.556561, 33.897850, 41.288067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.766907, 33.784218, 41.309109>,  <38.117481, 33.594833, 41.344181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.766907, 33.784218, 41.309109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230607, 0.572580, 0.786748,
		0.422699, 0.669318, -0.611015,
		-0.876439, 0.473462, -0.087679,
		37.503975, 33.926258, 41.282806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156586, 34.307007, 41.672440>,  <38.117481, 33.594833, 41.344181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156586, 34.307007, 41.672440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759544, 34.270355, 41.704281>,  <37.521320, 34.248363, 41.723385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759544, 34.270355, 41.704281>,  <38.156586, 34.307007, 41.672440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759544, 34.270355, 41.704281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040234, 0.370386, 0.928006,
		-0.114516, 0.924348, -0.363961,
		-0.992606, -0.091628, 0.079605,
		37.461761, 34.242867, 41.728161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900169, 34.967037, 41.829926>,  <38.156586, 34.307007, 41.672440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900169, 34.967037, 41.829926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.596848, 34.736534, 41.951836>,  <37.414852, 34.598232, 42.024982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.596848, 34.736534, 41.951836>,  <37.900169, 34.967037, 41.829926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596848, 34.736534, 41.951836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080258, 0.546498, 0.833606,
		-0.646936, 0.607670, -0.460664,
		-0.758309, -0.576262, 0.304779,
		37.369354, 34.563656, 42.043270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427559, 35.419575, 41.980633>,  <37.900169, 34.967037, 41.829926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427559, 35.419575, 41.980633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335052, 35.079044, 42.169003>,  <37.279549, 34.874725, 42.282024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335052, 35.079044, 42.169003>,  <37.427559, 35.419575, 41.980633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335052, 35.079044, 42.169003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252576, 0.519986, 0.815978,
		-0.939533, 0.069762, -0.335277,
		-0.231263, -0.851321, 0.470924,
		37.265675, 34.823647, 42.310280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796879, 35.536133, 42.350670>,  <37.427559, 35.419575, 41.980633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796879, 35.536133, 42.350670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977345, 35.227169, 42.529476>,  <37.085625, 35.041790, 42.636761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977345, 35.227169, 42.529476>,  <36.796879, 35.536133, 42.350670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977345, 35.227169, 42.529476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143451, 0.431616, 0.890578,
		-0.880835, -0.465925, 0.083927,
		0.451167, -0.772413, 0.447020,
		37.112694, 34.995445, 42.663582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326050, 35.338604, 42.906612>,  <36.796879, 35.536133, 42.350670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326050, 35.338604, 42.906612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646774, 35.152161, 43.056194>,  <36.839207, 35.040295, 43.145943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646774, 35.152161, 43.056194>,  <36.326050, 35.338604, 42.906612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646774, 35.152161, 43.056194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332716, 0.171608, 0.927281,
		-0.496390, -0.867923, -0.017486,
		0.801808, -0.466111, 0.373957,
		36.887318, 35.012329, 43.168381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095665, 34.824627, 43.438473>,  <36.326050, 35.338604, 42.906612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095665, 34.824627, 43.438473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478863, 34.921314, 43.500210>,  <36.708782, 34.979324, 43.537254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478863, 34.921314, 43.500210>,  <36.095665, 34.824627, 43.438473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478863, 34.921314, 43.500210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223168, 0.290281, 0.930555,
		0.180123, -0.925911, 0.332030,
		0.957993, 0.241713, 0.154347,
		36.766262, 34.993828, 43.546513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202244, 34.656792, 44.098827>,  <36.095665, 34.824627, 43.438473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202244, 34.656792, 44.098827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506058, 34.906139, 44.024517>,  <36.688347, 35.055748, 43.979931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506058, 34.906139, 44.024517>,  <36.202244, 34.656792, 44.098827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506058, 34.906139, 44.024517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025018, 0.313393, 0.949294,
		0.649986, -0.716373, 0.253628,
		0.759534, 0.623373, -0.185779,
		36.733917, 35.093151, 43.968784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430550, 34.768463, 44.680923>,  <36.202244, 34.656792, 44.098827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.430550, 34.768463, 44.680923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614445, 35.057034, 44.473778>,  <36.724781, 35.230175, 44.349487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614445, 35.057034, 44.473778>,  <36.430550, 34.768463, 44.680923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614445, 35.057034, 44.473778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106759, 0.534024, 0.838702,
		0.881614, -0.440872, 0.168493,
		0.459739, 0.721423, -0.517869,
		36.752365, 35.273460, 44.318417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936592, 35.076771, 45.092743>,  <36.430550, 34.768463, 44.680923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936592, 35.076771, 45.092743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.888428, 35.384083, 44.841270>,  <36.859531, 35.568470, 44.690388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.888428, 35.384083, 44.841270>,  <36.936592, 35.076771, 45.092743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888428, 35.384083, 44.841270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175569, 0.606827, 0.775201,
		0.977076, 0.203717, 0.061820,
		-0.120408, 0.768284, -0.628683,
		36.852306, 35.614567, 44.652664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339348, 35.566055, 45.347084>,  <36.936592, 35.076771, 45.092743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339348, 35.566055, 45.347084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077770, 35.777367, 45.130463>,  <36.920822, 35.904152, 45.000488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077770, 35.777367, 45.130463>,  <37.339348, 35.566055, 45.347084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077770, 35.777367, 45.130463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099256, 0.649730, 0.753657,
		0.750005, 0.546601, -0.372452,
		-0.653943, 0.528278, -0.541554,
		36.881588, 35.935852, 44.967995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473427, 36.292255, 45.376160>,  <37.339348, 35.566055, 45.347084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473427, 36.292255, 45.376160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087906, 36.284519, 45.269791>,  <36.856594, 36.279877, 45.205971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087906, 36.284519, 45.269791>,  <37.473427, 36.292255, 45.376160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087906, 36.284519, 45.269791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223752, 0.601046, 0.767254,
		0.144991, 0.798980, -0.583617,
		-0.963801, -0.019340, -0.265919,
		36.798767, 36.278717, 45.190014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249702, 36.924946, 45.567234>,  <37.473427, 36.292255, 45.376160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249702, 36.924946, 45.567234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.897701, 36.736252, 45.545124>,  <36.686501, 36.623035, 45.531857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.897701, 36.736252, 45.545124>,  <37.249702, 36.924946, 45.567234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897701, 36.736252, 45.545124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356480, 0.579084, 0.733201,
		-0.313866, 0.664926, -0.677762,
		-0.880006, -0.471736, -0.055278,
		36.633701, 36.594730, 45.528542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758373, 37.521492, 45.546001>,  <37.249702, 36.924946, 45.567234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758373, 37.521492, 45.546001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566769, 37.186100, 45.649929>,  <36.451805, 36.984867, 45.712288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566769, 37.186100, 45.649929>,  <36.758373, 37.521492, 45.546001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566769, 37.186100, 45.649929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422838, 0.479784, 0.768775,
		-0.769257, 0.258389, -0.584361,
		-0.479010, -0.838476, 0.259821,
		36.423065, 36.934559, 45.727875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009113, 37.655819, 45.592529>,  <36.758373, 37.521492, 45.546001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009113, 37.655819, 45.592529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066238, 37.321098, 45.803947>,  <36.100513, 37.120266, 45.930798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066238, 37.321098, 45.803947>,  <36.009113, 37.655819, 45.592529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066238, 37.321098, 45.803947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437907, 0.425488, 0.791958,
		-0.887605, -0.344553, -0.305679,
		0.142809, -0.836806, 0.528548,
		36.109081, 37.070057, 45.962513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357967, 37.470249, 45.911404>,  <36.009113, 37.655819, 45.592529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357967, 37.470249, 45.911404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.657143, 37.298389, 46.113785>,  <35.836647, 37.195274, 46.235214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.657143, 37.298389, 46.113785>,  <35.357967, 37.470249, 45.911404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657143, 37.298389, 46.113785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314272, 0.442165, 0.840073,
		-0.584653, -0.787330, 0.195685,
		0.747940, -0.429653, 0.505949,
		35.881523, 37.169495, 46.265568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016365, 37.113960, 46.471695>,  <35.357967, 37.470249, 45.911404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016365, 37.113960, 46.471695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395741, 37.204662, 46.560287>,  <35.623363, 37.259083, 46.613441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395741, 37.204662, 46.560287>,  <35.016365, 37.113960, 46.471695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395741, 37.204662, 46.560287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312939, 0.558745, 0.768032,
		0.050401, -0.797739, 0.600893,
		0.948435, 0.226753, 0.221482,
		35.680271, 37.272690, 46.626732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038181, 36.968552, 47.165089>,  <35.016365, 37.113960, 46.471695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038181, 36.968552, 47.165089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.327324, 37.217617, 47.045242>,  <35.500809, 37.367058, 46.973335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.327324, 37.217617, 47.045242>,  <35.038181, 36.968552, 47.165089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327324, 37.217617, 47.045242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148575, 0.563506, 0.812642,
		0.674840, -0.542906, 0.499845,
		0.722853, 0.622667, -0.299614,
		35.544182, 37.404419, 46.955357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376808, 37.134857, 47.775005>,  <35.038181, 36.968552, 47.165089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376808, 37.134857, 47.775005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497429, 37.412209, 47.513229>,  <35.569801, 37.578621, 47.356163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497429, 37.412209, 47.513229>,  <35.376808, 37.134857, 47.775005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497429, 37.412209, 47.513229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063081, 0.699399, 0.711942,
		0.951361, -0.173404, 0.254643,
		0.301551, 0.693377, -0.654443,
		35.587894, 37.620220, 47.316898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924911, 37.429390, 48.162949>,  <35.376808, 37.134857, 47.775005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924911, 37.429390, 48.162949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.770901, 37.665058, 47.878799>,  <35.678493, 37.806461, 47.708309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.770901, 37.665058, 47.878799>,  <35.924911, 37.429390, 48.162949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770901, 37.665058, 47.878799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010853, 0.772550, 0.634861,
		0.922840, 0.236731, -0.303850,
		-0.385031, 0.589173, -0.710371,
		35.655392, 37.841808, 47.665688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177738, 38.044052, 48.398170>,  <35.924911, 37.429390, 48.162949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177738, 38.044052, 48.398170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915394, 38.146564, 48.114151>,  <35.757988, 38.208073, 47.943741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915394, 38.146564, 48.114151>,  <36.177738, 38.044052, 48.398170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915394, 38.146564, 48.114151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211441, 0.840588, 0.498703,
		0.724663, 0.477213, -0.497122,
		-0.655863, 0.256279, -0.710046,
		35.718636, 38.223450, 47.901138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247601, 38.772514, 48.176247>,  <36.177738, 38.044052, 48.398170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247601, 38.772514, 48.176247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.873711, 38.702541, 48.052517>,  <35.649376, 38.660557, 47.978279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.873711, 38.702541, 48.052517>,  <36.247601, 38.772514, 48.176247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873711, 38.702541, 48.052517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300925, 0.852638, 0.427145,
		0.189016, 0.492347, -0.849627,
		-0.934728, -0.174937, -0.309321,
		35.593292, 38.650059, 47.959721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976124, 39.454998, 47.873264>,  <36.247601, 38.772514, 48.176247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976124, 39.454998, 47.873264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.677631, 39.218563, 47.995739>,  <35.498535, 39.076702, 48.069225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.677631, 39.218563, 47.995739>,  <35.976124, 39.454998, 47.873264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677631, 39.218563, 47.995739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426130, 0.777532, 0.462447,
		-0.511418, 0.214617, -0.832101,
		-0.746234, -0.591086, 0.306189,
		35.453762, 39.041237, 48.087597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352200, 39.881439, 47.926994>,  <35.976124, 39.454998, 47.873264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352200, 39.881439, 47.926994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309586, 39.562870, 48.165108>,  <35.284016, 39.371727, 48.307976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309586, 39.562870, 48.165108>,  <35.352200, 39.881439, 47.926994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309586, 39.562870, 48.165108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337495, 0.592110, 0.731781,
		-0.935279, -0.122941, -0.331872,
		-0.106539, -0.796425, 0.595279,
		35.277622, 39.323944, 48.343693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591972, 39.890553, 48.243137>,  <35.352200, 39.881439, 47.926994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591972, 39.890553, 48.243137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780621, 39.635723, 48.487007>,  <34.893810, 39.482826, 48.633327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780621, 39.635723, 48.487007>,  <34.591972, 39.890553, 48.243137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780621, 39.635723, 48.487007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218939, 0.585149, 0.780811,
		-0.854189, -0.501730, 0.136488,
		0.471622, -0.637078, 0.609676,
		34.922108, 39.444599, 48.669910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.221825, 39.750763, 48.760029>,  <34.591972, 39.890553, 48.243137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.221825, 39.750763, 48.760029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576221, 39.678658, 48.930920>,  <34.788860, 39.635395, 49.033455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576221, 39.678658, 48.930920>,  <34.221825, 39.750763, 48.760029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576221, 39.678658, 48.930920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296489, 0.488173, 0.820842,
		-0.356530, -0.853927, 0.379071,
		0.885992, -0.180264, 0.427228,
		34.842018, 39.624577, 49.059090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062202, 39.724098, 49.481472>,  <34.221825, 39.750763, 48.760029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062202, 39.724098, 49.481472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460285, 39.761425, 49.493195>,  <34.699135, 39.783821, 49.500229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460285, 39.761425, 49.493195>,  <34.062202, 39.724098, 49.481472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460285, 39.761425, 49.493195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081721, 0.628656, 0.773378,
		0.053751, -0.772064, 0.633267,
		0.995205, 0.093321, 0.029303,
		34.758846, 39.789421, 49.501984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234241, 39.573284, 50.212448>,  <34.062202, 39.724098, 49.481472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234241, 39.573284, 50.212448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.536018, 39.774635, 50.043961>,  <34.717087, 39.895447, 49.942867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.536018, 39.774635, 50.043961>,  <34.234241, 39.573284, 50.212448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536018, 39.774635, 50.043961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123188, 0.521752, 0.844156,
		0.644699, -0.688758, 0.331624,
		0.754445, 0.503375, -0.421220,
		34.762352, 39.925648, 49.917595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726929, 39.535988, 50.620731>,  <34.234241, 39.573284, 50.212448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726929, 39.535988, 50.620731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.888866, 39.827690, 50.400082>,  <34.986027, 40.002712, 50.267693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.888866, 39.827690, 50.400082>,  <34.726929, 39.535988, 50.620731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888866, 39.827690, 50.400082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006374, 0.601002, 0.799222,
		0.914364, -0.327075, 0.238663,
		0.404842, 0.729259, -0.551620,
		35.010319, 40.046467, 50.234596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427677, 39.734673, 50.910255>,  <34.726929, 39.535988, 50.620731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.427677, 39.734673, 50.910255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315788, 40.064068, 50.712826>,  <35.248657, 40.261707, 50.594368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315788, 40.064068, 50.712826>,  <35.427677, 39.734673, 50.910255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315788, 40.064068, 50.712826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189061, 0.551278, 0.812619,
		0.941283, 0.133989, -0.309893,
		-0.279719, 0.823493, -0.493576,
		35.231873, 40.311115, 50.564754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007626, 40.260735, 51.046452>,  <35.427677, 39.734673, 50.910255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007626, 40.260735, 51.046452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667397, 40.450668, 50.956074>,  <35.463257, 40.564629, 50.901848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667397, 40.450668, 50.956074>,  <36.007626, 40.260735, 51.046452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667397, 40.450668, 50.956074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146852, 0.627068, 0.764996,
		0.504933, 0.617506, -0.603099,
		-0.850574, 0.474839, -0.225946,
		35.412224, 40.593121, 50.888290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204388, 40.956924, 51.129993>,  <36.007626, 40.260735, 51.046452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204388, 40.956924, 51.129993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809650, 40.893578, 51.143021>,  <35.572807, 40.855572, 51.150837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809650, 40.893578, 51.143021>,  <36.204388, 40.956924, 51.129993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809650, 40.893578, 51.143021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054681, 0.516466, 0.854560,
		-0.152151, 0.841536, -0.518331,
		-0.986843, -0.158365, 0.032565,
		35.513596, 40.846069, 51.152790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439011, 41.150433, 50.475163>,  <36.204388, 40.956924, 51.129993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439011, 41.150433, 50.475163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646271, 41.097931, 50.813225>,  <36.770626, 41.066429, 51.016064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646271, 41.097931, 50.813225>,  <36.439011, 41.150433, 50.475163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646271, 41.097931, 50.813225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629955, -0.609815, -0.480919,
		0.578515, 0.781599, -0.233289,
		0.518148, -0.131257, 0.845159,
		36.801716, 41.058556, 51.066772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145805, 41.740620, 50.881718>,  <36.439011, 41.150433, 50.475163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145805, 41.740620, 50.881718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325523, 42.089493, 50.804329>,  <36.433353, 42.298817, 50.757896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325523, 42.089493, 50.804329>,  <36.145805, 41.740620, 50.881718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325523, 42.089493, 50.804329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414292, -0.395282, -0.819825,
		-0.791512, 0.288192, -0.538938,
		0.449300, 0.872180, -0.193475,
		36.460312, 42.351147, 50.746284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040791, 41.939678, 50.193871>,  <36.145805, 41.740620, 50.881718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040791, 41.939678, 50.193871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.379864, 42.114845, 50.313648>,  <36.583305, 42.219948, 50.385513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.379864, 42.114845, 50.313648>,  <36.040791, 41.939678, 50.193871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379864, 42.114845, 50.313648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447024, -0.285675, -0.847679,
		-0.285675, 0.852417, -0.437922,
		0.847679, 0.437922, 0.299441,
		36.634167, 42.246223, 50.403481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238552, 42.306671, 49.587242>,  <36.040791, 41.939678, 50.193871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238552, 42.306671, 49.587242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566967, 42.287823, 49.814812>,  <36.764015, 42.276512, 49.951351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566967, 42.287823, 49.814812>,  <36.238552, 42.306671, 49.587242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566967, 42.287823, 49.814812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533491, -0.291341, -0.794045,
		0.203169, 0.955458, -0.214062,
		0.821042, -0.047125, 0.568919,
		36.813278, 42.273685, 49.985489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812992, 42.750027, 49.183399>,  <36.238552, 42.306671, 49.587242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812992, 42.750027, 49.183399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.025326, 42.504787, 49.417435>,  <37.152725, 42.357643, 49.557858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.025326, 42.504787, 49.417435>,  <36.812992, 42.750027, 49.183399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025326, 42.504787, 49.417435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581362, -0.238902, -0.777781,
		0.616633, 0.753021, 0.229614,
		0.530831, -0.613095, 0.585093,
		37.184574, 42.320858, 49.592964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497814, 42.864605, 48.974789>,  <36.812992, 42.750027, 49.183399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497814, 42.864605, 48.974789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482128, 42.509708, 49.158646>,  <37.472717, 42.296772, 49.268959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482128, 42.509708, 49.158646>,  <37.497814, 42.864605, 48.974789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482128, 42.509708, 49.158646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561736, -0.400000, -0.724191,
		0.826386, 0.229795, 0.514081,
		-0.039217, -0.887240, 0.459639,
		37.470364, 42.243538, 49.296535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167683, 42.559658, 49.058201>,  <37.497814, 42.864605, 48.974789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167683, 42.559658, 49.058201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.916176, 42.251736, 49.014301>,  <37.765270, 42.066982, 48.987961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.916176, 42.251736, 49.014301>,  <38.167683, 42.559658, 49.058201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916176, 42.251736, 49.014301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536994, -0.327791, -0.777297,
		0.562397, -0.547673, 0.619487,
		-0.628767, -0.769810, -0.109748,
		37.727547, 42.020794, 48.981377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450111, 42.309330, 48.402733>,  <38.167683, 42.559658, 49.058201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450111, 42.309330, 48.402733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187988, 42.045147, 48.549358>,  <38.030716, 41.886635, 48.637333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187988, 42.045147, 48.549358>,  <38.450111, 42.309330, 48.402733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187988, 42.045147, 48.549358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349138, -0.695163, -0.628371,
		0.669835, -0.283794, 0.686136,
		-0.655305, -0.660461, 0.366561,
		37.991398, 41.847008, 48.659328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684887, 41.644520, 48.448841>,  <38.450111, 42.309330, 48.402733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684887, 41.644520, 48.448841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.294678, 41.574039, 48.396221>,  <38.060551, 41.531754, 48.364651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.294678, 41.574039, 48.396221>,  <38.684887, 41.644520, 48.448841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294678, 41.574039, 48.396221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219021, -0.831682, -0.510230,
		-0.019507, -0.526554, 0.849918,
		-0.975525, -0.176197, -0.131550,
		38.002022, 41.521179, 48.356754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572262, 40.892509, 48.673119>,  <38.684887, 41.644520, 48.448841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572262, 40.892509, 48.673119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.266991, 41.003178, 48.439533>,  <38.083828, 41.069580, 48.299381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.266991, 41.003178, 48.439533>,  <38.572262, 40.892509, 48.673119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266991, 41.003178, 48.439533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114522, -0.831488, -0.543611,
		-0.635962, -0.481747, 0.602886,
		-0.763176, 0.276672, -0.583965,
		38.038036, 41.086178, 48.264343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182194, 40.318974, 48.561737>,  <38.572262, 40.892509, 48.673119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182194, 40.318974, 48.561737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.063858, 40.542305, 48.251709>,  <37.992855, 40.676304, 48.065689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.063858, 40.542305, 48.251709>,  <38.182194, 40.318974, 48.561737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063858, 40.542305, 48.251709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120408, -0.826720, -0.549577,
		-0.947618, -0.069263, 0.311807,
		-0.295842, 0.558333, -0.775075,
		37.975105, 40.709805, 48.019188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793106, 39.891888, 48.283073>,  <38.182194, 40.318974, 48.561737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793106, 39.891888, 48.283073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835655, 40.149662, 47.980183>,  <37.861183, 40.304325, 47.798447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835655, 40.149662, 47.980183>,  <37.793106, 39.891888, 48.283073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835655, 40.149662, 47.980183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005252, -0.761174, -0.648527,
		-0.994313, 0.072960, -0.077580,
		0.106369, 0.644431, -0.757228,
		37.867565, 40.342991, 47.753014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298286, 39.813324, 47.780540>,  <37.793106, 39.891888, 48.283073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298286, 39.813324, 47.780540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603340, 39.983124, 47.585327>,  <37.786373, 40.085003, 47.468197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603340, 39.983124, 47.585327>,  <37.298286, 39.813324, 47.780540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603340, 39.983124, 47.585327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082218, -0.684771, -0.724105,
		-0.641578, 0.592356, -0.487331,
		0.762638, 0.424503, -0.488037,
		37.832130, 40.110474, 47.438915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093407, 39.717087, 47.016342>,  <37.298286, 39.813324, 47.780540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093407, 39.717087, 47.016342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.485146, 39.788555, 47.054192>,  <37.720188, 39.831436, 47.076900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.485146, 39.788555, 47.054192>,  <37.093407, 39.717087, 47.016342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485146, 39.788555, 47.054192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191375, -0.668309, -0.718845,
		-0.065198, 0.722109, -0.688700,
		0.979349, 0.178667, 0.094622,
		37.778950, 39.842155, 47.082577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213390, 39.689453, 46.363037>,  <37.093407, 39.717087, 47.016342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213390, 39.689453, 46.363037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.545139, 39.667412, 46.585430>,  <37.744186, 39.654186, 46.718864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.545139, 39.667412, 46.585430>,  <37.213390, 39.689453, 46.363037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545139, 39.667412, 46.585430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421594, -0.591270, -0.687501,
		0.366614, 0.804589, -0.467151,
		0.829369, -0.055099, 0.555978,
		37.793949, 39.650883, 46.752224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767860, 39.892376, 45.899075>,  <37.213390, 39.689453, 46.363037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767860, 39.892376, 45.899075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.970596, 39.685699, 46.175087>,  <38.092236, 39.561695, 46.340694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.970596, 39.685699, 46.175087>,  <37.767860, 39.892376, 45.899075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970596, 39.685699, 46.175087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429962, -0.542269, -0.721857,
		0.747160, 0.662553, -0.052685,
		0.506838, -0.516690, 0.690034,
		38.122646, 39.530693, 46.382095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425495, 39.818062, 45.569351>,  <37.767860, 39.892376, 45.899075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425495, 39.818062, 45.569351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395164, 39.554508, 45.868717>,  <38.376965, 39.396374, 46.048336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395164, 39.554508, 45.868717>,  <38.425495, 39.818062, 45.569351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395164, 39.554508, 45.868717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310325, -0.728891, -0.610260,
		0.947602, 0.185977, 0.259738,
		-0.075826, -0.658886, 0.748411,
		38.372417, 39.356842, 46.093239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024059, 39.339088, 45.389488>,  <38.425495, 39.818062, 45.569351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024059, 39.339088, 45.389488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.778942, 39.155701, 45.646950>,  <38.631870, 39.045670, 45.801426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.778942, 39.155701, 45.646950>,  <39.024059, 39.339088, 45.389488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778942, 39.155701, 45.646950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134270, -0.863064, -0.486921,
		0.778751, -0.211960, 0.590440,
		-0.612795, -0.458469, 0.643652,
		38.595104, 39.018162, 45.840046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292885, 38.623375, 45.456116>,  <39.024059, 39.339088, 45.389488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292885, 38.623375, 45.456116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909382, 38.605957, 45.568462>,  <38.679279, 38.595509, 45.635872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909382, 38.605957, 45.568462>,  <39.292885, 38.623375, 45.456116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909382, 38.605957, 45.568462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106400, -0.861354, -0.496737,
		0.263555, -0.506135, 0.821198,
		-0.958758, -0.043542, 0.280867,
		38.621754, 38.592896, 45.652721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126709, 37.940708, 45.855469>,  <39.292885, 38.623375, 45.456116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126709, 37.940708, 45.855469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.804089, 38.073097, 45.659538>,  <38.610516, 38.152531, 45.541981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.804089, 38.073097, 45.659538>,  <39.126709, 37.940708, 45.855469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804089, 38.073097, 45.659538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134334, -0.909519, -0.393356,
		-0.575695, -0.251463, 0.778037,
		-0.806555, 0.330969, -0.489826,
		38.562122, 38.172386, 45.512592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656540, 37.309456, 45.738167>,  <39.126709, 37.940708, 45.855469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656540, 37.309456, 45.738167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507072, 37.571140, 45.475147>,  <38.417393, 37.728153, 45.317333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507072, 37.571140, 45.475147>,  <38.656540, 37.309456, 45.738167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507072, 37.571140, 45.475147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020644, -0.714594, -0.699235,
		-0.927333, -0.247706, 0.280525,
		-0.373666, 0.654215, -0.657553,
		38.394974, 37.767406, 45.277882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140114, 36.935345, 45.405190>,  <38.656540, 37.309456, 45.738167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140114, 36.935345, 45.405190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.216095, 37.241650, 45.159416>,  <38.261684, 37.425434, 45.011951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.216095, 37.241650, 45.159416>,  <38.140114, 36.935345, 45.405190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216095, 37.241650, 45.159416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062914, -0.615045, -0.785978,
		-0.979776, 0.187953, -0.068651,
		0.189950, 0.765763, -0.614431,
		38.273079, 37.471378, 44.975086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727634, 36.875214, 44.697571>,  <38.140114, 36.935345, 45.405190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727634, 36.875214, 44.697571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.024223, 37.122887, 44.594170>,  <38.202179, 37.271492, 44.532127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.024223, 37.122887, 44.594170>,  <37.727634, 36.875214, 44.697571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024223, 37.122887, 44.594170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062427, -0.447251, -0.892227,
		-0.668069, 0.645428, -0.370280,
		0.741476, 0.619185, -0.258502,
		38.246666, 37.308643, 44.516621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522160, 37.183777, 44.028969>,  <37.727634, 36.875214, 44.697571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522160, 37.183777, 44.028969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.918991, 37.224934, 44.057774>,  <38.157089, 37.249626, 44.075058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.918991, 37.224934, 44.057774>,  <37.522160, 37.183777, 44.028969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918991, 37.224934, 44.057774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119056, -0.588048, -0.800016,
		-0.039965, 0.802255, -0.595642,
		0.992083, 0.102887, 0.072012,
		38.216618, 37.255798, 44.079376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690681, 37.188892, 43.285915>,  <37.522160, 37.183777, 44.028969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690681, 37.188892, 43.285915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.037800, 37.127708, 43.475033>,  <38.246071, 37.090996, 43.588505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.037800, 37.127708, 43.475033>,  <37.690681, 37.188892, 43.285915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037800, 37.127708, 43.475033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298797, -0.599610, -0.742420,
		0.397054, 0.785538, -0.474634,
		0.867795, -0.152961, 0.472794,
		38.298138, 37.081821, 43.616871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165325, 37.244347, 42.764503>,  <37.690681, 37.188892, 43.285915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165325, 37.244347, 42.764503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.369602, 37.027035, 43.031052>,  <38.492168, 36.896648, 43.190979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.369602, 37.027035, 43.031052>,  <38.165325, 37.244347, 42.764503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369602, 37.027035, 43.031052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362663, -0.566608, -0.739885,
		0.779531, 0.619521, -0.092337,
		0.510693, -0.543276, 0.666366,
		38.522812, 36.864052, 43.230961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828449, 37.184139, 42.549919>,  <38.165325, 37.244347, 42.764503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828449, 37.184139, 42.549919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.812740, 36.878902, 42.807957>,  <38.803314, 36.695759, 42.962780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.812740, 36.878902, 42.807957>,  <38.828449, 37.184139, 42.549919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812740, 36.878902, 42.807957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384203, -0.607495, -0.695225,
		0.922413, 0.220544, 0.317040,
		-0.039273, -0.763093, 0.645095,
		38.800957, 36.649975, 43.001484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568314, 36.806377, 42.592079>,  <38.828449, 37.184139, 42.549919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.568314, 36.806377, 42.592079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.295376, 36.534790, 42.700459>,  <39.131615, 36.371838, 42.765484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.295376, 36.534790, 42.700459>,  <39.568314, 36.806377, 42.592079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.295376, 36.534790, 42.700459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396738, -0.655243, -0.642849,
		0.614009, -0.331149, 0.716473,
		-0.682342, -0.678967, 0.270946,
		39.090672, 36.331100, 42.781742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951183, 36.192459, 42.761261>,  <39.568314, 36.806377, 42.592079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.951183, 36.192459, 42.761261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589008, 36.035744, 42.695923>,  <39.371704, 35.941715, 42.656719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589008, 36.035744, 42.695923>,  <39.951183, 36.192459, 42.761261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589008, 36.035744, 42.695923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407573, -0.694921, -0.592426,
		0.118599, -0.602979, 0.788892,
		-0.905438, -0.391792, -0.163341,
		39.317375, 35.918205, 42.646919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.018497, 35.443253, 42.856014>,  <39.951183, 36.192459, 42.761261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.018497, 35.443253, 42.856014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.692860, 35.484112, 42.627342>,  <39.497478, 35.508625, 42.490139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.692860, 35.484112, 42.627342>,  <40.018497, 35.443253, 42.856014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.692860, 35.484112, 42.627342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306815, -0.760155, -0.572738,
		-0.493065, -0.641663, 0.587499,
		-0.814095, 0.102144, -0.571678,
		39.448631, 35.514755, 42.455837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984711, 34.772572, 42.523472>,  <40.018497, 35.443253, 42.856014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984711, 34.772572, 42.523472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.733841, 34.996082, 42.306431>,  <39.583321, 35.130188, 42.176205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.733841, 34.996082, 42.306431>,  <39.984711, 34.772572, 42.523472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733841, 34.996082, 42.306431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323541, -0.446795, -0.834083,
		-0.708501, -0.698670, 0.099430,
		-0.627174, 0.558779, -0.542603,
		39.545689, 35.163715, 42.143650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766582, 34.272362, 41.997173>,  <39.984711, 34.772572, 42.523472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766582, 34.272362, 41.997173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.678787, 34.632683, 41.847298>,  <39.626110, 34.848873, 41.757374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.678787, 34.632683, 41.847298>,  <39.766582, 34.272362, 41.997173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.678787, 34.632683, 41.847298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406862, -0.264547, -0.874344,
		-0.886730, -0.344351, -0.308437,
		-0.219485, 0.900798, -0.374685,
		39.612942, 34.902924, 41.734894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235680, 34.180626, 41.356094>,  <39.766582, 34.272362, 41.997173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235680, 34.180626, 41.356094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401352, 34.541550, 41.308270>,  <39.500755, 34.758102, 41.279575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401352, 34.541550, 41.308270>,  <39.235680, 34.180626, 41.356094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401352, 34.541550, 41.308270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273456, -0.248652, -0.929190,
		-0.868145, 0.352157, -0.349728,
		0.414181, 0.902307, -0.119566,
		39.525608, 34.812241, 41.272400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914959, 34.416718, 40.852634>,  <39.235680, 34.180626, 41.356094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914959, 34.416718, 40.852634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.249146, 34.635925, 40.836277>,  <39.449657, 34.767452, 40.826462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.249146, 34.635925, 40.836277>,  <38.914959, 34.416718, 40.852634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249146, 34.635925, 40.836277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036966, -0.130292, -0.990786,
		-0.548300, 0.826255, -0.129113,
		0.835464, 0.548021, -0.040896,
		39.499786, 34.800331, 40.824009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944221, 34.889080, 40.193951>,  <38.914959, 34.416718, 40.852634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944221, 34.889080, 40.193951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.329674, 34.892906, 40.300781>,  <39.560944, 34.895203, 40.364880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.329674, 34.892906, 40.300781>,  <38.944221, 34.889080, 40.193951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329674, 34.892906, 40.300781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267200, -0.053213, -0.962171,
		0.005011, 0.998537, -0.053832,
		0.963628, 0.009563, 0.267076,
		39.618763, 34.895775, 40.380905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330715, 35.444115, 39.838192>,  <38.944221, 34.889080, 40.193951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330715, 35.444115, 39.838192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609390, 35.172985, 39.932156>,  <39.776596, 35.010307, 39.988533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609390, 35.172985, 39.932156>,  <39.330715, 35.444115, 39.838192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609390, 35.172985, 39.932156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376952, 0.067295, -0.923785,
		0.610351, 0.732142, 0.302389,
		0.696691, -0.677820, 0.234908,
		39.818398, 34.969639, 40.002628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818619, 35.693035, 39.427128>,  <39.330715, 35.444115, 39.838192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818619, 35.693035, 39.427128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.940956, 35.328178, 39.536274>,  <40.014359, 35.109264, 39.601761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.940956, 35.328178, 39.536274>,  <39.818619, 35.693035, 39.427128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940956, 35.328178, 39.536274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490020, -0.094912, -0.866529,
		0.816297, 0.398728, 0.417942,
		0.305842, -0.912145, 0.272861,
		40.032707, 35.054535, 39.618134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536915, 35.745411, 39.454178>,  <39.818619, 35.693035, 39.427128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.536915, 35.745411, 39.454178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.456646, 35.356983, 39.402393>,  <40.408485, 35.123928, 39.371323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.456646, 35.356983, 39.402393>,  <40.536915, 35.745411, 39.454178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.456646, 35.356983, 39.402393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694111, -0.047677, -0.718287,
		0.691332, -0.234000, 0.683596,
		-0.200671, -0.971067, -0.129462,
		40.396446, 35.065662, 39.363556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.176163, 35.352520, 39.438263>,  <40.536915, 35.745411, 39.454178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.176163, 35.352520, 39.438263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.912956, 35.100113, 39.273911>,  <40.755032, 34.948669, 39.175297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.912956, 35.100113, 39.273911>,  <41.176163, 35.352520, 39.438263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.912956, 35.100113, 39.273911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581520, -0.079194, -0.809668,
		0.478377, -0.771715, 0.419061,
		-0.658020, -0.631019, -0.410883,
		40.715549, 34.910809, 39.150646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.513523, 34.774323, 39.207325>,  <41.176163, 35.352520, 39.438263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.513523, 34.774323, 39.207325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.185165, 34.759872, 38.979351>,  <40.988152, 34.751202, 38.842567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.185165, 34.759872, 38.979351>,  <41.513523, 34.774323, 39.207325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.185165, 34.759872, 38.979351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558852, -0.256215, -0.788694,
		-0.117531, -0.965944, 0.230517,
		-0.820896, -0.036128, -0.569933,
		40.938896, 34.749035, 38.808372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.581085, 34.142792, 38.795483>,  <41.513523, 34.774323, 39.207325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.581085, 34.142792, 38.795483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.297821, 34.367245, 38.624069>,  <41.127865, 34.501915, 38.521221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.297821, 34.367245, 38.624069>,  <41.581085, 34.142792, 38.795483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.297821, 34.367245, 38.624069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336024, -0.265951, -0.903525,
		-0.620968, -0.783836, -0.000219,
		-0.708157, 0.561134, -0.428535,
		41.085373, 34.535583, 38.495510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.148964, 33.764465, 38.269398>,  <41.581085, 34.142792, 38.795483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.148964, 33.764465, 38.269398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.194679, 34.158955, 38.221561>,  <41.222111, 34.395649, 38.192860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.194679, 34.158955, 38.221561>,  <41.148964, 33.764465, 38.269398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.194679, 34.158955, 38.221561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351596, -0.152744, -0.923607,
		-0.929149, 0.063513, -0.364209,
		0.114292, 0.986223, -0.119591,
		41.228966, 34.454823, 38.185684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.205635, 33.822029, 37.544025>,  <41.148964, 33.764465, 38.269398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.205635, 33.822029, 37.544025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.355068, 34.173084, 37.664146>,  <41.444729, 34.383717, 37.736221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.355068, 34.173084, 37.664146>,  <41.205635, 33.822029, 37.544025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.355068, 34.173084, 37.664146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698789, -0.053369, -0.713334,
		-0.610023, 0.476342, -0.633222,
		0.373586, 0.877639, 0.300307,
		41.467144, 34.436375, 37.754238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.177425, 34.394894, 37.022743>,  <41.205635, 33.822029, 37.544025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.177425, 34.394894, 37.022743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.501614, 34.424030, 37.255238>,  <41.696125, 34.441513, 37.394733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.501614, 34.424030, 37.255238>,  <41.177425, 34.394894, 37.022743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.501614, 34.424030, 37.255238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580745, 0.029881, -0.813537,
		-0.076626, 0.996896, -0.018083,
		0.810471, 0.072839, 0.581233,
		41.744755, 34.445881, 37.429607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.465267, 34.779007, 36.584400>,  <41.177425, 34.394894, 37.022743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.465267, 34.779007, 36.584400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.713287, 34.592186, 36.836555>,  <41.862099, 34.480095, 36.987850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.713287, 34.592186, 36.836555>,  <41.465267, 34.779007, 36.584400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.713287, 34.592186, 36.836555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600096, -0.235254, -0.764552,
		0.505388, 0.852360, 0.134405,
		0.620055, -0.467052, 0.630393,
		41.899303, 34.452072, 37.025673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.088791, 35.081387, 36.378258>,  <41.465267, 34.779007, 36.584400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.088791, 35.081387, 36.378258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.135738, 34.728539, 36.560726>,  <42.163906, 34.516830, 36.670208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.135738, 34.728539, 36.560726>,  <42.088791, 35.081387, 36.378258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.135738, 34.728539, 36.560726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624139, -0.291766, -0.724792,
		0.772448, 0.369781, 0.516321,
		0.117369, -0.882120, 0.456168,
		42.170948, 34.463902, 36.697578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.820576, 34.861614, 36.624943>,  <42.088791, 35.081387, 36.378258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.820576, 34.861614, 36.624943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.631687, 34.533012, 36.497112>,  <42.518353, 34.335850, 36.420414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.631687, 34.533012, 36.497112>,  <42.820576, 34.861614, 36.624943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.631687, 34.533012, 36.497112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717728, -0.147866, -0.680443,
		0.511734, -0.550692, 0.659445,
		-0.472224, -0.821507, -0.319579,
		42.490021, 34.286560, 36.401237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.535122, 35.228634, 36.320705>,  <42.820576, 34.861614, 36.624943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.535122, 35.228634, 36.320705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.910046, 35.272652, 36.452969>,  <44.135002, 35.299061, 36.532326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.910046, 35.272652, 36.452969>,  <43.535122, 35.228634, 36.320705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.910046, 35.272652, 36.452969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341803, 0.475294, 0.810719,
		-0.067947, -0.872918, 0.483112,
		0.937312, 0.110043, 0.330662,
		44.191238, 35.305664, 36.552166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.649220, 34.890312, 36.995987>,  <43.535122, 35.228634, 36.320705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.649220, 34.890312, 36.995987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.899887, 35.201756, 36.983021>,  <44.050289, 35.388622, 36.975243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.899887, 35.201756, 36.983021>,  <43.649220, 34.890312, 36.995987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.899887, 35.201756, 36.983021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253795, 0.243241, 0.936174,
		0.736799, -0.578446, 0.350039,
		0.626669, 0.778611, -0.032413,
		44.087887, 35.435337, 36.973297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.002159, 34.906212, 37.701855>,  <43.649220, 34.890312, 36.995987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.002159, 34.906212, 37.701855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.039745, 35.266197, 37.531570>,  <44.062298, 35.482189, 37.429401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.039745, 35.266197, 37.531570>,  <44.002159, 34.906212, 37.701855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.039745, 35.266197, 37.531570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166881, 0.435789, 0.884443,
		0.981489, -0.012064, 0.191136,
		0.093965, 0.899968, -0.425709,
		44.067936, 35.536186, 37.403858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.319515, 35.229286, 38.166286>,  <44.002159, 34.906212, 37.701855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.319515, 35.229286, 38.166286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.151688, 35.530445, 37.963463>,  <44.050991, 35.711140, 37.841770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.151688, 35.530445, 37.963463>,  <44.319515, 35.229286, 38.166286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.151688, 35.530445, 37.963463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156871, 0.490058, 0.857459,
		0.894066, 0.439306, -0.087505,
		-0.419569, 0.752897, -0.507058,
		44.025818, 35.756313, 37.811344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.631283, 35.924736, 38.510460>,  <44.319515, 35.229286, 38.166286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.631283, 35.924736, 38.510460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.290092, 36.010548, 38.320133>,  <44.085377, 36.062035, 38.205936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.290092, 36.010548, 38.320133>,  <44.631283, 35.924736, 38.510460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.290092, 36.010548, 38.320133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318934, 0.507405, 0.800513,
		0.413169, 0.834575, -0.364384,
		-0.852978, 0.214533, -0.475819,
		44.034199, 36.074909, 38.177387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.619793, 36.624878, 38.651134>,  <44.631283, 35.924736, 38.510460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.619793, 36.624878, 38.651134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.253384, 36.497894, 38.553051>,  <44.033539, 36.421703, 38.494202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.253384, 36.497894, 38.553051>,  <44.619793, 36.624878, 38.651134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.253384, 36.497894, 38.553051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382944, 0.510079, 0.770178,
		-0.119425, 0.799399, -0.588811,
		-0.916020, -0.317460, -0.245209,
		43.978577, 36.402657, 38.479488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.127720, 37.233727, 38.613964>,  <44.619793, 36.624878, 38.651134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.127720, 37.233727, 38.613964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.912937, 36.900524, 38.667297>,  <43.784069, 36.700603, 38.699299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.912937, 36.900524, 38.667297>,  <44.127720, 37.233727, 38.613964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.912937, 36.900524, 38.667297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349960, 0.363759, 0.863254,
		-0.767599, 0.416867, -0.486841,
		-0.536955, -0.833007, 0.133334,
		43.751850, 36.650623, 38.707298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.395115, 37.503071, 38.833790>,  <44.127720, 37.233727, 38.613964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.395115, 37.503071, 38.833790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.404079, 37.115356, 38.931759>,  <43.409458, 36.882729, 38.990540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.404079, 37.115356, 38.931759>,  <43.395115, 37.503071, 38.833790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.404079, 37.115356, 38.931759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413531, 0.214055, 0.884971,
		-0.910214, -0.121111, -0.396033,
		0.022407, -0.969285, 0.244918,
		43.410801, 36.824570, 39.005234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.691998, 37.350670, 39.206467>,  <43.395115, 37.503071, 38.833790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.691998, 37.350670, 39.206467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.958660, 37.069748, 39.306332>,  <43.118660, 36.901196, 39.366249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.958660, 37.069748, 39.306332>,  <42.691998, 37.350670, 39.206467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.958660, 37.069748, 39.306332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310269, 0.043080, 0.949672,
		-0.677716, -0.710570, -0.189184,
		0.666659, -0.702306, 0.249664,
		43.158657, 36.859055, 39.381229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.347614, 36.841152, 39.609245>,  <42.691998, 37.350670, 39.206467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.347614, 36.841152, 39.609245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.735821, 36.809074, 39.700161>,  <42.968746, 36.789829, 39.754711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.735821, 36.809074, 39.700161>,  <42.347614, 36.841152, 39.609245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.735821, 36.809074, 39.700161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225159, 0.034841, 0.973699,
		-0.086001, -0.996170, 0.015758,
		0.970519, -0.080190, 0.227293,
		43.026978, 36.785019, 39.768349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.222111, 36.590134, 40.197765>,  <42.347614, 36.841152, 39.609245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.222111, 36.590134, 40.197765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.606678, 36.699986, 40.204071>,  <42.837418, 36.765896, 40.207855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.606678, 36.699986, 40.204071>,  <42.222111, 36.590134, 40.197765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.606678, 36.699986, 40.204071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135996, 0.424712, 0.895056,
		0.239115, -0.862669, 0.445676,
		0.961421, 0.274632, 0.015764,
		42.895103, 36.782375, 40.208801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.421497, 36.664356, 40.916737>,  <42.222111, 36.590134, 40.197765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.421497, 36.664356, 40.916737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.740711, 36.853111, 40.766827>,  <42.932240, 36.966366, 40.676880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.740711, 36.853111, 40.766827>,  <42.421497, 36.664356, 40.916737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.740711, 36.853111, 40.766827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076094, 0.538031, 0.839483,
		0.597787, -0.698455, 0.393459,
		0.798035, 0.471892, -0.374776,
		42.980122, 36.994678, 40.654392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.923374, 36.607796, 41.421860>,  <42.421497, 36.664356, 40.916737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.923374, 36.607796, 41.421860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.023438, 36.921001, 41.194065>,  <43.083477, 37.108925, 41.057388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.023438, 36.921001, 41.194065>,  <42.923374, 36.607796, 41.421860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.023438, 36.921001, 41.194065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005278, 0.589282, 0.807910,
		0.968190, -0.199101, 0.151548,
		0.250160, 0.783011, -0.569486,
		43.098484, 37.155903, 41.023220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.540215, 36.860592, 41.732834>,  <42.923374, 36.607796, 41.421860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.540215, 36.860592, 41.732834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.430206, 37.180630, 41.519588>,  <43.364201, 37.372654, 41.391640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.430206, 37.180630, 41.519588>,  <43.540215, 36.860592, 41.732834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.430206, 37.180630, 41.519588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164977, 0.585544, 0.793675,
		0.947177, 0.130327, -0.293035,
		-0.275023, 0.800095, -0.533113,
		43.347698, 37.420658, 41.359653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.072994, 37.372192, 41.834290>,  <43.540215, 36.860592, 41.732834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.072994, 37.372192, 41.834290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.746307, 37.594658, 41.772785>,  <43.550293, 37.728138, 41.735882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.746307, 37.594658, 41.772785>,  <44.072994, 37.372192, 41.834290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.746307, 37.594658, 41.772785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315744, 0.653780, 0.687661,
		0.482982, 0.513078, -0.709563,
		-0.816721, 0.556168, -0.153763,
		43.501289, 37.761509, 41.726658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.346592, 38.143219, 41.924026>,  <44.072994, 37.372192, 41.834290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.346592, 38.143219, 41.924026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.947060, 38.162544, 41.924068>,  <43.707340, 38.174141, 41.924095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.947060, 38.162544, 41.924068>,  <44.346592, 38.143219, 41.924026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.947060, 38.162544, 41.924068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028399, 0.585326, 0.810301,
		0.039088, 0.809358, -0.586014,
		-0.998832, 0.048315, 0.000106,
		43.647411, 38.177040, 41.924099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.192619, 38.881748, 41.787945>,  <44.346592, 38.143219, 41.924026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.192619, 38.881748, 41.787945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.880905, 38.703163, 41.963848>,  <43.693874, 38.596012, 42.069389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.880905, 38.703163, 41.963848>,  <44.192619, 38.881748, 41.787945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.880905, 38.703163, 41.963848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033953, 0.670624, 0.741020,
		-0.625746, 0.592399, -0.507450,
		-0.779287, -0.446461, 0.439754,
		43.647118, 38.569225, 42.095776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.847069, 39.398464, 41.985611>,  <44.192619, 38.881748, 41.787945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.847069, 39.398464, 41.985611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.702843, 39.092926, 42.199730>,  <43.616306, 38.909603, 42.328201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.702843, 39.092926, 42.199730>,  <43.847069, 39.398464, 41.985611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.702843, 39.092926, 42.199730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056769, 0.554861, 0.830004,
		-0.931005, 0.329658, -0.156700,
		-0.360564, -0.763842, 0.535293,
		43.594673, 38.863773, 42.360317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.483841, 39.726635, 42.474747>,  <43.847069, 39.398464, 41.985611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.483841, 39.726635, 42.474747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.501812, 39.359070, 42.631508>,  <43.512596, 39.138531, 42.725563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.501812, 39.359070, 42.631508>,  <43.483841, 39.726635, 42.474747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.501812, 39.359070, 42.631508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132205, 0.394317, 0.909415,
		-0.990204, 0.010954, 0.139200,
		0.044927, -0.918909, 0.391902,
		43.515289, 39.083397, 42.749077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.953411, 39.626484, 42.979839>,  <43.483841, 39.726635, 42.474747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.953411, 39.626484, 42.979839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.244663, 39.365696, 43.064468>,  <43.419415, 39.209221, 43.115246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.244663, 39.365696, 43.064468>,  <42.953411, 39.626484, 42.979839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.244663, 39.365696, 43.064468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196574, 0.494316, 0.846765,
		-0.656648, -0.574965, 0.488087,
		0.728129, -0.651972, 0.211568,
		43.463100, 39.170105, 43.127937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.841698, 39.223854, 43.637348>,  <42.953411, 39.626484, 42.979839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.841698, 39.223854, 43.637348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.236111, 39.215500, 43.571247>,  <43.472759, 39.210487, 43.531586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.236111, 39.215500, 43.571247>,  <42.841698, 39.223854, 43.637348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.236111, 39.215500, 43.571247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155654, 0.468716, 0.869527,
		0.059299, -0.883102, 0.465419,
		0.986030, -0.020882, -0.165252,
		43.531921, 39.209236, 43.521671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.187035, 38.835304, 44.275089>,  <42.841698, 39.223854, 43.637348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.187035, 38.835304, 44.275089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.451805, 39.066208, 44.083828>,  <43.610668, 39.204750, 43.969070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.451805, 39.066208, 44.083828>,  <43.187035, 38.835304, 44.275089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.451805, 39.066208, 44.083828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342936, 0.333999, 0.877975,
		0.666520, -0.745128, 0.023119,
		0.661925, 0.577259, -0.478148,
		43.650383, 39.239384, 43.940384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.628403, 38.842186, 44.732006>,  <43.187035, 38.835304, 44.275089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.628403, 38.842186, 44.732006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.751591, 39.138317, 44.492985>,  <43.825504, 39.315994, 44.349571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.751591, 39.138317, 44.492985>,  <43.628403, 38.842186, 44.732006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.751591, 39.138317, 44.492985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334385, 0.503782, 0.796486,
		0.890697, -0.445107, -0.092405,
		0.307969, 0.740327, -0.597554,
		43.843983, 39.360416, 44.313717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.263821, 38.521290, 44.710629>,  <43.628403, 38.842186, 44.732006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.263821, 38.521290, 44.710629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.219753, 38.169563, 44.525303>,  <44.193314, 37.958527, 44.414108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.219753, 38.169563, 44.525303>,  <44.263821, 38.521290, 44.710629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.219753, 38.169563, 44.525303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864033, -0.315121, 0.392613,
		-0.491233, -0.357068, 0.794476,
		-0.110167, -0.879318, -0.463317,
		44.186703, 37.905769, 44.386307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.363655, 38.020279, 45.292568>,  <44.263821, 38.521290, 44.710629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.363655, 38.020279, 45.292568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.444473, 37.875938, 44.928379>,  <44.492962, 37.789333, 44.709866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.444473, 37.875938, 44.928379>,  <44.363655, 38.020279, 45.292568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.444473, 37.875938, 44.928379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922531, -0.241992, 0.300627,
		-0.328810, -0.900681, 0.284004,
		0.202042, -0.360852, -0.910475,
		44.505085, 37.767681, 44.655235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.652725, 37.274612, 45.325371>,  <44.363655, 38.020279, 45.292568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.652725, 37.274612, 45.325371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.790321, 37.476444, 45.008621>,  <44.872879, 37.597546, 44.818569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.790321, 37.476444, 45.008621>,  <44.652725, 37.274612, 45.325371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.790321, 37.476444, 45.008621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936333, -0.121120, 0.329562,
		0.070379, -0.854825, -0.514122,
		0.343988, 0.504584, -0.791876,
		44.893517, 37.627819, 44.771057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.323616, 37.039280, 45.061096>,  <44.652725, 37.274612, 45.325371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.323616, 37.039280, 45.061096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.319763, 37.420303, 44.939411>,  <45.317451, 37.648918, 44.866398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.319763, 37.420303, 44.939411>,  <45.323616, 37.039280, 45.061096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.319763, 37.420303, 44.939411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972464, 0.079767, 0.218975,
		0.232852, -0.293729, -0.927094,
		-0.009632, 0.952555, -0.304214,
		45.316875, 37.706070, 44.848148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.740292, 37.251892, 44.443508>,  <45.323616, 37.039280, 45.061096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.740292, 37.251892, 44.443508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.705288, 37.555698, 44.701340>,  <45.684288, 37.737984, 44.856037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.705288, 37.555698, 44.701340>,  <45.740292, 37.251892, 44.443508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.705288, 37.555698, 44.701340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985528, -0.028295, 0.167135,
		0.145180, 0.649872, -0.746049,
		-0.087507, 0.759517, 0.644574,
		45.679035, 37.783554, 44.894711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.217201, 37.004665, 45.143093>,  <45.740292, 37.251892, 44.443508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.217201, 37.004665, 45.143093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.214802, 36.608257, 45.196529>,  <46.213364, 36.370415, 45.228592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.214802, 36.608257, 45.196529>,  <46.217201, 37.004665, 45.143093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.214802, 36.608257, 45.196529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106425, -0.133467, -0.985323,
		0.994303, 0.008311, 0.106269,
		-0.005995, -0.991018, 0.133592,
		46.213005, 36.310951, 45.236607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.775742, 36.618511, 44.836189>,  <46.217201, 37.004665, 45.143093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.775742, 36.618511, 44.836189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.453384, 36.384563, 44.872986>,  <46.259972, 36.244194, 44.895065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.453384, 36.384563, 44.872986>,  <46.775742, 36.618511, 44.836189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.453384, 36.384563, 44.872986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000214, -0.155665, -0.987810,
		0.592060, -0.796050, 0.125575,
		-0.805894, -0.584870, 0.091993,
		46.211617, 36.209103, 44.900585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.929977, 35.893673, 44.454868>,  <46.775742, 36.618511, 44.836189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.929977, 35.893673, 44.454868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.531815, 35.928516, 44.438984>,  <46.292915, 35.949421, 44.429455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.531815, 35.928516, 44.438984>,  <46.929977, 35.893673, 44.454868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.531815, 35.928516, 44.438984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010226, -0.315650, -0.948821,
		-0.095182, -0.944869, 0.313309,
		-0.995407, 0.087107, -0.039707,
		46.233192, 35.954647, 44.427071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.553028, 35.263206, 44.192627>,  <46.929977, 35.893673, 44.454868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.553028, 35.263206, 44.192627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.339085, 35.584919, 44.089039>,  <46.210720, 35.777946, 44.026886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.339085, 35.584919, 44.089039>,  <46.553028, 35.263206, 44.192627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.339085, 35.584919, 44.089039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082450, -0.354714, -0.931333,
		-0.840911, -0.476776, 0.256033,
		-0.534856, 0.804278, -0.258972,
		46.178627, 35.826202, 44.011349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.968540, 35.123802, 43.829269>,  <46.553028, 35.263206, 44.192627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.968540, 35.123802, 43.829269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.934841, 35.507530, 43.721481>,  <45.914619, 35.737766, 43.656807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.934841, 35.507530, 43.721481>,  <45.968540, 35.123802, 43.829269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.934841, 35.507530, 43.721481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148747, -0.279511, -0.948550,
		-0.985280, -0.039833, 0.166245,
		-0.084251, 0.959316, -0.269472,
		45.909565, 35.795326, 43.640640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.381149, 35.173347, 43.347031>,  <45.968540, 35.123802, 43.829269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.381149, 35.173347, 43.347031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.634201, 35.477585, 43.288681>,  <45.786034, 35.660126, 43.253674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.634201, 35.477585, 43.288681>,  <45.381149, 35.173347, 43.347031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.634201, 35.477585, 43.288681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021778, -0.205753, -0.978361,
		-0.774145, 0.615768, -0.146731,
		0.632634, 0.760589, -0.145872,
		45.823990, 35.705761, 43.244919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.080242, 35.555664, 42.781578>,  <45.381149, 35.173347, 43.347031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.080242, 35.555664, 42.781578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.462788, 35.668407, 42.812359>,  <45.692314, 35.736053, 42.830826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.462788, 35.668407, 42.812359>,  <45.080242, 35.555664, 42.781578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.462788, 35.668407, 42.812359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146048, -0.233064, -0.961432,
		-0.253056, 0.930718, -0.264060,
		0.956364, 0.281862, 0.076952,
		45.749699, 35.752968, 42.835445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.211330, 35.840038, 42.111332>,  <45.080242, 35.555664, 42.781578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.211330, 35.840038, 42.111332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.582893, 35.787636, 42.249882>,  <45.805832, 35.756195, 42.333012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.582893, 35.787636, 42.249882>,  <45.211330, 35.840038, 42.111332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.582893, 35.787636, 42.249882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314059, -0.216924, -0.924289,
		0.196222, 0.967358, -0.160358,
		0.928904, -0.131004, 0.346373,
		45.861565, 35.748333, 42.353794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.658539, 36.234295, 41.588684>,  <45.211330, 35.840038, 42.111332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.658539, 36.234295, 41.588684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.877907, 35.951687, 41.767597>,  <46.009529, 35.782120, 41.874947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.877907, 35.951687, 41.767597>,  <45.658539, 36.234295, 41.588684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.877907, 35.951687, 41.767597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337764, -0.302151, -0.891415,
		0.764952, 0.639945, 0.072932,
		0.548420, -0.706523, 0.447281,
		46.042435, 35.739731, 41.901783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.340187, 36.220379, 41.239525>,  <45.658539, 36.234295, 41.588684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.340187, 36.220379, 41.239525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.304806, 35.866646, 41.422886>,  <46.283577, 35.654408, 41.532902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.304806, 35.866646, 41.422886>,  <46.340187, 36.220379, 41.239525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.304806, 35.866646, 41.422886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424064, -0.449846, -0.786008,
		0.901303, 0.124868, 0.414803,
		-0.088450, -0.884334, 0.458399,
		46.278271, 35.601345, 41.560406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.926743, 35.851719, 41.023212>,  <46.340187, 36.220379, 41.239525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.926743, 35.851719, 41.023212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.652397, 35.579659, 41.126743>,  <46.487789, 35.416424, 41.188862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.652397, 35.579659, 41.126743>,  <46.926743, 35.851719, 41.023212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.652397, 35.579659, 41.126743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256598, -0.558844, -0.788575,
		0.680990, -0.474440, 0.557815,
		-0.685864, -0.680146, 0.258827,
		46.446636, 35.375614, 41.204391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.276684, 35.252777, 40.795921>,  <46.926743, 35.851719, 41.023212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.276684, 35.252777, 40.795921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.907619, 35.142277, 40.903538>,  <46.686180, 35.075977, 40.968109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.907619, 35.142277, 40.903538>,  <47.276684, 35.252777, 40.795921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.907619, 35.142277, 40.903538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078021, -0.549536, -0.831819,
		0.377637, -0.788478, 0.485482,
		-0.922661, -0.276248, 0.269043,
		46.630821, 35.059402, 40.984249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.233517, 34.462242, 40.781769>,  <47.276684, 35.252777, 40.795921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.233517, 34.462242, 40.781769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.865665, 34.612801, 40.736858>,  <46.644955, 34.703136, 40.709911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.865665, 34.612801, 40.736858>,  <47.233517, 34.462242, 40.781769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.865665, 34.612801, 40.736858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138598, -0.578415, -0.803882,
		-0.367521, -0.723713, 0.584096,
		-0.919630, 0.376398, -0.112274,
		46.589775, 34.725719, 40.703175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.766754, 33.910473, 40.457443>,  <47.233517, 34.462242, 40.781769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.766754, 33.910473, 40.457443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.566509, 34.248192, 40.380974>,  <46.446362, 34.450825, 40.335091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.566509, 34.248192, 40.380974>,  <46.766754, 33.910473, 40.457443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.566509, 34.248192, 40.380974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278176, -0.366021, -0.888058,
		-0.819760, -0.391392, 0.418098,
		-0.500611, 0.844299, -0.191174,
		46.416325, 34.501480, 40.323624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.219627, 33.728664, 40.123108>,  <46.766754, 33.910473, 40.457443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.219627, 33.728664, 40.123108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.231194, 34.118317, 40.033455>,  <46.238132, 34.352108, 39.979664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.231194, 34.118317, 40.033455>,  <46.219627, 33.728664, 40.123108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.231194, 34.118317, 40.033455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326617, -0.202714, -0.923162,
		-0.944715, 0.099897, 0.312306,
		0.028912, 0.974129, -0.224134,
		46.239868, 34.410557, 39.966213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.617516, 33.834740, 39.717155>,  <46.219627, 33.728664, 40.123108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.617516, 33.834740, 39.717155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.844624, 34.157898, 39.653984>,  <45.980888, 34.351791, 39.616081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.844624, 34.157898, 39.653984>,  <45.617516, 33.834740, 39.717155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.844624, 34.157898, 39.653984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453017, 0.146471, -0.879387,
		-0.687323, 0.570832, 0.449153,
		0.567770, 0.807897, -0.157924,
		46.014954, 34.400269, 39.606606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.124615, 34.366482, 39.527309>,  <45.617516, 33.834740, 39.717155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.124615, 34.366482, 39.527309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.489727, 34.456860, 39.391205>,  <45.708794, 34.511086, 39.309544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.489727, 34.456860, 39.391205>,  <45.124615, 34.366482, 39.527309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.489727, 34.456860, 39.391205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388113, 0.220227, -0.894912,
		-0.127270, 0.948919, 0.288713,
		0.912782, 0.225949, -0.340259,
		45.763561, 34.524643, 39.289127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.073685, 34.978714, 39.221901>,  <45.124615, 34.366482, 39.527309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.073685, 34.978714, 39.221901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.403503, 34.827003, 39.053959>,  <45.601395, 34.735977, 38.953194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.403503, 34.827003, 39.053959>,  <45.073685, 34.978714, 39.221901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.403503, 34.827003, 39.053959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316421, 0.306050, -0.897893,
		0.469041, 0.873204, 0.132343,
		0.824547, -0.379272, -0.419850,
		45.650867, 34.713223, 38.928005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.057858, 35.313538, 38.562706>,  <45.073685, 34.978714, 39.221901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.057858, 35.313538, 38.562706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.334038, 35.031082, 38.499901>,  <45.499744, 34.861610, 38.462215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.334038, 35.031082, 38.499901>,  <45.057858, 35.313538, 38.562706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.334038, 35.031082, 38.499901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109128, 0.112900, -0.987595,
		0.715103, 0.699018, 0.000892,
		0.690448, -0.706135, -0.157017,
		45.541172, 34.819241, 38.452797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.662724, 35.596455, 38.198067>,  <45.057858, 35.313538, 38.562706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.662724, 35.596455, 38.198067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.669632, 35.203224, 38.125118>,  <45.673779, 34.967285, 38.081348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.669632, 35.203224, 38.125118>,  <45.662724, 35.596455, 38.198067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.669632, 35.203224, 38.125118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116412, 0.183131, -0.976172,
		0.993051, -0.004370, 0.117605,
		0.017271, -0.983079, -0.182367,
		45.674812, 34.908302, 38.070408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.234924, 35.518085, 37.716713>,  <45.662724, 35.596455, 38.198067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.234924, 35.518085, 37.716713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.026901, 35.177917, 37.684910>,  <45.902088, 34.973816, 37.665829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.026901, 35.177917, 37.684910>,  <46.234924, 35.518085, 37.716713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.026901, 35.177917, 37.684910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032607, 0.073255, -0.996780,
		0.853510, -0.520974, -0.010367,
		-0.520056, -0.850423, -0.079511,
		45.870884, 34.922791, 37.661057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.679550, 35.020878, 37.287468>,  <46.234924, 35.518085, 37.716713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.679550, 35.020878, 37.287468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.292717, 34.920673, 37.269630>,  <46.060616, 34.860550, 37.258926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.292717, 34.920673, 37.269630>,  <46.679550, 35.020878, 37.287468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.292717, 34.920673, 37.269630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064180, -0.070563, -0.995441,
		0.246224, -0.965538, 0.084318,
		-0.967086, -0.250513, -0.044594,
		46.002590, 34.845520, 37.256252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.689629, 34.421497, 36.946457>,  <46.679550, 35.020878, 37.287468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.689629, 34.421497, 36.946457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.313042, 34.537655, 36.877983>,  <46.087090, 34.607349, 36.836899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.313042, 34.537655, 36.877983>,  <46.689629, 34.421497, 36.946457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.313042, 34.537655, 36.877983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243983, 0.236618, -0.940470,
		-0.232603, -0.927191, -0.293620,
		-0.941471, 0.290394, -0.171181,
		46.030602, 34.624775, 36.826630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.306805, 33.976517, 36.488201>,  <46.689629, 34.421497, 36.946457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.306805, 33.976517, 36.488201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.230053, 34.368870, 36.501129>,  <46.184002, 34.604282, 36.508888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.230053, 34.368870, 36.501129>,  <46.306805, 33.976517, 36.488201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.230053, 34.368870, 36.501129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245994, 0.079950, -0.965968,
		-0.950090, -0.177394, -0.256633,
		-0.191874, 0.980887, 0.032322,
		46.172489, 34.663136, 36.510826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.578182, 34.151154, 36.131798>,  <46.306805, 33.976517, 36.488201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.578182, 34.151154, 36.131798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.874191, 34.420086, 36.124348>,  <46.051796, 34.581444, 36.119877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.874191, 34.420086, 36.124348>,  <45.578182, 34.151154, 36.131798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.874191, 34.420086, 36.124348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101074, -0.138539, -0.985186,
		-0.664948, 0.727174, -0.170476,
		0.740019, 0.672328, -0.018623,
		46.096195, 34.621784, 36.118759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.557400, 34.702087, 35.548794>,  <45.578182, 34.151154, 36.131798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.557400, 34.702087, 35.548794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.946266, 34.677937, 35.639339>,  <46.179588, 34.663445, 35.693668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.946266, 34.677937, 35.639339>,  <45.557400, 34.702087, 35.548794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.946266, 34.677937, 35.639339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209768, -0.205926, -0.955820,
		0.104328, 0.976703, -0.187529,
		0.972169, -0.060382, 0.226365,
		46.237919, 34.659821, 35.707249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.004139, 35.108891, 35.071651>,  <45.557400, 34.702087, 35.548794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.004139, 35.108891, 35.071651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.205570, 34.798496, 35.223576>,  <46.326427, 34.612259, 35.314728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.205570, 34.798496, 35.223576>,  <46.004139, 35.108891, 35.071651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.205570, 34.798496, 35.223576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065178, -0.404241, -0.912327,
		0.861488, 0.484183, -0.152989,
		0.503578, -0.775987, 0.379807,
		46.356644, 34.565701, 35.337517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.717205, 34.968147, 34.780556>,  <46.004139, 35.108891, 35.071651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.717205, 34.968147, 34.780556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.554012, 34.617424, 34.882343>,  <46.456097, 34.406990, 34.943417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.554012, 34.617424, 34.882343>,  <46.717205, 34.968147, 34.780556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.554012, 34.617424, 34.882343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143623, -0.336882, -0.930528,
		0.901624, -0.343089, 0.263372,
		-0.407979, -0.876813, 0.254465,
		46.431618, 34.354382, 34.958683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.371708, 35.051193, 34.697777>,  <46.717205, 34.968147, 34.780556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.371708, 35.051193, 34.697777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.593121, 35.104191, 35.026665>,  <47.725967, 35.135990, 35.223999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.593121, 35.104191, 35.026665>,  <47.371708, 35.051193, 34.697777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.593121, 35.104191, 35.026665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698692, 0.463419, -0.545044,
		-0.453251, 0.876178, 0.163939,
		0.553528, 0.132499, 0.822223,
		47.759178, 35.143940, 35.273331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.614498, 41.634209, 42.770660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.248146, 41.791817, 42.739891>,  <35.028336, 41.886383, 42.721428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.248146, 41.791817, 42.739891>,  <35.614498, 41.634209, 42.770660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248146, 41.791817, 42.739891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240193, -0.691350, -0.681427,
		-0.321677, -0.605627, 0.727832,
		-0.915878, 0.394019, -0.076924,
		34.973381, 41.910023, 42.716812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061092, 41.094471, 42.816265>,  <35.614498, 41.634209, 42.770660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061092, 41.094471, 42.816265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.905319, 41.396767, 42.605667>,  <34.811855, 41.578144, 42.479309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.905319, 41.396767, 42.605667>,  <35.061092, 41.094471, 42.816265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905319, 41.396767, 42.605667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312773, -0.646165, -0.696163,
		-0.866321, -0.106438, 0.488016,
		-0.389437, 0.755739, -0.526496,
		34.788486, 41.623489, 42.447720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375141, 40.896038, 42.568371>,  <35.061092, 41.094471, 42.816265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.375141, 40.896038, 42.568371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.476444, 41.197906, 42.326267>,  <34.537228, 41.379028, 42.181007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.476444, 41.197906, 42.326267>,  <34.375141, 40.896038, 42.568371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476444, 41.197906, 42.326267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212062, -0.567128, -0.795862,
		-0.943870, 0.329910, 0.016407,
		0.253258, 0.754669, -0.605256,
		34.552422, 41.424309, 42.144691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857040, 40.912590, 42.072330>,  <34.375141, 40.896038, 42.568371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857040, 40.912590, 42.072330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.151699, 41.119202, 41.897720>,  <34.328495, 41.243168, 41.792953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.151699, 41.119202, 41.897720>,  <33.857040, 40.912590, 42.072330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.151699, 41.119202, 41.897720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102254, -0.552982, -0.826895,
		-0.668507, 0.653762, -0.354532,
		0.736643, 0.516533, -0.436522,
		34.372692, 41.274162, 41.766766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707928, 41.110096, 41.334465>,  <33.857040, 40.912590, 42.072330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707928, 41.110096, 41.334465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.107910, 41.112476, 41.337429>,  <34.347900, 41.113903, 41.339207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.107910, 41.112476, 41.337429>,  <33.707928, 41.110096, 41.334465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107910, 41.112476, 41.337429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009487, -0.579814, -0.814694,
		-0.000553, 0.814727, -0.579844,
		0.999955, 0.005951, 0.007409,
		34.407898, 41.114262, 41.339653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800220, 40.848034, 40.722855>,  <33.707928, 41.110096, 41.334465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800220, 40.848034, 40.722855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.177357, 40.873333, 40.853733>,  <34.403637, 40.888512, 40.932262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.177357, 40.873333, 40.853733>,  <33.800220, 40.848034, 40.722855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177357, 40.873333, 40.853733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319260, -0.452961, -0.832406,
		0.095565, 0.889284, -0.447259,
		0.942836, 0.063243, 0.327200,
		34.460209, 40.892307, 40.951893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081314, 41.122837, 40.108982>,  <33.800220, 40.848034, 40.722855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081314, 41.122837, 40.108982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.333786, 40.927906, 40.350349>,  <34.485271, 40.810947, 40.495171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.333786, 40.927906, 40.350349>,  <34.081314, 41.122837, 40.108982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333786, 40.927906, 40.350349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321164, -0.543939, -0.775232,
		0.706018, 0.683110, -0.186812,
		0.631183, -0.487331, 0.603421,
		34.523140, 40.781708, 40.531376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622410, 41.095257, 39.648434>,  <34.081314, 41.122837, 40.108982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622410, 41.095257, 39.648434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.680092, 40.813110, 39.926041>,  <34.714703, 40.643822, 40.092606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.680092, 40.813110, 39.926041>,  <34.622410, 41.095257, 39.648434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680092, 40.813110, 39.926041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465833, -0.570386, -0.676505,
		0.873043, 0.420852, 0.246331,
		0.144205, -0.705368, 0.694018,
		34.723354, 40.601501, 40.134247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353008, 40.922688, 39.816444>,  <34.622410, 41.095257, 39.648434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353008, 40.922688, 39.816444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.125324, 40.605446, 39.903141>,  <34.988712, 40.415100, 39.955158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.125324, 40.605446, 39.903141>,  <35.353008, 40.922688, 39.816444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125324, 40.605446, 39.903141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429283, -0.511517, -0.744357,
		0.701222, -0.330654, 0.631629,
		-0.569213, -0.793107, 0.216743,
		34.954559, 40.367516, 39.968163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784756, 40.444969, 39.769547>,  <35.353008, 40.922688, 39.816444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784756, 40.444969, 39.769547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.449280, 40.227310, 39.778492>,  <35.247993, 40.096714, 39.783859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.449280, 40.227310, 39.778492>,  <35.784756, 40.444969, 39.769547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449280, 40.227310, 39.778492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365300, -0.592541, -0.717950,
		0.403920, -0.593970, 0.695736,
		-0.838693, -0.544146, 0.022362,
		35.197674, 40.064068, 39.785202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958591, 39.812992, 39.850925>,  <35.784756, 40.444969, 39.769547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958591, 39.812992, 39.850925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.600235, 39.720932, 39.698925>,  <35.385220, 39.665695, 39.607723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.600235, 39.720932, 39.698925>,  <35.958591, 39.812992, 39.850925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600235, 39.720932, 39.698925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404883, -0.775058, -0.485134,
		-0.182869, -0.588486, 0.787555,
		-0.895895, -0.230151, -0.380002,
		35.331467, 39.651886, 39.584923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895054, 39.069283, 39.848766>,  <35.958591, 39.812992, 39.850925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895054, 39.069283, 39.848766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.593510, 39.167969, 39.605183>,  <35.412582, 39.227180, 39.459034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.593510, 39.167969, 39.605183>,  <35.895054, 39.069283, 39.848766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.593510, 39.167969, 39.605183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070578, -0.891055, -0.448374,
		-0.653234, -0.380990, 0.654318,
		-0.753859, 0.246713, -0.608957,
		35.367352, 39.241982, 39.422497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532196, 38.439373, 39.668728>,  <35.895054, 39.069283, 39.848766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532196, 38.439373, 39.668728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.466721, 38.713772, 39.385147>,  <35.427437, 38.878410, 39.214996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.466721, 38.713772, 39.385147>,  <35.532196, 38.439373, 39.668728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466721, 38.713772, 39.385147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260772, -0.662999, -0.701733,
		-0.951422, -0.299741, -0.070364,
		-0.163687, 0.685994, -0.708956,
		35.417614, 38.919571, 39.172459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244846, 38.036102, 39.148785>,  <35.532196, 38.439373, 39.668728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244846, 38.036102, 39.148785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.373852, 38.364006, 38.959476>,  <35.451256, 38.560749, 38.845890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.373852, 38.364006, 38.959476>,  <35.244846, 38.036102, 39.148785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373852, 38.364006, 38.959476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381628, -0.570160, -0.727515,
		-0.866224, 0.054021, -0.496727,
		0.322515, 0.819756, -0.473270,
		35.470608, 38.609932, 38.817497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038021, 37.887470, 38.463654>,  <35.244846, 38.036102, 39.148785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038021, 37.887470, 38.463654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.321800, 38.169182, 38.453297>,  <35.492069, 38.338211, 38.447083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.321800, 38.169182, 38.453297>,  <35.038021, 37.887470, 38.463654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321800, 38.169182, 38.453297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546091, -0.572581, -0.611503,
		-0.445496, 0.419689, -0.790818,
		0.709448, 0.704281, -0.025894,
		35.534634, 38.380466, 38.445530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140091, 37.967865, 37.779560>,  <35.038021, 37.887470, 38.463654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140091, 37.967865, 37.779560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.474655, 38.089085, 37.962238>,  <35.675396, 38.161816, 38.071846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.474655, 38.089085, 37.962238>,  <35.140091, 37.967865, 37.779560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474655, 38.089085, 37.962238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547624, -0.427369, -0.719350,
		-0.022817, 0.851774, -0.523413,
		0.836413, 0.303047, 0.456700,
		35.725578, 38.180000, 38.099247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671864, 38.185848, 37.234222>,  <35.140091, 37.967865, 37.779560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671864, 38.185848, 37.234222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.891991, 38.133232, 37.564034>,  <36.024067, 38.101662, 37.761921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.891991, 38.133232, 37.564034>,  <35.671864, 38.185848, 37.234222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891991, 38.133232, 37.564034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679759, -0.502853, -0.533916,
		0.484850, 0.854304, -0.187311,
		0.550317, -0.131543, 0.824529,
		36.057087, 38.093769, 37.811394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378284, 38.035252, 36.978088>,  <35.671864, 38.185848, 37.234222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378284, 38.035252, 36.978088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.369850, 37.909286, 37.357643>,  <36.364788, 37.833706, 37.585377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.369850, 37.909286, 37.357643>,  <36.378284, 38.035252, 36.978088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369850, 37.909286, 37.357643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782048, -0.596482, -0.180581,
		0.622861, 0.738267, 0.258855,
		-0.021085, -0.314914, 0.948886,
		36.363525, 37.814812, 37.642307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066158, 38.210243, 37.367130>,  <36.378284, 38.035252, 36.978088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066158, 38.210243, 37.367130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.903599, 37.901966, 37.563446>,  <36.806061, 37.716999, 37.681236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.903599, 37.901966, 37.563446>,  <37.066158, 38.210243, 37.367130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903599, 37.901966, 37.563446> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857906, -0.506683, -0.085257,
		0.314379, 0.386399, 0.867099,
		-0.406402, -0.770693, 0.490785,
		36.781677, 37.670757, 37.710682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639984, 37.966827, 37.620121>,  <37.066158, 38.210243, 37.367130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639984, 37.966827, 37.620121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.390091, 37.666306, 37.705208>,  <37.240154, 37.485992, 37.756260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.390091, 37.666306, 37.705208>,  <37.639984, 37.966827, 37.620121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390091, 37.666306, 37.705208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763627, -0.644737, -0.034478,
		0.163050, 0.140897, 0.976505,
		-0.624731, -0.751307, 0.212717,
		37.202671, 37.440914, 37.769024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989147, 37.535927, 38.131565>,  <37.639984, 37.966827, 37.620121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989147, 37.535927, 38.131565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.716534, 37.312813, 37.942085>,  <37.552967, 37.178944, 37.828400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.716534, 37.312813, 37.942085>,  <37.989147, 37.535927, 38.131565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716534, 37.312813, 37.942085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674213, -0.730283, -0.110107,
		-0.284517, -0.394414, 0.873778,
		-0.681533, -0.557785, -0.473697,
		37.512074, 37.145477, 37.799976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248348, 36.913277, 38.259048>,  <37.989147, 37.535927, 38.131565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248348, 36.913277, 38.259048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.964554, 36.820583, 37.992836>,  <37.794277, 36.764969, 37.833111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.964554, 36.820583, 37.992836>,  <38.248348, 36.913277, 38.259048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964554, 36.820583, 37.992836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524553, -0.804316, -0.279142,
		-0.470609, -0.547153, 0.692208,
		-0.709487, -0.231733, -0.665529,
		37.751709, 36.751064, 37.793179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810314, 36.302563, 38.117214>,  <38.248348, 36.913277, 38.259048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810314, 36.302563, 38.117214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.167606, 36.477905, 38.157177>,  <39.381981, 36.583111, 38.181156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.167606, 36.477905, 38.157177>,  <38.810314, 36.302563, 38.117214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167606, 36.477905, 38.157177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307049, 0.432453, 0.847765,
		0.328415, -0.787928, 0.520877,
		0.893233, 0.438354, 0.099908,
		39.435577, 36.609413, 38.187149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031376, 36.295784, 38.764381>,  <38.810314, 36.302563, 38.117214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031376, 36.295784, 38.764381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.262756, 36.603188, 38.654987>,  <39.401585, 36.787628, 38.589352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.262756, 36.603188, 38.654987>,  <39.031376, 36.295784, 38.764381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262756, 36.603188, 38.654987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429234, 0.571868, 0.699089,
		0.693654, -0.286996, 0.660664,
		0.578448, 0.768506, -0.273490,
		39.436291, 36.833740, 38.572941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363167, 36.374622, 39.440254>,  <39.031376, 36.295784, 38.764381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.363167, 36.374622, 39.440254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.403057, 36.697895, 39.208084>,  <39.426991, 36.891857, 39.068783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.403057, 36.697895, 39.208084>,  <39.363167, 36.374622, 39.440254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.403057, 36.697895, 39.208084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174544, 0.588501, 0.789431,
		0.979586, 0.022582, 0.199753,
		0.099728, 0.808181, -0.580429,
		39.432976, 36.940350, 39.033955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892563, 36.868835, 39.686653>,  <39.363167, 36.374622, 39.440254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892563, 36.868835, 39.686653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.618191, 37.079971, 39.486298>,  <39.453568, 37.206654, 39.366085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.618191, 37.079971, 39.486298>,  <39.892563, 36.868835, 39.686653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618191, 37.079971, 39.486298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004802, 0.691616, 0.722249,
		0.727653, 0.493006, -0.476934,
		-0.685928, 0.527837, -0.500890,
		39.412411, 37.238323, 39.336029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015198, 37.409039, 40.032299>,  <39.892563, 36.868835, 39.686653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.015198, 37.409039, 40.032299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.715160, 37.500153, 39.783951>,  <39.535137, 37.554821, 39.634941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.715160, 37.500153, 39.783951>,  <40.015198, 37.409039, 40.032299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715160, 37.500153, 39.783951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208097, 0.809831, 0.548516,
		0.627741, 0.540637, -0.560046,
		-0.750091, 0.227782, -0.620869,
		39.490131, 37.568489, 39.597691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086029, 38.098469, 39.803673>,  <40.015198, 37.409039, 40.032299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086029, 38.098469, 39.803673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.695808, 38.017570, 39.769276>,  <39.461674, 37.969032, 39.748638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.695808, 38.017570, 39.769276>,  <40.086029, 38.098469, 39.803673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.695808, 38.017570, 39.769276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218116, 0.938860, 0.266398,
		0.026854, 0.278641, -0.960020,
		-0.975553, -0.202242, -0.085988,
		39.403141, 37.956898, 39.743481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.799332, 38.672821, 39.560192>,  <40.086029, 38.098469, 39.803673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.799332, 38.672821, 39.560192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.498398, 38.477962, 39.737583>,  <39.317837, 38.361046, 39.844017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.498398, 38.477962, 39.737583>,  <39.799332, 38.672821, 39.560192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498398, 38.477962, 39.737583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438172, 0.872721, 0.215322,
		-0.491928, -0.032326, -0.870035,
		-0.752338, -0.487148, 0.443480,
		39.272697, 38.331818, 39.870628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218700, 39.068199, 39.424412>,  <39.799332, 38.672821, 39.560192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218700, 39.068199, 39.424412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.092258, 38.834980, 39.723782>,  <39.016396, 38.695049, 39.903404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.092258, 38.834980, 39.723782>,  <39.218700, 39.068199, 39.424412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092258, 38.834980, 39.723782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554509, 0.753638, 0.352915,
		-0.769806, -0.303449, -0.561532,
		-0.316101, -0.583051, 0.748420,
		38.997429, 38.660065, 39.948307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511566, 39.092728, 39.391476>,  <39.218700, 39.068199, 39.424412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511566, 39.092728, 39.391476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.604683, 38.993210, 39.767540>,  <38.660553, 38.933498, 39.993179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.604683, 38.993210, 39.767540>,  <38.511566, 39.092728, 39.391476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604683, 38.993210, 39.767540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546255, 0.766368, 0.338062,
		-0.804619, -0.592268, 0.042500,
		0.232793, -0.248795, 0.940164,
		38.674522, 38.918571, 40.049591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032131, 39.420235, 39.817471>,  <38.511566, 39.092728, 39.391476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032131, 39.420235, 39.817471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.284988, 39.319832, 40.110699>,  <38.436703, 39.259590, 40.286636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.284988, 39.319832, 40.110699>,  <38.032131, 39.420235, 39.817471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284988, 39.319832, 40.110699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359604, 0.742988, 0.564495,
		-0.686353, -0.620456, 0.379412,
		0.632142, -0.251005, 0.733070,
		38.474632, 39.244530, 40.330620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743702, 39.361664, 40.532822>,  <38.032131, 39.420235, 39.817471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743702, 39.361664, 40.532822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.129112, 39.419735, 40.622746>,  <38.360359, 39.454578, 40.676701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.129112, 39.419735, 40.622746>,  <37.743702, 39.361664, 40.532822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129112, 39.419735, 40.622746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263109, 0.667363, 0.696706,
		-0.048879, -0.730444, 0.681221,
		0.963527, 0.145181, 0.224806,
		38.418171, 39.463291, 40.690186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684265, 39.378487, 41.279491>,  <37.743702, 39.361664, 40.532822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684265, 39.378487, 41.279491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.032032, 39.530415, 41.153095>,  <38.240692, 39.621571, 41.077255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.032032, 39.530415, 41.153095>,  <37.684265, 39.378487, 41.279491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032032, 39.530415, 41.153095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118418, 0.781104, 0.613068,
		0.479679, -0.495593, 0.724083,
		0.869417, 0.379821, -0.315992,
		38.292858, 39.644360, 41.058296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114174, 39.545776, 41.841167>,  <37.684265, 39.378487, 41.279491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114174, 39.545776, 41.841167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.225136, 39.775814, 41.533318>,  <38.291714, 39.913837, 41.348610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.225136, 39.775814, 41.533318>,  <38.114174, 39.545776, 41.841167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225136, 39.775814, 41.533318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136862, 0.816545, 0.560824,
		0.950955, -0.050244, 0.305223,
		0.277407, 0.575091, -0.769621,
		38.308357, 39.948341, 41.302433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504635, 39.998810, 42.177357>,  <38.114174, 39.545776, 41.841167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504635, 39.998810, 42.177357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.434483, 40.184658, 41.830170>,  <38.392391, 40.296165, 41.621857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.434483, 40.184658, 41.830170>,  <38.504635, 39.998810, 42.177357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434483, 40.184658, 41.830170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144968, 0.859836, 0.489556,
		0.973768, 0.211688, -0.083447,
		-0.175384, 0.464617, -0.867970,
		38.381866, 40.324043, 41.569778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980881, 40.649361, 42.186771>,  <38.504635, 39.998810, 42.177357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980881, 40.649361, 42.186771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.694801, 40.740929, 41.922626>,  <38.523151, 40.795872, 41.764137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.694801, 40.740929, 41.922626>,  <38.980881, 40.649361, 42.186771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694801, 40.740929, 41.922626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109545, 0.896444, 0.429403,
		0.690281, 0.379449, -0.616060,
		-0.715200, 0.228923, -0.660366,
		38.480240, 40.809605, 41.724518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112114, 41.361416, 42.032578>,  <38.980881, 40.649361, 42.186771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112114, 41.361416, 42.032578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.739841, 41.318707, 41.892620>,  <38.516476, 41.293083, 41.808643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.739841, 41.318707, 41.892620>,  <39.112114, 41.361416, 42.032578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739841, 41.318707, 41.892620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276628, 0.831278, 0.482135,
		0.239385, 0.545507, -0.803192,
		-0.930683, -0.106770, -0.349898,
		38.460636, 41.286674, 41.787651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762897, 42.096985, 41.697453>,  <39.112114, 41.361416, 42.032578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762897, 42.096985, 41.697453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.488747, 41.831470, 41.817215>,  <38.324257, 41.672161, 41.889072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.488747, 41.831470, 41.817215>,  <38.762897, 42.096985, 41.697453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488747, 41.831470, 41.817215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475598, 0.719409, 0.506218,
		-0.551418, 0.204553, -0.808762,
		-0.685379, -0.663783, 0.299410,
		38.283134, 41.632336, 41.907040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233723, 42.478359, 41.832207>,  <38.762897, 42.096985, 41.697453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233723, 42.478359, 41.832207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.073582, 42.149052, 41.993176>,  <37.977497, 41.951466, 42.089756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.073582, 42.149052, 41.993176>,  <38.233723, 42.478359, 41.832207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073582, 42.149052, 41.993176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432383, 0.556909, 0.709152,
		-0.807935, 0.109914, -0.578930,
		-0.400357, -0.823269, 0.402422,
		37.953476, 41.902073, 42.113903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.278992, 42.533718, 42.015396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.427540, 42.254505, 42.260292>,  <37.516666, 42.086975, 42.407230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.427540, 42.254505, 42.260292>,  <37.278992, 42.533718, 42.015396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427540, 42.254505, 42.260292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541396, 0.372895, 0.753551,
		-0.754306, -0.611305, -0.239434,
		0.371366, -0.698037, 0.612235,
		37.538948, 42.045094, 42.443962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743805, 42.544544, 42.491394>,  <37.278992, 42.533718, 42.015396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743805, 42.544544, 42.491394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.052937, 42.362041, 42.667835>,  <37.238415, 42.252541, 42.773701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.052937, 42.362041, 42.667835>,  <36.743805, 42.544544, 42.491394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052937, 42.362041, 42.667835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425342, 0.143447, 0.893592,
		-0.470984, -0.878209, -0.083206,
		0.772825, -0.456258, 0.441100,
		37.284782, 42.225163, 42.800167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541286, 41.889057, 42.912861>,  <36.743805, 42.544544, 42.491394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541286, 41.889057, 42.912861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.877518, 42.027027, 43.079937>,  <37.079254, 42.109810, 43.180183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.877518, 42.027027, 43.079937>,  <36.541286, 41.889057, 42.912861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877518, 42.027027, 43.079937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458975, 0.043958, 0.887361,
		0.287712, -0.937601, 0.195261,
		0.840574, 0.344924, 0.417688,
		37.129688, 42.130505, 43.205242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477661, 41.649590, 43.567188>,  <36.541286, 41.889057, 42.912861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477661, 41.649590, 43.567188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.763145, 41.929039, 43.587372>,  <36.934437, 42.096710, 43.599480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.763145, 41.929039, 43.587372>,  <36.477661, 41.649590, 43.567188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763145, 41.929039, 43.587372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297713, 0.237357, 0.924678,
		0.634027, -0.674970, 0.377393,
		0.713706, 0.698626, 0.050457,
		36.977257, 42.138626, 43.602509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698887, 41.601532, 44.270493>,  <36.477661, 41.649590, 43.567188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698887, 41.601532, 44.270493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.807816, 41.957787, 44.124832>,  <36.873173, 42.171539, 44.037437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.807816, 41.957787, 44.124832>,  <36.698887, 41.601532, 44.270493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807816, 41.957787, 44.124832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271348, 0.434176, 0.858989,
		0.923152, -0.135114, 0.359910,
		0.272325, 0.890638, -0.364148,
		36.889515, 42.224979, 44.015587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146133, 41.905952, 44.811714>,  <36.698887, 41.601532, 44.270493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146133, 41.905952, 44.811714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.043385, 42.210190, 44.573212>,  <36.981735, 42.392731, 44.430111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.043385, 42.210190, 44.573212>,  <37.146133, 41.905952, 44.811714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043385, 42.210190, 44.573212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374576, 0.490382, 0.786904,
		0.890905, 0.425474, 0.158935,
		-0.256869, 0.760590, -0.596256,
		36.966324, 42.438366, 44.394333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390408, 42.583939, 45.150013>,  <37.146133, 41.905952, 44.811714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390408, 42.583939, 45.150013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.096233, 42.651310, 44.887482>,  <36.919727, 42.691734, 44.729961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.096233, 42.651310, 44.887482>,  <37.390408, 42.583939, 45.150013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096233, 42.651310, 44.887482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473835, 0.564571, 0.675825,
		0.484373, 0.808017, -0.335397,
		-0.735434, 0.168428, -0.656330,
		36.875603, 42.701839, 44.690582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273571, 43.268261, 45.146023>,  <37.390408, 42.583939, 45.150013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273571, 43.268261, 45.146023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.929451, 43.127407, 44.998573>,  <36.722977, 43.042896, 44.910103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.929451, 43.127407, 44.998573>,  <37.273571, 43.268261, 45.146023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929451, 43.127407, 44.998573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503302, 0.471756, 0.723970,
		-0.081037, 0.808360, -0.583083,
		-0.860302, -0.352136, -0.368620,
		36.671360, 43.021767, 44.887989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956352, 43.842026, 45.136227>,  <37.273571, 43.268261, 45.146023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956352, 43.842026, 45.136227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.686829, 43.546829, 45.121464>,  <36.525116, 43.369713, 45.112606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.686829, 43.546829, 45.121464>,  <36.956352, 43.842026, 45.136227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686829, 43.546829, 45.121464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501743, 0.420297, 0.756046,
		-0.542441, 0.527944, -0.653478,
		-0.673805, -0.737988, -0.036906,
		36.484688, 43.325432, 45.110394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306465, 44.166397, 45.151001>,  <36.956352, 43.842026, 45.136227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306465, 44.166397, 45.151001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.240837, 43.793091, 45.278809>,  <36.201462, 43.569107, 45.355492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.240837, 43.793091, 45.278809>,  <36.306465, 44.166397, 45.151001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240837, 43.793091, 45.278809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433226, 0.359170, 0.826627,
		-0.886227, -0.002802, -0.463244,
		-0.164067, -0.933268, 0.319520,
		36.191616, 43.513111, 45.374664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748619, 44.286610, 45.568089>,  <36.306465, 44.166397, 45.151001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748619, 44.286610, 45.568089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.860104, 43.916260, 45.670124>,  <35.926994, 43.694050, 45.731346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.860104, 43.916260, 45.670124>,  <35.748619, 44.286610, 45.568089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860104, 43.916260, 45.670124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377411, 0.138647, 0.915608,
		-0.883109, -0.351461, -0.310794,
		0.278710, -0.925879, 0.255086,
		35.943718, 43.638496, 45.746651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113155, 43.915737, 45.801929>,  <35.748619, 44.286610, 45.568089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113155, 43.915737, 45.801929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.415363, 43.711658, 45.966312>,  <35.596687, 43.589211, 46.064941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.415363, 43.711658, 45.966312>,  <35.113155, 43.915737, 45.801929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415363, 43.711658, 45.966312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445204, 0.060341, 0.893394,
		-0.480601, -0.857941, -0.181551,
		0.755524, -0.510193, 0.410958,
		35.642021, 43.558601, 46.089600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855358, 43.327030, 46.302315>,  <35.113155, 43.915737, 45.801929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855358, 43.327030, 46.302315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.223480, 43.390285, 46.445435>,  <35.444355, 43.428238, 46.531307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.223480, 43.390285, 46.445435>,  <34.855358, 43.327030, 46.302315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223480, 43.390285, 46.445435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358970, -0.022107, 0.933087,
		0.155470, -0.987169, 0.036422,
		0.920309, 0.158141, 0.357801,
		35.499573, 43.437729, 46.552776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843964, 42.919884, 46.895603>,  <34.855358, 43.327030, 46.302315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843964, 42.919884, 46.895603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.183956, 43.127796, 46.929924>,  <35.387951, 43.252544, 46.950516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.183956, 43.127796, 46.929924>,  <34.843964, 42.919884, 46.895603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183956, 43.127796, 46.929924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074307, -0.042950, 0.996310,
		0.521548, -0.853220, 0.002117,
		0.849980, 0.519780, 0.085801,
		35.438950, 43.283730, 46.955666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329514, 42.560493, 47.309605>,  <34.843964, 42.919884, 46.895603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329514, 42.560493, 47.309605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.370430, 42.957844, 47.330532>,  <35.394978, 43.196255, 47.343090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.370430, 42.957844, 47.330532>,  <35.329514, 42.560493, 47.309605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370430, 42.957844, 47.330532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203202, -0.030622, 0.978658,
		0.973779, -0.110735, 0.198724,
		0.102287, 0.993378, 0.052321,
		35.401115, 43.255856, 47.346230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763100, 42.601917, 47.825100>,  <35.329514, 42.560493, 47.309605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763100, 42.601917, 47.825100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.596249, 42.964642, 47.800793>,  <35.496136, 43.182278, 47.786209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.596249, 42.964642, 47.800793>,  <35.763100, 42.601917, 47.825100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596249, 42.964642, 47.800793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101002, 0.020200, 0.994681,
		0.903216, 0.421052, 0.083164,
		-0.417132, 0.906812, -0.060772,
		35.471107, 43.236687, 47.782562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062752, 42.973225, 48.426723>,  <35.763100, 42.601917, 47.825100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062752, 42.973225, 48.426723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.750324, 43.197876, 48.317539>,  <35.562866, 43.332664, 48.252029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.750324, 43.197876, 48.317539>,  <36.062752, 42.973225, 48.426723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750324, 43.197876, 48.317539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154369, 0.249897, 0.955888,
		0.605062, 0.788752, -0.108489,
		-0.781070, 0.561624, -0.272962,
		35.516003, 43.366364, 48.235649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150978, 43.679096, 48.636322>,  <36.062752, 42.973225, 48.426723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150978, 43.679096, 48.636322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.756088, 43.623978, 48.604317>,  <35.519154, 43.590904, 48.585114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.756088, 43.623978, 48.604317>,  <36.150978, 43.679096, 48.636322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756088, 43.623978, 48.604317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133391, 0.440023, 0.888024,
		-0.087163, 0.887351, -0.452782,
		-0.987223, -0.137800, -0.080011,
		35.459923, 43.582638, 48.580315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865784, 44.262161, 49.003914>,  <36.150978, 43.679096, 48.636322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865784, 44.262161, 49.003914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.527969, 44.048519, 48.988449>,  <35.325279, 43.920334, 48.979172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.527969, 44.048519, 48.988449>,  <35.865784, 44.262161, 49.003914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527969, 44.048519, 48.988449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312974, 0.433718, 0.844947,
		-0.434520, 0.725688, -0.533451,
		-0.844535, -0.534103, -0.038662,
		35.274609, 43.888287, 48.976852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288971, 44.684647, 49.072803>,  <35.865784, 44.262161, 49.003914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288971, 44.684647, 49.072803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.169426, 44.319645, 49.184525>,  <35.097698, 44.100643, 49.251556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.169426, 44.319645, 49.184525>,  <35.288971, 44.684647, 49.072803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.169426, 44.319645, 49.184525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361609, 0.379144, 0.851756,
		-0.883131, 0.153558, -0.443283,
		-0.298862, -0.912508, 0.279305,
		35.079769, 44.045891, 49.268314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812107, 44.865593, 49.517818>,  <35.288971, 44.684647, 49.072803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812107, 44.865593, 49.517818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.858234, 44.477448, 49.602760>,  <34.885910, 44.244560, 49.653725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.858234, 44.477448, 49.602760>,  <34.812107, 44.865593, 49.517818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858234, 44.477448, 49.602760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160640, 0.192749, 0.968010,
		-0.980253, -0.145744, -0.133651,
		0.115321, -0.970364, 0.212355,
		34.892830, 44.186337, 49.666466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431053, 44.832146, 50.087559>,  <34.812107, 44.865593, 49.517818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431053, 44.832146, 50.087559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.646019, 44.495518, 50.109261>,  <34.774998, 44.293541, 50.122280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.646019, 44.495518, 50.109261>,  <34.431053, 44.832146, 50.087559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646019, 44.495518, 50.109261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025809, 0.080715, 0.996403,
		-0.842921, -0.534085, 0.065098,
		0.537418, -0.841569, 0.054252,
		34.807243, 44.243046, 50.125538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719376, 45.104637, 50.171429>,  <34.431053, 44.832146, 50.087559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719376, 45.104637, 50.171429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.879402, 45.425167, 49.993519>,  <33.975418, 45.617485, 49.886772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.879402, 45.425167, 49.993519>,  <33.719376, 45.104637, 50.171429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.879402, 45.425167, 49.993519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346289, -0.581502, -0.736165,
		-0.848544, 0.140496, -0.510131,
		0.400071, 0.801321, -0.444778,
		33.999424, 45.665562, 49.860085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275517, 45.256626, 49.533222>,  <33.719376, 45.104637, 50.171429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275517, 45.256626, 49.533222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.667702, 45.327103, 49.568218>,  <33.903011, 45.369389, 49.589218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.667702, 45.327103, 49.568218>,  <33.275517, 45.256626, 49.533222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667702, 45.327103, 49.568218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180072, -0.624808, -0.759729,
		-0.079188, 0.760639, -0.644327,
		0.980461, 0.176187, 0.087492,
		33.961842, 45.379959, 49.594467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141285, 45.905678, 49.402390>,  <33.275517, 45.256626, 49.533222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141285, 45.905678, 49.402390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.885574, 46.152840, 49.219296>,  <32.732147, 46.301136, 49.109440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.885574, 46.152840, 49.219296>,  <33.141285, 45.905678, 49.402390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.885574, 46.152840, 49.219296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187509, -0.702538, -0.686499,
		-0.745767, -0.353032, 0.564977,
		-0.639274, 0.617906, -0.457733,
		32.693790, 46.338211, 49.081974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771759, 45.469517, 48.975807>,  <33.141285, 45.905678, 49.402390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771759, 45.469517, 48.975807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.702644, 45.829994, 48.816814>,  <32.661175, 46.046280, 48.721416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.702644, 45.829994, 48.816814>,  <32.771759, 45.469517, 48.975807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702644, 45.829994, 48.816814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147726, -0.422704, -0.894147,
		-0.973818, -0.095781, 0.206169,
		-0.172790, 0.901192, -0.397487,
		32.650806, 46.100353, 48.697567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060776, 45.442902, 48.647263>,  <32.771759, 45.469517, 48.975807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060776, 45.442902, 48.647263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.300724, 45.681862, 48.434372>,  <32.444695, 45.825237, 48.306637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.300724, 45.681862, 48.434372>,  <32.060776, 45.442902, 48.647263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300724, 45.681862, 48.434372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121876, -0.589214, -0.798733,
		-0.790759, 0.544003, -0.280644,
		0.599872, 0.597401, -0.532227,
		32.480686, 45.861084, 48.274704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.763187, 45.308430, 48.038795>,  <32.060776, 45.442902, 48.647263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.763187, 45.308430, 48.038795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.109886, 45.499836, 47.982548>,  <32.317905, 45.614677, 47.948799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.109886, 45.499836, 47.982548>,  <31.763187, 45.308430, 48.038795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.109886, 45.499836, 47.982548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157793, -0.530553, -0.832836,
		-0.473126, 0.699671, -0.535362,
		0.866749, 0.478512, -0.140615,
		32.369911, 45.643391, 47.940365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721533, 45.471779, 47.278381>,  <31.763187, 45.308430, 48.038795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721533, 45.471779, 47.278381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.105225, 45.501812, 47.387367>,  <32.335442, 45.519833, 47.452759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.105225, 45.501812, 47.387367>,  <31.721533, 45.471779, 47.278381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.105225, 45.501812, 47.387367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265065, -0.573524, -0.775120,
		0.098064, 0.815740, -0.570045,
		0.959231, 0.075087, 0.272466,
		32.392994, 45.524338, 47.469109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081867, 45.631790, 46.621902>,  <31.721533, 45.471779, 47.278381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081867, 45.631790, 46.621902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.355057, 45.503319, 46.884319>,  <32.518970, 45.426235, 47.041767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.355057, 45.503319, 46.884319>,  <32.081867, 45.631790, 46.621902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355057, 45.503319, 46.884319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515360, -0.424600, -0.744392,
		0.517634, 0.846500, -0.124471,
		0.682978, -0.321175, 0.656039,
		32.559952, 45.406967, 47.081131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653046, 45.778481, 46.317688>,  <32.081867, 45.631790, 46.621902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653046, 45.778481, 46.317688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.778118, 45.516750, 46.593105>,  <32.853161, 45.359711, 46.758354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.778118, 45.516750, 46.593105>,  <32.653046, 45.778481, 46.317688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778118, 45.516750, 46.593105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648240, -0.382838, -0.658194,
		0.694273, 0.652145, 0.304453,
		0.312682, -0.654325, 0.688541,
		32.871922, 45.320454, 46.799667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427334, 45.704636, 46.297329>,  <32.653046, 45.778481, 46.317688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427334, 45.704636, 46.297329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.309433, 45.377792, 46.495502>,  <33.238693, 45.181686, 46.614407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.309433, 45.377792, 46.495502>,  <33.427334, 45.704636, 46.297329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309433, 45.377792, 46.495502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558314, -0.568023, -0.604677,
		0.775505, 0.098378, 0.623629,
		-0.294749, -0.817112, 0.495431,
		33.221008, 45.132660, 46.644131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080849, 45.287548, 46.372677>,  <33.427334, 45.704636, 46.297329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080849, 45.287548, 46.372677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.766518, 45.043793, 46.414860>,  <33.577919, 44.897541, 46.440170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.766518, 45.043793, 46.414860>,  <34.080849, 45.287548, 46.372677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766518, 45.043793, 46.414860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479031, -0.707618, -0.519429,
		0.391153, -0.357667, 0.847982,
		-0.785830, -0.609386, 0.105453,
		33.530769, 44.860977, 46.446495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371666, 44.748783, 46.516411>,  <34.080849, 45.287548, 46.372677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371666, 44.748783, 46.516411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.024040, 44.659374, 46.339882>,  <33.815464, 44.605728, 46.233963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.024040, 44.659374, 46.339882>,  <34.371666, 44.748783, 46.516411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024040, 44.659374, 46.339882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451612, -0.722614, -0.523332,
		-0.201934, -0.654117, 0.728941,
		-0.869063, -0.223519, -0.441327,
		33.763321, 44.592319, 46.207485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435978, 44.003052, 46.288486>,  <34.371666, 44.748783, 46.516411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435978, 44.003052, 46.288486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.120895, 44.139378, 46.083210>,  <33.931847, 44.221172, 45.960045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.120895, 44.139378, 46.083210>,  <34.435978, 44.003052, 46.288486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.120895, 44.139378, 46.083210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245831, -0.589939, -0.769116,
		-0.564871, -0.731998, 0.380920,
		-0.787710, 0.340809, -0.513187,
		33.884583, 44.241623, 45.929253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.083652, 43.438160, 46.072723>,  <34.435978, 44.003052, 46.288486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.083652, 43.438160, 46.072723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.973789, 43.733280, 45.826077>,  <33.907871, 43.910351, 45.678089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.973789, 43.733280, 45.826077>,  <34.083652, 43.438160, 46.072723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973789, 43.733280, 45.826077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209733, -0.579868, -0.787251,
		-0.938390, -0.345550, 0.004525,
		-0.274659, 0.737800, -0.616616,
		33.891392, 43.954620, 45.641090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.674423, 43.160187, 45.647503>,  <34.083652, 43.438160, 46.072723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.674423, 43.160187, 45.647503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.786945, 43.488758, 45.449059>,  <33.854458, 43.685902, 45.329990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.786945, 43.488758, 45.449059>,  <33.674423, 43.160187, 45.647503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786945, 43.488758, 45.449059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020573, -0.522035, -0.852676,
		-0.959397, 0.229658, -0.163752,
		0.281308, 0.821424, -0.496114,
		33.871338, 43.735184, 45.300224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285713, 43.146343, 45.024540>,  <33.674423, 43.160187, 45.647503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285713, 43.146343, 45.024540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.593105, 43.391899, 44.952343>,  <33.777542, 43.539230, 44.909027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.593105, 43.391899, 44.952343>,  <33.285713, 43.146343, 45.024540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593105, 43.391899, 44.952343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223170, -0.521504, -0.823547,
		-0.599691, 0.592601, -0.537767,
		0.768483, 0.613887, -0.180491,
		33.823650, 43.576065, 44.898197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298958, 43.295094, 44.363594>,  <33.285713, 43.146343, 45.024540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298958, 43.295094, 44.363594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.678841, 43.345856, 44.478104>,  <33.906769, 43.376312, 44.546810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.678841, 43.345856, 44.478104>,  <33.298958, 43.295094, 44.363594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678841, 43.345856, 44.478104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311972, -0.462453, -0.829946,
		0.027066, 0.877515, -0.478785,
		0.949706, 0.126904, 0.286277,
		33.963753, 43.383926, 44.563988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568470, 43.403454, 43.813251>,  <33.298958, 43.295094, 44.363594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568470, 43.403454, 43.813251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.906578, 43.355972, 44.021648>,  <34.109444, 43.327484, 44.146687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.906578, 43.355972, 44.021648>,  <33.568470, 43.403454, 43.813251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906578, 43.355972, 44.021648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456380, -0.346744, -0.819443,
		0.277925, 0.930418, -0.238916,
		0.845267, -0.118707, 0.520992,
		34.160156, 43.320358, 44.177948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125347, 43.728855, 43.490082>,  <33.568470, 43.403454, 43.813251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125347, 43.728855, 43.490082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.278183, 43.430817, 43.708744>,  <34.369884, 43.251995, 43.839943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.278183, 43.430817, 43.708744>,  <34.125347, 43.728855, 43.490082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278183, 43.430817, 43.708744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492888, -0.336069, -0.802570,
		0.781708, 0.576097, 0.238840,
		0.382092, -0.745097, 0.546659,
		34.392811, 43.207287, 43.872742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844376, 43.611511, 43.337498>,  <34.125347, 43.728855, 43.490082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844376, 43.611511, 43.337498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.764576, 43.246880, 43.481285>,  <34.716698, 43.028099, 43.567558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.764576, 43.246880, 43.481285>,  <34.844376, 43.611511, 43.337498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764576, 43.246880, 43.481285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395038, -0.410527, -0.821835,
		0.896741, -0.021955, 0.442011,
		-0.199500, -0.911584, 0.359464,
		34.704727, 42.973404, 43.589123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381493, 43.114128, 43.042137>,  <34.844376, 43.611511, 43.337498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381493, 43.114128, 43.042137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.107067, 42.858929, 43.182007>,  <34.942413, 42.705811, 43.265930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.107067, 42.858929, 43.182007>,  <35.381493, 43.114128, 43.042137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107067, 42.858929, 43.182007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230902, -0.646722, -0.726936,
		0.689928, -0.417983, 0.591008,
		-0.686064, -0.637998, 0.349678,
		34.901249, 42.667530, 43.286911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655373, 42.505302, 42.812084>,  <35.381493, 43.114128, 43.042137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655373, 42.505302, 42.812084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.270916, 42.416733, 42.878021>,  <35.040241, 42.363590, 42.917583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.270916, 42.416733, 42.878021>,  <35.655373, 42.505302, 42.812084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270916, 42.416733, 42.878021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000522, -0.598628, -0.801027,
		0.276045, -0.769817, 0.575484,
		-0.961145, -0.221420, 0.164847,
		34.982574, 42.350307, 42.927475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.624535, 39.837765, 43.338356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.341846, 39.644173, 43.544777>,  <44.172234, 39.528019, 43.668629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.341846, 39.644173, 43.544777>,  <44.624535, 39.837765, 43.338356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.341846, 39.644173, 43.544777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017117, -0.717503, -0.696345,
		0.707285, -0.500956, 0.498790,
		-0.706722, -0.483977, 0.516053,
		44.129829, 39.498981, 43.699593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.808384, 39.090397, 43.421482>,  <44.624535, 39.837765, 43.338356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.808384, 39.090397, 43.421482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.410851, 39.124901, 43.449352>,  <44.172329, 39.145603, 43.466072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.410851, 39.124901, 43.449352>,  <44.808384, 39.090397, 43.421482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.410851, 39.124901, 43.449352> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110787, -0.746604, -0.655980,
		-0.004566, -0.659653, 0.751556,
		-0.993834, 0.086258, 0.069672,
		44.112701, 39.150780, 43.470253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.538765, 38.360962, 43.369221>,  <44.808384, 39.090397, 43.421482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.538765, 38.360962, 43.369221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.221165, 38.592350, 43.294460>,  <44.030605, 38.731182, 43.249603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.221165, 38.592350, 43.294460>,  <44.538765, 38.360962, 43.369221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.221165, 38.592350, 43.294460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343764, -0.680814, -0.646775,
		-0.501385, -0.449291, 0.739426,
		-0.794002, 0.578472, -0.186900,
		43.982964, 38.765892, 43.238392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.937885, 37.947926, 43.245766>,  <44.538765, 38.360962, 43.369221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.937885, 37.947926, 43.245766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.799564, 38.290485, 43.092400>,  <43.716572, 38.496021, 43.000381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.799564, 38.290485, 43.092400>,  <43.937885, 37.947926, 43.245766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.799564, 38.290485, 43.092400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318684, -0.491529, -0.810457,
		-0.882530, -0.158072, 0.442893,
		-0.345805, 0.856395, -0.383414,
		43.695824, 38.547405, 42.977375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.159637, 37.866615, 43.115635>,  <43.937885, 37.947926, 43.245766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.159637, 37.866615, 43.115635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.295250, 38.165874, 42.887482>,  <43.376617, 38.345428, 42.750591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.295250, 38.165874, 42.887482>,  <43.159637, 37.866615, 43.115635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.295250, 38.165874, 42.887482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368475, -0.452252, -0.812216,
		-0.865613, 0.485537, 0.122346,
		0.339030, 0.748146, -0.570383,
		43.396957, 38.390320, 42.716366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.566833, 38.077362, 42.644409>,  <43.159637, 37.866615, 43.115635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.566833, 38.077362, 42.644409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.910866, 38.211517, 42.490643>,  <43.117287, 38.292011, 42.398384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.910866, 38.211517, 42.490643>,  <42.566833, 38.077362, 42.644409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.910866, 38.211517, 42.490643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258691, -0.362742, -0.895264,
		-0.439702, 0.869445, -0.225227,
		0.860082, 0.335385, -0.384416,
		43.168892, 38.312134, 42.375317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.337784, 38.229637, 42.029049>,  <42.566833, 38.077362, 42.644409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.337784, 38.229637, 42.029049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.734028, 38.186184, 41.995853>,  <42.971775, 38.160110, 41.975937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.734028, 38.186184, 41.995853>,  <42.337784, 38.229637, 42.029049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.734028, 38.186184, 41.995853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109753, -0.270034, -0.956575,
		0.081508, 0.956702, -0.279422,
		0.990611, -0.108636, -0.082991,
		43.031212, 38.153591, 41.970955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.411045, 38.381935, 41.356190>,  <42.337784, 38.229637, 42.029049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.411045, 38.381935, 41.356190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.747696, 38.189045, 41.453457>,  <42.949684, 38.073311, 41.511818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.747696, 38.189045, 41.453457>,  <42.411045, 38.381935, 41.356190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.747696, 38.189045, 41.453457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033764, -0.496357, -0.867462,
		0.539006, 0.721867, -0.434029,
		0.841625, -0.482222, 0.243166,
		43.000183, 38.044380, 41.526405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.862103, 38.468815, 40.785027>,  <42.411045, 38.381935, 41.356190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.862103, 38.468815, 40.785027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.008385, 38.140209, 40.960014>,  <43.096153, 37.943047, 41.065006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.008385, 38.140209, 40.960014>,  <42.862103, 38.468815, 40.785027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.008385, 38.140209, 40.960014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029679, -0.459497, -0.887683,
		0.930259, 0.337611, -0.143657,
		0.365701, -0.821512, 0.437471,
		43.118095, 37.893757, 41.091255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.422199, 38.246880, 40.378616>,  <42.862103, 38.468815, 40.785027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.422199, 38.246880, 40.378616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.300072, 37.917946, 40.570683>,  <43.226795, 37.720585, 40.685921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.300072, 37.917946, 40.570683>,  <43.422199, 38.246880, 40.378616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.300072, 37.917946, 40.570683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066686, -0.521465, -0.850663,
		0.949913, -0.227701, 0.214049,
		-0.305316, -0.822330, 0.480162,
		43.208477, 37.671246, 40.714729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.931087, 37.760078, 40.171471>,  <43.422199, 38.246880, 40.378616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.931087, 37.760078, 40.171471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.643070, 37.514889, 40.301575>,  <43.470261, 37.367775, 40.379639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.643070, 37.514889, 40.301575>,  <43.931087, 37.760078, 40.171471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.643070, 37.514889, 40.301575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189183, -0.624376, -0.757868,
		0.667641, -0.484166, 0.565544,
		-0.720046, -0.612975, 0.325262,
		43.427055, 37.330997, 40.399155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.166351, 36.998474, 40.156643>,  <43.931087, 37.760078, 40.171471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.166351, 36.998474, 40.156643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.769817, 36.948418, 40.172573>,  <43.531895, 36.918385, 40.182129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.769817, 36.948418, 40.172573>,  <44.166351, 36.998474, 40.156643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.769817, 36.948418, 40.172573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059693, -0.699505, -0.712131,
		0.116972, -0.703586, 0.700917,
		-0.991340, -0.125139, 0.039823,
		43.472416, 36.910877, 40.184521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.203117, 36.301716, 40.148834>,  <44.166351, 36.998474, 40.156643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.203117, 36.301716, 40.148834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.845863, 36.444519, 40.039394>,  <43.631512, 36.530201, 39.973728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.845863, 36.444519, 40.039394>,  <44.203117, 36.301716, 40.148834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.845863, 36.444519, 40.039394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030210, -0.559301, -0.828414,
		-0.448777, -0.748150, 0.488745,
		-0.893133, 0.357008, -0.273603,
		43.577923, 36.551620, 39.957314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.000744, 35.945602, 39.659138>,  <44.203117, 36.301716, 40.148834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.000744, 35.945602, 39.659138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.711639, 36.210499, 39.580097>,  <43.538177, 36.369438, 39.532673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.711639, 36.210499, 39.580097>,  <44.000744, 35.945602, 39.659138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.711639, 36.210499, 39.580097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104274, -0.387152, -0.916101,
		-0.683184, -0.641518, 0.348874,
		-0.722762, 0.662244, -0.197602,
		43.494812, 36.409172, 39.520817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.464199, 35.549049, 39.347912>,  <44.000744, 35.945602, 39.659138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.464199, 35.549049, 39.347912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.410393, 35.928238, 39.232498>,  <43.378109, 36.155750, 39.163250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.410393, 35.928238, 39.232498>,  <43.464199, 35.549049, 39.347912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.410393, 35.928238, 39.232498> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137587, -0.270488, -0.952841,
		-0.981313, -0.167873, -0.094044,
		-0.134518, 0.947974, -0.288530,
		43.370037, 36.212631, 39.145939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.002373, 35.612263, 38.771191>,  <43.464199, 35.549049, 39.347912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.002373, 35.612263, 38.771191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.227989, 35.941921, 38.750607>,  <43.363358, 36.139717, 38.738255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.227989, 35.941921, 38.750607>,  <43.002373, 35.612263, 38.771191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.227989, 35.941921, 38.750607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082935, -0.118550, -0.989478,
		-0.821571, 0.553838, -0.135217,
		0.564041, 0.824142, -0.051465,
		43.397202, 36.189163, 38.735168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.771046, 36.058247, 38.168007>,  <43.002373, 35.612263, 38.771191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.771046, 36.058247, 38.168007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.154060, 36.123161, 38.263325>,  <43.383869, 36.162109, 38.320515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.154060, 36.123161, 38.263325>,  <42.771046, 36.058247, 38.168007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.154060, 36.123161, 38.263325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269813, -0.213138, -0.939028,
		-0.101602, 0.963450, -0.247875,
		0.957537, 0.162287, 0.238296,
		43.441322, 36.171848, 38.334812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.954670, 36.405174, 37.533012>,  <42.771046, 36.058247, 38.168007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.954670, 36.405174, 37.533012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.279739, 36.320538, 37.750191>,  <43.474781, 36.269756, 37.880497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.279739, 36.320538, 37.750191>,  <42.954670, 36.405174, 37.533012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.279739, 36.320538, 37.750191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543541, -0.060613, -0.837191,
		0.210049, 0.975478, 0.065748,
		0.812676, -0.211588, 0.542944,
		43.523540, 36.257061, 37.913074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.393631, 36.581638, 37.040798>,  <42.954670, 36.405174, 37.533012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.393631, 36.581638, 37.040798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.625427, 36.372871, 37.291172>,  <43.764503, 36.247612, 37.441399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.625427, 36.372871, 37.291172>,  <43.393631, 36.581638, 37.040798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.625427, 36.372871, 37.291172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589560, -0.261816, -0.764115,
		0.562683, 0.811824, 0.155981,
		0.579488, -0.521915, 0.625938,
		43.799274, 36.216297, 37.478954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.161594, 36.775337, 37.010834>,  <43.393631, 36.581638, 37.040798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.161594, 36.775337, 37.010834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.128044, 36.390942, 37.116264>,  <44.107914, 36.160305, 37.179523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.128044, 36.390942, 37.116264>,  <44.161594, 36.775337, 37.010834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.128044, 36.390942, 37.116264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599767, -0.259917, -0.756784,
		0.795767, 0.094613, 0.598167,
		-0.083872, -0.960985, 0.263579,
		44.102882, 36.102646, 37.195339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.805904, 36.492039, 36.962067>,  <44.161594, 36.775337, 37.010834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.805904, 36.492039, 36.962067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.574974, 36.165802, 36.946507>,  <44.436417, 35.970062, 36.937172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.574974, 36.165802, 36.946507>,  <44.805904, 36.492039, 36.962067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.574974, 36.165802, 36.946507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525241, -0.334475, -0.782463,
		0.625157, -0.472166, 0.621481,
		-0.577322, -0.815589, -0.038902,
		44.401779, 35.921124, 36.934837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.846725, 35.813953, 37.159695>,  <44.805904, 36.492039, 36.962067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.846725, 35.813953, 37.159695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.646496, 35.856041, 37.503403>,  <44.526356, 35.881294, 37.709629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.646496, 35.856041, 37.503403>,  <44.846725, 35.813953, 37.159695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.646496, 35.856041, 37.503403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865602, -0.075221, -0.495051,
		0.012549, -0.991601, 0.128728,
		-0.500576, 0.105215, 0.859275,
		44.496323, 35.887608, 37.761185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.434990, 35.690510, 36.583420>,  <44.846725, 35.813953, 37.159695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.434990, 35.690510, 36.583420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.537380, 35.309868, 36.515385>,  <45.598816, 35.081482, 36.474564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.537380, 35.309868, 36.515385>,  <45.434990, 35.690510, 36.583420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.537380, 35.309868, 36.515385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317622, -0.248974, 0.914947,
		-0.913012, -0.180183, -0.365981,
		0.255978, -0.951602, -0.170086,
		45.614174, 35.024387, 36.464359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.865715, 35.129261, 36.787567>,  <45.434990, 35.690510, 36.583420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.865715, 35.129261, 36.787567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.236073, 34.980267, 36.812763>,  <45.458286, 34.890869, 36.827881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.236073, 34.980267, 36.812763>,  <44.865715, 35.129261, 36.787567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.236073, 34.980267, 36.812763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158715, -0.232252, 0.959619,
		-0.342818, -0.898505, -0.274161,
		0.925897, -0.372488, 0.062986,
		45.513844, 34.868519, 36.831657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.727554, 34.578583, 37.236340>,  <44.865715, 35.129261, 36.787567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.727554, 34.578583, 37.236340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.122360, 34.640602, 37.219521>,  <45.359241, 34.677814, 37.209427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.122360, 34.640602, 37.219521>,  <44.727554, 34.578583, 37.236340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.122360, 34.640602, 37.219521> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083698, -0.272888, 0.958398,
		0.137120, -0.949470, -0.282321,
		0.987012, 0.155046, -0.042050,
		45.418465, 34.687115, 37.206905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.079994, 33.896774, 37.425972>,  <44.727554, 34.578583, 37.236340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.079994, 33.896774, 37.425972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.311165, 34.214211, 37.502102>,  <45.449867, 34.404671, 37.547779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.311165, 34.214211, 37.502102>,  <45.079994, 33.896774, 37.425972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.311165, 34.214211, 37.502102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099265, -0.299836, 0.948812,
		0.810030, -0.529451, -0.252058,
		0.577926, 0.793587, 0.190320,
		45.484543, 34.452286, 37.559196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.633076, 33.622215, 37.922611>,  <45.079994, 33.896774, 37.425972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.633076, 33.622215, 37.922611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.633499, 34.020321, 37.961475>,  <45.633755, 34.259186, 37.984795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.633499, 34.020321, 37.961475>,  <45.633076, 33.622215, 37.922611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.633499, 34.020321, 37.961475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304054, -0.092885, 0.948116,
		0.952654, 0.028540, -0.302713,
		0.001058, 0.995268, 0.097165,
		45.633816, 34.318901, 37.990623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.301228, 33.798096, 38.225353>,  <45.633076, 33.622215, 37.922611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.301228, 33.798096, 38.225353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.079052, 34.121346, 38.303761>,  <45.945747, 34.315296, 38.350807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.079052, 34.121346, 38.303761>,  <46.301228, 33.798096, 38.225353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.079052, 34.121346, 38.303761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360379, 0.021491, 0.932558,
		0.749410, 0.588620, -0.303168,
		-0.555438, 0.808124, 0.196021,
		45.912422, 34.363781, 38.362568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.731998, 34.254921, 38.464520>,  <46.301228, 33.798096, 38.225353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.731998, 34.254921, 38.464520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.381184, 34.390522, 38.600689>,  <46.170696, 34.471882, 38.682392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.381184, 34.390522, 38.600689>,  <46.731998, 34.254921, 38.464520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.381184, 34.390522, 38.600689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426163, 0.221809, 0.877033,
		0.221809, 0.914263, -0.339005,
		-0.877033, 0.339005, 0.340425,
		46.118073, 34.492222, 38.702816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.899452, 34.883690, 38.806419>,  <46.731998, 34.254921, 38.464520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.899452, 34.883690, 38.806419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.539169, 34.784252, 38.948925>,  <46.322998, 34.724590, 39.034428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.539169, 34.784252, 38.948925>,  <46.899452, 34.883690, 38.806419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.539169, 34.784252, 38.948925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319161, 0.177699, 0.930892,
		-0.294719, 0.952169, -0.080715,
		-0.900709, -0.248590, 0.356267,
		46.268955, 34.709675, 39.055805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.813129, 35.388729, 39.370281>,  <46.899452, 34.883690, 38.806419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.813129, 35.388729, 39.370281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.554146, 35.090374, 39.432823>,  <46.398754, 34.911362, 39.470348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.554146, 35.090374, 39.432823>,  <46.813129, 35.388729, 39.370281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.554146, 35.090374, 39.432823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052534, 0.160993, 0.985556,
		-0.760284, 0.646326, -0.065053,
		-0.647463, -0.745885, 0.156354,
		46.359905, 34.866608, 39.479729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.341866, 35.706375, 39.809963>,  <46.813129, 35.388729, 39.370281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.341866, 35.706375, 39.809963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.311001, 35.310261, 39.856239>,  <46.292480, 35.072594, 39.884003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.311001, 35.310261, 39.856239>,  <46.341866, 35.706375, 39.809963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.311001, 35.310261, 39.856239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094983, 0.122808, 0.987875,
		-0.992484, 0.065241, -0.103537,
		-0.077165, -0.990284, 0.115688,
		46.287853, 35.013176, 39.890945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.672401, 35.547058, 40.162785>,  <46.341866, 35.706375, 39.809963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.672401, 35.547058, 40.162785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.911144, 35.229073, 40.206211>,  <46.054390, 35.038280, 40.232265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.911144, 35.229073, 40.206211>,  <45.672401, 35.547058, 40.162785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.911144, 35.229073, 40.206211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086377, 0.070856, 0.993740,
		-0.797682, -0.602501, -0.026376,
		0.596861, -0.794967, 0.108563,
		46.090202, 34.990582, 40.238781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.403316, 35.242641, 40.693707>,  <45.672401, 35.547058, 40.162785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.403316, 35.242641, 40.693707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.762726, 35.067104, 40.696892>,  <45.978371, 34.961781, 40.698803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.762726, 35.067104, 40.696892>,  <45.403316, 35.242641, 40.693707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.762726, 35.067104, 40.696892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092414, 0.206880, 0.973992,
		-0.429080, -0.874422, 0.226443,
		0.898527, -0.438847, 0.007959,
		46.032284, 34.935452, 40.699280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.365768, 34.770241, 41.238136>,  <45.403316, 35.242641, 40.693707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.365768, 34.770241, 41.238136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.749863, 34.855476, 41.165977>,  <45.980320, 34.906616, 41.122684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.749863, 34.855476, 41.165977>,  <45.365768, 34.770241, 41.238136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.749863, 34.855476, 41.165977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131470, 0.224902, 0.965471,
		0.246309, -0.950794, 0.187943,
		0.960233, 0.213095, -0.180396,
		46.037933, 34.919403, 41.111858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.722240, 34.376476, 41.757275>,  <45.365768, 34.770241, 41.238136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.722240, 34.376476, 41.757275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.942062, 34.677979, 41.613140>,  <46.073956, 34.858879, 41.526661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.942062, 34.677979, 41.613140>,  <45.722240, 34.376476, 41.757275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.942062, 34.677979, 41.613140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047961, 0.402127, 0.914327,
		0.834081, -0.519752, 0.184839,
		0.549552, 0.753758, -0.360335,
		46.106930, 34.904106, 41.505039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.178867, 34.459148, 42.227901>,  <45.722240, 34.376476, 41.757275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.178867, 34.459148, 42.227901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.246166, 34.793182, 42.018394>,  <46.286545, 34.993603, 41.892693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.246166, 34.793182, 42.018394>,  <46.178867, 34.459148, 42.227901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.246166, 34.793182, 42.018394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200772, 0.491170, 0.847610,
		0.965082, -0.247766, -0.085023,
		0.168248, 0.835083, -0.523763,
		46.296642, 35.043709, 41.861267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.763371, 34.833984, 42.506893>,  <46.178867, 34.459148, 42.227901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.763371, 34.833984, 42.506893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.521858, 35.095146, 42.323956>,  <46.376949, 35.251842, 42.214191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.521858, 35.095146, 42.323956>,  <46.763371, 34.833984, 42.506893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.521858, 35.095146, 42.323956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077874, 0.619293, 0.781288,
		0.793335, 0.436114, -0.424763,
		-0.603784, 0.652902, -0.457345,
		46.340725, 35.291016, 42.186752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.025898, 35.354282, 42.753922>,  <46.763371, 34.833984, 42.506893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.025898, 35.354282, 42.753922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.668556, 35.484844, 42.630383>,  <46.454151, 35.563179, 42.556259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.668556, 35.484844, 42.630383>,  <47.025898, 35.354282, 42.753922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.668556, 35.484844, 42.630383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032900, 0.637956, 0.769369,
		0.448156, 0.697477, -0.559180,
		-0.893350, 0.326401, -0.308851,
		46.400551, 35.582764, 42.537727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.995277, 36.215073, 42.712402>,  <47.025898, 35.354282, 42.753922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.995277, 36.215073, 42.712402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.630318, 36.059372, 42.763000>,  <46.411343, 35.965950, 42.793362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.630318, 36.059372, 42.763000>,  <46.995277, 36.215073, 42.712402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.630318, 36.059372, 42.763000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106511, 0.524233, 0.844888,
		-0.395189, 0.757406, -0.519771,
		-0.912404, -0.389252, 0.126499,
		46.356598, 35.942596, 42.800949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.627827, 36.754440, 43.005562>,  <46.995277, 36.215073, 42.712402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.627827, 36.754440, 43.005562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.410660, 36.429455, 43.090553>,  <46.280361, 36.234463, 43.141548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.410660, 36.429455, 43.090553>,  <46.627827, 36.754440, 43.005562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.410660, 36.429455, 43.090553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122043, 0.326656, 0.937231,
		-0.830872, 0.482905, -0.276502,
		-0.542915, -0.812464, 0.212474,
		46.247784, 36.185715, 43.154297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.258953, 37.055122, 43.478462>,  <46.627827, 36.754440, 43.005562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.258953, 37.055122, 43.478462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.217625, 36.657482, 43.491688>,  <46.192825, 36.418900, 43.499622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.217625, 36.657482, 43.491688>,  <46.258953, 37.055122, 43.478462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.217625, 36.657482, 43.491688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013668, 0.031819, 0.999400,
		-0.994554, 0.103716, 0.010300,
		-0.103326, -0.994098, 0.033064,
		46.186626, 36.359253, 43.501606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.503048, 40.218597, 40.714451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168346, 40.033577, 40.831684>,  <38.967525, 39.922565, 40.902023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168346, 40.033577, 40.831684>,  <39.503048, 40.218597, 40.714451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168346, 40.033577, 40.831684> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279761, -0.821212, -0.497338,
		0.470728, -0.334153, 0.816552,
		-0.836749, -0.462550, 0.293085,
		38.917320, 39.894814, 40.919609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.712109, 39.507786, 40.954578>,  <39.503048, 40.218597, 40.714451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.712109, 39.507786, 40.954578> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316528, 39.499748, 40.895836>,  <39.079178, 39.494926, 40.860592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316528, 39.499748, 40.895836>,  <39.712109, 39.507786, 40.954578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316528, 39.499748, 40.895836> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088093, -0.876490, -0.473293,
		-0.119205, -0.481001, 0.868578,
		-0.988954, -0.020097, -0.146855,
		39.019844, 39.493721, 40.851780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282993, 38.953934, 41.257244>,  <39.712109, 39.507786, 40.954578>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282993, 38.953934, 41.257244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049789, 39.047443, 40.946003>,  <38.909866, 39.103550, 40.759258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049789, 39.047443, 40.946003>,  <39.282993, 38.953934, 41.257244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049789, 39.047443, 40.946003> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096524, -0.930997, -0.352034,
		-0.806709, -0.280346, 0.520218,
		-0.583013, 0.233776, -0.778104,
		38.874886, 39.117577, 40.712570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885101, 38.469398, 41.273647>,  <39.282993, 38.953934, 41.257244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885101, 38.469398, 41.273647> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851624, 38.612293, 40.901543>,  <38.831535, 38.698029, 40.678280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851624, 38.612293, 40.901543>,  <38.885101, 38.469398, 41.273647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851624, 38.612293, 40.901543> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049311, -0.930905, -0.361918,
		-0.995270, -0.076164, 0.060300,
		-0.083698, 0.357233, -0.930258,
		38.826515, 38.719463, 40.622467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768421, 37.966827, 40.983646>,  <38.885101, 38.469398, 41.273647>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.768421, 37.966827, 40.983646> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814224, 38.184059, 40.650909>,  <38.841705, 38.314396, 40.451267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814224, 38.184059, 40.650909>,  <38.768421, 37.966827, 40.983646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814224, 38.184059, 40.650909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232480, -0.828744, -0.509054,
		-0.965837, -0.135096, -0.221151,
		0.114507, 0.543076, -0.831839,
		38.848576, 38.346981, 40.401360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281532, 37.692917, 40.422138>,  <38.768421, 37.966827, 40.983646>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281532, 37.692917, 40.422138> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571510, 37.896687, 40.236691>,  <38.745499, 38.018948, 40.125420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571510, 37.896687, 40.236691>,  <38.281532, 37.692917, 40.422138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571510, 37.896687, 40.236691> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065103, -0.720743, -0.690139,
		-0.685724, 0.470129, -0.555663,
		0.724944, 0.509420, -0.463624,
		38.788994, 38.049511, 40.097603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107422, 37.779125, 39.675259>,  <38.281532, 37.692917, 40.422138>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107422, 37.779125, 39.675259> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503181, 37.825726, 39.709949>,  <38.740635, 37.853687, 39.730762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503181, 37.825726, 39.709949>,  <38.107422, 37.779125, 39.675259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503181, 37.825726, 39.709949> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132849, -0.484638, -0.864567,
		-0.058695, 0.866921, -0.494977,
		0.989397, 0.116503, 0.086724,
		38.799999, 37.860676, 39.735966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313293, 37.793053, 38.993305>,  <38.107422, 37.779125, 39.675259>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313293, 37.793053, 38.993305> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676670, 37.757385, 39.156662>,  <38.894695, 37.735985, 39.254677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676670, 37.757385, 39.156662>,  <38.313293, 37.793053, 38.993305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.676670, 37.757385, 39.156662> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317363, -0.488722, -0.812670,
		0.272057, 0.867871, -0.415676,
		0.908442, -0.089172, 0.408390,
		38.949203, 37.730633, 39.279179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832474, 37.871212, 38.446426>,  <38.313293, 37.793053, 38.993305>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832474, 37.871212, 38.446426> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038406, 37.678143, 38.729828>,  <39.161964, 37.562302, 38.899868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038406, 37.678143, 38.729828>,  <38.832474, 37.871212, 38.446426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038406, 37.678143, 38.729828> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536656, -0.463041, -0.705403,
		0.668545, 0.743385, 0.020642,
		0.514828, -0.482671, 0.708506,
		39.192856, 37.533340, 38.942379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519608, 38.072903, 38.312675>,  <38.832474, 37.871212, 38.446426>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.519608, 38.072903, 38.312675> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508846, 37.730072, 38.518471>,  <39.502388, 37.524376, 38.641949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508846, 37.730072, 38.518471>,  <39.519608, 38.072903, 38.312675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508846, 37.730072, 38.518471> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555459, -0.440726, -0.705143,
		0.831109, 0.266809, 0.487925,
		-0.026903, -0.857073, 0.514493,
		39.500774, 37.472950, 38.672817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155937, 37.866142, 38.296555>,  <39.519608, 38.072903, 38.312675>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.155937, 37.866142, 38.296555> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949295, 37.538307, 38.395668>,  <39.825310, 37.341606, 38.455135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949295, 37.538307, 38.395668>,  <40.155937, 37.866142, 38.296555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.949295, 37.538307, 38.395668> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441554, -0.502959, -0.743009,
		0.733585, -0.274434, 0.621723,
		-0.516608, -0.819584, 0.247786,
		39.794312, 37.292431, 38.470005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559456, 37.161358, 38.369503>,  <40.155937, 37.866142, 38.296555>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.559456, 37.161358, 38.369503> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193054, 37.039413, 38.265205>,  <39.973213, 36.966248, 38.202629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193054, 37.039413, 38.265205>,  <40.559456, 37.161358, 38.369503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193054, 37.039413, 38.265205> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364373, -0.360404, -0.858686,
		0.167810, -0.881571, 0.441218,
		-0.916009, -0.304864, -0.260741,
		39.918251, 36.947956, 38.186981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495262, 36.371983, 38.285686>,  <40.559456, 37.161358, 38.369503>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495262, 36.371983, 38.285686> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209290, 36.548267, 38.068562>,  <40.037704, 36.654037, 37.938286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209290, 36.548267, 38.068562>,  <40.495262, 36.371983, 38.285686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.209290, 36.548267, 38.068562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354499, -0.440686, -0.824698,
		-0.602665, -0.782029, 0.158827,
		-0.714930, 0.440712, -0.542814,
		39.994812, 36.680481, 37.905716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300316, 35.832573, 37.712097>,  <40.495262, 36.371983, 38.285686>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300316, 35.832573, 37.712097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212498, 36.206135, 37.599232>,  <40.159809, 36.430271, 37.531513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212498, 36.206135, 37.599232>,  <40.300316, 35.832573, 37.712097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.212498, 36.206135, 37.599232> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309942, -0.207467, -0.927843,
		-0.925060, -0.291155, -0.243910,
		-0.219543, 0.933909, -0.282160,
		40.146633, 36.486309, 37.514584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101498, 35.158936, 37.840252>,  <40.300316, 35.832573, 37.712097>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.101498, 35.158936, 37.840252> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387703, 34.967758, 38.044064>,  <40.559425, 34.853054, 38.166351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387703, 34.967758, 38.044064>,  <40.101498, 35.158936, 37.840252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387703, 34.967758, 38.044064> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541381, 0.081627, 0.836806,
		-0.441536, -0.874591, -0.200344,
		0.715509, -0.477942, 0.509528,
		40.602356, 34.824375, 38.196922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819027, 34.628307, 38.178680>,  <40.101498, 35.158936, 37.840252>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819027, 34.628307, 38.178680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161888, 34.682705, 38.377396>,  <40.367603, 34.715343, 38.496624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161888, 34.682705, 38.377396>,  <39.819027, 34.628307, 38.178680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161888, 34.682705, 38.377396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470274, -0.186766, 0.862532,
		0.210080, -0.972947, -0.096134,
		0.857152, 0.135992, 0.496787,
		40.419033, 34.723503, 38.526432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933014, 34.051079, 38.593510>,  <39.819027, 34.628307, 38.178680>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933014, 34.051079, 38.593510> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.171535, 34.327217, 38.757385>,  <40.314648, 34.492901, 38.855709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.171535, 34.327217, 38.757385>,  <39.933014, 34.051079, 38.593510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.171535, 34.327217, 38.757385> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388721, -0.198213, 0.899782,
		0.702366, -0.695798, 0.150156,
		0.596304, 0.690345, 0.409689,
		40.350426, 34.534321, 38.880291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125927, 33.742779, 39.276920>,  <39.933014, 34.051079, 38.593510>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125927, 33.742779, 39.276920> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208275, 34.133694, 39.297050>,  <40.257683, 34.368240, 39.309128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208275, 34.133694, 39.297050>,  <40.125927, 33.742779, 39.276920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208275, 34.133694, 39.297050> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211414, -0.005799, 0.977379,
		0.955470, -0.211851, 0.205418,
		0.205868, 0.977285, 0.050329,
		40.270035, 34.426880, 39.312149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.555576, 33.847088, 39.885834>,  <40.125927, 33.742779, 39.276920>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.555576, 33.847088, 39.885834> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396404, 34.205757, 39.808243>,  <40.300903, 34.420959, 39.761688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396404, 34.205757, 39.808243>,  <40.555576, 33.847088, 39.885834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.396404, 34.205757, 39.808243> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187912, 0.127295, 0.973902,
		0.897967, 0.423992, 0.117842,
		-0.397926, 0.896675, -0.193980,
		40.277027, 34.474758, 39.750050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698059, 34.169147, 40.563053>,  <40.555576, 33.847088, 39.885834>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.698059, 34.169147, 40.563053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.448391, 34.406086, 40.359272>,  <40.298592, 34.548248, 40.237003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.448391, 34.406086, 40.359272>,  <40.698059, 34.169147, 40.563053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.448391, 34.406086, 40.359272> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284750, 0.434742, 0.854352,
		0.727549, 0.678328, -0.102683,
		-0.624171, 0.592344, -0.509450,
		40.261139, 34.583790, 40.206436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.840267, 34.832394, 40.717937>,  <40.698059, 34.169147, 40.563053>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.840267, 34.832394, 40.717937> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452065, 34.829262, 40.621552>,  <40.219143, 34.827381, 40.563721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452065, 34.829262, 40.621552>,  <40.840267, 34.832394, 40.717937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.452065, 34.829262, 40.621552> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221826, 0.420500, 0.879757,
		0.094438, 0.907259, -0.409833,
		-0.970502, -0.007829, -0.240965,
		40.160915, 34.826912, 40.549263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536022, 35.524239, 40.793621>,  <40.840267, 34.832394, 40.717937>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.536022, 35.524239, 40.793621> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208809, 35.294891, 40.811813>,  <40.012482, 35.157284, 40.822727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208809, 35.294891, 40.811813>,  <40.536022, 35.524239, 40.793621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208809, 35.294891, 40.811813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295399, 0.486667, 0.822128,
		-0.493513, 0.659096, -0.567483,
		-0.818037, -0.573365, 0.045480,
		39.963398, 35.122883, 40.825459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028145, 35.964188, 41.066269>,  <40.536022, 35.524239, 40.793621>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028145, 35.964188, 41.066269> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895229, 35.595154, 41.144680>,  <39.815479, 35.373734, 41.191727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895229, 35.595154, 41.144680>,  <40.028145, 35.964188, 41.066269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895229, 35.595154, 41.144680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521219, 0.352839, 0.777068,
		-0.786074, 0.156042, -0.598113,
		-0.332293, -0.922581, 0.196026,
		39.795540, 35.318378, 41.203487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.405224, 36.079292, 41.250668>,  <40.028145, 35.964188, 41.066269>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.405224, 36.079292, 41.250668> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466038, 35.711617, 41.395977>,  <39.502525, 35.491009, 41.483162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466038, 35.711617, 41.395977>,  <39.405224, 36.079292, 41.250668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466038, 35.711617, 41.395977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451087, 0.262505, 0.853002,
		-0.879434, -0.293559, -0.374725,
		0.152039, -0.919192, 0.363276,
		39.511650, 35.435860, 41.504959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763447, 35.950832, 41.400318>,  <39.405224, 36.079292, 41.250668>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763447, 35.950832, 41.400318> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012840, 35.723248, 41.614811>,  <39.162476, 35.586697, 41.743507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012840, 35.723248, 41.614811>,  <38.763447, 35.950832, 41.400318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012840, 35.723248, 41.614811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338786, 0.421523, 0.841155,
		-0.704622, -0.706116, 0.070056,
		0.623484, -0.568963, 0.536237,
		39.199886, 35.552559, 41.775681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363266, 35.677536, 41.828064>,  <38.763447, 35.950832, 41.400318>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363266, 35.677536, 41.828064> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711914, 35.631207, 42.018581>,  <38.921104, 35.603409, 42.132893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711914, 35.631207, 42.018581>,  <38.363266, 35.677536, 41.828064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711914, 35.631207, 42.018581> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421643, 0.318362, 0.849037,
		-0.249975, -0.940867, 0.228654,
		0.871625, -0.115828, 0.476292,
		38.973400, 35.596458, 42.161469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066757, 35.451168, 42.469044>,  <38.363266, 35.677536, 41.828064>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066757, 35.451168, 42.469044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434998, 35.596302, 42.526802>,  <38.655941, 35.683384, 42.561455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434998, 35.596302, 42.526802>,  <38.066757, 35.451168, 42.469044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434998, 35.596302, 42.526802> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304898, 0.436802, 0.846310,
		0.243998, -0.823138, 0.512747,
		0.920599, 0.362834, 0.144394,
		38.711178, 35.705151, 42.570122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165096, 35.533192, 43.185234>,  <38.066757, 35.451168, 42.469044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165096, 35.533192, 43.185234> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474190, 35.756485, 43.064400>,  <38.659645, 35.890461, 42.991901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474190, 35.756485, 43.064400>,  <38.165096, 35.533192, 43.185234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474190, 35.756485, 43.064400> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243426, 0.700173, 0.671194,
		0.586191, -0.445122, 0.676939,
		0.772738, 0.558233, -0.302081,
		38.706009, 35.923954, 42.973774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033546, 35.092045, 43.748646>,  <38.165096, 35.533192, 43.185234>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033546, 35.092045, 43.748646> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643501, 35.094570, 43.660007>,  <37.409473, 35.096085, 43.606823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643501, 35.094570, 43.660007>,  <38.033546, 35.092045, 43.748646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643501, 35.094570, 43.660007> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182032, -0.547732, -0.816611,
		-0.126533, -0.836630, 0.532954,
		-0.975117, 0.006314, -0.221600,
		37.350967, 35.096466, 43.593529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014191, 34.428600, 43.541935>,  <38.033546, 35.092045, 43.748646>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014191, 34.428600, 43.541935> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690876, 34.625576, 43.412830>,  <37.496887, 34.743763, 43.335365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690876, 34.625576, 43.412830>,  <38.014191, 34.428600, 43.541935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690876, 34.625576, 43.412830> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049367, -0.602932, -0.796264,
		-0.586713, -0.627677, 0.511653,
		-0.808288, 0.492437, -0.322761,
		37.448391, 34.773308, 43.316002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567310, 33.900848, 43.284279>,  <38.014191, 34.428600, 43.541935>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567310, 33.900848, 43.284279> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417320, 34.228428, 43.110512>,  <37.327328, 34.424976, 43.006252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417320, 34.228428, 43.110512>,  <37.567310, 33.900848, 43.284279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417320, 34.228428, 43.110512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201628, -0.529438, -0.824040,
		-0.904844, -0.221402, 0.363647,
		-0.374973, 0.818949, -0.434418,
		37.304829, 34.474113, 42.980186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991676, 33.709843, 42.913265>,  <37.567310, 33.900848, 43.284279>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991676, 33.709843, 42.913265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079441, 34.051434, 42.724552>,  <37.132099, 34.256390, 42.611324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079441, 34.051434, 42.724552>,  <36.991676, 33.709843, 42.913265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079441, 34.051434, 42.724552> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190135, -0.436869, -0.879201,
		-0.956926, 0.282609, 0.066517,
		0.219411, 0.853977, -0.471786,
		37.145264, 34.307629, 42.583015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454792, 33.744705, 42.418495>,  <36.991676, 33.709843, 42.913265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454792, 33.744705, 42.418495> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732346, 33.999905, 42.284943>,  <36.898880, 34.153027, 42.204811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732346, 33.999905, 42.284943>,  <36.454792, 33.744705, 42.418495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732346, 33.999905, 42.284943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189471, -0.285565, -0.939443,
		-0.694710, 0.715128, -0.077267,
		0.693887, 0.638001, -0.333881,
		36.940510, 34.191303, 42.184780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176613, 34.079975, 41.799442>,  <36.454792, 33.744705, 42.418495>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176613, 34.079975, 41.799442> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568146, 34.154476, 41.765488>,  <36.803066, 34.199177, 41.745113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568146, 34.154476, 41.765488>,  <36.176613, 34.079975, 41.799442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568146, 34.154476, 41.765488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062252, -0.124191, -0.990304,
		-0.194987, 0.974621, -0.109967,
		0.978828, 0.186251, -0.084888,
		36.861794, 34.210350, 41.740021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260368, 34.477715, 41.164005>,  <36.176613, 34.079975, 41.799442>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260368, 34.477715, 41.164005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616703, 34.303642, 41.216194>,  <36.830505, 34.199200, 41.247509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616703, 34.303642, 41.216194>,  <36.260368, 34.477715, 41.164005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616703, 34.303642, 41.216194> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113961, -0.063958, -0.991424,
		0.439789, 0.898071, -0.007383,
		0.890841, -0.435176, 0.130473,
		36.883957, 34.173088, 41.255337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770008, 34.847828, 40.652126>,  <36.260368, 34.477715, 41.164005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770008, 34.847828, 40.652126> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941692, 34.507568, 40.773571>,  <37.044701, 34.303413, 40.846439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941692, 34.507568, 40.773571>,  <36.770008, 34.847828, 40.652126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941692, 34.507568, 40.773571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213766, -0.230929, -0.949198,
		0.877544, 0.472306, 0.082722,
		0.429208, -0.850646, 0.303613,
		37.070454, 34.252373, 40.864655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459259, 34.752361, 40.309662>,  <36.770008, 34.847828, 40.652126>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459259, 34.752361, 40.309662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340736, 34.385098, 40.414879>,  <37.269623, 34.164742, 40.478008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340736, 34.385098, 40.414879>,  <37.459259, 34.752361, 40.309662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340736, 34.385098, 40.414879> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187886, -0.326063, -0.926489,
		0.936430, -0.225104, 0.269124,
		-0.296308, -0.918156, 0.263042,
		37.251842, 34.109650, 40.493790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883118, 34.411907, 39.922745>,  <37.459259, 34.752361, 40.309662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883118, 34.411907, 39.922745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617878, 34.129025, 40.020855>,  <37.458736, 33.959293, 40.079720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617878, 34.129025, 40.020855>,  <37.883118, 34.411907, 39.922745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617878, 34.129025, 40.020855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064929, -0.380780, -0.922383,
		0.745714, -0.595702, 0.298411,
		-0.663095, -0.707210, 0.245275,
		37.418949, 33.916862, 40.094437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136215, 33.848793, 39.634945>,  <37.883118, 34.411907, 39.922745>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136215, 33.848793, 39.634945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747810, 33.790676, 39.710873>,  <37.514767, 33.755806, 39.756432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747810, 33.790676, 39.710873>,  <38.136215, 33.848793, 39.634945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747810, 33.790676, 39.710873> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092627, -0.503359, -0.859098,
		0.220371, -0.851774, 0.475308,
		-0.971008, -0.145294, 0.189823,
		37.456509, 33.747089, 39.767818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070068, 33.092743, 39.541233>,  <38.136215, 33.848793, 39.634945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070068, 33.092743, 39.541233> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705784, 33.246475, 39.480713>,  <37.487213, 33.338715, 39.444401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705784, 33.246475, 39.480713>,  <38.070068, 33.092743, 39.541233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705784, 33.246475, 39.480713> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101454, -0.563224, -0.820052,
		-0.400386, -0.731483, 0.551928,
		-0.910713, 0.384332, -0.151295,
		37.432571, 33.361774, 39.435326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.677883, 36.636780, 47.067070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.431484, 36.803272, 46.799549>,  <36.283646, 36.903168, 46.639038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.431484, 36.803272, 46.799549>,  <36.677883, 36.636780, 47.067070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431484, 36.803272, 46.799549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117489, -0.790967, -0.600473,
		-0.778929, -0.448473, 0.438340,
		-0.616008, 0.416225, -0.668798,
		36.246685, 36.928143, 46.598907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381676, 36.019909, 46.717999>,  <36.677883, 36.636780, 47.067070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381676, 36.019909, 46.717999> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.292629, 36.346413, 46.504772>,  <36.239201, 36.542316, 46.376835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.292629, 36.346413, 46.504772>,  <36.381676, 36.019909, 46.717999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292629, 36.346413, 46.504772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038809, -0.538937, -0.841452,
		-0.974133, -0.208010, 0.088299,
		-0.222618, 0.816259, -0.533069,
		36.225845, 36.591290, 46.344852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944817, 35.755116, 46.107933>,  <36.381676, 36.019909, 46.717999>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944817, 35.755116, 46.107933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.056828, 36.119884, 45.987942>,  <36.124035, 36.338745, 45.915947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.056828, 36.119884, 45.987942>,  <35.944817, 35.755116, 46.107933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056828, 36.119884, 45.987942> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054292, -0.327023, -0.943456,
		-0.958455, 0.247910, -0.141086,
		0.280030, 0.911919, -0.299977,
		36.140835, 36.393459, 45.897949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468918, 35.927677, 45.527603>,  <35.944817, 35.755116, 46.107933>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468918, 35.927677, 45.527603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.811108, 36.134609, 45.518398>,  <36.016422, 36.258766, 45.512875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.811108, 36.134609, 45.518398>,  <35.468918, 35.927677, 45.527603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811108, 36.134609, 45.518398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115895, -0.234589, -0.965161,
		-0.504703, 0.823008, -0.260641,
		0.855479, 0.517326, -0.023016,
		36.067753, 36.289806, 45.511494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581116, 36.302723, 44.833939>,  <35.468918, 35.927677, 45.527603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581116, 36.302723, 44.833939> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.961754, 36.309303, 44.956699>,  <36.190136, 36.313251, 45.030357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.961754, 36.309303, 44.956699>,  <35.581116, 36.302723, 44.833939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961754, 36.309303, 44.956699> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296858, -0.307794, -0.903957,
		0.079596, 0.951311, -0.297778,
		0.951599, 0.016446, 0.306903,
		36.247234, 36.314236, 45.048771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960590, 36.420040, 44.195576>,  <35.581116, 36.302723, 44.833939>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960590, 36.420040, 44.195576> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.254932, 36.288464, 44.432323>,  <36.431538, 36.209518, 44.574371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.254932, 36.288464, 44.432323>,  <35.960590, 36.420040, 44.195576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254932, 36.288464, 44.432323> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441706, -0.429328, -0.787764,
		0.513236, 0.841115, -0.170629,
		0.735856, -0.328941, 0.591873,
		36.475689, 36.189781, 44.609886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506191, 36.483452, 43.767067>,  <35.960590, 36.420040, 44.195576>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506191, 36.483452, 43.767067> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.611416, 36.211590, 44.040962>,  <36.674549, 36.048473, 44.205299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.611416, 36.211590, 44.040962>,  <36.506191, 36.483452, 43.767067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611416, 36.211590, 44.040962> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383351, -0.577670, -0.720652,
		0.885348, 0.452071, 0.108584,
		0.263059, -0.679654, 0.684741,
		36.690334, 36.007694, 44.246384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059288, 36.132450, 43.482079>,  <36.506191, 36.483452, 43.767067>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059288, 36.132450, 43.482079> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.994606, 35.882019, 43.787201>,  <36.955795, 35.731758, 43.970276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.994606, 35.882019, 43.787201>,  <37.059288, 36.132450, 43.482079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994606, 35.882019, 43.787201> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548994, -0.699397, -0.457657,
		0.820035, 0.344769, 0.456812,
		-0.161707, -0.626082, 0.762806,
		36.946095, 35.694195, 44.016041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759670, 35.879185, 43.814217>,  <37.059288, 36.132450, 43.482079>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759670, 35.879185, 43.814217> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.446754, 35.632751, 43.851002>,  <37.259003, 35.484890, 43.873074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.446754, 35.632751, 43.851002>,  <37.759670, 35.879185, 43.814217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446754, 35.632751, 43.851002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377640, -0.586479, -0.716541,
		0.495387, -0.525813, 0.691456,
		-0.782291, -0.616087, 0.091966,
		37.212067, 35.447926, 43.878590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505207, 35.738186, 43.825222>,  <37.759670, 35.879185, 43.814217>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505207, 35.738186, 43.825222> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.651592, 36.011517, 43.572514>,  <38.739426, 36.175514, 43.420887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.651592, 36.011517, 43.572514>,  <38.505207, 35.738186, 43.825222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651592, 36.011517, 43.572514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294717, 0.729026, 0.617789,
		0.882729, -0.039896, 0.468186,
		0.365967, 0.683322, -0.631775,
		38.761383, 36.216515, 43.382980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995342, 36.183743, 44.206459>,  <38.505207, 35.738186, 43.825222>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995342, 36.183743, 44.206459> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.864124, 36.402676, 43.898479>,  <38.785393, 36.534035, 43.713692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.864124, 36.402676, 43.898479>,  <38.995342, 36.183743, 44.206459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864124, 36.402676, 43.898479> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069478, 0.798861, 0.597490,
		0.942104, 0.249498, -0.224035,
		-0.328045, 0.547331, -0.769945,
		38.765709, 36.566875, 43.667496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400620, 36.772591, 44.216068>,  <38.995342, 36.183743, 44.206459>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400620, 36.772591, 44.216068> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.056347, 36.866051, 44.035122>,  <38.849785, 36.922127, 43.926556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.056347, 36.866051, 44.035122>,  <39.400620, 36.772591, 44.216068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056347, 36.866051, 44.035122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168671, 0.707462, 0.686329,
		0.480396, 0.667011, -0.569488,
		-0.860680, 0.233654, -0.452367,
		38.798141, 36.936146, 43.899410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459713, 37.536350, 44.187351>,  <39.400620, 36.772591, 44.216068>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.459713, 37.536350, 44.187351> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.077450, 37.429031, 44.138794>,  <38.848091, 37.364639, 44.109661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.077450, 37.429031, 44.138794>,  <39.459713, 37.536350, 44.187351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077450, 37.429031, 44.138794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267657, 0.619484, 0.737969,
		-0.122797, 0.737737, -0.663827,
		-0.955657, -0.268298, -0.121390,
		38.790752, 37.348541, 44.102375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193897, 38.184731, 44.219345>,  <39.459713, 37.536350, 44.187351>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.193897, 38.184731, 44.219345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.898140, 37.934460, 44.318806>,  <38.720688, 37.784298, 44.378483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.898140, 37.934460, 44.318806>,  <39.193897, 38.184731, 44.219345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898140, 37.934460, 44.318806> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311059, 0.644994, 0.698015,
		-0.597113, 0.438759, -0.671525,
		-0.739390, -0.625678, 0.248654,
		38.676323, 37.746758, 44.393402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519024, 38.572903, 44.276215>,  <39.193897, 38.184731, 44.219345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519024, 38.572903, 44.276215> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.445164, 38.238476, 44.482864>,  <38.400848, 38.037819, 44.606853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.445164, 38.238476, 44.482864>,  <38.519024, 38.572903, 44.276215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445164, 38.238476, 44.482864> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360636, 0.546633, 0.755734,
		-0.914246, -0.046765, -0.402453,
		-0.184652, -0.836065, 0.516622,
		38.389767, 37.987656, 44.637852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824593, 38.537296, 44.494736>,  <38.519024, 38.572903, 44.276215>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824593, 38.537296, 44.494736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.030056, 38.324326, 44.763859>,  <38.153336, 38.196545, 44.925335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.030056, 38.324326, 44.763859>,  <37.824593, 38.537296, 44.494736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030056, 38.324326, 44.763859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392686, 0.551333, 0.736091,
		-0.762859, -0.642303, 0.074120,
		0.513658, -0.532427, 0.672812,
		38.184155, 38.164597, 44.965702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398846, 38.573677, 45.144222>,  <37.824593, 38.537296, 44.494736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398846, 38.573677, 45.144222> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.767044, 38.457588, 45.248878>,  <37.987965, 38.387936, 45.311672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.767044, 38.457588, 45.248878>,  <37.398846, 38.573677, 45.144222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767044, 38.457588, 45.248878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030018, 0.615091, 0.787885,
		-0.389599, -0.733098, 0.557476,
		0.920495, -0.290225, 0.261646,
		38.043194, 38.370522, 45.327374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365799, 38.526672, 45.858150>,  <37.398846, 38.573677, 45.144222>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365799, 38.526672, 45.858150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.763123, 38.543747, 45.815216>,  <38.001514, 38.553989, 45.789455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.763123, 38.543747, 45.815216>,  <37.365799, 38.526672, 45.858150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763123, 38.543747, 45.815216> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061544, 0.590806, 0.804463,
		0.097752, -0.805684, 0.584224,
		0.993306, 0.042682, -0.107338,
		38.061115, 38.556553, 45.783016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699562, 38.359501, 46.494953>,  <37.365799, 38.526672, 45.858150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.699562, 38.359501, 46.494953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.981220, 38.570236, 46.304535>,  <38.150215, 38.696678, 46.190285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.981220, 38.570236, 46.304535>,  <37.699562, 38.359501, 46.494953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.981220, 38.570236, 46.304535> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099710, 0.590426, 0.800909,
		0.703019, -0.611423, 0.363215,
		0.704146, 0.526838, -0.476046,
		38.192463, 38.728287, 46.161720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311436, 38.393475, 46.953026>,  <37.699562, 38.359501, 46.494953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311436, 38.393475, 46.953026> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.348560, 38.686260, 46.683029>,  <38.370834, 38.861931, 46.521030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.348560, 38.686260, 46.683029>,  <38.311436, 38.393475, 46.953026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348560, 38.686260, 46.683029> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132694, 0.662782, 0.736961,
		0.986802, -0.157964, -0.035615,
		0.092809, 0.731961, -0.674996,
		38.376404, 38.905849, 46.480530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717300, 38.849888, 47.294746>,  <38.311436, 38.393475, 46.953026>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717300, 38.849888, 47.294746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.529251, 39.072571, 47.020794>,  <38.416420, 39.206181, 46.856422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.529251, 39.072571, 47.020794>,  <38.717300, 38.849888, 47.294746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529251, 39.072571, 47.020794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017262, 0.781631, 0.623503,
		0.882432, 0.281300, -0.377073,
		-0.470123, 0.556708, -0.684880,
		38.388214, 39.239582, 46.815331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019085, 39.522625, 47.364052>,  <38.717300, 38.849888, 47.294746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019085, 39.522625, 47.364052> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.686378, 39.566051, 47.146290>,  <38.486755, 39.592106, 47.015633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.686378, 39.566051, 47.146290>,  <39.019085, 39.522625, 47.364052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686378, 39.566051, 47.146290> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144629, 0.904441, 0.401333,
		0.535950, 0.412553, -0.736584,
		-0.831769, 0.108563, -0.544403,
		38.436848, 39.598621, 46.982967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062752, 40.124218, 47.127674>,  <39.019085, 39.522625, 47.364052>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062752, 40.124218, 47.127674> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.671383, 40.053383, 47.085094>,  <38.436562, 40.010880, 47.059547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.671383, 40.053383, 47.085094>,  <39.062752, 40.124218, 47.127674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671383, 40.053383, 47.085094> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206608, 0.844631, 0.493874,
		0.002451, 0.505210, -0.862993,
		-0.978421, -0.177091, -0.106450,
		38.377857, 40.000256, 47.053158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.864447, 42.007118, 43.348473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.247395, 41.912395, 43.414642>,  <31.477163, 41.855560, 43.454346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.247395, 41.912395, 43.414642>,  <30.864447, 42.007118, 43.348473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.247395, 41.912395, 43.414642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039315, -0.460526, -0.886775,
		0.286180, 0.855475, -0.431584,
		0.957369, -0.236809, 0.165426,
		31.534605, 41.841354, 43.464272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.254459, 42.114780, 42.683105>,  <30.864447, 42.007118, 43.348473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.254459, 42.114780, 42.683105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.485449, 41.869980, 42.899246>,  <31.624043, 41.723099, 43.028931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.485449, 41.869980, 42.899246>,  <31.254459, 42.114780, 42.683105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.485449, 41.869980, 42.899246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313660, -0.444755, -0.838934,
		0.753750, 0.653951, -0.064876,
		0.577475, -0.611998, 0.540353,
		31.658691, 41.686382, 43.061352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.915701, 42.186207, 42.408680>,  <31.254459, 42.114780, 42.683105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.915701, 42.186207, 42.408680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.905111, 41.840252, 42.609188>,  <31.898758, 41.632679, 42.729492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.905111, 41.840252, 42.609188>,  <31.915701, 42.186207, 42.408680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.905111, 41.840252, 42.609188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291418, -0.486339, -0.823742,
		0.956230, 0.124270, 0.264919,
		-0.026474, -0.864888, 0.501266,
		31.897169, 41.580784, 42.759567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588161, 41.749004, 42.266800>,  <31.915701, 42.186207, 42.408680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588161, 41.749004, 42.266800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.321445, 41.476482, 42.387604>,  <32.161415, 41.312969, 42.460087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.321445, 41.476482, 42.387604>,  <32.588161, 41.749004, 42.266800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.321445, 41.476482, 42.387604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265944, -0.596099, -0.757588,
		0.696175, -0.424838, 0.578664,
		-0.666794, -0.681306, 0.302007,
		32.121407, 41.272091, 42.478207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887707, 41.058117, 42.363800>,  <32.588161, 41.749004, 42.266800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887707, 41.058117, 42.363800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.494850, 41.022861, 42.297302>,  <32.259136, 41.001709, 42.257404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.494850, 41.022861, 42.297302>,  <32.887707, 41.058117, 42.363800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494850, 41.022861, 42.297302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185009, -0.613480, -0.767733,
		-0.034325, -0.784777, 0.618827,
		-0.982137, -0.088136, -0.166248,
		32.200211, 40.996422, 42.247429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799606, 40.345936, 42.335716>,  <32.887707, 41.058117, 42.363800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799606, 40.345936, 42.335716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.469131, 40.501640, 42.172794>,  <32.270847, 40.595062, 42.075039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.469131, 40.501640, 42.172794>,  <32.799606, 40.345936, 42.335716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469131, 40.501640, 42.172794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036997, -0.683902, -0.728635,
		-0.562185, -0.617056, 0.550628,
		-0.826184, 0.389256, -0.407309,
		32.221275, 40.618416, 42.050602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.542652, 39.748173, 42.065990>,  <32.799606, 40.345936, 42.335716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.542652, 39.748173, 42.065990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.305298, 40.008205, 41.876133>,  <32.162884, 40.164223, 41.762218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.305298, 40.008205, 41.876133>,  <32.542652, 39.748173, 42.065990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305298, 40.008205, 41.876133> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076921, -0.632783, -0.770499,
		-0.801236, -0.420692, 0.425488,
		-0.593384, 0.650080, -0.474648,
		32.127281, 40.203228, 41.733738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.943102, 39.350258, 41.819027>,  <32.542652, 39.748173, 42.065990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.943102, 39.350258, 41.819027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.955851, 39.687057, 41.603611>,  <31.963499, 39.889137, 41.474361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.955851, 39.687057, 41.603611>,  <31.943102, 39.350258, 41.819027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955851, 39.687057, 41.603611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001152, -0.538843, -0.842405,
		-0.999491, 0.026228, -0.018143,
		0.031871, 0.841998, -0.538539,
		31.965412, 39.939655, 41.442051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366936, 39.360550, 41.310802>,  <31.943102, 39.350258, 41.819027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366936, 39.360550, 41.310802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.644373, 39.607780, 41.162796>,  <31.810835, 39.756119, 41.073994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.644373, 39.607780, 41.162796>,  <31.366936, 39.360550, 41.310802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.644373, 39.607780, 41.162796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091700, -0.433714, -0.896372,
		-0.714506, 0.655648, -0.244144,
		0.693593, 0.618076, -0.370014,
		31.852451, 39.793201, 41.051792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.214602, 39.458839, 40.506813>,  <31.366936, 39.360550, 41.310802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.214602, 39.458839, 40.506813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.591711, 39.580177, 40.562187>,  <31.817976, 39.652981, 40.595413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.591711, 39.580177, 40.562187>,  <31.214602, 39.458839, 40.506813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.591711, 39.580177, 40.562187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279562, -0.492822, -0.823997,
		-0.181729, 0.815543, -0.549422,
		0.942772, 0.303342, 0.138435,
		31.874542, 39.671181, 40.603718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.516880, 39.516712, 39.805874>,  <31.214602, 39.458839, 40.506813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.516880, 39.516712, 39.805874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.866772, 39.515476, 39.999714>,  <32.076706, 39.514736, 40.116020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.866772, 39.515476, 39.999714>,  <31.516880, 39.516712, 39.805874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.866772, 39.515476, 39.999714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465441, -0.273125, -0.841884,
		0.134958, 0.961974, -0.237472,
		0.874729, -0.003090, 0.484602,
		32.129192, 39.514549, 40.145096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.019958, 39.727150, 39.271206>,  <31.516880, 39.516712, 39.805874>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.019958, 39.727150, 39.271206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.224098, 39.555172, 39.569118>,  <32.346581, 39.451984, 39.747864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.224098, 39.555172, 39.569118>,  <32.019958, 39.727150, 39.271206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224098, 39.555172, 39.569118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484965, -0.571317, -0.662123,
		0.710177, 0.699106, -0.083065,
		0.510350, -0.429941, 0.744778,
		32.377205, 39.426189, 39.792553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745880, 39.819908, 39.251076>,  <32.019958, 39.727150, 39.271206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.745880, 39.819908, 39.251076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.681664, 39.484097, 39.458694>,  <32.643135, 39.282608, 39.583267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.681664, 39.484097, 39.458694>,  <32.745880, 39.819908, 39.251076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681664, 39.484097, 39.458694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459473, -0.528982, -0.713486,
		0.873563, 0.123948, 0.470664,
		-0.160537, -0.839533, 0.519050,
		32.633503, 39.232235, 39.614410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397858, 39.386028, 39.260139>,  <32.745880, 39.819908, 39.251076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397858, 39.386028, 39.260139> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.099216, 39.132641, 39.341434>,  <32.920033, 38.980610, 39.390213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.099216, 39.132641, 39.341434>,  <33.397858, 39.386028, 39.260139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099216, 39.132641, 39.341434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399536, -0.671210, -0.624378,
		0.531940, -0.384959, 0.754219,
		-0.746599, -0.633470, 0.203238,
		32.875237, 38.942600, 39.402405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012245, 39.348301, 39.814495>,  <33.397858, 39.386028, 39.260139>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012245, 39.348301, 39.814495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.364445, 39.536915, 39.795017>,  <34.575764, 39.650082, 39.783333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.364445, 39.536915, 39.795017>,  <34.012245, 39.348301, 39.814495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364445, 39.536915, 39.795017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219337, 0.496311, 0.839980,
		0.420243, -0.728926, 0.540428,
		0.880504, 0.471531, -0.048691,
		34.628597, 39.678375, 39.780411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.293762, 39.455173, 40.563961>,  <34.012245, 39.348301, 39.814495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.293762, 39.455173, 40.563961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.505203, 39.720646, 40.352261>,  <34.632069, 39.879929, 40.225239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.505203, 39.720646, 40.352261>,  <34.293762, 39.455173, 40.563961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505203, 39.720646, 40.352261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029354, 0.637400, 0.769974,
		0.848361, -0.391475, 0.356414,
		0.528604, 0.663678, -0.529254,
		34.663784, 39.919750, 40.193485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777599, 39.688862, 41.125858>,  <34.293762, 39.455173, 40.563961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777599, 39.688862, 41.125858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.788029, 39.966045, 40.837654>,  <34.794285, 40.132355, 40.664730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.788029, 39.966045, 40.837654>,  <34.777599, 39.688862, 41.125858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788029, 39.966045, 40.837654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051926, 0.718843, 0.693230,
		0.998311, -0.055487, -0.017241,
		0.026072, 0.692955, -0.720510,
		34.795849, 40.173931, 40.621502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323639, 40.007095, 41.321503>,  <34.777599, 39.688862, 41.125858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323639, 40.007095, 41.321503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.096546, 40.234470, 41.083324>,  <34.960289, 40.370895, 40.940418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.096546, 40.234470, 41.083324>,  <35.323639, 40.007095, 41.321503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.096546, 40.234470, 41.083324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087633, 0.760943, 0.642874,
		0.818534, 0.312801, -0.481827,
		-0.567734, 0.568438, -0.595446,
		34.926228, 40.405003, 40.904690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629128, 40.619579, 41.376194>,  <35.323639, 40.007095, 41.321503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629128, 40.619579, 41.376194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.273689, 40.737297, 41.235458>,  <35.060425, 40.807926, 41.151016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.273689, 40.737297, 41.235458>,  <35.629128, 40.619579, 41.376194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273689, 40.737297, 41.235458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058599, 0.687930, 0.723407,
		0.454931, 0.663434, -0.594047,
		-0.888596, 0.294290, -0.351838,
		35.007111, 40.825584, 41.129906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644993, 41.363251, 41.288719>,  <35.629128, 40.619579, 41.376194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644993, 41.363251, 41.288719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.258400, 41.264408, 41.316578>,  <35.026443, 41.205101, 41.333294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.258400, 41.264408, 41.316578>,  <35.644993, 41.363251, 41.288719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258400, 41.264408, 41.316578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146786, 0.754415, 0.639775,
		-0.210635, 0.608108, -0.765400,
		-0.966482, -0.247109, 0.069645,
		34.968456, 41.190277, 41.337471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252865, 42.008972, 41.118252>,  <35.644993, 41.363251, 41.288719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252865, 42.008972, 41.118252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.991936, 41.778404, 41.315109>,  <34.835377, 41.640064, 41.433224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.991936, 41.778404, 41.315109>,  <35.252865, 42.008972, 41.118252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991936, 41.778404, 41.315109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204632, 0.759152, 0.617911,
		-0.729792, 0.302370, -0.613169,
		-0.652327, -0.576421, 0.492148,
		34.796238, 41.605476, 41.462753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733112, 42.446342, 41.381603>,  <35.252865, 42.008972, 41.118252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733112, 42.446342, 41.381603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.680553, 42.125874, 41.615135>,  <34.649017, 41.933594, 41.755253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.680553, 42.125874, 41.615135>,  <34.733112, 42.446342, 41.381603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680553, 42.125874, 41.615135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163370, 0.598385, 0.784376,
		-0.977776, 0.007684, -0.209513,
		-0.131397, -0.801172, 0.583831,
		34.641136, 41.885521, 41.790283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225113, 42.689972, 41.902668>,  <34.733112, 42.446342, 41.381603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225113, 42.689972, 41.902668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.379154, 42.353710, 42.054981>,  <34.471577, 42.151955, 42.146370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.379154, 42.353710, 42.054981>,  <34.225113, 42.689972, 41.902668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379154, 42.353710, 42.054981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099592, 0.372341, 0.922737,
		-0.917486, -0.393268, 0.059665,
		0.385099, -0.840656, 0.380784,
		34.494682, 42.101513, 42.169216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856205, 42.593521, 42.592327>,  <34.225113, 42.689972, 41.902668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856205, 42.593521, 42.592327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.182880, 42.364948, 42.624523>,  <34.378887, 42.227802, 42.643841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.182880, 42.364948, 42.624523>,  <33.856205, 42.593521, 42.592327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182880, 42.364948, 42.624523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139480, 0.330814, 0.933331,
		-0.559966, -0.751016, 0.349876,
		0.816691, -0.571434, 0.080492,
		34.427887, 42.193520, 42.648670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722900, 42.100056, 43.171227>,  <33.856205, 42.593521, 42.592327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722900, 42.100056, 43.171227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.114971, 42.150974, 43.110504>,  <34.350216, 42.181526, 43.074070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.114971, 42.150974, 43.110504>,  <33.722900, 42.100056, 43.171227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114971, 42.150974, 43.110504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114007, 0.264232, 0.957697,
		0.162016, -0.956022, 0.244484,
		0.980181, 0.127289, -0.151803,
		34.409023, 42.189163, 43.064964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073662, 41.822998, 43.718124>,  <33.722900, 42.100056, 43.171227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073662, 41.822998, 43.718124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.325375, 42.100761, 43.578522>,  <34.476402, 42.267418, 43.494759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.325375, 42.100761, 43.578522>,  <34.073662, 41.822998, 43.718124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325375, 42.100761, 43.578522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011485, 0.440711, 0.897575,
		0.777092, -0.568837, 0.269357,
		0.629282, 0.694405, -0.349006,
		34.514160, 42.309082, 43.473820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682083, 41.820240, 44.175995>,  <34.073662, 41.822998, 43.718124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682083, 41.820240, 44.175995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.686367, 42.171959, 43.985535>,  <34.688938, 42.382992, 43.871258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.686367, 42.171959, 43.985535>,  <34.682083, 41.820240, 44.175995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686367, 42.171959, 43.985535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159820, 0.471559, 0.867232,
		0.987088, 0.066808, 0.145581,
		0.010712, 0.879300, -0.476147,
		34.689579, 42.435749, 43.842690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814640, 42.338531, 44.720512>,  <34.682083, 41.820240, 44.175995>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814640, 42.338531, 44.720512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.628143, 42.570450, 44.453243>,  <34.516243, 42.709602, 44.292881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.628143, 42.570450, 44.453243>,  <34.814640, 42.338531, 44.720512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628143, 42.570450, 44.453243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317906, 0.595027, 0.738159,
		0.825561, 0.556579, -0.093108,
		-0.466246, 0.579796, -0.668171,
		34.488270, 42.744389, 44.252792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532238, 42.576981, 44.484066>,  <34.814640, 42.338531, 44.720512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532238, 42.576981, 44.484066> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.890831, 42.709969, 44.601219>,  <36.105988, 42.789761, 44.671513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.890831, 42.709969, 44.601219>,  <35.532238, 42.576981, 44.484066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890831, 42.709969, 44.601219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399513, -0.320721, -0.858794,
		-0.191585, 0.886908, -0.420346,
		0.896485, 0.332465, 0.292885,
		36.159775, 42.809708, 44.689083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832268, 42.937271, 43.882557>,  <35.532238, 42.576981, 44.484066>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832268, 42.937271, 43.882557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.143566, 42.871971, 44.125107>,  <36.330345, 42.832790, 44.270638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.143566, 42.871971, 44.125107>,  <35.832268, 42.937271, 43.882557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143566, 42.871971, 44.125107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558517, -0.261443, -0.787214,
		0.287047, 0.951313, -0.112287,
		0.778244, -0.163253, 0.606371,
		36.377041, 42.822994, 44.307018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478504, 43.337666, 43.553032>,  <35.832268, 42.937271, 43.882557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478504, 43.337666, 43.553032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.641945, 43.090816, 43.822018>,  <36.740009, 42.942707, 43.983410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.641945, 43.090816, 43.822018>,  <36.478504, 43.337666, 43.553032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641945, 43.090816, 43.822018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677684, -0.288399, -0.676440,
		0.611381, 0.732114, 0.300371,
		0.408604, -0.617119, 0.672463,
		36.764526, 42.905682, 44.023758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186474, 43.407356, 43.524708>,  <36.478504, 43.337666, 43.553032>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186474, 43.407356, 43.524708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.121475, 43.045521, 43.682346>,  <37.082474, 42.828419, 43.776932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.121475, 43.045521, 43.682346>,  <37.186474, 43.407356, 43.524708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121475, 43.045521, 43.682346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564975, -0.412755, -0.714449,
		0.808948, 0.106559, 0.578142,
		-0.162500, -0.904588, 0.394100,
		37.072723, 42.774143, 43.800575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828323, 43.113781, 43.515079>,  <37.186474, 43.407356, 43.524708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828323, 43.113781, 43.515079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.573135, 42.809193, 43.560947>,  <37.420021, 42.626438, 43.588467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.573135, 42.809193, 43.560947>,  <37.828323, 43.113781, 43.515079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573135, 42.809193, 43.560947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565643, -0.564439, -0.601212,
		0.522532, -0.318694, 0.790819,
		-0.637972, -0.761474, 0.114671,
		37.381744, 42.580750, 43.595348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273506, 42.563160, 43.599121>,  <37.828323, 43.113781, 43.515079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273506, 42.563160, 43.599121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.921509, 42.429073, 43.464512>,  <37.710312, 42.348621, 43.383747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.921509, 42.429073, 43.464512>,  <38.273506, 42.563160, 43.599121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921509, 42.429073, 43.464512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474672, -0.594712, -0.648848,
		0.017370, -0.730718, 0.682458,
		-0.879991, -0.335214, -0.336520,
		37.657513, 42.328510, 43.363556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317024, 41.817310, 43.506664>,  <38.273506, 42.563160, 43.599121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317024, 41.817310, 43.506664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.019360, 41.946247, 43.272633>,  <37.840759, 42.023609, 43.132214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.019360, 41.946247, 43.272633>,  <38.317024, 41.817310, 43.506664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019360, 41.946247, 43.272633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330311, -0.583734, -0.741720,
		-0.580558, -0.745245, 0.327967,
		-0.744209, 0.322281, -0.585054,
		37.796112, 42.042950, 43.097107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045906, 41.240280, 43.294716>,  <38.317024, 41.817310, 43.506664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045906, 41.240280, 43.294716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.924847, 41.514336, 43.029690>,  <37.852211, 41.678768, 42.870674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.924847, 41.514336, 43.029690>,  <38.045906, 41.240280, 43.294716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924847, 41.514336, 43.029690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241934, -0.617175, -0.748708,
		-0.921885, -0.386892, 0.021029,
		-0.302647, 0.685135, -0.662566,
		37.834053, 41.719875, 42.830921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582035, 40.937328, 42.852917>,  <38.045906, 41.240280, 43.294716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582035, 40.937328, 42.852917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.717823, 41.234898, 42.622673>,  <37.799297, 41.413441, 42.484528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.717823, 41.234898, 42.622673>,  <37.582035, 40.937328, 42.852917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717823, 41.234898, 42.622673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077672, -0.632033, -0.771040,
		-0.937403, 0.217040, -0.272341,
		0.339475, 0.743928, -0.575611,
		37.819664, 41.458076, 42.449989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280613, 40.887150, 42.161839>,  <37.582035, 40.937328, 42.852917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280613, 40.887150, 42.161839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.601681, 41.112476, 42.083450>,  <37.794319, 41.247673, 42.036419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.601681, 41.112476, 42.083450>,  <37.280613, 40.887150, 42.161839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601681, 41.112476, 42.083450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221023, -0.586115, -0.779498,
		-0.553963, 0.582363, -0.594960,
		0.802667, 0.563313, -0.195970,
		37.842480, 41.281471, 42.024658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239758, 40.943344, 41.465664>,  <37.280613, 40.887150, 42.161839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239758, 40.943344, 41.465664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.616367, 41.047562, 41.551121>,  <37.842335, 41.110092, 41.602394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.616367, 41.047562, 41.551121>,  <37.239758, 40.943344, 41.465664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616367, 41.047562, 41.551121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331520, -0.603052, -0.725550,
		-0.060201, 0.753952, -0.654165,
		0.941526, 0.260547, 0.213646,
		37.898827, 41.125725, 41.615215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557423, 41.085968, 40.850494>,  <37.239758, 40.943344, 41.465664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557423, 41.085968, 40.850494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.848042, 40.999680, 41.111443>,  <38.022415, 40.947906, 41.268013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.848042, 40.999680, 41.111443>,  <37.557423, 41.085968, 40.850494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848042, 40.999680, 41.111443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380741, -0.663951, -0.643588,
		0.571981, 0.715983, -0.400258,
		0.726550, -0.215725, 0.652371,
		38.066006, 40.934963, 41.307156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176701, 40.969948, 40.461395>,  <37.557423, 41.085968, 40.850494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176701, 40.969948, 40.461395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.225464, 40.767433, 40.802879>,  <38.254723, 40.645924, 41.007771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.225464, 40.767433, 40.802879>,  <38.176701, 40.969948, 40.461395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225464, 40.767433, 40.802879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419735, -0.753129, -0.506576,
		0.899422, 0.420088, 0.120690,
		0.121912, -0.506284, 0.853706,
		38.262039, 40.615547, 41.058990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785881, 40.702633, 40.361977>,  <38.176701, 40.969948, 40.461395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785881, 40.702633, 40.361977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.616310, 40.478874, 40.646893>,  <38.514568, 40.344620, 40.817844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.616310, 40.478874, 40.646893>,  <38.785881, 40.702633, 40.361977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616310, 40.478874, 40.646893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496088, -0.801408, -0.334128,
		0.757746, 0.211713, 0.617251,
		-0.423931, -0.559395, 0.712292,
		38.489132, 40.311054, 40.860580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.824039, 31.963808, 29.266987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.557459, 31.786570, 29.027151>,  <30.397511, 31.680225, 28.883249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.557459, 31.786570, 29.027151>,  <30.824039, 31.963808, 29.266987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.557459, 31.786570, 29.027151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649120, -0.050723, 0.758994,
		-0.366721, 0.895037, -0.253819,
		-0.666453, -0.443098, -0.599587,
		30.357523, 31.653641, 28.847275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.191151, 32.366638, 29.379662>,  <30.824039, 31.963808, 29.266987>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.191151, 32.366638, 29.379662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.088572, 32.001942, 29.251308>,  <30.027023, 31.783125, 29.174297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.088572, 32.001942, 29.251308>,  <30.191151, 32.366638, 29.379662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.088572, 32.001942, 29.251308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807227, 0.019432, 0.589922,
		-0.531619, 0.410311, -0.740963,
		-0.256450, -0.911739, -0.320883,
		30.011637, 31.728420, 29.155043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.516460, 32.428738, 29.206902>,  <30.191151, 32.366638, 29.379662>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.516460, 32.428738, 29.206902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.573090, 32.037781, 29.269712>,  <29.607067, 31.803205, 29.307398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.573090, 32.037781, 29.269712>,  <29.516460, 32.428738, 29.206902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.573090, 32.037781, 29.269712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851508, -0.039337, 0.522864,
		-0.504868, -0.207733, -0.837828,
		0.141574, -0.977395, 0.157026,
		29.615562, 31.744562, 29.316820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.850689, 32.245110, 29.230114>,  <29.516460, 32.428738, 29.206902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.850689, 32.245110, 29.230114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.059931, 31.952021, 29.404232>,  <29.185476, 31.776167, 29.508703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.059931, 31.952021, 29.404232>,  <28.850689, 32.245110, 29.230114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.059931, 31.952021, 29.404232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798239, -0.242256, 0.551477,
		-0.298629, -0.635945, -0.711615,
		0.523101, -0.732725, 0.435291,
		29.216862, 31.732204, 29.534821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.434563, 31.618494, 29.279758>,  <28.850689, 32.245110, 29.230114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.434563, 31.618494, 29.279758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.708780, 31.572020, 29.567238>,  <28.873312, 31.544134, 29.739725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.708780, 31.572020, 29.567238>,  <28.434563, 31.618494, 29.279758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.708780, 31.572020, 29.567238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714208, -0.298777, 0.632961,
		0.141189, -0.947224, -0.287807,
		0.685546, -0.116187, 0.718699,
		28.914444, 31.537163, 29.782846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.164640, 31.016266, 29.540436>,  <28.434563, 31.618494, 29.279758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.164640, 31.016266, 29.540436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.417421, 31.193394, 29.794851>,  <28.569090, 31.299671, 29.947500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.417421, 31.193394, 29.794851>,  <28.164640, 31.016266, 29.540436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.417421, 31.193394, 29.794851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554028, -0.315750, 0.770296,
		0.541933, -0.839173, 0.045797,
		0.631951, 0.442821, 0.636040,
		28.607006, 31.326241, 29.985664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.983515, 30.782103, 30.153639>,  <28.164640, 31.016266, 29.540436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.983515, 30.782103, 30.153639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.226416, 31.073759, 30.279875>,  <28.372156, 31.248753, 30.355618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.226416, 31.073759, 30.279875>,  <27.983515, 30.782103, 30.153639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.226416, 31.073759, 30.279875> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491195, 0.032331, 0.870450,
		0.624476, -0.683601, 0.377782,
		0.607254, 0.729140, 0.315591,
		28.408592, 31.292501, 30.374552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.112989, 30.718048, 30.943764>,  <27.983515, 30.782103, 30.153639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.112989, 30.718048, 30.943764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.164825, 31.105042, 30.856876>,  <28.195927, 31.337236, 30.804743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.164825, 31.105042, 30.856876>,  <28.112989, 30.718048, 30.943764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.164825, 31.105042, 30.856876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530124, 0.252730, 0.809381,
		0.837959, 0.010268, 0.545636,
		0.129588, 0.967482, -0.217220,
		28.203701, 31.395287, 30.791710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.466213, 31.117146, 31.511381>,  <28.112989, 30.718048, 30.943764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.466213, 31.117146, 31.511381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.253773, 31.392569, 31.313868>,  <28.126308, 31.557823, 31.195360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.253773, 31.392569, 31.313868>,  <28.466213, 31.117146, 31.511381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.253773, 31.392569, 31.313868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256766, 0.424576, 0.868220,
		0.807468, 0.587898, -0.048694,
		-0.531099, 0.688557, -0.493784,
		28.094442, 31.599136, 31.165733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.505430, 31.721424, 31.994320>,  <28.466213, 31.117146, 31.511381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.505430, 31.721424, 31.994320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.212969, 31.816248, 31.738440>,  <28.037493, 31.873142, 31.584911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.212969, 31.816248, 31.738440>,  <28.505430, 31.721424, 31.994320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.212969, 31.816248, 31.738440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474690, 0.496692, 0.726613,
		0.489987, 0.834925, -0.250627,
		-0.731152, 0.237060, -0.639703,
		27.993624, 31.887365, 31.546528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.288063, 32.430840, 32.186512>,  <28.505430, 31.721424, 31.994320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.288063, 32.430840, 32.186512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.975033, 32.312260, 31.967537>,  <27.787214, 32.241112, 31.836151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.975033, 32.312260, 31.967537>,  <28.288063, 32.430840, 32.186512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.975033, 32.312260, 31.967537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568517, 0.698642, 0.434381,
		0.253693, 0.651166, -0.715278,
		-0.782577, -0.296449, -0.547440,
		27.740259, 32.223324, 31.803305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.970701, 33.052177, 31.948917>,  <28.288063, 32.430840, 32.186512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.970701, 33.052177, 31.948917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.703257, 32.755844, 31.923204>,  <27.542789, 32.578045, 31.907778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.703257, 32.755844, 31.923204>,  <27.970701, 33.052177, 31.948917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.703257, 32.755844, 31.923204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637649, 0.526716, 0.562116,
		-0.382574, 0.416825, -0.824557,
		-0.668611, -0.740829, -0.064280,
		27.502674, 32.533596, 31.903921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.348339, 33.281033, 31.646650>,  <27.970701, 33.052177, 31.948917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.348339, 33.281033, 31.646650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.241636, 32.967224, 31.870569>,  <27.177614, 32.778938, 32.004921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.241636, 32.967224, 31.870569>,  <27.348339, 33.281033, 31.646650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.241636, 32.967224, 31.870569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711896, 0.551928, 0.434258,
		-0.649650, -0.282676, -0.705726,
		-0.266755, -0.784519, 0.559796,
		27.161610, 32.731869, 32.038509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.578794, 33.309044, 31.612616>,  <27.348339, 33.281033, 31.646650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.578794, 33.309044, 31.612616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.669653, 33.062885, 31.914528>,  <26.724167, 32.915192, 32.095676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.669653, 33.062885, 31.914528>,  <26.578794, 33.309044, 31.612616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.669653, 33.062885, 31.914528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711221, 0.424618, 0.560236,
		-0.665259, -0.664072, -0.341231,
		0.227144, -0.615393, 0.754783,
		26.737797, 32.878269, 32.140965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.879372, 32.964581, 31.729006>,  <26.578794, 33.309044, 31.612616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.879372, 32.964581, 31.729006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.099146, 32.907555, 32.058319>,  <26.231010, 32.873337, 32.255909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.099146, 32.907555, 32.058319>,  <25.879372, 32.964581, 31.729006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.099146, 32.907555, 32.058319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765488, 0.309039, 0.564378,
		-0.334889, -0.940303, 0.060663,
		0.549433, -0.142568, 0.823285,
		26.263975, 32.864784, 32.305305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.379665, 32.944687, 32.216503>,  <25.879372, 32.964581, 31.729006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.379665, 32.944687, 32.216503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.712435, 32.969929, 32.437019>,  <25.912096, 32.985073, 32.569328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.712435, 32.969929, 32.437019>,  <25.379665, 32.944687, 32.216503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.712435, 32.969929, 32.437019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519473, 0.437836, 0.733790,
		-0.195071, -0.896838, 0.397026,
		0.831923, 0.063103, 0.551292,
		25.962011, 32.988861, 32.602406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.197626, 32.901085, 32.846237>,  <25.379665, 32.944687, 32.216503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.197626, 32.901085, 32.846237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.557217, 33.054825, 32.930252>,  <25.772972, 33.147068, 32.980663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.557217, 33.054825, 32.930252>,  <25.197626, 32.901085, 32.846237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.557217, 33.054825, 32.930252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417434, 0.606627, 0.676575,
		0.132622, -0.695904, 0.705783,
		0.898978, 0.384346, 0.210042,
		25.826910, 33.170128, 32.993263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.528109, 32.706047, 33.516144>,  <25.197626, 32.901085, 32.846237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.528109, 32.706047, 33.516144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.686665, 33.060547, 33.420273>,  <25.781797, 33.273247, 33.362751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.686665, 33.060547, 33.420273>,  <25.528109, 32.706047, 33.516144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.686665, 33.060547, 33.420273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257924, 0.358044, 0.897374,
		0.881108, -0.293890, 0.370509,
		0.396388, 0.886247, -0.239674,
		25.805580, 33.326420, 33.348370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.607815, 33.142502, 34.191719>,  <25.528109, 32.706047, 33.516144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.607815, 33.142502, 34.191719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.605387, 33.446297, 33.931519>,  <25.603930, 33.628574, 33.775398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.605387, 33.446297, 33.931519>,  <25.607815, 33.142502, 34.191719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.605387, 33.446297, 33.931519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468015, 0.572708, 0.673029,
		0.883699, 0.308528, 0.351974,
		-0.006070, 0.759485, -0.650497,
		25.603565, 33.674141, 33.736370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.944473, 33.743275, 34.458355>,  <25.607815, 33.142502, 34.191719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.944473, 33.743275, 34.458355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.722916, 33.912495, 34.171516>,  <25.589981, 34.014027, 33.999413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.722916, 33.912495, 34.171516>,  <25.944473, 33.743275, 34.458355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.722916, 33.912495, 34.171516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408261, 0.612625, 0.676767,
		0.725619, 0.667621, -0.166615,
		-0.553896, 0.423052, -0.717096,
		25.556747, 34.039410, 33.956387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.109123, 34.489460, 34.393356>,  <25.944473, 33.743275, 34.458355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.109123, 34.489460, 34.393356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.737154, 34.410858, 34.269016>,  <25.513973, 34.363697, 34.194412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.737154, 34.410858, 34.269016>,  <26.109123, 34.489460, 34.393356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.737154, 34.410858, 34.269016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367176, 0.543433, 0.754892,
		0.020584, 0.816129, -0.577504,
		-0.929924, -0.196506, -0.310849,
		25.458178, 34.351906, 34.175762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.266657, 34.960098, 34.967110>,  <26.109123, 34.489460, 34.393356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.266657, 34.960098, 34.967110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.621151, 34.913929, 35.146561>,  <26.833847, 34.886227, 35.254230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.621151, 34.913929, 35.146561>,  <26.266657, 34.960098, 34.967110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.621151, 34.913929, 35.146561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438081, 0.523635, -0.730679,
		-0.150580, 0.844088, 0.514628,
		0.886234, -0.115422, 0.448628,
		26.887022, 34.879303, 35.281151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.721001, 35.594784, 34.870602>,  <26.266657, 34.960098, 34.967110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.721001, 35.594784, 34.870602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.954861, 35.279938, 34.949219>,  <27.095177, 35.091030, 34.996387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.954861, 35.279938, 34.949219>,  <26.721001, 35.594784, 34.870602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.954861, 35.279938, 34.949219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581852, 0.237995, -0.777693,
		0.565360, 0.569038, 0.597130,
		0.584651, -0.787118, 0.196543,
		27.130257, 35.043804, 35.008183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.425924, 35.828415, 34.940868>,  <26.721001, 35.594784, 34.870602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.425924, 35.828415, 34.940868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.415220, 35.445126, 34.826958>,  <27.408798, 35.215153, 34.758614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.415220, 35.445126, 34.826958>,  <27.425924, 35.828415, 34.940868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.415220, 35.445126, 34.826958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774624, 0.160187, -0.611799,
		0.631856, -0.236963, 0.737975,
		-0.026760, -0.958222, -0.284773,
		27.407192, 35.157658, 34.741528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.116390, 35.569912, 34.940243>,  <27.425924, 35.828415, 34.940868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.116390, 35.569912, 34.940243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.900131, 35.334969, 34.699341>,  <27.770376, 35.194004, 34.554798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.900131, 35.334969, 34.699341>,  <28.116390, 35.569912, 34.940243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.900131, 35.334969, 34.699341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607054, 0.223228, -0.762663,
		0.582396, -0.777934, 0.235869,
		-0.540649, -0.587357, -0.602255,
		27.737936, 35.158760, 34.518665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.588188, 35.143986, 34.657703>,  <28.116390, 35.569912, 34.940243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.588188, 35.143986, 34.657703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.285976, 35.107208, 34.398251>,  <28.104650, 35.085140, 34.242580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.285976, 35.107208, 34.398251>,  <28.588188, 35.143986, 34.657703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.285976, 35.107208, 34.398251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624571, 0.197708, -0.755528,
		0.197708, -0.975939, -0.091947,
		0.755528, 0.091947, 0.648632,
		28.059319, 35.079624, 34.203663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.788784, 34.646156, 34.098476>,  <28.588188, 35.143986, 34.657703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.788784, 34.646156, 34.098476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.505157, 34.873283, 33.931236>,  <28.334982, 35.009560, 33.830891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.505157, 34.873283, 33.931236>,  <28.788784, 34.646156, 34.098476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.505157, 34.873283, 33.931236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513395, 0.009254, -0.858103,
		-0.483373, -0.823105, -0.298074,
		-0.709067, 0.567814, -0.418105,
		28.292437, 35.043629, 33.805805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.745316, 34.448483, 33.446465>,  <28.788784, 34.646156, 34.098476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.745316, 34.448483, 33.446465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.532969, 34.784698, 33.403252>,  <28.405560, 34.986427, 33.377323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.532969, 34.784698, 33.403252>,  <28.745316, 34.448483, 33.446465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.532969, 34.784698, 33.403252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393238, 0.131399, -0.909999,
		-0.750696, -0.525571, -0.400289,
		-0.530867, 0.840541, -0.108034,
		28.373709, 35.036861, 33.370842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.429386, 34.328579, 32.751476>,  <28.745316, 34.448483, 33.446465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.429386, 34.328579, 32.751476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.416937, 34.714630, 32.855450>,  <28.409468, 34.946259, 32.917835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.416937, 34.714630, 32.855450>,  <28.429386, 34.328579, 32.751476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.416937, 34.714630, 32.855450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343755, 0.254533, -0.903906,
		-0.938544, 0.061220, -0.339688,
		-0.031124, 0.965125, 0.259935,
		28.407600, 35.004166, 32.933430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.139589, 34.596947, 32.143906>,  <28.429386, 34.328579, 32.751476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.139589, 34.596947, 32.143906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.305281, 34.896679, 32.350563>,  <28.404696, 35.076519, 32.474556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.305281, 34.896679, 32.350563>,  <28.139589, 34.596947, 32.143906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.305281, 34.896679, 32.350563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167621, 0.495117, -0.852503,
		-0.894605, 0.439730, 0.079487,
		0.414227, 0.749330, 0.516642,
		28.429548, 35.121479, 32.505554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.914501, 35.263786, 31.910746>,  <28.139589, 34.596947, 32.143906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.914501, 35.263786, 31.910746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.245148, 35.364994, 32.111816>,  <28.443537, 35.425720, 32.232460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.245148, 35.364994, 32.111816>,  <27.914501, 35.263786, 31.910746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.245148, 35.364994, 32.111816> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326593, 0.511742, -0.794643,
		-0.458302, 0.821036, 0.340380,
		0.826617, 0.253020, 0.502677,
		28.493134, 35.440899, 32.262619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.972031, 35.996716, 31.776602>,  <27.914501, 35.263786, 31.910746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.972031, 35.996716, 31.776602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.329262, 35.858898, 31.892328>,  <28.543600, 35.776207, 31.961765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.329262, 35.858898, 31.892328>,  <27.972031, 35.996716, 31.776602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.329262, 35.858898, 31.892328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421562, 0.416205, -0.805642,
		0.157163, 0.841465, 0.516949,
		0.893076, -0.344543, 0.289318,
		28.597185, 35.755535, 31.979124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.489014, 36.560707, 31.803719>,  <27.972031, 35.996716, 31.776602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.489014, 36.560707, 31.803719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.699272, 36.225132, 31.747322>,  <28.825426, 36.023788, 31.713484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.699272, 36.225132, 31.747322>,  <28.489014, 36.560707, 31.803719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.699272, 36.225132, 31.747322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322375, 0.349814, -0.879605,
		0.787256, 0.416906, 0.454331,
		0.525644, -0.838939, -0.140993,
		28.856966, 35.973450, 31.705025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.187866, 36.810207, 31.568619>,  <28.489014, 36.560707, 31.803719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.187866, 36.810207, 31.568619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.169142, 36.427490, 31.453829>,  <29.157907, 36.197861, 31.384954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.169142, 36.427490, 31.453829>,  <29.187866, 36.810207, 31.568619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.169142, 36.427490, 31.453829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372263, 0.249886, -0.893855,
		0.926946, -0.148675, 0.344481,
		-0.046813, -0.956793, -0.286977,
		29.155098, 36.140453, 31.367735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.778252, 36.760353, 31.139759>,  <29.187866, 36.810207, 31.568619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.778252, 36.760353, 31.139759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.550417, 36.445168, 31.046219>,  <29.413717, 36.256058, 30.990095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.550417, 36.445168, 31.046219>,  <29.778252, 36.760353, 31.139759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.550417, 36.445168, 31.046219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310420, 0.057218, -0.948876,
		0.761060, -0.613057, 0.212010,
		-0.569585, -0.787964, -0.233852,
		29.379541, 36.208778, 30.976063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.225380, 36.294548, 30.904451>,  <29.778252, 36.760353, 31.139759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.225380, 36.294548, 30.904451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.869581, 36.194382, 30.751566>,  <29.656101, 36.134281, 30.659834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.869581, 36.194382, 30.751566>,  <30.225380, 36.294548, 30.904451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.869581, 36.194382, 30.751566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395787, -0.004194, -0.918333,
		0.228361, -0.968130, 0.102841,
		-0.889496, -0.250415, -0.382216,
		29.602732, 36.119259, 30.636902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.307432, 35.613644, 30.608643>,  <30.225380, 36.294548, 30.904451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.307432, 35.613644, 30.608643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.997986, 35.778786, 30.416365>,  <29.812319, 35.877872, 30.300999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.997986, 35.778786, 30.416365>,  <30.307432, 35.613644, 30.608643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.997986, 35.778786, 30.416365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468297, -0.138532, -0.872643,
		-0.426871, -0.900198, -0.086171,
		-0.773614, 0.412860, -0.480695,
		29.765902, 35.902645, 30.272156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.234463, 35.240810, 29.920317>,  <30.307432, 35.613644, 30.608643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.234463, 35.240810, 29.920317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.006073, 35.564930, 29.867558>,  <29.869040, 35.759403, 29.835903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.006073, 35.564930, 29.867558>,  <30.234463, 35.240810, 29.920317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.006073, 35.564930, 29.867558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234662, 0.007128, -0.972051,
		-0.786716, -0.585967, -0.194217,
		-0.570974, 0.810303, -0.131897,
		29.834780, 35.808022, 29.827988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.016029, 35.142212, 29.258446>,  <30.234463, 35.240810, 29.920317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.016029, 35.142212, 29.258446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.964579, 35.535397, 29.310959>,  <29.933708, 35.771309, 29.342466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.964579, 35.535397, 29.310959>,  <30.016029, 35.142212, 29.258446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.964579, 35.535397, 29.310959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203500, 0.155727, -0.966611,
		-0.970589, -0.097617, -0.220065,
		-0.128628, 0.982965, 0.131282,
		29.925991, 35.830288, 29.350344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.585222, 35.424854, 28.754728>,  <30.016029, 35.142212, 29.258446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.585222, 35.424854, 28.754728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.799042, 35.737320, 28.883753>,  <29.927334, 35.924797, 28.961168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.799042, 35.737320, 28.883753>,  <29.585222, 35.424854, 28.754728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.799042, 35.737320, 28.883753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164770, 0.278015, -0.946339,
		-0.828919, 0.559015, 0.019901,
		0.534550, 0.781160, 0.322561,
		29.959408, 35.971668, 28.980520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.406504, 35.876022, 28.317732>,  <29.585222, 35.424854, 28.754728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.406504, 35.876022, 28.317732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.744303, 36.025917, 28.470779>,  <29.946981, 36.115856, 28.562609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.744303, 36.025917, 28.470779>,  <29.406504, 35.876022, 28.317732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.744303, 36.025917, 28.470779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357081, 0.138473, -0.923752,
		-0.399148, 0.916731, -0.016872,
		0.844496, 0.374739, 0.382618,
		29.997652, 36.138340, 28.585566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.514793, 36.536285, 28.078888>,  <29.406504, 35.876022, 28.317732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.514793, 36.536285, 28.078888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.873045, 36.385807, 28.173819>,  <30.087996, 36.295521, 28.230778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.873045, 36.385807, 28.173819>,  <29.514793, 36.536285, 28.078888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.873045, 36.385807, 28.173819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302702, 0.124547, -0.944912,
		0.325914, 0.918131, 0.225424,
		0.895629, -0.376196, 0.237328,
		30.141733, 36.272949, 28.245018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.760025, 40.816944, 46.882992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.440136, 40.612877, 47.009598>,  <38.248203, 40.490437, 47.085560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.440136, 40.612877, 47.009598>,  <38.760025, 40.816944, 46.882992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440136, 40.612877, 47.009598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319691, 0.808094, 0.494755,
		-0.508180, 0.294478, -0.809343,
		-0.799720, -0.510164, 0.316515,
		38.200218, 40.459827, 47.104553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167301, 41.180473, 46.767658>,  <38.760025, 40.816944, 46.882992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167301, 41.180473, 46.767658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.077667, 40.930378, 47.066685>,  <38.023888, 40.780319, 47.246101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.077667, 40.930378, 47.066685>,  <38.167301, 41.180473, 46.767658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077667, 40.930378, 47.066685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303550, 0.773696, 0.556104,
		-0.926090, -0.102309, -0.363166,
		-0.224086, -0.625242, 0.747568,
		38.010441, 40.742805, 47.290955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608200, 41.436905, 46.998657>,  <38.167301, 41.180473, 46.767658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608200, 41.436905, 46.998657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.714813, 41.219536, 47.317066>,  <37.778782, 41.089115, 47.508110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.714813, 41.219536, 47.317066>,  <37.608200, 41.436905, 46.998657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714813, 41.219536, 47.317066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441241, 0.665472, 0.602040,
		-0.856893, -0.511702, -0.062409,
		0.266534, -0.543422, 0.796023,
		37.794773, 41.056511, 47.555874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063038, 41.500214, 47.529083>,  <37.608200, 41.436905, 46.998657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063038, 41.500214, 47.529083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.377846, 41.384144, 47.746849>,  <37.566730, 41.314503, 47.877510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.377846, 41.384144, 47.746849>,  <37.063038, 41.500214, 47.529083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377846, 41.384144, 47.746849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335629, 0.539053, 0.772512,
		-0.517635, -0.790708, 0.326855,
		0.787024, -0.290177, 0.544418,
		37.613953, 41.297092, 47.910175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725563, 41.454071, 48.196903>,  <37.063038, 41.500214, 47.529083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725563, 41.454071, 48.196903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.121197, 41.456337, 48.255798>,  <37.358578, 41.457699, 48.291138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.121197, 41.456337, 48.255798>,  <36.725563, 41.454071, 48.196903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121197, 41.456337, 48.255798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119043, 0.619626, 0.775817,
		-0.086838, -0.784877, 0.613537,
		0.989084, 0.005667, 0.147241,
		37.417923, 41.458038, 48.299969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929558, 41.070724, 48.667698>,  <36.725563, 41.454071, 48.196903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929558, 41.070724, 48.667698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.207577, 41.358185, 48.659222>,  <37.374390, 41.530663, 48.654137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.207577, 41.358185, 48.659222>,  <36.929558, 41.070724, 48.667698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207577, 41.358185, 48.659222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190794, 0.212788, 0.958289,
		0.693187, -0.662011, 0.285013,
		0.695046, 0.718653, -0.021194,
		37.416092, 41.573780, 48.652863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376793, 40.887619, 49.201447>,  <36.929558, 41.070724, 48.667698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376793, 40.887619, 49.201447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.410374, 41.276890, 49.115765>,  <37.430523, 41.510452, 49.064354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.410374, 41.276890, 49.115765>,  <37.376793, 40.887619, 49.201447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410374, 41.276890, 49.115765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034873, 0.217706, 0.975391,
		0.995860, -0.074413, 0.052213,
		0.083949, 0.973174, -0.214209,
		37.435558, 41.568840, 49.051502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464306, 41.106827, 49.855618>,  <37.376793, 40.887619, 49.201447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464306, 41.106827, 49.855618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.481049, 41.467403, 49.683270>,  <37.491093, 41.683750, 49.579861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.481049, 41.467403, 49.683270>,  <37.464306, 41.106827, 49.855618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481049, 41.467403, 49.683270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328837, 0.419653, 0.846025,
		0.943459, 0.106278, 0.313991,
		0.041853, 0.901442, -0.430873,
		37.493603, 41.737835, 49.554008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824604, 41.506676, 50.387161>,  <37.464306, 41.106827, 49.855618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824604, 41.506676, 50.387161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.615818, 41.749218, 50.147198>,  <37.490547, 41.894745, 50.003220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.615818, 41.749218, 50.147198>,  <37.824604, 41.506676, 50.387161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615818, 41.749218, 50.147198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424860, 0.425041, 0.799271,
		0.739628, 0.672065, 0.035761,
		-0.521962, 0.606357, -0.599906,
		37.459229, 41.931126, 49.967224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885460, 42.267872, 50.705452>,  <37.824604, 41.506676, 50.387161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885460, 42.267872, 50.705452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.560398, 42.276608, 50.472515>,  <37.365360, 42.281849, 50.332752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.560398, 42.276608, 50.472515>,  <37.885460, 42.267872, 50.705452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560398, 42.276608, 50.472515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460619, 0.588062, 0.664840,
		0.356972, 0.808521, -0.467830,
		-0.812650, 0.021838, -0.582342,
		37.316605, 42.283157, 50.297813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605995, 42.965691, 50.776619>,  <37.885460, 42.267872, 50.705452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605995, 42.965691, 50.776619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.292130, 42.745838, 50.661930>,  <37.103809, 42.613926, 50.593117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.292130, 42.745838, 50.661930>,  <37.605995, 42.965691, 50.776619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292130, 42.745838, 50.661930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575094, 0.472697, 0.667701,
		-0.231454, 0.688815, -0.686996,
		-0.784663, -0.549629, -0.286725,
		37.056732, 42.580948, 50.575912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066383, 43.469616, 50.660049>,  <37.605995, 42.965691, 50.776619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066383, 43.469616, 50.660049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.934593, 43.099987, 50.737541>,  <36.855518, 42.878208, 50.784035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.934593, 43.099987, 50.737541>,  <37.066383, 43.469616, 50.660049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934593, 43.099987, 50.737541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650247, 0.370851, 0.663060,
		-0.684561, 0.092492, -0.723064,
		-0.329477, -0.924075, 0.193728,
		36.835751, 42.822765, 50.795658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409302, 43.474323, 50.530678>,  <37.066383, 43.469616, 50.660049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409302, 43.474323, 50.530678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.460800, 43.192581, 50.809906>,  <36.491699, 43.023537, 50.977444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.460800, 43.192581, 50.809906>,  <36.409302, 43.474323, 50.530678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460800, 43.192581, 50.809906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749620, 0.391725, 0.533499,
		-0.649226, -0.591974, -0.477569,
		0.128742, -0.704357, 0.698074,
		36.499424, 42.981274, 51.019329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881611, 42.896599, 50.598728>,  <36.409302, 43.474323, 50.530678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881611, 42.896599, 50.598728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.048191, 43.026348, 50.938457>,  <36.148140, 43.104198, 51.142296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.048191, 43.026348, 50.938457>,  <35.881611, 42.896599, 50.598728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048191, 43.026348, 50.938457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892882, 0.321899, 0.314868,
		-0.171263, -0.889474, 0.423681,
		0.416449, 0.324372, 0.849325,
		36.173126, 43.123661, 51.193256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401588, 43.388660, 50.402153>,  <35.881611, 42.896599, 50.598728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.401588, 43.388660, 50.402153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.054356, 43.572655, 50.327484>,  <34.846016, 43.683052, 50.282684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.054356, 43.572655, 50.327484>,  <35.401588, 43.388660, 50.402153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054356, 43.572655, 50.327484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078592, -0.243952, -0.966597,
		-0.490159, -0.853757, 0.175620,
		-0.868083, 0.459984, -0.186674,
		34.793930, 43.710651, 50.271481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977489, 42.975391, 50.003170>,  <35.401588, 43.388660, 50.402153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977489, 42.975391, 50.003170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.917778, 43.359871, 49.910381>,  <34.881950, 43.590557, 49.854710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.917778, 43.359871, 49.910381>,  <34.977489, 42.975391, 50.003170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917778, 43.359871, 49.910381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094656, -0.219633, -0.970980,
		-0.984255, -0.166901, -0.058197,
		-0.149276, 0.961200, -0.231973,
		34.872993, 43.648232, 49.840790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519913, 42.923950, 49.487801>,  <34.977489, 42.975391, 50.003170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519913, 42.923950, 49.487801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.710720, 43.274376, 49.459602>,  <34.825203, 43.484631, 49.442684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.710720, 43.274376, 49.459602>,  <34.519913, 42.923950, 49.487801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710720, 43.274376, 49.459602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144306, -0.157187, -0.976969,
		-0.866965, 0.455861, -0.201403,
		0.477020, 0.876061, -0.070492,
		34.853825, 43.537193, 49.438454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172462, 43.266335, 48.969212>,  <34.519913, 42.923950, 49.487801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172462, 43.266335, 48.969212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.537163, 43.430115, 48.956226>,  <34.755985, 43.528381, 48.948437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.537163, 43.430115, 48.956226>,  <34.172462, 43.266335, 48.969212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537163, 43.430115, 48.956226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040599, -0.168489, -0.984867,
		-0.408725, 0.896639, -0.170244,
		0.911754, 0.409451, -0.032463,
		34.810688, 43.552952, 48.946487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166801, 43.467777, 48.329762>,  <34.172462, 43.266335, 48.969212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166801, 43.467777, 48.329762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.554379, 43.517052, 48.415524>,  <34.786926, 43.546616, 48.466980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.554379, 43.517052, 48.415524>,  <34.166801, 43.467777, 48.329762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554379, 43.517052, 48.415524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221372, -0.045780, -0.974114,
		-0.110179, 0.991327, -0.071627,
		0.968945, 0.123183, 0.214408,
		34.845062, 43.554005, 48.479847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401096, 43.874790, 47.775074>,  <34.166801, 43.467777, 48.329762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401096, 43.874790, 47.775074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.754593, 43.781361, 47.937279>,  <34.966690, 43.725304, 48.034603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.754593, 43.781361, 47.937279>,  <34.401096, 43.874790, 47.775074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754593, 43.781361, 47.937279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429061, 0.058474, -0.901381,
		0.186823, 0.970580, 0.151891,
		0.883744, -0.233570, 0.405514,
		35.019714, 43.711288, 48.058933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967941, 44.388348, 47.588287>,  <34.401096, 43.874790, 47.775074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967941, 44.388348, 47.588287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.142387, 44.035805, 47.660969>,  <35.247055, 43.824280, 47.704578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.142387, 44.035805, 47.660969>,  <34.967941, 44.388348, 47.588287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142387, 44.035805, 47.660969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521834, 0.083186, -0.848981,
		0.733137, 0.465077, 0.496199,
		0.436118, -0.881353, 0.181707,
		35.273224, 43.771400, 47.715481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721478, 44.519688, 47.360340>,  <34.967941, 44.388348, 47.588287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721478, 44.519688, 47.360340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.638649, 44.128357, 47.361439>,  <35.588951, 43.893559, 47.362099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.638649, 44.128357, 47.361439>,  <35.721478, 44.519688, 47.360340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638649, 44.128357, 47.361439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537533, -0.116120, -0.835209,
		0.817423, -0.171469, 0.549925,
		-0.207070, -0.978322, 0.002749,
		35.576527, 43.834862, 47.362263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369976, 44.191013, 47.108227>,  <35.721478, 44.519688, 47.360340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369976, 44.191013, 47.108227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.101555, 43.898064, 47.062065>,  <35.940502, 43.722294, 47.034367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.101555, 43.898064, 47.062065>,  <36.369976, 44.191013, 47.108227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101555, 43.898064, 47.062065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488551, -0.319709, -0.811852,
		0.557683, -0.601176, 0.572343,
		-0.671050, -0.732375, -0.115409,
		35.900242, 43.678352, 47.027443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713066, 43.633209, 46.924416>,  <36.369976, 44.191013, 47.108227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713066, 43.633209, 46.924416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.339493, 43.576084, 46.793343>,  <36.115349, 43.541809, 46.714699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.339493, 43.576084, 46.793343>,  <36.713066, 43.633209, 46.924416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339493, 43.576084, 46.793343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357196, -0.338305, -0.870609,
		0.013475, -0.930137, 0.366965,
		-0.933932, -0.142810, -0.327682,
		36.059315, 43.533241, 46.695038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733013, 42.981857, 46.593452>,  <36.713066, 43.633209, 46.924416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.733013, 42.981857, 46.593452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.394455, 43.131203, 46.441547>,  <36.191322, 43.220810, 46.350403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.394455, 43.131203, 46.441547>,  <36.733013, 42.981857, 46.593452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394455, 43.131203, 46.441547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240228, -0.368763, -0.897945,
		-0.475301, -0.851243, 0.222426,
		-0.846392, 0.373361, -0.379766,
		36.140537, 43.243210, 46.327618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240902, 42.481297, 46.279396>,  <36.733013, 42.981857, 46.593452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240902, 42.481297, 46.279396> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.196667, 42.837955, 46.103786>,  <36.170128, 43.051949, 45.998421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.196667, 42.837955, 46.103786>,  <36.240902, 42.481297, 46.279396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196667, 42.837955, 46.103786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012564, -0.440444, -0.897692,
		-0.993787, -0.104788, 0.037504,
		-0.110585, 0.891644, -0.439024,
		36.163490, 43.105450, 45.972080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653538, 42.414856, 45.867023>,  <36.240902, 42.481297, 46.279396>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653538, 42.414856, 45.867023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.849983, 42.730034, 45.718460>,  <35.967850, 42.919140, 45.629322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.849983, 42.730034, 45.718460>,  <35.653538, 42.414856, 45.867023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.849983, 42.730034, 45.718460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118324, -0.482756, -0.867724,
		-0.863021, 0.382207, -0.330322,
		0.491116, 0.787949, -0.371405,
		35.997318, 42.966419, 45.607040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582668, 42.366425, 45.206181>,  <35.653538, 42.414856, 45.867023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582668, 42.366425, 45.206181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.840649, 42.668907, 45.162037>,  <35.995438, 42.850399, 45.135551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.840649, 42.668907, 45.162037>,  <35.582668, 42.366425, 45.206181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840649, 42.668907, 45.162037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298795, -0.382429, -0.874340,
		-0.703388, 0.530936, -0.472602,
		0.644955, 0.756211, -0.110355,
		36.034134, 42.895771, 45.128929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120293, 42.977242, 44.978149>,  <35.582668, 42.366425, 45.206181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120293, 42.977242, 44.978149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.831448, 43.077103, 44.720089>,  <34.658138, 43.137020, 44.565254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.831448, 43.077103, 44.720089>,  <35.120293, 42.977242, 44.978149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831448, 43.077103, 44.720089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316327, 0.710225, 0.628902,
		0.615213, 0.658219, -0.433891,
		-0.722115, 0.249657, -0.645152,
		34.614815, 43.152000, 44.526543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150745, 43.672470, 45.045464>,  <35.120293, 42.977242, 44.978149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150745, 43.672470, 45.045464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.797707, 43.591747, 44.875618>,  <34.585884, 43.543316, 44.773712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.797707, 43.591747, 44.875618>,  <35.150745, 43.672470, 45.045464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797707, 43.591747, 44.875618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435727, 0.690269, 0.577643,
		0.176525, 0.694841, -0.697162,
		-0.882599, -0.201804, -0.424611,
		34.532928, 43.531208, 44.748234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849529, 44.344315, 44.761246>,  <35.150745, 43.672470, 45.045464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849529, 44.344315, 44.761246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.538158, 44.098633, 44.813107>,  <34.351337, 43.951225, 44.844223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.538158, 44.098633, 44.813107>,  <34.849529, 44.344315, 44.761246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538158, 44.098633, 44.813107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456475, 0.695625, 0.554739,
		-0.430913, 0.372639, -0.821860,
		-0.778424, -0.614203, 0.129654,
		34.304630, 43.914371, 44.852001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269531, 44.826717, 44.665398>,  <34.849529, 44.344315, 44.761246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269531, 44.826717, 44.665398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.155434, 44.494110, 44.856064>,  <34.086975, 44.294544, 44.970463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.155434, 44.494110, 44.856064>,  <34.269531, 44.826717, 44.665398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155434, 44.494110, 44.856064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353268, 0.553525, 0.754196,
		-0.890977, 0.046735, -0.451637,
		-0.285240, -0.831520, 0.476668,
		34.069862, 44.244656, 44.999065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525753, 44.824318, 44.811584>,  <34.269531, 44.826717, 44.665398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525753, 44.824318, 44.811584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.658340, 44.552921, 45.073814>,  <33.737892, 44.390083, 45.231152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.658340, 44.552921, 45.073814>,  <33.525753, 44.824318, 44.811584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.658340, 44.552921, 45.073814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456553, 0.492731, 0.740794,
		-0.825646, -0.544851, -0.146445,
		0.331465, -0.678493, 0.655574,
		33.757778, 44.349373, 45.270485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906139, 44.778049, 45.261841>,  <33.525753, 44.824318, 44.811584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906139, 44.778049, 45.261841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.207455, 44.596390, 45.452129>,  <33.388245, 44.487392, 45.566303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.207455, 44.596390, 45.452129>,  <32.906139, 44.778049, 45.261841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207455, 44.596390, 45.452129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373413, 0.300107, 0.877780,
		-0.541410, -0.838859, 0.056481,
		0.753285, -0.454148, 0.475722,
		33.433441, 44.460144, 45.594845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578548, 44.363083, 45.727844>,  <32.906139, 44.778049, 45.261841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578548, 44.363083, 45.727844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.947952, 44.426601, 45.867512>,  <33.169594, 44.464714, 45.951313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.947952, 44.426601, 45.867512>,  <32.578548, 44.363083, 45.727844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947952, 44.426601, 45.867512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374924, 0.566043, 0.734185,
		-0.081060, -0.808937, 0.582281,
		0.923505, 0.158798, 0.349173,
		33.225002, 44.474239, 45.972263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569550, 43.493782, 45.935303>,  <32.578548, 44.363083, 45.727844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569550, 43.493782, 45.935303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.261238, 43.251457, 46.014194>,  <32.076252, 43.106064, 46.061531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.261238, 43.251457, 46.014194>,  <32.569550, 43.493782, 45.935303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.261238, 43.251457, 46.014194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077873, -0.396835, -0.914581,
		0.632329, -0.689578, 0.353047,
		-0.770776, -0.605808, 0.197231,
		32.030006, 43.069714, 46.073364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837391, 42.783508, 45.826073>,  <32.569550, 43.493782, 45.935303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837391, 42.783508, 45.826073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.439480, 42.781395, 45.785297>,  <32.200733, 42.780128, 45.760834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.439480, 42.781395, 45.785297>,  <32.837391, 42.783508, 45.826073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439480, 42.781395, 45.785297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089045, -0.533114, -0.841345,
		-0.049897, -0.846027, 0.530800,
		-0.994777, -0.005285, -0.101936,
		32.141048, 42.779808, 45.754715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729568, 42.111683, 45.612888>,  <32.837391, 42.783508, 45.826073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729568, 42.111683, 45.612888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.400517, 42.315632, 45.512245>,  <32.203087, 42.438000, 45.451859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.400517, 42.315632, 45.512245>,  <32.729568, 42.111683, 45.612888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400517, 42.315632, 45.512245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095763, -0.560453, -0.822631,
		-0.560453, -0.652627, 0.509873,
		0.822631, -0.509873, 0.251609,
		32.153728, 42.468594, 45.436764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108040, 41.675316, 45.528957>,  <32.729568, 42.111683, 45.612888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108040, 41.675316, 45.528957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.051083, 42.007156, 45.313000>,  <32.016911, 42.206261, 45.183426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.051083, 42.007156, 45.313000>,  <32.108040, 41.675316, 45.528957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.051083, 42.007156, 45.313000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037733, -0.549603, -0.834573,
		-0.989091, -0.098462, 0.109560,
		-0.142388, 0.829603, -0.539893,
		32.008366, 42.256039, 45.151031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.640778, 41.382183, 44.985798>,  <32.108040, 41.675316, 45.528957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.640778, 41.382183, 44.985798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.713921, 41.741146, 44.825188>,  <31.757807, 41.956524, 44.728821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.713921, 41.741146, 44.825188>,  <31.640778, 41.382183, 44.985798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713921, 41.741146, 44.825188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023723, -0.404266, -0.914334,
		-0.982853, 0.176719, -0.052635,
		0.182859, 0.897407, -0.401526,
		31.768778, 42.010368, 44.704731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.129383, 41.386787, 44.533844>,  <31.640778, 41.382183, 44.985798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.129383, 41.386787, 44.533844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.390038, 41.661381, 44.404778>,  <31.546431, 41.826138, 44.327339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.390038, 41.661381, 44.404778>,  <31.129383, 41.386787, 44.533844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.390038, 41.661381, 44.404778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071115, -0.368217, -0.927016,
		-0.755189, 0.627025, -0.191126,
		0.651638, 0.686481, -0.322665,
		31.585529, 41.867325, 44.307980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.867609, 41.647614, 44.043846>,  <31.129383, 41.386787, 44.533844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.867609, 41.647614, 44.043846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.248091, 41.747402, 43.971210>,  <31.476379, 41.807274, 43.927628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.248091, 41.747402, 43.971210>,  <30.867609, 41.647614, 44.043846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.248091, 41.747402, 43.971210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131433, -0.204880, -0.969923,
		-0.279170, 0.946462, -0.162094,
		0.951204, 0.249469, -0.181593,
		31.533451, 41.822243, 43.916733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<34.458714, 41.634510, 51.440208> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.259819, 41.966042, 51.542816>,  <34.140484, 42.164959, 51.604382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.259819, 41.966042, 51.542816>,  <34.458714, 41.634510, 51.440208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259819, 41.966042, 51.542816> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101702, 0.349302, -0.931474,
		-0.861634, -0.437075, -0.257979,
		-0.497236, 0.828826, 0.256519,
		34.110649, 42.214691, 51.619770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217712, 40.956627, 51.222534>,  <34.458714, 41.634510, 51.440208>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217712, 40.956627, 51.222534> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.614666, 40.965141, 51.174000>,  <34.852837, 40.970249, 51.144878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.614666, 40.965141, 51.174000>,  <34.217712, 40.956627, 51.222534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614666, 40.965141, 51.174000> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089939, -0.547883, -0.831706,
		-0.084178, 0.836284, -0.541796,
		0.992384, 0.021283, -0.121334,
		34.912380, 40.971527, 51.137600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347836, 41.223381, 50.552227>,  <34.217712, 40.956627, 51.222534>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347836, 41.223381, 50.552227> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.681610, 41.026299, 50.650978>,  <34.881874, 40.908047, 50.710228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.681610, 41.026299, 50.650978>,  <34.347836, 41.223381, 50.552227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681610, 41.026299, 50.650978> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033321, -0.492262, -0.869809,
		0.550092, 0.717576, -0.427181,
		0.834439, -0.492709, 0.246879,
		34.931942, 40.878487, 50.725040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777077, 41.298557, 49.926762>,  <34.347836, 41.223381, 50.552227>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777077, 41.298557, 49.926762> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.940060, 40.988853, 50.120464>,  <35.037849, 40.803032, 50.236687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.940060, 40.988853, 50.120464>,  <34.777077, 41.298557, 49.926762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940060, 40.988853, 50.120464> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103335, -0.487777, -0.866831,
		0.907360, 0.403235, -0.118739,
		0.407455, -0.774258, 0.484257,
		35.062298, 40.756577, 50.265743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356411, 41.056641, 49.533379>,  <34.777077, 41.298557, 49.926762>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356411, 41.056641, 49.533379> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.247643, 40.737083, 49.747974>,  <35.182381, 40.545349, 49.876732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.247643, 40.737083, 49.747974>,  <35.356411, 41.056641, 49.533379>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247643, 40.737083, 49.747974> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086299, -0.575495, -0.813239,
		0.958442, -0.174839, 0.225434,
		-0.271922, -0.798897, 0.536490,
		35.166065, 40.497414, 49.908920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763977, 40.572800, 49.280674>,  <35.356411, 41.056641, 49.533379>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763977, 40.572800, 49.280674> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.467072, 40.380543, 49.467449>,  <35.288929, 40.265190, 49.579514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.467072, 40.380543, 49.467449>,  <35.763977, 40.572800, 49.280674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467072, 40.380543, 49.467449> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128354, -0.785884, -0.604906,
		0.657703, -0.389065, 0.645024,
		-0.742261, -0.480640, 0.466940,
		35.244392, 40.236351, 49.607533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035618, 39.930752, 49.273453>,  <35.763977, 40.572800, 49.280674>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035618, 39.930752, 49.273453> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.649914, 39.902340, 49.375557>,  <35.418491, 39.885292, 49.436821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.649914, 39.902340, 49.375557>,  <36.035618, 39.930752, 49.273453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649914, 39.902340, 49.375557> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050499, -0.896466, -0.440225,
		0.260106, -0.437382, 0.860838,
		-0.964259, -0.071034, 0.255264,
		35.360638, 39.881031, 49.452137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965603, 39.270874, 49.535019>,  <36.035618, 39.930752, 49.273453>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965603, 39.270874, 49.535019> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.600273, 39.377056, 49.411484>,  <35.381077, 39.440765, 49.337364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.600273, 39.377056, 49.411484>,  <35.965603, 39.270874, 49.535019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600273, 39.377056, 49.411484> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039328, -0.812310, -0.581898,
		-0.405335, -0.519315, 0.752340,
		-0.913322, 0.265452, -0.308834,
		35.326275, 39.456692, 49.318832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559826, 38.618584, 49.490997>,  <35.965603, 39.270874, 49.535019>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559826, 38.618584, 49.490997> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.392719, 38.894146, 49.254055>,  <35.292454, 39.059483, 49.111889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.392719, 38.894146, 49.254055>,  <35.559826, 38.618584, 49.490997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392719, 38.894146, 49.254055> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016358, -0.657573, -0.753214,
		-0.908406, -0.304979, 0.285982,
		-0.417768, 0.688902, -0.592355,
		35.267387, 39.100815, 49.076347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954380, 38.262505, 49.065231>,  <35.559826, 38.618584, 49.490997>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954380, 38.262505, 49.065231> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.064571, 38.594303, 48.870895>,  <35.130688, 38.793385, 48.754292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.064571, 38.594303, 48.870895>,  <34.954380, 38.262505, 49.065231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064571, 38.594303, 48.870895> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027502, -0.511991, -0.858550,
		-0.960913, 0.223151, -0.163856,
		0.275479, 0.829499, -0.485842,
		35.147217, 38.843151, 48.725143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472725, 38.311478, 48.410370>,  <34.954380, 38.262505, 49.065231>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472725, 38.311478, 48.410370> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.787483, 38.534836, 48.305302>,  <34.976337, 38.668850, 48.242260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.787483, 38.534836, 48.305302>,  <34.472725, 38.311478, 48.410370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787483, 38.534836, 48.305302> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137807, -0.573917, -0.807235,
		-0.601507, 0.599009, -0.528561,
		0.786891, 0.558397, -0.262668,
		35.023552, 38.702354, 48.226501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345234, 38.346142, 47.714172>,  <34.472725, 38.311478, 48.410370>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345234, 38.346142, 47.714172> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.728455, 38.422066, 47.800060>,  <34.958389, 38.467621, 47.851593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.728455, 38.422066, 47.800060>,  <34.345234, 38.346142, 47.714172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728455, 38.422066, 47.800060> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284289, -0.724134, -0.628339,
		0.036217, 0.663025, -0.747721,
		0.958054, 0.189812, 0.214717,
		35.015869, 38.479008, 47.864475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147354, 38.872227, 47.228813>,  <34.345234, 38.346142, 47.714172>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147354, 38.872227, 47.228813> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.898914, 39.007687, 46.946098>,  <33.749851, 39.088963, 46.776470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.898914, 39.007687, 46.946098>,  <34.147354, 38.872227, 47.228813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898914, 39.007687, 46.946098> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484447, 0.543010, 0.685895,
		0.616072, 0.768411, -0.173205,
		-0.621101, 0.338652, -0.706787,
		33.712585, 39.109283, 46.734062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038654, 39.549110, 47.327518>,  <34.147354, 38.872227, 47.228813>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038654, 39.549110, 47.327518> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.709812, 39.451218, 47.121899>,  <33.512508, 39.392483, 46.998528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.709812, 39.451218, 47.121899>,  <34.038654, 39.549110, 47.327518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709812, 39.451218, 47.121899> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540928, 0.617399, 0.571153,
		0.177597, 0.747613, -0.639949,
		-0.822105, -0.244731, -0.514053,
		33.463181, 39.377800, 46.967682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680897, 40.135983, 47.322021>,  <34.038654, 39.549110, 47.327518>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.680897, 40.135983, 47.322021> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.408627, 39.852226, 47.248863>,  <33.245266, 39.681973, 47.204967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.408627, 39.852226, 47.248863>,  <33.680897, 40.135983, 47.322021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408627, 39.852226, 47.248863> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602956, 0.400695, 0.689846,
		-0.416085, 0.579837, -0.700473,
		-0.680674, -0.709389, -0.182893,
		33.204426, 39.639408, 47.193996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092243, 40.562393, 47.135296>,  <33.680897, 40.135983, 47.322021>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092243, 40.562393, 47.135296> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.933723, 40.206509, 47.225945>,  <32.838612, 39.992977, 47.280334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.933723, 40.206509, 47.225945>,  <33.092243, 40.562393, 47.135296>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933723, 40.206509, 47.225945> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775299, 0.456513, 0.436471,
		-0.491791, -0.002730, -0.870709,
		-0.396299, -0.889713, 0.226625,
		32.814835, 39.939594, 47.293934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.376930, 40.549969, 47.118080>,  <33.092243, 40.562393, 47.135296>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.376930, 40.549969, 47.118080> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.424500, 40.224964, 47.346355>,  <32.453041, 40.029961, 47.483318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.424500, 40.224964, 47.346355>,  <32.376930, 40.549969, 47.118080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.424500, 40.224964, 47.346355> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652064, 0.369539, 0.662007,
		-0.748780, -0.450850, -0.485864,
		0.118921, -0.812512, 0.570686,
		32.460175, 39.981209, 47.517563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.700579, 40.270031, 47.331345>,  <32.376930, 40.549969, 47.118080>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.700579, 40.270031, 47.331345> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.956373, 40.158890, 47.618080>,  <32.109848, 40.092205, 47.790123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.956373, 40.158890, 47.618080>,  <31.700579, 40.270031, 47.331345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956373, 40.158890, 47.618080> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647033, 0.309071, 0.697010,
		-0.415219, -0.909546, 0.017867,
		0.639485, -0.277851, 0.716839,
		32.148220, 40.075535, 47.833130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.349621, 39.862450, 47.629128>,  <31.700579, 40.270031, 47.331345>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.349621, 39.862450, 47.629128> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.635904, 39.991310, 47.876991>,  <31.807674, 40.068626, 48.025711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.635904, 39.991310, 47.876991>,  <31.349621, 39.862450, 47.629128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.635904, 39.991310, 47.876991> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689426, 0.184119, 0.700565,
		0.111595, -0.928612, 0.353873,
		0.715708, 0.322149, 0.619663,
		31.850616, 40.087955, 48.062889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.041533, 39.655418, 48.265606>,  <31.349621, 39.862450, 47.629128>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.041533, 39.655418, 48.265606> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.351139, 39.881214, 48.380325>,  <31.536903, 40.016693, 48.449158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.351139, 39.881214, 48.380325>,  <31.041533, 39.655418, 48.265606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.351139, 39.881214, 48.380325> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479380, 0.226543, 0.847864,
		0.413640, -0.793743, 0.445953,
		0.774014, 0.564491, 0.286797,
		31.583344, 40.050560, 48.466366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.990015, 39.663349, 48.967201>,  <31.041533, 39.655418, 48.265606>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.990015, 39.663349, 48.967201> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.225775, 39.976395, 48.887081>,  <31.367231, 40.164223, 48.839008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.225775, 39.976395, 48.887081>,  <30.990015, 39.663349, 48.967201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.225775, 39.976395, 48.887081> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438155, 0.517999, 0.734641,
		0.678695, -0.345237, 0.648216,
		0.589401, 0.782616, -0.200296,
		31.402596, 40.211178, 48.826992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.035683, 40.025562, 49.545502>,  <30.990015, 39.663349, 48.967201>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.035683, 40.025562, 49.545502> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.212202, 40.302837, 49.317554>,  <31.318113, 40.469204, 49.180786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.212202, 40.302837, 49.317554>,  <31.035683, 40.025562, 49.545502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.212202, 40.302837, 49.317554> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310134, 0.713729, 0.628019,
		0.842064, -0.100409, 0.529949,
		0.441299, 0.693188, -0.569865,
		31.344591, 40.510796, 49.146595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.524687, 40.509041, 49.944786>,  <31.035683, 40.025562, 49.545502>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.524687, 40.509041, 49.944786> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.363068, 40.682030, 49.622368>,  <31.266096, 40.785824, 49.428917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.363068, 40.682030, 49.622368>,  <31.524687, 40.509041, 49.944786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.363068, 40.682030, 49.622368> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454969, 0.669440, 0.587242,
		0.793566, 0.604001, -0.073725,
		-0.404049, 0.432473, -0.806047,
		31.241854, 40.811771, 49.380554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.502367, 41.177608, 50.164471>,  <31.524687, 40.509041, 49.944786>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.502367, 41.177608, 50.164471> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.246422, 41.174557, 49.857090>,  <31.092854, 41.172726, 49.672661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.246422, 41.174557, 49.857090>,  <31.502367, 41.177608, 50.164471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.246422, 41.174557, 49.857090> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607280, 0.617803, 0.499530,
		0.470940, 0.786296, -0.399943,
		-0.639864, -0.007629, -0.768450,
		31.054462, 41.172268, 49.626556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.450624, 41.829124, 50.039207>,  <31.502367, 41.177608, 50.164471>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.450624, 41.829124, 50.039207> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.123512, 41.650848, 49.893551>,  <30.927246, 41.543884, 49.806156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.123512, 41.650848, 49.893551>,  <31.450624, 41.829124, 50.039207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.123512, 41.650848, 49.893551> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549762, 0.417712, 0.723380,
		-0.170292, 0.791758, -0.586617,
		-0.817779, -0.445686, -0.364146,
		30.878180, 41.517143, 49.784306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.955479, 42.322502, 49.825302>,  <31.450624, 41.829124, 50.039207>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.955479, 42.322502, 49.825302> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.767262, 41.977268, 49.898705>,  <30.654331, 41.770126, 49.942745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.767262, 41.977268, 49.898705>,  <30.955479, 42.322502, 49.825302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.767262, 41.977268, 49.898705> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555547, 0.451347, 0.698322,
		-0.685535, 0.226646, -0.691863,
		-0.470542, -0.863086, 0.183502,
		30.626099, 41.718342, 49.953754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.316261, 42.494621, 49.121605>,  <30.955479, 42.322502, 49.825302>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.316261, 42.494621, 49.121605> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.233414, 42.865108, 48.995609>,  <31.183704, 43.087402, 48.920010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.233414, 42.865108, 48.995609>,  <31.316261, 42.494621, 49.121605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.233414, 42.865108, 48.995609> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374645, -0.222337, -0.900115,
		-0.903738, -0.304443, -0.300952,
		-0.207121, 0.926218, -0.314993,
		31.171278, 43.142975, 48.901112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.939524, 42.410702, 48.520332>,  <31.316261, 42.494621, 49.121605>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.939524, 42.410702, 48.520332> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.108011, 42.772774, 48.497593>,  <31.209103, 42.990017, 48.483948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.108011, 42.772774, 48.497593>,  <30.939524, 42.410702, 48.520332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.108011, 42.772774, 48.497593> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309773, -0.202499, -0.928996,
		-0.852418, 0.373699, -0.365696,
		0.421218, 0.905176, -0.056852,
		31.234377, 43.044327, 48.480537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.736559, 42.670547, 47.873432>,  <30.939524, 42.410702, 48.520332>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.736559, 42.670547, 47.873432> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.042175, 42.918411, 47.945274>,  <31.225546, 43.067131, 47.988380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.042175, 42.918411, 47.945274>,  <30.736559, 42.670547, 47.873432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.042175, 42.918411, 47.945274> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189770, 0.050217, -0.980544,
		-0.616626, 0.783260, -0.079225,
		0.764042, 0.619663, 0.179604,
		31.271387, 43.104309, 47.999157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.597635, 43.172596, 47.308594>,  <30.736559, 42.670547, 47.873432>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.597635, 43.172596, 47.308594> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.970652, 43.204754, 47.449394>,  <31.194462, 43.224049, 47.533875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.970652, 43.204754, 47.449394>,  <30.597635, 43.172596, 47.308594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.970652, 43.204754, 47.449394> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339427, 0.137232, -0.930568,
		-0.123115, 0.987271, 0.100687,
		0.932541, 0.080391, 0.352002,
		31.250414, 43.228870, 47.554996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.822830, 43.647884, 46.810120>,  <30.597635, 43.172596, 47.308594>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.822830, 43.647884, 46.810120> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.133612, 43.477840, 46.995865>,  <31.320080, 43.375816, 47.107311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.133612, 43.477840, 46.995865>,  <30.822830, 43.647884, 46.810120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.133612, 43.477840, 46.995865> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528925, 0.040737, -0.847690,
		0.341441, 0.904227, 0.256500,
		0.776954, -0.425105, 0.464358,
		31.366697, 43.350307, 47.135174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.357143, 44.092918, 46.538086>,  <30.822830, 43.647884, 46.810120>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.357143, 44.092918, 46.538086> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.491852, 43.730812, 46.641689>,  <31.572676, 43.513550, 46.703850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.491852, 43.730812, 46.641689>,  <31.357143, 44.092918, 46.538086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491852, 43.730812, 46.641689> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397518, -0.112666, -0.910651,
		0.853561, 0.409639, 0.321916,
		0.336769, -0.905264, 0.259006,
		31.592882, 43.459232, 46.719391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926622, 43.979763, 46.168064>,  <31.357143, 44.092918, 46.538086>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926622, 43.979763, 46.168064> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.814196, 43.613144, 46.281868>,  <31.746740, 43.393173, 46.350151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.814196, 43.613144, 46.281868>,  <31.926622, 43.979763, 46.168064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.814196, 43.613144, 46.281868> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185895, -0.342844, -0.920815,
		0.941512, -0.205919, 0.266743,
		-0.281065, -0.916545, 0.284513,
		31.729876, 43.338181, 46.367222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622459, 43.977577, 46.579613>,  <31.926622, 43.979763, 46.168064>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622459, 43.977577, 46.579613> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.924076, 44.238148, 46.545994>,  <33.105045, 44.394489, 46.525822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.924076, 44.238148, 46.545994>,  <32.622459, 43.977577, 46.579613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.924076, 44.238148, 46.545994> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371877, 0.528885, 0.762881,
		0.541417, -0.543985, 0.641052,
		0.754039, 0.651429, -0.084052,
		33.150288, 44.433575, 46.520779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909828, 44.037262, 47.266453>,  <32.622459, 43.977577, 46.579613>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909828, 44.037262, 47.266453> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.974823, 44.383991, 47.077892>,  <33.013821, 44.592030, 46.964756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.974823, 44.383991, 47.077892>,  <32.909828, 44.037262, 47.266453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974823, 44.383991, 47.077892> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417134, 0.493303, 0.763316,
		0.894202, 0.072608, 0.441737,
		0.162487, 0.866822, -0.471399,
		33.023571, 44.644039, 46.936474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124088, 44.467556, 47.710926>,  <32.909828, 44.037262, 47.266453>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124088, 44.467556, 47.710926> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.048550, 44.735924, 47.424095>,  <33.003227, 44.896946, 47.251995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.048550, 44.735924, 47.424095>,  <33.124088, 44.467556, 47.710926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.048550, 44.735924, 47.424095> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329040, 0.644778, 0.689923,
		0.925241, 0.366236, 0.098997,
		-0.188844, 0.670919, -0.717081,
		32.991898, 44.937199, 47.208969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353531, 44.989822, 47.959736>,  <33.124088, 44.467556, 47.710926>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353531, 44.989822, 47.959736> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.140320, 45.154438, 47.664028>,  <33.012394, 45.253208, 47.486603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.140320, 45.154438, 47.664028>,  <33.353531, 44.989822, 47.959736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.140320, 45.154438, 47.664028> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317882, 0.712322, 0.625738,
		0.784112, 0.568536, -0.248868,
		-0.533029, 0.411538, -0.739268,
		32.980412, 45.277901, 47.442249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583748, 45.605186, 47.990608>,  <33.353531, 44.989822, 47.959736>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583748, 45.605186, 47.990608> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.224625, 45.594883, 47.814758>,  <33.009151, 45.588699, 47.709248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.224625, 45.594883, 47.814758>,  <33.583748, 45.605186, 47.990608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224625, 45.594883, 47.814758> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303777, 0.758979, 0.575909,
		0.318834, 0.650606, -0.689244,
		-0.897811, -0.025757, -0.439627,
		32.955280, 45.587154, 47.682869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516193, 46.245518, 47.839291>,  <33.583748, 45.605186, 47.990608>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516193, 46.245518, 47.839291> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.160934, 46.063007, 47.861195>,  <32.947777, 45.953503, 47.874336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.160934, 46.063007, 47.861195>,  <33.516193, 46.245518, 47.839291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160934, 46.063007, 47.861195> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272787, 0.619348, 0.736203,
		-0.369829, 0.638921, -0.674541,
		-0.888151, -0.456276, 0.054764,
		32.894489, 45.926125, 47.877625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085880, 46.843624, 47.842915>,  <33.516193, 46.245518, 47.839291>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085880, 46.843624, 47.842915> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.875008, 46.545834, 48.006786>,  <32.748486, 46.367161, 48.105110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.875008, 46.545834, 48.006786>,  <33.085880, 46.843624, 47.842915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875008, 46.545834, 48.006786> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403387, 0.643584, 0.650445,
		-0.747903, 0.177643, -0.639596,
		-0.527181, -0.744475, 0.409679,
		32.716854, 46.322491, 48.129692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485512, 47.221527, 48.088924>,  <33.085880, 46.843624, 47.842915>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.485512, 47.221527, 48.088924> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.542213, 46.875751, 48.281860>,  <32.576233, 46.668285, 48.397621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.542213, 46.875751, 48.281860>,  <32.485512, 47.221527, 48.088924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542213, 46.875751, 48.281860> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415584, 0.390275, 0.821569,
		-0.898441, -0.316912, -0.303925,
		0.141751, -0.864437, 0.482343,
		32.584740, 46.616421, 48.426563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.859142, 47.047852, 48.356300>,  <32.485512, 47.221527, 48.088924>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.859142, 47.047852, 48.356300> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.131939, 46.856762, 48.577808>,  <32.295616, 46.742107, 48.710712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.131939, 46.856762, 48.577808>,  <31.859142, 47.047852, 48.356300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131939, 46.856762, 48.577808> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485342, 0.270799, 0.831331,
		-0.547111, -0.835729, -0.047179,
		0.681992, -0.477728, 0.553771,
		32.336536, 46.713444, 48.743938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.086063, 36.526867, 36.712578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269459, 36.565956, 37.065903>,  <37.379494, 36.589409, 37.277897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269459, 36.565956, 37.065903>,  <37.086063, 36.526867, 36.712578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269459, 36.565956, 37.065903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703064, 0.647844, 0.293256,
		-0.543593, -0.755479, 0.365730,
		0.458485, 0.097719, 0.883314,
		37.407005, 36.595272, 37.330898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587154, 36.491802, 37.154381>,  <37.086063, 36.526867, 36.712578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587154, 36.491802, 37.154381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.874279, 36.682247, 37.357582>,  <37.046555, 36.796513, 37.479504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.874279, 36.682247, 37.357582>,  <36.587154, 36.491802, 37.154381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874279, 36.682247, 37.357582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691290, 0.574211, 0.438634,
		-0.082865, -0.666035, 0.741304,
		0.717811, 0.476108, 0.508005,
		37.089622, 36.825081, 37.509983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402122, 36.364082, 37.825233>,  <36.587154, 36.491802, 37.154381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402122, 36.364082, 37.825233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630596, 36.691959, 37.808056>,  <36.767681, 36.888687, 37.797749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630596, 36.691959, 37.808056>,  <36.402122, 36.364082, 37.825233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630596, 36.691959, 37.808056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737190, 0.535292, 0.412327,
		0.360969, -0.203860, 0.910023,
		0.571185, 0.819697, -0.042941,
		36.801952, 36.937870, 37.795174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274361, 36.695854, 38.458405>,  <36.402122, 36.364082, 37.825233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274361, 36.695854, 38.458405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424038, 36.987270, 38.228901>,  <36.513844, 37.162121, 38.091198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424038, 36.987270, 38.228901>,  <36.274361, 36.695854, 38.458405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424038, 36.987270, 38.228901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710568, 0.622812, 0.327412,
		0.595879, 0.285181, 0.750733,
		0.374194, 0.728545, -0.573761,
		36.536297, 37.205833, 38.056774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340889, 37.368023, 38.869835>,  <36.274361, 36.695854, 38.458405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340889, 37.368023, 38.869835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335278, 37.482521, 38.486614>,  <36.331913, 37.551220, 38.256680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335278, 37.482521, 38.486614>,  <36.340889, 37.368023, 38.869835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335278, 37.482521, 38.486614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687189, 0.693254, 0.217186,
		0.726343, 0.661411, 0.186978,
		-0.014026, 0.286241, -0.958055,
		36.331070, 37.568394, 38.199196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703701, 37.929047, 38.882027>,  <36.340889, 37.368023, 38.869835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703701, 37.929047, 38.882027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488716, 37.972538, 38.547527>,  <36.359726, 37.998634, 38.346828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488716, 37.972538, 38.547527>,  <36.703701, 37.929047, 38.882027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488716, 37.972538, 38.547527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399509, 0.840478, 0.366046,
		0.742649, 0.530825, -0.408287,
		-0.537462, 0.108729, -0.836249,
		36.327477, 38.005157, 38.296654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707947, 38.752567, 38.832085>,  <36.703701, 37.929047, 38.882027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707947, 38.752567, 38.832085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.434887, 38.562702, 38.609848>,  <36.271049, 38.448784, 38.476505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.434887, 38.562702, 38.609848>,  <36.707947, 38.752567, 38.832085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434887, 38.562702, 38.609848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668242, 0.713163, 0.211781,
		0.295705, 0.515843, -0.804030,
		-0.682650, -0.474662, -0.555594,
		36.230091, 38.420303, 38.443169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471642, 39.240028, 38.383430>,  <36.707947, 38.752567, 38.832085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471642, 39.240028, 38.383430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179916, 38.967838, 38.411880>,  <36.004883, 38.804523, 38.428951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179916, 38.967838, 38.411880>,  <36.471642, 39.240028, 38.383430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179916, 38.967838, 38.411880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636830, 0.713162, 0.292997,
		-0.250099, 0.168394, -0.953464,
		-0.729313, -0.680473, 0.071122,
		35.961121, 38.763695, 38.433216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929882, 39.693260, 38.315575>,  <36.471642, 39.240028, 38.383430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929882, 39.693260, 38.315575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.755684, 39.360588, 38.453358>,  <35.651165, 39.160984, 38.536030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.755684, 39.360588, 38.453358>,  <35.929882, 39.693260, 38.315575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755684, 39.360588, 38.453358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674714, 0.554877, 0.486696,
		-0.595909, -0.020461, -0.802791,
		-0.435492, -0.831681, 0.344462,
		35.625038, 39.111084, 38.556698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180157, 39.674351, 38.163662>,  <35.929882, 39.693260, 38.315575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180157, 39.674351, 38.163662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.253731, 39.457947, 38.491924>,  <35.297874, 39.328102, 38.688881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.253731, 39.457947, 38.491924>,  <35.180157, 39.674351, 38.163662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.253731, 39.457947, 38.491924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677150, 0.535435, 0.504755,
		-0.712486, -0.648547, -0.267862,
		0.183934, -0.541014, 0.820654,
		35.308910, 39.295643, 38.738121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611435, 39.574657, 38.463707>,  <35.180157, 39.674351, 38.163662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611435, 39.574657, 38.463707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840881, 39.461876, 38.771336>,  <34.978550, 39.394207, 38.955914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840881, 39.461876, 38.771336>,  <34.611435, 39.574657, 38.463707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840881, 39.461876, 38.771336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616438, 0.469698, 0.631971,
		-0.539420, -0.836591, 0.095615,
		0.573612, -0.281957, 0.769071,
		35.012966, 39.377289, 39.002056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.159435, 39.392872, 39.075081>,  <34.611435, 39.574657, 38.463707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.159435, 39.392872, 39.075081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.518669, 39.463192, 39.236343>,  <34.734211, 39.505383, 39.333103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.518669, 39.463192, 39.236343>,  <34.159435, 39.392872, 39.075081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518669, 39.463192, 39.236343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439010, 0.413966, 0.797435,
		-0.026708, -0.893156, 0.448954,
		0.898085, 0.175797, 0.403160,
		34.788094, 39.515930, 39.357292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708981, 38.749386, 39.165806>,  <34.159435, 39.392872, 39.075081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708981, 38.749386, 39.165806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.319351, 38.659657, 39.177555>,  <33.085575, 38.605820, 39.184605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.319351, 38.659657, 39.177555>,  <33.708981, 38.749386, 39.165806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319351, 38.659657, 39.177555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142029, -0.707418, -0.692378,
		0.176096, -0.670254, 0.720937,
		-0.974073, -0.224319, 0.029377,
		33.027130, 38.592361, 39.186367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678913, 38.024475, 39.181103>,  <33.708981, 38.749386, 39.165806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678913, 38.024475, 39.181103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.319008, 38.135750, 39.046616>,  <33.103065, 38.202515, 38.965923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.319008, 38.135750, 39.046616>,  <33.678913, 38.024475, 39.181103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319008, 38.135750, 39.046616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076655, -0.657726, -0.749346,
		-0.429592, -0.700007, 0.570474,
		-0.899764, 0.278184, -0.336213,
		33.049080, 38.219204, 38.945751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.581062, 37.438671, 38.839172>,  <33.678913, 38.024475, 39.181103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.581062, 37.438671, 38.839172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262070, 37.662052, 38.747829>,  <33.070675, 37.796082, 38.693024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262070, 37.662052, 38.747829>,  <33.581062, 37.438671, 38.839172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262070, 37.662052, 38.747829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191686, -0.593401, -0.781749,
		-0.572073, -0.579664, 0.580278,
		-0.797489, 0.558448, -0.228355,
		33.022823, 37.829586, 38.679321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115517, 36.969769, 38.776279>,  <33.581062, 37.438671, 38.839172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115517, 36.969769, 38.776279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995159, 37.286373, 38.563496>,  <32.922943, 37.476334, 38.435825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995159, 37.286373, 38.563496>,  <33.115517, 36.969769, 38.776279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995159, 37.286373, 38.563496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121302, -0.585042, -0.801880,
		-0.945911, -0.176756, 0.272049,
		-0.300897, 0.791507, -0.531956,
		32.904892, 37.523827, 38.403908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439972, 36.796848, 38.467587>,  <33.115517, 36.969769, 38.776279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.439972, 36.796848, 38.467587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600307, 37.087814, 38.244804>,  <32.696510, 37.262394, 38.111134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600307, 37.087814, 38.244804>,  <32.439972, 36.796848, 38.467587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600307, 37.087814, 38.244804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058464, -0.586383, -0.807921,
		-0.914282, 0.356407, -0.192517,
		0.400838, 0.727412, -0.556956,
		32.720558, 37.306038, 38.077717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074791, 36.763130, 37.901211>,  <32.439972, 36.796848, 38.467587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074791, 36.763130, 37.901211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387817, 36.965801, 37.756508>,  <32.575634, 37.087402, 37.669685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387817, 36.965801, 37.756508>,  <32.074791, 36.763130, 37.901211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387817, 36.965801, 37.756508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041087, -0.537775, -0.842087,
		-0.621206, 0.673855, -0.400029,
		0.782570, 0.506674, -0.361755,
		32.622589, 37.117802, 37.647980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.083408, 36.757294, 37.142036>,  <32.074791, 36.763130, 37.901211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.083408, 36.757294, 37.142036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.460495, 36.881920, 37.189724>,  <32.686749, 36.956696, 37.218338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.460495, 36.881920, 37.189724>,  <32.083408, 36.757294, 37.142036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.460495, 36.881920, 37.189724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293428, -0.604441, -0.740642,
		-0.158697, 0.733198, -0.661238,
		0.942717, 0.311564, 0.119218,
		32.743309, 36.975388, 37.225491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.339699, 36.948505, 36.455967>,  <32.083408, 36.757294, 37.142036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.339699, 36.948505, 36.455967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644676, 36.863380, 36.700386>,  <32.827663, 36.812305, 36.847038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644676, 36.863380, 36.700386>,  <32.339699, 36.948505, 36.455967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644676, 36.863380, 36.700386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390791, -0.601221, -0.697005,
		0.515710, 0.770223, -0.375233,
		0.762447, -0.212815, 0.611052,
		32.873409, 36.799538, 36.883701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827492, 36.758785, 35.896282>,  <32.339699, 36.948505, 36.455967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827492, 36.758785, 35.896282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980427, 36.672382, 36.255650>,  <33.072186, 36.620541, 36.471272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980427, 36.672382, 36.255650>,  <32.827492, 36.758785, 35.896282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.980427, 36.672382, 36.255650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539500, -0.737175, -0.406833,
		0.750173, 0.640245, -0.165311,
		0.382335, -0.216010, 0.898421,
		33.095127, 36.607578, 36.525177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549088, 36.690990, 35.648552>,  <32.827492, 36.758785, 35.896282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549088, 36.690990, 35.648552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430984, 36.462799, 35.955112>,  <33.360123, 36.325886, 36.139050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430984, 36.462799, 35.955112>,  <33.549088, 36.690990, 35.648552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430984, 36.462799, 35.955112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136225, -0.819108, -0.557229,
		0.945656, -0.060124, 0.319563,
		-0.295260, -0.570480, 0.766404,
		33.342407, 36.291656, 36.185032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954594, 36.137589, 35.663883>,  <33.549088, 36.690990, 35.648552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954594, 36.137589, 35.663883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652893, 35.990162, 35.881237>,  <33.471874, 35.901707, 36.011650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652893, 35.990162, 35.881237>,  <33.954594, 36.137589, 35.663883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652893, 35.990162, 35.881237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099909, -0.882374, -0.459819,
		0.648938, -0.292532, 0.702356,
		-0.754253, -0.368566, 0.543380,
		33.426617, 35.879593, 36.044250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179096, 35.423805, 36.030643>,  <33.954594, 36.137589, 35.663883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179096, 35.423805, 36.030643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.781929, 35.387733, 36.061600>,  <33.543629, 35.366089, 36.080173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.781929, 35.387733, 36.061600>,  <34.179096, 35.423805, 36.030643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781929, 35.387733, 36.061600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051247, -0.912504, -0.405844,
		0.107219, -0.399002, 0.910660,
		-0.992914, -0.090183, 0.077390,
		33.484055, 35.360680, 36.084816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030682, 34.692547, 36.296692>,  <34.179096, 35.423805, 36.030643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030682, 34.692547, 36.296692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.707996, 34.838593, 36.110828>,  <33.514385, 34.926220, 35.999310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.707996, 34.838593, 36.110828>,  <34.030682, 34.692547, 36.296692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.707996, 34.838593, 36.110828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199307, -0.908330, -0.367713,
		-0.556325, -0.204027, 0.805529,
		-0.806709, 0.365116, -0.464662,
		33.465984, 34.948128, 35.971428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497475, 34.284309, 36.467060>,  <34.030682, 34.692547, 36.296692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497475, 34.284309, 36.467060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394680, 34.444748, 36.115360>,  <33.333004, 34.541012, 35.904339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394680, 34.444748, 36.115360>,  <33.497475, 34.284309, 36.467060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394680, 34.444748, 36.115360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283207, -0.901120, -0.328294,
		-0.923986, 0.164642, 0.345170,
		-0.256989, 0.401094, -0.879250,
		33.317585, 34.565075, 35.851585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076015, 33.975101, 36.779663>,  <33.497475, 34.284309, 36.467060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076015, 33.975101, 36.779663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368645, 33.877224, 37.034199>,  <34.544220, 33.818497, 37.186920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368645, 33.877224, 37.034199>,  <34.076015, 33.975101, 36.779663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368645, 33.877224, 37.034199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185662, 0.969600, 0.159391,
		-0.656000, 0.001539, 0.754759,
		0.731569, -0.244690, 0.636343,
		34.588116, 33.803818, 37.225101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011559, 34.165253, 37.515415>,  <34.076015, 33.975101, 36.779663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011559, 34.165253, 37.515415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385342, 34.169502, 37.373047>,  <34.609612, 34.172050, 37.287624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385342, 34.169502, 37.373047>,  <34.011559, 34.165253, 37.515415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385342, 34.169502, 37.373047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043061, 0.988848, 0.142566,
		0.353468, -0.148548, 0.923577,
		0.934455, 0.010622, -0.355923,
		34.665680, 34.172688, 37.266270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474091, 34.525711, 37.986076>,  <34.011559, 34.165253, 37.515415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474091, 34.525711, 37.986076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560032, 34.582512, 37.599567>,  <34.611595, 34.616592, 37.367664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560032, 34.582512, 37.599567>,  <34.474091, 34.525711, 37.986076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560032, 34.582512, 37.599567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089141, 0.982392, 0.164196,
		0.972570, -0.121411, 0.198409,
		0.214851, 0.142006, -0.966268,
		34.624485, 34.625114, 37.309689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163822, 34.496632, 38.348572>,  <34.474091, 34.525711, 37.986076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163822, 34.496632, 38.348572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.538044, 34.474365, 38.488079>,  <35.762577, 34.461006, 38.571785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.538044, 34.474365, 38.488079>,  <35.163822, 34.496632, 38.348572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538044, 34.474365, 38.488079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187392, 0.758803, 0.623780,
		-0.299373, -0.648937, 0.699469,
		0.935553, -0.055668, 0.348771,
		35.818710, 34.457664, 38.592709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353485, 34.287811, 39.115982>,  <35.163822, 34.496632, 38.348572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353485, 34.287811, 39.115982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.590496, 34.566689, 38.954571>,  <35.732700, 34.734016, 38.857723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.590496, 34.566689, 38.954571>,  <35.353485, 34.287811, 39.115982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590496, 34.566689, 38.954571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210973, 0.617753, 0.757543,
		0.777436, -0.363729, 0.513123,
		0.592524, 0.697196, -0.403527,
		35.768253, 34.775848, 38.833511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558167, 34.535233, 39.666908>,  <35.353485, 34.287811, 39.115982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558167, 34.535233, 39.666908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.680656, 34.801884, 39.395073>,  <35.754150, 34.961876, 39.231972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.680656, 34.801884, 39.395073>,  <35.558167, 34.535233, 39.666908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680656, 34.801884, 39.395073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202642, 0.743166, 0.637684,
		0.930141, -0.057563, 0.362663,
		0.306226, 0.666627, -0.679584,
		35.772526, 35.001873, 39.191196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100109, 34.884666, 40.022102>,  <35.558167, 34.535233, 39.666908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100109, 34.884666, 40.022102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.974354, 35.108658, 39.715488>,  <35.898903, 35.243053, 39.531521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.974354, 35.108658, 39.715488>,  <36.100109, 34.884666, 40.022102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974354, 35.108658, 39.715488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096037, 0.784577, 0.612549,
		0.944425, 0.266192, -0.192880,
		-0.314385, 0.559983, -0.766539,
		35.880039, 35.276653, 39.485527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391994, 35.505203, 40.095863>,  <36.100109, 34.884666, 40.022102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391994, 35.505203, 40.095863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076603, 35.605255, 39.871101>,  <35.887367, 35.665287, 39.736244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076603, 35.605255, 39.871101>,  <36.391994, 35.505203, 40.095863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076603, 35.605255, 39.871101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239282, 0.716863, 0.654868,
		0.566614, 0.650802, -0.505376,
		-0.788475, 0.250130, -0.561910,
		35.840061, 35.680294, 39.702530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450954, 36.199894, 40.020954>,  <36.391994, 35.505203, 40.095863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450954, 36.199894, 40.020954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067101, 36.104820, 39.960823>,  <35.836788, 36.047775, 39.924744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067101, 36.104820, 39.960823>,  <36.450954, 36.199894, 40.020954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067101, 36.104820, 39.960823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281192, 0.801735, 0.527402,
		-0.004830, 0.548387, -0.836211,
		-0.959639, -0.237683, -0.150330,
		35.779209, 36.033516, 39.915726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121544, 36.815662, 40.085300>,  <36.450954, 36.199894, 40.020954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121544, 36.815662, 40.085300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.816311, 36.562534, 40.137817>,  <35.633171, 36.410656, 40.169327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.816311, 36.562534, 40.137817>,  <36.121544, 36.815662, 40.085300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816311, 36.562534, 40.137817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417631, 0.637854, 0.647091,
		-0.493238, 0.438954, -0.751023,
		-0.763087, -0.632820, 0.131293,
		35.587383, 36.372688, 40.177204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442245, 37.271088, 39.971821>,  <36.121544, 36.815662, 40.085300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.442245, 37.271088, 39.971821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.367832, 36.937313, 40.179325>,  <35.323185, 36.737049, 40.303829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.367832, 36.937313, 40.179325>,  <35.442245, 37.271088, 39.971821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367832, 36.937313, 40.179325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510225, 0.533251, 0.674770,
		-0.839680, -0.139153, -0.524952,
		-0.186035, -0.834434, 0.518759,
		35.312023, 36.686981, 40.334953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836739, 37.346024, 40.293732>,  <35.442245, 37.271088, 39.971821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836739, 37.346024, 40.293732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.970379, 37.041649, 40.516212>,  <35.050564, 36.859024, 40.649700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.970379, 37.041649, 40.516212>,  <34.836739, 37.346024, 40.293732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970379, 37.041649, 40.516212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438318, 0.396981, 0.806401,
		-0.834418, -0.513211, -0.200899,
		0.334101, -0.760934, 0.556198,
		35.070610, 36.813370, 40.683071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264519, 37.193851, 40.796951>,  <34.836739, 37.346024, 40.293732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264519, 37.193851, 40.796951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592438, 37.022564, 40.949039>,  <34.789188, 36.919792, 41.040291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592438, 37.022564, 40.949039>,  <34.264519, 37.193851, 40.796951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592438, 37.022564, 40.949039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256469, 0.319097, 0.912360,
		-0.512014, -0.845463, 0.151770,
		0.819796, -0.428217, 0.380217,
		34.838375, 36.894100, 41.063103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010994, 36.924580, 41.329086>,  <34.264519, 37.193851, 40.796951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010994, 36.924580, 41.329086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402721, 36.919731, 41.409878>,  <34.637756, 36.916821, 41.458355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402721, 36.919731, 41.409878>,  <34.010994, 36.924580, 41.329086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402721, 36.919731, 41.409878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190399, 0.282705, 0.940120,
		-0.068499, -0.959130, 0.274549,
		0.979314, -0.012124, 0.201983,
		34.696514, 36.916096, 41.470474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019047, 36.610775, 41.898216>,  <34.010994, 36.924580, 41.329086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019047, 36.610775, 41.898216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373600, 36.793427, 41.867729>,  <34.586334, 36.903019, 41.849438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373600, 36.793427, 41.867729>,  <34.019047, 36.610775, 41.898216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373600, 36.793427, 41.867729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141308, 0.423649, 0.894737,
		0.440854, -0.782312, 0.440041,
		0.886386, 0.456629, -0.076221,
		34.639515, 36.930416, 41.844864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472176, 36.455048, 42.501183>,  <34.019047, 36.610775, 41.898216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472176, 36.455048, 42.501183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627052, 36.784416, 42.335262>,  <34.719978, 36.982037, 42.235710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627052, 36.784416, 42.335262>,  <34.472176, 36.455048, 42.501183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627052, 36.784416, 42.335262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081279, 0.417663, 0.904959,
		0.918409, -0.384110, 0.094791,
		0.387194, 0.823418, -0.414805,
		34.743210, 37.031441, 42.210819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141430, 36.583439, 42.791458>,  <34.472176, 36.455048, 42.501183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141430, 36.583439, 42.791458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041801, 36.944111, 42.650070>,  <34.982025, 37.160515, 42.565235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041801, 36.944111, 42.650070>,  <35.141430, 36.583439, 42.791458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041801, 36.944111, 42.650070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082819, 0.383468, 0.919833,
		0.964938, 0.199828, -0.170187,
		-0.249069, 0.901677, -0.353474,
		34.967079, 37.214615, 42.544029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613224, 36.893902, 43.130199>,  <35.141430, 36.583439, 42.791458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613224, 36.893902, 43.130199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326733, 37.152462, 43.024990>,  <35.154839, 37.307598, 42.961864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326733, 37.152462, 43.024990>,  <35.613224, 36.893902, 43.130199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326733, 37.152462, 43.024990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133129, 0.496527, 0.857752,
		0.685049, 0.579332, -0.441682,
		-0.716230, 0.646402, -0.263020,
		35.111862, 37.346382, 42.946083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842804, 37.600647, 43.118187>,  <35.613224, 36.893902, 43.130199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842804, 37.600647, 43.118187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446762, 37.617920, 43.171593>,  <35.209137, 37.628284, 43.203636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446762, 37.617920, 43.171593>,  <35.842804, 37.600647, 43.118187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446762, 37.617920, 43.171593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139423, 0.410575, 0.901105,
		-0.015904, 0.910804, -0.412533,
		-0.990105, 0.043186, 0.133517,
		35.149731, 37.630875, 43.211647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761124, 38.191528, 43.470512>,  <35.842804, 37.600647, 43.118187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761124, 38.191528, 43.470512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413548, 37.999355, 43.518044>,  <35.205002, 37.884052, 43.546562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413548, 37.999355, 43.518044>,  <35.761124, 38.191528, 43.470512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413548, 37.999355, 43.518044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131671, 0.455869, 0.880254,
		-0.477074, 0.749245, -0.459384,
		-0.868944, -0.480433, 0.118829,
		35.152863, 37.855225, 43.553692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214779, 38.780071, 43.469734>,  <35.761124, 38.191528, 43.470512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.214779, 38.780071, 43.469734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073982, 38.445290, 43.637352>,  <34.989502, 38.244419, 43.737923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073982, 38.445290, 43.637352>,  <35.214779, 38.780071, 43.469734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073982, 38.445290, 43.637352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348552, 0.532706, 0.771191,
		-0.868683, 0.125397, -0.479234,
		-0.351996, -0.836958, 0.419046,
		34.968384, 38.194202, 43.763065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544991, 38.951401, 43.708481>,  <35.214779, 38.780071, 43.469734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544991, 38.951401, 43.708481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.608982, 38.606689, 43.901035>,  <34.647377, 38.399860, 44.016567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.608982, 38.606689, 43.901035>,  <34.544991, 38.951401, 43.708481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608982, 38.606689, 43.901035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341029, 0.409391, 0.846226,
		-0.926339, -0.299549, -0.228398,
		0.159982, -0.861783, 0.481389,
		34.656979, 38.348156, 44.045452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914677, 38.940029, 44.016182>,  <34.544991, 38.951401, 43.708481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914677, 38.940029, 44.016182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141403, 38.671043, 44.206558>,  <34.277439, 38.509651, 44.320786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141403, 38.671043, 44.206558>,  <33.914677, 38.940029, 44.016182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.141403, 38.671043, 44.206558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378697, 0.300383, 0.875419,
		-0.731650, -0.676436, -0.084398,
		0.566813, -0.672462, 0.475939,
		34.311447, 38.469303, 44.349339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492508, 38.425167, 44.505161>,  <33.914677, 38.940029, 44.016182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492508, 38.425167, 44.505161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863136, 38.443729, 44.654457>,  <34.085514, 38.454865, 44.744034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863136, 38.443729, 44.654457>,  <33.492508, 38.425167, 44.505161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863136, 38.443729, 44.654457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374180, 0.214269, 0.902263,
		-0.038111, -0.975672, 0.215898,
		0.926573, 0.046399, 0.373243,
		34.141109, 38.457649, 44.766430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344296, 37.975155, 45.055794>,  <33.492508, 38.425167, 44.505161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344296, 37.975155, 45.055794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647472, 38.232246, 45.100365>,  <33.829380, 38.386501, 45.127106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647472, 38.232246, 45.100365>,  <33.344296, 37.975155, 45.055794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647472, 38.232246, 45.100365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324932, 0.223885, 0.918855,
		0.565630, -0.732648, 0.378537,
		0.757946, 0.642731, 0.111424,
		33.874855, 38.425064, 45.133793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474503, 38.008057, 45.797981>,  <33.344296, 37.975155, 45.055794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474503, 38.008057, 45.797981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688282, 38.318844, 45.664906>,  <33.816551, 38.505318, 45.585060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688282, 38.318844, 45.664906>,  <33.474503, 38.008057, 45.797981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688282, 38.318844, 45.664906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117771, 0.458241, 0.880991,
		0.836954, -0.431665, 0.336412,
		0.534451, 0.776969, -0.332689,
		33.848618, 38.551933, 45.565098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909359, 38.046089, 46.223934>,  <33.474503, 38.008057, 45.797981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909359, 38.046089, 46.223934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.875080, 38.402321, 46.045258>,  <33.854511, 38.616058, 45.938053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.875080, 38.402321, 46.045258>,  <33.909359, 38.046089, 46.223934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.875080, 38.402321, 46.045258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236427, 0.417353, 0.877450,
		0.967862, 0.180808, 0.174788,
		-0.085701, 0.890576, -0.446688,
		33.849369, 38.669495, 45.911251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279045, 38.429722, 46.561729>,  <33.909359, 38.046089, 46.223934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279045, 38.429722, 46.561729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030380, 38.696815, 46.397938>,  <33.881180, 38.857071, 46.299664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030380, 38.696815, 46.397938>,  <34.279045, 38.429722, 46.561729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030380, 38.696815, 46.397938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412684, 0.165118, 0.895783,
		0.665755, 0.725858, 0.172914,
		-0.621661, 0.667731, -0.409478,
		33.843884, 38.897137, 46.275093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894447, 38.594013, 47.004654>,  <34.279045, 38.429722, 46.561729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894447, 38.594013, 47.004654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134140, 38.481884, 47.304611>,  <35.277954, 38.414608, 47.484589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134140, 38.481884, 47.304611>,  <34.894447, 38.594013, 47.004654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134140, 38.481884, 47.304611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571204, -0.506608, -0.645813,
		0.560938, 0.815334, -0.143454,
		0.599228, -0.280319, 0.749898,
		35.313908, 38.397789, 47.529579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522285, 38.745827, 46.704403>,  <34.894447, 38.594013, 47.004654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522285, 38.745827, 46.704403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577103, 38.485092, 47.002754>,  <35.609993, 38.328651, 47.181767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577103, 38.485092, 47.002754>,  <35.522285, 38.745827, 46.704403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577103, 38.485092, 47.002754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432703, -0.637950, -0.637015,
		0.891060, 0.410040, 0.194625,
		0.137040, -0.651833, 0.745878,
		35.618214, 38.289543, 47.226517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135601, 38.575359, 46.620853>,  <35.522285, 38.745827, 46.704403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.135601, 38.575359, 46.620853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.969288, 38.270714, 46.819675>,  <35.869499, 38.087925, 46.938969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.969288, 38.270714, 46.819675>,  <36.135601, 38.575359, 46.620853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969288, 38.270714, 46.819675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416485, -0.645312, -0.640400,
		0.808494, -0.059254, 0.585514,
		-0.415786, -0.761617, 0.497053,
		35.844551, 38.042229, 46.968792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643967, 38.042976, 46.707306>,  <36.135601, 38.575359, 46.620853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643967, 38.042976, 46.707306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.305698, 37.848591, 46.795563>,  <36.102737, 37.731960, 46.848515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.305698, 37.848591, 46.795563>,  <36.643967, 38.042976, 46.707306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305698, 37.848591, 46.795563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298531, -0.773399, -0.559226,
		0.442407, -0.407052, 0.799115,
		-0.845669, -0.485966, 0.220639,
		36.051998, 37.702801, 46.861755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915798, 37.466885, 46.987648>,  <36.643967, 38.042976, 46.707306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915798, 37.466885, 46.987648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540215, 37.416019, 46.859787>,  <36.314865, 37.385498, 46.783070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540215, 37.416019, 46.859787>,  <36.915798, 37.466885, 46.987648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540215, 37.416019, 46.859787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288666, -0.796689, -0.530998,
		-0.187140, -0.590860, 0.784770,
		-0.938963, -0.127165, -0.319653,
		36.258526, 37.377869, 46.763889>
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
