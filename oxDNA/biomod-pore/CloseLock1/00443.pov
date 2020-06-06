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
	<23.950737, 34.714821, 34.958721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.321745, 34.837551, 34.873333>,  <24.544350, 34.911190, 34.822098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.321745, 34.837551, 34.873333>,  <23.950737, 34.714821, 34.958721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.321745, 34.837551, 34.873333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285292, -0.212127, 0.934671,
		0.241494, -0.927827, -0.284286,
		0.927518, 0.306822, -0.213474,
		24.600000, 34.929596, 34.809292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.535990, 34.379513, 34.630543>,  <23.950737, 34.714821, 34.958721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.535990, 34.379513, 34.630543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.481596, 33.990112, 34.704086>,  <24.448959, 33.756474, 34.748215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.481596, 33.990112, 34.704086>,  <24.535990, 34.379513, 34.630543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.481596, 33.990112, 34.704086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406116, -0.224052, -0.885929,
		0.903647, -0.045802, 0.425821,
		-0.135983, -0.973500, 0.183863,
		24.440802, 33.698063, 34.759247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.225491, 33.950954, 34.453884>,  <24.535990, 34.379513, 34.630543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.225491, 33.950954, 34.453884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.861942, 33.789562, 34.411621>,  <24.643814, 33.692726, 34.386265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.861942, 33.789562, 34.411621>,  <25.225491, 33.950954, 34.453884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.861942, 33.789562, 34.411621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245760, -0.313401, -0.917269,
		0.336986, -0.859642, 0.383999,
		-0.908869, -0.403479, -0.105654,
		24.589281, 33.668518, 34.379925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.310274, 33.225452, 34.244240>,  <25.225491, 33.950954, 34.453884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.310274, 33.225452, 34.244240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.016279, 33.445114, 34.085129>,  <24.839882, 33.576912, 33.989662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.016279, 33.445114, 34.085129>,  <25.310274, 33.225452, 34.244240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.016279, 33.445114, 34.085129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268078, -0.303499, -0.914342,
		-0.622838, -0.778665, 0.075852,
		-0.734987, 0.549153, -0.397774,
		24.795782, 33.609859, 33.965797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.807426, 32.790375, 33.825195>,  <25.310274, 33.225452, 34.244240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.807426, 32.790375, 33.825195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.819111, 33.172806, 33.708534>,  <24.826122, 33.402264, 33.638538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.819111, 33.172806, 33.708534>,  <24.807426, 32.790375, 33.825195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.819111, 33.172806, 33.708534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332129, -0.284481, -0.899311,
		-0.942782, -0.070593, -0.325852,
		0.029213, 0.956079, -0.291650,
		24.827875, 33.459629, 33.621040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.310131, 33.089561, 33.404934>,  <24.807426, 32.790375, 33.825195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.310131, 33.089561, 33.404934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.688869, 33.203682, 33.345486>,  <24.916113, 33.272156, 33.309814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.688869, 33.203682, 33.345486>,  <24.310131, 33.089561, 33.404934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.688869, 33.203682, 33.345486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020935, -0.515676, -0.856528,
		-0.321009, 0.807888, -0.494238,
		0.946845, 0.285300, -0.148623,
		24.972923, 33.289272, 33.300900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.389742, 33.368690, 32.702625>,  <24.310131, 33.089561, 33.404934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.389742, 33.368690, 32.702625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.754456, 33.236637, 32.800327>,  <24.973284, 33.157406, 32.858948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.754456, 33.236637, 32.800327>,  <24.389742, 33.368690, 32.702625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.754456, 33.236637, 32.800327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003352, -0.600732, -0.799443,
		0.410658, 0.728101, -0.548844,
		0.911783, -0.330137, 0.244255,
		25.027990, 33.137596, 32.873604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.810398, 33.312099, 32.134987>,  <24.389742, 33.368690, 32.702625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.810398, 33.312099, 32.134987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.031075, 33.067345, 32.361698>,  <25.163481, 32.920494, 32.497723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.031075, 33.067345, 32.361698>,  <24.810398, 33.312099, 32.134987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.031075, 33.067345, 32.361698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086453, -0.633934, -0.768540,
		0.829556, 0.472995, -0.296836,
		0.551690, -0.611884, 0.566776,
		25.196581, 32.883778, 32.531731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.352875, 32.926785, 31.703033>,  <24.810398, 33.312099, 32.134987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.352875, 32.926785, 31.703033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.343163, 32.697140, 32.030399>,  <25.337336, 32.559353, 32.226818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.343163, 32.697140, 32.030399>,  <25.352875, 32.926785, 31.703033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.343163, 32.697140, 32.030399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102622, -0.815762, -0.569211,
		0.994424, 0.070167, 0.078724,
		-0.024280, -0.574116, 0.818414,
		25.335878, 32.524906, 32.275925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.914104, 32.531120, 31.678997>,  <25.352875, 32.926785, 31.703033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.914104, 32.531120, 31.678997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.627245, 32.337940, 31.879978>,  <25.455130, 32.222034, 32.000568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.627245, 32.337940, 31.879978>,  <25.914104, 32.531120, 31.678997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.627245, 32.337940, 31.879978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043972, -0.750882, -0.658971,
		0.695531, -0.450486, 0.559730,
		-0.717149, -0.482947, 0.502453,
		25.412100, 32.193054, 32.030716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.177073, 31.984983, 32.045372>,  <25.914104, 32.531120, 31.678997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.177073, 31.984983, 32.045372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.789125, 31.902719, 31.993128>,  <25.556356, 31.853361, 31.961782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.789125, 31.902719, 31.993128>,  <26.177073, 31.984983, 32.045372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.789125, 31.902719, 31.993128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243036, -0.779418, -0.577443,
		0.016957, -0.591787, 0.805916,
		-0.969869, -0.205658, -0.130609,
		25.498165, 31.841022, 31.953945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.104195, 31.296894, 32.065819>,  <26.177073, 31.984983, 32.045372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.104195, 31.296894, 32.065819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.743902, 31.385668, 31.916458>,  <25.527727, 31.438932, 31.826841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.743902, 31.385668, 31.916458>,  <26.104195, 31.296894, 32.065819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.743902, 31.385668, 31.916458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053636, -0.796225, -0.602619,
		-0.431053, -0.562825, 0.705281,
		-0.900731, 0.221932, -0.373402,
		25.473682, 31.452248, 31.804438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.763134, 30.709307, 32.163616>,  <26.104195, 31.296894, 32.065819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.763134, 30.709307, 32.163616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.582365, 30.876875, 31.848587>,  <25.473904, 30.977417, 31.659569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.582365, 30.876875, 31.848587>,  <25.763134, 30.709307, 32.163616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.582365, 30.876875, 31.848587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144292, -0.836918, -0.527966,
		-0.880312, -0.352239, 0.317773,
		-0.451920, 0.418923, -0.787574,
		25.446789, 31.002552, 31.612314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.324375, 30.183849, 31.854004>,  <25.763134, 30.709307, 32.163616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.324375, 30.183849, 31.854004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.358450, 30.471107, 31.577740>,  <25.378895, 30.643463, 31.411982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.358450, 30.471107, 31.577740>,  <25.324375, 30.183849, 31.854004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.358450, 30.471107, 31.577740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060856, -0.695636, -0.715812,
		-0.994505, 0.018947, -0.102962,
		0.085186, 0.718145, -0.690660,
		25.384007, 30.686550, 31.370543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.773703, 30.055634, 31.419090>,  <25.324375, 30.183849, 31.854004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.773703, 30.055634, 31.419090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.047922, 30.273115, 31.225428>,  <25.212454, 30.403605, 31.109230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.047922, 30.273115, 31.225428>,  <24.773703, 30.055634, 31.419090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.047922, 30.273115, 31.225428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065411, -0.708339, -0.702835,
		-0.725082, 0.450158, -0.521165,
		0.685549, 0.543703, -0.484159,
		25.253586, 30.436226, 31.080179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.518162, 30.075493, 30.708603>,  <24.773703, 30.055634, 31.419090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.518162, 30.075493, 30.708603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.904568, 30.177639, 30.692585>,  <25.136412, 30.238928, 30.682974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.904568, 30.177639, 30.692585>,  <24.518162, 30.075493, 30.708603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.904568, 30.177639, 30.692585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109504, -0.544621, -0.831503,
		-0.234147, 0.798859, -0.554075,
		0.966014, 0.255368, -0.040043,
		25.194372, 30.254250, 30.680573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.715929, 30.188467, 29.888340>,  <24.518162, 30.075493, 30.708603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.715929, 30.188467, 29.888340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.044947, 30.111097, 30.102261>,  <25.242357, 30.064676, 30.230612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.044947, 30.111097, 30.102261>,  <24.715929, 30.188467, 29.888340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.044947, 30.111097, 30.102261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366053, -0.539615, -0.758169,
		0.435234, 0.819392, -0.373053,
		0.822542, -0.193424, 0.534800,
		25.291710, 30.053070, 30.262701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.206331, 30.089325, 29.314341>,  <24.715929, 30.188467, 29.888340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.206331, 30.089325, 29.314341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.356306, 29.930931, 29.649630>,  <25.446291, 29.835896, 29.850803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.356306, 29.930931, 29.649630>,  <25.206331, 30.089325, 29.314341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.356306, 29.930931, 29.649630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524086, -0.655295, -0.543988,
		0.764695, 0.643262, -0.038164,
		0.374935, -0.395984, 0.838225,
		25.468786, 29.812136, 29.901096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.016581, 30.136982, 29.316488>,  <25.206331, 30.089325, 29.314341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.016581, 30.136982, 29.316488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.910082, 29.840849, 29.563395>,  <25.846182, 29.663170, 29.711538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.910082, 29.840849, 29.563395>,  <26.016581, 30.136982, 29.316488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.910082, 29.840849, 29.563395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523917, -0.648677, -0.552022,
		0.809088, 0.176422, 0.560582,
		-0.266248, -0.740333, 0.617267,
		25.830208, 29.618750, 29.748575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.532591, 29.749990, 29.228931>,  <26.016581, 30.136982, 29.316488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.532591, 29.749990, 29.228931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.297573, 29.481136, 29.409164>,  <26.156563, 29.319824, 29.517305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.297573, 29.481136, 29.409164>,  <26.532591, 29.749990, 29.228931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.297573, 29.481136, 29.409164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376615, -0.719987, -0.582907,
		0.716206, -0.172788, 0.676161,
		-0.587546, -0.672133, 0.450584,
		26.121309, 29.279497, 29.544340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.976194, 29.176777, 29.402840>,  <26.532591, 29.749990, 29.228931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.976194, 29.176777, 29.402840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.601568, 29.036770, 29.410128>,  <26.376793, 28.952766, 29.414501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.601568, 29.036770, 29.410128>,  <26.976194, 29.176777, 29.402840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.601568, 29.036770, 29.410128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287653, -0.797314, -0.530609,
		0.200251, -0.491709, 0.847421,
		-0.936566, -0.350018, 0.018221,
		26.320599, 28.931765, 29.415594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.982254, 28.483122, 29.685287>,  <26.976194, 29.176777, 29.402840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.982254, 28.483122, 29.685287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.649498, 28.506886, 29.464588>,  <26.449844, 28.521143, 29.332169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.649498, 28.506886, 29.464588>,  <26.982254, 28.483122, 29.685287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.649498, 28.506886, 29.464588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282816, -0.810059, -0.513634,
		-0.477462, -0.583331, 0.657080,
		-0.831892, 0.059408, -0.551748,
		26.399931, 28.524708, 29.299065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.786213, 27.857222, 29.517464>,  <26.982254, 28.483122, 29.685287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.786213, 27.857222, 29.517464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.594263, 28.064329, 29.234159>,  <26.479094, 28.188593, 29.064177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.594263, 28.064329, 29.234159>,  <26.786213, 27.857222, 29.517464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.594263, 28.064329, 29.234159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256108, -0.689454, -0.677541,
		-0.839123, -0.506528, 0.198248,
		-0.479876, 0.517767, -0.708262,
		26.450300, 28.219660, 29.021681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.408489, 27.376137, 29.211863>,  <26.786213, 27.857222, 29.517464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.408489, 27.376137, 29.211863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.411806, 27.668299, 28.938677>,  <26.413795, 27.843596, 28.774765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.411806, 27.668299, 28.938677>,  <26.408489, 27.376137, 29.211863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.411806, 27.668299, 28.938677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164432, -0.674685, -0.719557,
		-0.986354, -0.106335, -0.125696,
		0.008291, 0.730406, -0.682963,
		26.414293, 27.887421, 28.733788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.897600, 27.221209, 28.706377>,  <26.408489, 27.376137, 29.211863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.897600, 27.221209, 28.706377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.169598, 27.439022, 28.509972>,  <26.332796, 27.569710, 28.392128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.169598, 27.439022, 28.509972>,  <25.897600, 27.221209, 28.706377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.169598, 27.439022, 28.509972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066430, -0.712665, -0.698353,
		-0.730204, 0.442257, -0.520780,
		0.679992, 0.544535, -0.491012,
		26.373596, 27.602383, 28.362669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.759418, 27.106806, 27.931566>,  <25.897600, 27.221209, 28.706377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.759418, 27.106806, 27.931566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.138784, 27.229042, 27.965336>,  <26.366404, 27.302383, 27.985598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.138784, 27.229042, 27.965336>,  <25.759418, 27.106806, 27.931566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.138784, 27.229042, 27.965336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248154, -0.549813, -0.797574,
		-0.197313, 0.777380, -0.597284,
		0.948413, 0.305591, 0.084425,
		26.423307, 27.320719, 27.990664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.927114, 27.229820, 27.255548>,  <25.759418, 27.106806, 27.931566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.927114, 27.229820, 27.255548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.262442, 27.157001, 27.461103>,  <26.463638, 27.113310, 27.584436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.262442, 27.157001, 27.461103>,  <25.927114, 27.229820, 27.255548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.262442, 27.157001, 27.461103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252278, -0.706074, -0.661676,
		0.483298, 0.684338, -0.545989,
		0.838319, -0.182046, 0.513888,
		26.513937, 27.102388, 27.615271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.484684, 27.351662, 26.776442>,  <25.927114, 27.229820, 27.255548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.484684, 27.351662, 26.776442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.581545, 27.100903, 27.072647>,  <26.639662, 26.950447, 27.250370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.581545, 27.100903, 27.072647>,  <26.484684, 27.351662, 26.776442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.581545, 27.100903, 27.072647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185104, -0.719362, -0.669519,
		0.952418, 0.299197, -0.058152,
		0.242150, -0.626897, 0.740515,
		26.654190, 26.912834, 27.294802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.928928, 27.912722, 26.792805>,  <26.484684, 27.351662, 26.776442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.928928, 27.912722, 26.792805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.892435, 27.693266, 26.460379>,  <25.870539, 27.561592, 26.260923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.892435, 27.693266, 26.460379>,  <25.928928, 27.912722, 26.792805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.892435, 27.693266, 26.460379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068744, 0.836024, -0.544368,
		0.993454, 0.007468, -0.113987,
		-0.091231, -0.548641, -0.831065,
		25.865067, 27.528673, 26.211060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.485598, 28.006227, 26.209152>,  <25.928928, 27.912722, 26.792805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.485598, 28.006227, 26.209152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.127647, 27.907848, 26.060181>,  <25.912876, 27.848822, 25.970797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.127647, 27.907848, 26.060181>,  <26.485598, 28.006227, 26.209152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.127647, 27.907848, 26.060181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012307, 0.847744, -0.530263,
		0.446142, -0.469937, -0.761654,
		-0.894878, -0.245946, -0.372430,
		25.859184, 27.834064, 25.948452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.497013, 28.118084, 25.472395>,  <26.485598, 28.006227, 26.209152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.497013, 28.118084, 25.472395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.111092, 28.154064, 25.571238>,  <25.879538, 28.175652, 25.630543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.111092, 28.154064, 25.571238>,  <26.497013, 28.118084, 25.472395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.111092, 28.154064, 25.571238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059169, 0.841328, -0.537277,
		-0.256224, -0.532989, -0.806395,
		-0.964805, 0.089950, 0.247105,
		25.821650, 28.181049, 25.645369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.260557, 28.464775, 24.959915>,  <26.497013, 28.118084, 25.472395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.260557, 28.464775, 24.959915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.990999, 28.524694, 25.249308>,  <25.829264, 28.560646, 25.422943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.990999, 28.524694, 25.249308>,  <26.260557, 28.464775, 24.959915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.990999, 28.524694, 25.249308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157131, 0.927769, -0.338460,
		-0.721925, -0.341768, -0.601680,
		-0.673894, 0.149800, 0.723482,
		25.788832, 28.569635, 25.466352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.680004, 28.733835, 24.487318>,  <26.260557, 28.464775, 24.959915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.680004, 28.733835, 24.487318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.726200, 28.876402, 24.858183>,  <25.753918, 28.961941, 25.080702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.726200, 28.876402, 24.858183>,  <25.680004, 28.733835, 24.487318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.726200, 28.876402, 24.858183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003963, 0.933236, -0.359243,
		-0.993300, 0.045164, 0.106368,
		0.115491, 0.356415, 0.927162,
		25.760847, 28.983326, 25.136332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.528996, 29.482601, 24.533768>,  <25.680004, 28.733835, 24.487318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.528996, 29.482601, 24.533768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.295380, 29.497755, 24.858105>,  <25.155210, 29.506847, 25.052706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.295380, 29.497755, 24.858105>,  <25.528996, 29.482601, 24.533768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.295380, 29.497755, 24.858105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661241, -0.601579, -0.448178,
		0.470806, -0.797915, 0.376395,
		-0.584039, 0.037883, 0.810841,
		25.120169, 29.509121, 25.101357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.085291, 29.837193, 24.762400>,  <25.528996, 29.482601, 24.533768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.085291, 29.837193, 24.762400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.101391, 30.235317, 24.727228>,  <26.111052, 30.474192, 24.706125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.101391, 30.235317, 24.727228>,  <26.085291, 29.837193, 24.762400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.101391, 30.235317, 24.727228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738791, 0.029601, 0.673285,
		0.672732, -0.092060, -0.734137,
		0.040251, 0.995313, -0.087927,
		26.113466, 30.533911, 24.700850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.768450, 30.021572, 24.717882>,  <26.085291, 29.837193, 24.762400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.768450, 30.021572, 24.717882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.564688, 30.319374, 24.890495>,  <26.442430, 30.498055, 24.994062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.564688, 30.319374, 24.890495>,  <26.768450, 30.021572, 24.717882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.564688, 30.319374, 24.890495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714816, 0.086897, 0.693893,
		0.479108, 0.661938, -0.576449,
		-0.509406, 0.744504, 0.431531,
		26.411865, 30.542725, 25.019955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.299412, 30.503717, 24.984709>,  <26.768450, 30.021572, 24.717882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.299412, 30.503717, 24.984709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.976171, 30.600222, 25.199657>,  <26.782228, 30.658125, 25.328627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.976171, 30.600222, 25.199657>,  <27.299412, 30.503717, 24.984709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.976171, 30.600222, 25.199657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578840, 0.156164, 0.800348,
		0.109176, 0.957813, -0.265849,
		-0.808100, 0.241263, 0.537371,
		26.733742, 30.672600, 25.360868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.569849, 31.044804, 25.457949>,  <27.299412, 30.503717, 24.984709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.569849, 31.044804, 25.457949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.227341, 30.923454, 25.625168>,  <27.021835, 30.850645, 25.725500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.227341, 30.923454, 25.625168>,  <27.569849, 31.044804, 25.457949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.227341, 30.923454, 25.625168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407345, 0.101031, 0.907669,
		-0.317600, 0.947500, 0.037068,
		-0.856271, -0.303375, 0.418047,
		26.970459, 30.832441, 25.750582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.453344, 31.526344, 26.006311>,  <27.569849, 31.044804, 25.457949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.453344, 31.526344, 26.006311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.210838, 31.221249, 26.096350>,  <27.065334, 31.038191, 26.150373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.210838, 31.221249, 26.096350>,  <27.453344, 31.526344, 26.006311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.210838, 31.221249, 26.096350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179483, 0.144511, 0.973089,
		-0.774743, 0.630352, 0.049286,
		-0.606267, -0.762740, 0.225096,
		27.028959, 30.992426, 26.163879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.982107, 31.686016, 26.569183>,  <27.453344, 31.526344, 26.006311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.982107, 31.686016, 26.569183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.028475, 31.288877, 26.557741>,  <27.056295, 31.050594, 26.550875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.028475, 31.288877, 26.557741>,  <26.982107, 31.686016, 26.569183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.028475, 31.288877, 26.557741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084996, -0.038612, 0.995633,
		-0.989615, -0.112982, -0.088864,
		0.115920, -0.992846, -0.028608,
		27.063251, 30.991024, 26.549158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.791048, 31.524984, 27.148361>,  <26.982107, 31.686016, 26.569183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.791048, 31.524984, 27.148361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.963896, 31.171499, 27.076447>,  <27.067604, 30.959408, 27.033298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.963896, 31.171499, 27.076447>,  <26.791048, 31.524984, 27.148361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.963896, 31.171499, 27.076447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131771, -0.135346, 0.981997,
		-0.892137, -0.448030, 0.057962,
		0.432119, -0.883714, -0.179785,
		27.093533, 30.906385, 27.022511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.564035, 31.069551, 27.690773>,  <26.791048, 31.524984, 27.148361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.564035, 31.069551, 27.690773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.900440, 30.913225, 27.541126>,  <27.102283, 30.819429, 27.451338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.900440, 30.913225, 27.541126>,  <26.564035, 31.069551, 27.690773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.900440, 30.913225, 27.541126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367370, -0.095106, 0.925199,
		-0.397164, -0.915542, 0.063589,
		0.841011, -0.390816, -0.374116,
		27.152744, 30.795980, 27.428892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.693445, 30.547421, 28.127726>,  <26.564035, 31.069551, 27.690773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.693445, 30.547421, 28.127726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.047964, 30.620066, 27.957317>,  <27.260675, 30.663652, 27.855072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.047964, 30.620066, 27.957317>,  <26.693445, 30.547421, 28.127726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.047964, 30.620066, 27.957317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429569, 0.021347, 0.902782,
		0.173050, -0.983139, -0.059095,
		0.886298, 0.181611, -0.426020,
		27.313854, 30.674549, 27.829512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.185785, 30.104433, 28.417934>,  <26.693445, 30.547421, 28.127726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.185785, 30.104433, 28.417934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.405468, 30.411167, 28.285067>,  <27.537277, 30.595207, 28.205345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.405468, 30.411167, 28.285067>,  <27.185785, 30.104433, 28.417934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.405468, 30.411167, 28.285067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441676, 0.071079, 0.894354,
		0.709433, -0.637895, -0.299656,
		0.549205, 0.766836, -0.332169,
		27.570230, 30.641218, 28.185415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.812420, 29.915415, 28.710260>,  <27.185785, 30.104433, 28.417934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.812420, 29.915415, 28.710260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.836300, 30.306137, 28.628008>,  <27.850628, 30.540571, 28.578657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.836300, 30.306137, 28.628008>,  <27.812420, 29.915415, 28.710260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.836300, 30.306137, 28.628008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363440, 0.170588, 0.915866,
		0.929703, -0.129412, -0.344827,
		0.059700, 0.976807, -0.205629,
		27.854210, 30.599178, 28.566319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.461552, 30.104622, 28.967842>,  <27.812420, 29.915415, 28.710260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.461552, 30.104622, 28.967842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.242966, 30.437542, 28.930639>,  <28.111814, 30.637295, 28.908318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.242966, 30.437542, 28.930639>,  <28.461552, 30.104622, 28.967842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.242966, 30.437542, 28.930639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373616, 0.341671, 0.862364,
		0.749524, 0.436505, -0.497672,
		-0.546466, 0.832301, -0.093005,
		28.079025, 30.687233, 28.902739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.885687, 30.736046, 29.180141>,  <28.461552, 30.104622, 28.967842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.885687, 30.736046, 29.180141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.505924, 30.851835, 29.228859>,  <28.278067, 30.921309, 29.258089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.505924, 30.851835, 29.228859>,  <28.885687, 30.736046, 29.180141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.505924, 30.851835, 29.228859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239892, 0.418173, 0.876118,
		0.202681, 0.861009, -0.466459,
		-0.949406, 0.289472, 0.121793,
		28.221102, 30.938677, 29.265396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.985954, 31.276203, 29.667912>,  <28.885687, 30.736046, 29.180141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.985954, 31.276203, 29.667912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.586241, 31.268532, 29.680979>,  <28.346413, 31.263929, 29.688820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.586241, 31.268532, 29.680979>,  <28.985954, 31.276203, 29.667912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.586241, 31.268532, 29.680979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016102, 0.565563, 0.824548,
		-0.034288, 0.824482, -0.564848,
		-0.999282, -0.019177, 0.032668,
		28.286455, 31.262779, 29.690779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.734894, 31.955711, 29.727303>,  <28.985954, 31.276203, 29.667912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.734894, 31.955711, 29.727303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.459003, 31.715866, 29.889656>,  <28.293468, 31.571959, 29.987068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.459003, 31.715866, 29.889656>,  <28.734894, 31.955711, 29.727303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.459003, 31.715866, 29.889656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017142, 0.573924, 0.818729,
		-0.723868, 0.557741, -0.406128,
		-0.689725, -0.599614, 0.405885,
		28.252087, 31.535982, 30.011421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.402273, 32.411392, 30.079552>,  <28.734894, 31.955711, 29.727303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.402273, 32.411392, 30.079552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.237261, 32.083145, 30.237747>,  <28.138254, 31.886198, 30.332664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.237261, 32.083145, 30.237747>,  <28.402273, 32.411392, 30.079552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.237261, 32.083145, 30.237747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178032, 0.498407, 0.848467,
		-0.893378, 0.279608, -0.351703,
		-0.412530, -0.820616, 0.395487,
		28.113503, 31.836960, 30.356394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.755442, 32.676979, 30.451445>,  <28.402273, 32.411392, 30.079552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.755442, 32.676979, 30.451445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.859831, 32.325924, 30.612263>,  <27.922464, 32.115292, 30.708754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.859831, 32.325924, 30.612263>,  <27.755442, 32.676979, 30.451445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.859831, 32.325924, 30.612263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278621, 0.330273, 0.901826,
		-0.924264, -0.347368, -0.158338,
		0.260971, -0.877642, 0.402044,
		27.938122, 32.062630, 30.732876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.144035, 32.442608, 30.961529>,  <27.755442, 32.676979, 30.451445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.144035, 32.442608, 30.961529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.483353, 32.259483, 31.067965>,  <27.686943, 32.149609, 31.131826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.483353, 32.259483, 31.067965>,  <27.144035, 32.442608, 30.961529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.483353, 32.259483, 31.067965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130706, 0.305926, 0.943040,
		-0.513142, -0.834754, 0.199676,
		0.848293, -0.457815, 0.266091,
		27.737841, 32.122139, 31.147791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.921104, 32.154270, 31.509769>,  <27.144035, 32.442608, 30.961529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.921104, 32.154270, 31.509769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.320286, 32.144192, 31.533266>,  <27.559795, 32.138145, 31.547363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.320286, 32.144192, 31.533266>,  <26.921104, 32.154270, 31.509769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.320286, 32.144192, 31.533266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054372, 0.148517, 0.987414,
		-0.033604, -0.988589, 0.146843,
		0.997955, -0.025197, 0.058742,
		27.619673, 32.136635, 31.550888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.145916, 31.579659, 32.085854>,  <26.921104, 32.154270, 31.509769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.145916, 31.579659, 32.085854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.460678, 31.822866, 32.043724>,  <27.649534, 31.968792, 32.018444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.460678, 31.822866, 32.043724>,  <27.145916, 31.579659, 32.085854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.460678, 31.822866, 32.043724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018670, 0.147153, 0.988938,
		0.616794, -0.780164, 0.104443,
		0.786903, 0.608021, -0.105328,
		27.696749, 32.005272, 32.012127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.600044, 31.288862, 32.635403>,  <27.145916, 31.579659, 32.085854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.600044, 31.288862, 32.635403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.688265, 31.662964, 32.524654>,  <27.741198, 31.887424, 32.458206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.688265, 31.662964, 32.524654>,  <27.600044, 31.288862, 32.635403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.688265, 31.662964, 32.524654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038638, 0.275263, 0.960592,
		0.974610, -0.222557, 0.024573,
		0.220550, 0.935253, -0.276873,
		27.754431, 31.943541, 32.441593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.156633, 31.466606, 33.059044>,  <27.600044, 31.288862, 32.635403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.156633, 31.466606, 33.059044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.988281, 31.809843, 32.941376>,  <27.887270, 32.015785, 32.870773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.988281, 31.809843, 32.941376>,  <28.156633, 31.466606, 33.059044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.988281, 31.809843, 32.941376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138682, 0.381350, 0.913969,
		0.896452, 0.343877, -0.279505,
		-0.420882, 0.858092, -0.294173,
		27.862017, 32.067272, 32.853123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.454306, 31.879261, 33.484955>,  <28.156633, 31.466606, 33.059044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.454306, 31.879261, 33.484955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.175592, 32.121620, 33.331390>,  <28.008366, 32.267036, 33.239254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.175592, 32.121620, 33.331390>,  <28.454306, 31.879261, 33.484955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.175592, 32.121620, 33.331390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032091, 0.508355, 0.860550,
		0.716565, 0.611935, -0.334769,
		-0.696782, 0.605896, -0.383907,
		27.966558, 32.303391, 33.216217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.726183, 32.571281, 33.420185>,  <28.454306, 31.879261, 33.484955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.726183, 32.571281, 33.420185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.336164, 32.530140, 33.498882>,  <28.102154, 32.505455, 33.546101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.336164, 32.530140, 33.498882>,  <28.726183, 32.571281, 33.420185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.336164, 32.530140, 33.498882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102533, 0.577408, 0.809992,
		-0.196912, 0.809952, -0.552453,
		-0.975045, -0.102853, 0.196746,
		28.043652, 32.499283, 33.557907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.985571, 32.362865, 32.738468>,  <28.726183, 32.571281, 33.420185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.985571, 32.362865, 32.738468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.279819, 32.619808, 32.652451>,  <29.456367, 32.773972, 32.600842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.279819, 32.619808, 32.652451>,  <28.985571, 32.362865, 32.738468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.279819, 32.619808, 32.652451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236700, 0.053691, 0.970098,
		0.634693, -0.764524, -0.112549,
		0.735620, 0.642355, -0.215041,
		29.500505, 32.812515, 32.587940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.493008, 32.105247, 33.139160>,  <28.985571, 32.362865, 32.738468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.493008, 32.105247, 33.139160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.537537, 32.490284, 33.040344>,  <29.564255, 32.721306, 32.981052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.537537, 32.490284, 33.040344>,  <29.493008, 32.105247, 33.139160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.537537, 32.490284, 33.040344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092125, 0.237523, 0.967004,
		0.989505, -0.130408, -0.062237,
		0.111323, 0.962588, -0.247044,
		29.570934, 32.779060, 32.966232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.955976, 32.348160, 33.589073>,  <29.493008, 32.105247, 33.139160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.955976, 32.348160, 33.589073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.726746, 32.657085, 33.479443>,  <29.589207, 32.842442, 33.413662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.726746, 32.657085, 33.479443>,  <29.955976, 32.348160, 33.589073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.726746, 32.657085, 33.479443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067411, 0.377738, 0.923455,
		0.816723, 0.510737, -0.268536,
		-0.573079, 0.772309, -0.274079,
		29.554823, 32.888779, 33.397221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.327658, 32.846218, 33.807335>,  <29.955976, 32.348160, 33.589073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.327658, 32.846218, 33.807335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.954786, 32.973015, 33.737408>,  <29.731064, 33.049091, 33.695454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.954786, 32.973015, 33.737408>,  <30.327658, 32.846218, 33.807335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.954786, 32.973015, 33.737408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001195, 0.485614, 0.874172,
		0.361995, 0.814676, -0.453058,
		-0.932179, 0.316988, -0.174816,
		29.675133, 33.068111, 33.684963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.278467, 33.534954, 34.083691>,  <30.327658, 32.846218, 33.807335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.278467, 33.534954, 34.083691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.912104, 33.376411, 34.058346>,  <29.692286, 33.281288, 34.043137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.912104, 33.376411, 34.058346>,  <30.278467, 33.534954, 34.083691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.912104, 33.376411, 34.058346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243115, 0.422183, 0.873302,
		-0.319384, 0.815270, -0.483040,
		-0.915909, -0.396353, -0.063366,
		29.637331, 33.257507, 34.039337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.757896, 34.062046, 34.293697>,  <30.278467, 33.534954, 34.083691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.757896, 34.062046, 34.293697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.650072, 33.683853, 34.366802>,  <29.585377, 33.456936, 34.410664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.650072, 33.683853, 34.366802>,  <29.757896, 34.062046, 34.293697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.650072, 33.683853, 34.366802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234493, 0.248522, 0.939813,
		-0.933997, 0.210480, -0.288701,
		-0.269560, -0.945481, 0.182763,
		29.569204, 33.400208, 34.421631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.100842, 34.121174, 34.594723>,  <29.757896, 34.062046, 34.293697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.100842, 34.121174, 34.594723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.260605, 33.771297, 34.704552>,  <29.356462, 33.561371, 34.770451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.260605, 33.771297, 34.704552>,  <29.100842, 34.121174, 34.594723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.260605, 33.771297, 34.704552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295873, 0.160487, 0.941649,
		-0.867717, -0.457339, -0.194698,
		0.399406, -0.874691, 0.274571,
		29.380426, 33.508888, 34.786922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.551975, 33.821053, 34.982887>,  <29.100842, 34.121174, 34.594723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.551975, 33.821053, 34.982887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.877350, 33.634106, 35.121387>,  <29.072575, 33.521938, 35.204487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.877350, 33.634106, 35.121387>,  <28.551975, 33.821053, 34.982887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.877350, 33.634106, 35.121387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286384, 0.196312, 0.937788,
		-0.506263, -0.861992, 0.025841,
		0.813438, -0.467367, 0.346246,
		29.121382, 33.493896, 35.225262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.301023, 33.472473, 35.549065>,  <28.551975, 33.821053, 34.982887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.301023, 33.472473, 35.549065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.698267, 33.513824, 35.571144>,  <28.936613, 33.538635, 35.584393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.698267, 33.513824, 35.571144>,  <28.301023, 33.472473, 35.549065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.698267, 33.513824, 35.571144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082460, 0.281769, 0.955932,
		0.083266, -0.953897, 0.288352,
		0.993110, 0.103374, 0.055197,
		28.996201, 33.544838, 35.587704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.544230, 33.010155, 36.147648>,  <28.301023, 33.472473, 35.549065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.544230, 33.010155, 36.147648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.813625, 33.298264, 36.081177>,  <28.975264, 33.471130, 36.041294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.813625, 33.298264, 36.081177>,  <28.544230, 33.010155, 36.147648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.813625, 33.298264, 36.081177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043562, 0.185740, 0.981633,
		0.737911, -0.668360, 0.093718,
		0.673491, 0.720275, -0.166175,
		29.015673, 33.514347, 36.031322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.970446, 32.850109, 36.606964>,  <28.544230, 33.010155, 36.147648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.970446, 32.850109, 36.606964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.062321, 33.229485, 36.519600>,  <29.117445, 33.457111, 36.467182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.062321, 33.229485, 36.519600>,  <28.970446, 32.850109, 36.606964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.062321, 33.229485, 36.519600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208707, 0.171190, 0.962879,
		0.950624, -0.266743, -0.158626,
		0.229686, 0.948442, -0.218409,
		29.131226, 33.514019, 36.454079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.599051, 32.972157, 36.967876>,  <28.970446, 32.850109, 36.606964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.599051, 32.972157, 36.967876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.484211, 33.344036, 36.875584>,  <29.415308, 33.567165, 36.820210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.484211, 33.344036, 36.875584>,  <29.599051, 32.972157, 36.967876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.484211, 33.344036, 36.875584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358352, 0.327619, 0.874214,
		0.888346, 0.168303, -0.427218,
		-0.287097, 0.929699, -0.230727,
		29.398083, 33.622948, 36.806366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.258047, 33.382275, 36.946880>,  <29.599051, 32.972157, 36.967876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.258047, 33.382275, 36.946880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.949411, 33.631969, 36.995838>,  <29.764231, 33.781784, 37.025215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.949411, 33.631969, 36.995838>,  <30.258047, 33.382275, 36.946880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.949411, 33.631969, 36.995838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477992, 0.441991, 0.759057,
		0.419730, 0.644186, -0.639414,
		-0.771589, 0.624234, 0.122399,
		29.717934, 33.819241, 37.032558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568354, 34.049614, 37.089161>,  <30.258047, 33.382275, 36.946880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568354, 34.049614, 37.089161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.191866, 34.065033, 37.223396>,  <29.965973, 34.074284, 37.303936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.191866, 34.065033, 37.223396>,  <30.568354, 34.049614, 37.089161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.191866, 34.065033, 37.223396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312583, 0.475993, 0.822023,
		-0.128049, 0.878604, -0.460064,
		-0.941220, 0.038549, 0.335587,
		29.909500, 34.076599, 37.324074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.548599, 34.703236, 37.385471>,  <30.568354, 34.049614, 37.089161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.548599, 34.703236, 37.385471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.279495, 34.463409, 37.558865>,  <30.118032, 34.319511, 37.662903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.279495, 34.463409, 37.558865>,  <30.548599, 34.703236, 37.385471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.279495, 34.463409, 37.558865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454955, 0.126789, 0.881442,
		-0.583447, 0.790216, 0.187479,
		-0.672760, -0.599569, 0.433487,
		30.077667, 34.283539, 37.688911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.579208, 34.963039, 38.063519>,  <30.548599, 34.703236, 37.385471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.579208, 34.963039, 38.063519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.374752, 34.620686, 38.095016>,  <30.252079, 34.415272, 38.113914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.374752, 34.620686, 38.095016>,  <30.579208, 34.963039, 38.063519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.374752, 34.620686, 38.095016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396477, -0.153507, 0.905120,
		-0.762590, 0.493861, 0.417802,
		-0.511139, -0.855884, 0.078742,
		30.221411, 34.363922, 38.118641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.257275, 34.982021, 38.692036>,  <30.579208, 34.963039, 38.063519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.257275, 34.982021, 38.692036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.230333, 34.588299, 38.626789>,  <30.214169, 34.352066, 38.587643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.230333, 34.588299, 38.626789>,  <30.257275, 34.982021, 38.692036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.230333, 34.588299, 38.626789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177284, -0.172688, 0.968891,
		-0.981852, 0.036340, 0.186132,
		-0.067352, -0.984306, -0.163112,
		30.210127, 34.293007, 38.577854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.972759, 34.870358, 39.273144>,  <30.257275, 34.982021, 38.692036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.972759, 34.870358, 39.273144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.100554, 34.518486, 39.132233>,  <30.177229, 34.307365, 39.047688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.100554, 34.518486, 39.132233>,  <29.972759, 34.870358, 39.273144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.100554, 34.518486, 39.132233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046543, -0.356744, 0.933042,
		-0.946448, -0.314488, -0.073031,
		0.319484, -0.879677, -0.352277,
		30.196400, 34.254581, 39.026550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.491104, 34.298134, 39.516567>,  <29.972759, 34.870358, 39.273144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.491104, 34.298134, 39.516567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.849241, 34.150745, 39.416492>,  <30.064123, 34.062313, 39.356445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.849241, 34.150745, 39.416492>,  <29.491104, 34.298134, 39.516567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.849241, 34.150745, 39.416492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006370, -0.551090, 0.834422,
		-0.445334, -0.748686, -0.491067,
		0.895342, -0.368468, -0.250189,
		30.117844, 34.040203, 39.341434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.488134, 33.639999, 39.701523>,  <29.491104, 34.298134, 39.516567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.488134, 33.639999, 39.701523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.878099, 33.723835, 39.671543>,  <30.112078, 33.774136, 39.653557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.878099, 33.723835, 39.671543>,  <29.488134, 33.639999, 39.701523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.878099, 33.723835, 39.671543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154416, -0.394335, 0.905900,
		0.160317, -0.894746, -0.416807,
		0.974912, 0.209593, -0.074944,
		30.170572, 33.786713, 39.649059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.946756, 32.941257, 39.600872>,  <29.488134, 33.639999, 39.701523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.946756, 32.941257, 39.600872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.128384, 33.241425, 39.792999>,  <30.237360, 33.421524, 39.908276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.128384, 33.241425, 39.792999>,  <29.946756, 32.941257, 39.600872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.128384, 33.241425, 39.792999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195967, -0.610008, 0.767780,
		0.869149, -0.254498, -0.424041,
		0.454067, 0.750414, 0.480315,
		30.264605, 33.466549, 39.937096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.560484, 32.636845, 39.777916>,  <29.946756, 32.941257, 39.600872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.560484, 32.636845, 39.777916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.529957, 32.954536, 40.019039>,  <30.511641, 33.145149, 40.163712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.529957, 32.954536, 40.019039>,  <30.560484, 32.636845, 39.777916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.529957, 32.954536, 40.019039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159423, -0.587075, 0.793680,
		0.984256, 0.156674, -0.081814,
		-0.076318, 0.794227, 0.602809,
		30.507061, 33.192806, 40.199883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.903160, 32.327934, 40.392933>,  <30.560484, 32.636845, 39.777916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.903160, 32.327934, 40.392933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.770983, 32.688381, 40.505215>,  <30.691677, 32.904648, 40.572586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.770983, 32.688381, 40.505215>,  <30.903160, 32.327934, 40.392933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.770983, 32.688381, 40.505215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237165, -0.208594, 0.948811,
		0.913543, 0.380102, -0.144785,
		-0.330443, 0.901117, 0.280706,
		30.671850, 32.958717, 40.589428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434586, 32.707905, 40.805000>,  <30.903160, 32.327934, 40.392933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.434586, 32.707905, 40.805000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.054981, 32.796791, 40.894444>,  <30.827219, 32.850124, 40.948109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.054981, 32.796791, 40.894444>,  <31.434586, 32.707905, 40.805000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.054981, 32.796791, 40.894444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163780, -0.258524, 0.952020,
		0.269366, 0.940098, 0.208946,
		-0.949009, 0.222220, 0.223607,
		30.770279, 32.863457, 40.961525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.493940, 33.057495, 41.475853>,  <31.434586, 32.707905, 40.805000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.493940, 33.057495, 41.475853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.107071, 32.969437, 41.425087>,  <30.874949, 32.916603, 41.394627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.107071, 32.969437, 41.425087>,  <31.493940, 33.057495, 41.475853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.107071, 32.969437, 41.425087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112530, -0.076769, 0.990678,
		-0.227836, 0.972442, 0.049476,
		-0.967175, -0.220144, -0.126920,
		30.816917, 32.903393, 41.387012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.206371, 33.355114, 42.010513>,  <31.493940, 33.057495, 41.475853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.206371, 33.355114, 42.010513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.911600, 33.107750, 41.901333>,  <30.734737, 32.959332, 41.835823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.911600, 33.107750, 41.901333>,  <31.206371, 33.355114, 42.010513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.911600, 33.107750, 41.901333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135658, -0.260277, 0.955957,
		-0.662220, 0.741498, 0.107912,
		-0.736927, -0.618415, -0.272950,
		30.690521, 32.922226, 41.819447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.571943, 33.477097, 42.461475>,  <31.206371, 33.355114, 42.010513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.571943, 33.477097, 42.461475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.505283, 33.107571, 42.323608>,  <30.465288, 32.885857, 42.240887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.505283, 33.107571, 42.323608>,  <30.571943, 33.477097, 42.461475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.505283, 33.107571, 42.323608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115156, -0.328930, 0.937307,
		-0.979269, 0.195892, -0.051567,
		-0.166649, -0.923813, -0.344669,
		30.455288, 32.830425, 42.220207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.083227, 33.221394, 42.885777>,  <30.571943, 33.477097, 42.461475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.083227, 33.221394, 42.885777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.242981, 32.892143, 42.724308>,  <30.338833, 32.694592, 42.627426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.242981, 32.892143, 42.724308>,  <30.083227, 33.221394, 42.885777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.242981, 32.892143, 42.724308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038473, -0.424880, 0.904432,
		-0.915977, -0.376744, -0.138021,
		0.399382, -0.823128, -0.403675,
		30.362795, 32.645206, 42.603207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.588284, 32.780106, 43.190842>,  <30.083227, 33.221394, 42.885777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.588284, 32.780106, 43.190842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.940870, 32.628551, 43.078083>,  <30.152422, 32.537621, 43.010429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.940870, 32.628551, 43.078083>,  <29.588284, 32.780106, 43.190842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.940870, 32.628551, 43.078083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119838, -0.397920, 0.909559,
		-0.456793, -0.835526, -0.305347,
		0.881464, -0.378888, -0.281895,
		30.205311, 32.514885, 42.993515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.514076, 31.995567, 43.402466>,  <29.588284, 32.780106, 43.190842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.514076, 31.995567, 43.402466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.898382, 32.089821, 43.343937>,  <30.128965, 32.146374, 43.308819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.898382, 32.089821, 43.343937>,  <29.514076, 31.995567, 43.402466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.898382, 32.089821, 43.343937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228415, -0.372871, 0.899330,
		0.157352, -0.897466, -0.412062,
		0.960764, 0.235632, -0.146323,
		30.186611, 32.160511, 43.300041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.890831, 31.473970, 43.741451>,  <29.514076, 31.995567, 43.402466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.890831, 31.473970, 43.741451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.188641, 31.737577, 43.698776>,  <30.367327, 31.895741, 43.673172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.188641, 31.737577, 43.698776>,  <29.890831, 31.473970, 43.741451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.188641, 31.737577, 43.698776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275074, -0.157221, 0.948481,
		0.608291, -0.735513, -0.298333,
		0.744524, 0.659016, -0.106684,
		30.411999, 31.935282, 43.666771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.366362, 31.223448, 44.268265>,  <29.890831, 31.473970, 43.741451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.366362, 31.223448, 44.268265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.493208, 31.592110, 44.178829>,  <30.569315, 31.813307, 44.125168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.493208, 31.592110, 44.178829>,  <30.366362, 31.223448, 44.268265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.493208, 31.592110, 44.178829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317243, 0.119088, 0.940837,
		0.893753, -0.369285, -0.254624,
		0.317115, 0.921654, -0.223589,
		30.588343, 31.868607, 44.111752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.049109, 31.210457, 44.396835>,  <30.366362, 31.223448, 44.268265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.049109, 31.210457, 44.396835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.899357, 31.579222, 44.436672>,  <30.809505, 31.800480, 44.460575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.899357, 31.579222, 44.436672>,  <31.049109, 31.210457, 44.396835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.899357, 31.579222, 44.436672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388085, 0.058237, 0.919782,
		0.842159, 0.382995, -0.379583,
		-0.374378, 0.921913, 0.099590,
		30.787043, 31.855795, 44.466549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599741, 31.731909, 44.456810>,  <31.049109, 31.210457, 44.396835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599741, 31.731909, 44.456810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.259163, 31.813108, 44.650234>,  <31.054815, 31.861828, 44.766289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.259163, 31.813108, 44.650234>,  <31.599741, 31.731909, 44.456810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.259163, 31.813108, 44.650234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458531, -0.159350, 0.874275,
		0.254532, 0.966126, 0.042597,
		-0.851448, 0.202999, 0.483558,
		31.003729, 31.874008, 44.795303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660946, 32.280560, 44.900963>,  <31.599741, 31.731909, 44.456810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660946, 32.280560, 44.900963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368715, 32.037212, 45.024994>,  <31.193377, 31.891205, 45.099415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368715, 32.037212, 45.024994>,  <31.660946, 32.280560, 44.900963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.368715, 32.037212, 45.024994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518561, -0.198874, 0.831591,
		-0.444243, 0.768337, 0.460767,
		-0.730577, -0.608364, 0.310082,
		31.149542, 31.854704, 45.118019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459681, 32.505135, 45.655609>,  <31.660946, 32.280560, 44.900963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459681, 32.505135, 45.655609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368143, 32.121502, 45.588924>,  <31.313221, 31.891323, 45.548912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368143, 32.121502, 45.588924>,  <31.459681, 32.505135, 45.655609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.368143, 32.121502, 45.588924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423829, -0.252336, 0.869882,
		-0.876356, 0.128410, 0.464232,
		-0.228844, -0.959081, -0.166713,
		31.299490, 31.833778, 45.538910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.207296, 32.191467, 46.303814>,  <31.459681, 32.505135, 45.655609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.207296, 32.191467, 46.303814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.310854, 31.866072, 46.095501>,  <31.372990, 31.670835, 45.970512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.310854, 31.866072, 46.095501>,  <31.207296, 32.191467, 46.303814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.310854, 31.866072, 46.095501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576107, -0.302713, 0.759254,
		-0.775290, -0.496591, 0.390285,
		0.258895, -0.813488, -0.520780,
		31.388523, 31.622025, 45.939266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998884, 31.561363, 46.735615>,  <31.207296, 32.191467, 46.303814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998884, 31.561363, 46.735615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.279257, 31.463881, 46.467495>,  <31.447481, 31.405392, 46.306622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.279257, 31.463881, 46.467495>,  <30.998884, 31.561363, 46.735615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.279257, 31.463881, 46.467495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531567, -0.448101, 0.718778,
		-0.475538, -0.860122, -0.184538,
		0.700929, -0.243712, -0.670301,
		31.489536, 31.390768, 46.266403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.104198, 30.799963, 46.782753>,  <30.998884, 31.561363, 46.735615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.104198, 30.799963, 46.782753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.450897, 30.915483, 46.620102>,  <31.658916, 30.984797, 46.522511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.450897, 30.915483, 46.620102>,  <31.104198, 30.799963, 46.782753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.450897, 30.915483, 46.620102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497775, -0.449963, 0.741453,
		0.031168, -0.845060, -0.533763,
		0.866746, 0.288804, -0.406625,
		31.710920, 31.002125, 46.498116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.553814, 30.327795, 47.125683>,  <31.104198, 30.799963, 46.782753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.553814, 30.327795, 47.125683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819857, 30.572996, 46.955105>,  <31.979483, 30.720118, 46.852757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819857, 30.572996, 46.955105>,  <31.553814, 30.327795, 47.125683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819857, 30.572996, 46.955105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740851, -0.470061, 0.479774,
		0.093647, -0.635035, -0.766786,
		0.665109, 0.613003, -0.426446,
		32.019390, 30.756897, 46.827171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090366, 29.932581, 46.784950>,  <31.553814, 30.327795, 47.125683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090366, 29.932581, 46.784950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262974, 30.280781, 46.879627>,  <32.366539, 30.489700, 46.936432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262974, 30.280781, 46.879627>,  <32.090366, 29.932581, 46.784950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262974, 30.280781, 46.879627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756327, -0.492120, 0.431030,
		0.491693, -0.006981, -0.870741,
		0.431518, 0.870499, 0.236692,
		32.392429, 30.541931, 46.950634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865051, 29.868584, 46.747498>,  <32.090366, 29.932581, 46.784950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.865051, 29.868584, 46.747498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.828289, 30.185059, 46.989349>,  <32.806232, 30.374943, 47.134460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.828289, 30.185059, 46.989349>,  <32.865051, 29.868584, 46.747498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.828289, 30.185059, 46.989349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785267, -0.315782, 0.532577,
		0.612299, 0.523740, -0.592272,
		-0.091903, 0.791188, 0.604628,
		32.800716, 30.422415, 47.170738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549030, 30.087334, 46.878101>,  <32.865051, 29.868584, 46.747498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549030, 30.087334, 46.878101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337791, 30.238331, 47.182369>,  <33.211048, 30.328930, 47.364929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337791, 30.238331, 47.182369>,  <33.549030, 30.087334, 46.878101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337791, 30.238331, 47.182369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679263, -0.349797, 0.645170,
		0.509628, 0.857403, -0.071693,
		-0.528093, 0.377495, 0.760668,
		33.179363, 30.351580, 47.410568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058155, 30.398653, 47.450634>,  <33.549030, 30.087334, 46.878101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058155, 30.398653, 47.450634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702435, 30.369886, 47.631287>,  <33.489002, 30.352627, 47.739677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702435, 30.369886, 47.631287>,  <34.058155, 30.398653, 47.450634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702435, 30.369886, 47.631287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444873, -0.364881, 0.817893,
		0.105971, 0.928272, 0.356483,
		-0.889302, -0.071917, 0.451631,
		33.435642, 30.348310, 47.766777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073132, 30.532095, 48.245998>,  <34.058155, 30.398653, 47.450634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073132, 30.532095, 48.245998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.722919, 30.339830, 48.265636>,  <33.512791, 30.224472, 48.277420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.722919, 30.339830, 48.265636>,  <34.073132, 30.532095, 48.245998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722919, 30.339830, 48.265636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266098, -0.394890, 0.879348,
		-0.403284, 0.782960, 0.473642,
		-0.875531, -0.480662, 0.049091,
		33.460258, 30.195631, 48.280365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751461, 30.756744, 48.917061>,  <34.073132, 30.532095, 48.245998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751461, 30.756744, 48.917061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596794, 30.403513, 48.810734>,  <33.503994, 30.191574, 48.746937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596794, 30.403513, 48.810734>,  <33.751461, 30.756744, 48.917061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596794, 30.403513, 48.810734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229833, -0.371418, 0.899570,
		-0.893121, 0.286740, 0.346575,
		-0.386667, -0.883079, -0.265819,
		33.480793, 30.138590, 48.730988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.795803, 30.499504, 49.568565>,  <33.751461, 30.756744, 48.917061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.795803, 30.499504, 49.568565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645306, 30.213619, 49.332726>,  <33.555008, 30.042089, 49.191219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645306, 30.213619, 49.332726>,  <33.795803, 30.499504, 49.568565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645306, 30.213619, 49.332726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118858, -0.668335, 0.734303,
		-0.918867, 0.206196, 0.336404,
		-0.376241, -0.714711, -0.589603,
		33.532433, 29.999207, 49.155846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413551, 30.113716, 49.912563>,  <33.795803, 30.499504, 49.568565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413551, 30.113716, 49.912563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.584793, 29.893803, 49.625656>,  <33.687538, 29.761854, 49.453514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.584793, 29.893803, 49.625656>,  <33.413551, 30.113716, 49.912563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584793, 29.893803, 49.625656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375249, -0.613880, 0.694507,
		-0.822142, -0.566472, -0.056497,
		0.428101, -0.549783, -0.717264,
		33.713223, 29.728868, 49.410477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372936, 29.420429, 50.167404>,  <33.413551, 30.113716, 49.912563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372936, 29.420429, 50.167404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652031, 29.434877, 49.881229>,  <33.819489, 29.443546, 49.709522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652031, 29.434877, 49.881229>,  <33.372936, 29.420429, 50.167404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652031, 29.434877, 49.881229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572977, -0.627568, 0.527120,
		-0.429947, -0.777723, -0.458576,
		0.697741, 0.036120, -0.715439,
		33.861355, 29.445713, 49.666599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562885, 28.717970, 49.960262>,  <33.372936, 29.420429, 50.167404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.562885, 28.717970, 49.960262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.862049, 28.981295, 49.926193>,  <34.041546, 29.139290, 49.905750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.862049, 28.981295, 49.926193>,  <33.562885, 28.717970, 49.960262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862049, 28.981295, 49.926193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620880, -0.648379, 0.440583,
		0.234816, -0.382399, -0.893662,
		0.747910, 0.658313, -0.085174,
		34.086422, 29.178789, 49.900642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101677, 28.461676, 49.580631>,  <33.562885, 28.717970, 49.960262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101677, 28.461676, 49.580631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252007, 28.721071, 49.845425>,  <34.342205, 28.876709, 50.004299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252007, 28.721071, 49.845425>,  <34.101677, 28.461676, 49.580631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252007, 28.721071, 49.845425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639231, -0.698605, 0.321458,
		0.670927, 0.302351, -0.677083,
		0.375820, 0.648487, 0.661985,
		34.364754, 28.915617, 50.044022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754204, 28.588919, 49.307613>,  <34.101677, 28.461676, 49.580631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754204, 28.588919, 49.307613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.722866, 28.621269, 49.705070>,  <34.704063, 28.640678, 49.943542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.722866, 28.621269, 49.705070>,  <34.754204, 28.588919, 49.307613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722866, 28.621269, 49.705070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626895, -0.770985, 0.112181,
		0.775155, 0.631697, 0.009703,
		-0.078345, 0.080875, 0.993640,
		34.699364, 28.645533, 50.003162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381691, 28.828077, 49.873062>,  <34.754204, 28.588919, 49.307613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381691, 28.828077, 49.873062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122234, 28.544518, 49.983860>,  <34.966560, 28.374382, 50.050339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122234, 28.544518, 49.983860>,  <35.381691, 28.828077, 49.873062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122234, 28.544518, 49.983860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740664, -0.671700, 0.015362,
		0.175168, 0.215126, 0.960748,
		-0.648639, -0.708901, 0.276997,
		34.927643, 28.331848, 50.066959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654076, 28.437716, 50.462742>,  <35.381691, 28.828077, 49.873062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654076, 28.437716, 50.462742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.420223, 28.195395, 50.246883>,  <35.279911, 28.050003, 50.117371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.420223, 28.195395, 50.246883>,  <35.654076, 28.437716, 50.462742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420223, 28.195395, 50.246883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646532, -0.749708, 0.141191,
		-0.490109, -0.266352, 0.829970,
		-0.584628, -0.605801, -0.539644,
		35.244835, 28.013655, 50.084991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244724, 28.530294, 50.024994>,  <35.654076, 28.437716, 50.462742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244724, 28.530294, 50.024994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.387821, 28.414833, 50.380230>,  <36.473679, 28.345556, 50.593372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.387821, 28.414833, 50.380230>,  <36.244724, 28.530294, 50.024994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387821, 28.414833, 50.380230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479909, -0.872657, -0.090316,
		0.801065, -0.393891, -0.450717,
		0.357747, -0.288652, 0.888086,
		36.495144, 28.328238, 50.646656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961205, 28.612413, 49.271122>,  <36.244724, 28.530294, 50.024994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961205, 28.612413, 49.271122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.662121, 28.359291, 49.351604>,  <35.482670, 28.207418, 49.399895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.662121, 28.359291, 49.351604>,  <35.961205, 28.612413, 49.271122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662121, 28.359291, 49.351604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242539, -0.021806, -0.969897,
		0.618143, -0.774004, -0.137176,
		-0.747713, -0.632805, 0.201205,
		35.437805, 28.169449, 49.411964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817688, 27.996483, 48.827110>,  <35.961205, 28.612413, 49.271122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817688, 27.996483, 48.827110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458176, 28.004799, 49.002274>,  <35.242470, 28.009789, 49.107372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458176, 28.004799, 49.002274>,  <35.817688, 27.996483, 48.827110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458176, 28.004799, 49.002274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434391, -0.177100, -0.883142,
		0.059194, -0.983973, 0.168205,
		-0.898777, 0.020790, 0.437912,
		35.188541, 28.011036, 49.133648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528084, 27.377684, 48.540813>,  <35.817688, 27.996483, 48.827110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528084, 27.377684, 48.540813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.279350, 27.662052, 48.672211>,  <35.130108, 27.832674, 48.751049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.279350, 27.662052, 48.672211>,  <35.528084, 27.377684, 48.540813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279350, 27.662052, 48.672211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545794, -0.092598, -0.832787,
		-0.561629, -0.697148, 0.445598,
		-0.621837, 0.710922, 0.328494,
		35.092800, 27.875328, 48.770760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805847, 27.131201, 48.683670>,  <35.528084, 27.377684, 48.540813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805847, 27.131201, 48.683670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795460, 27.503841, 48.538651>,  <34.789227, 27.727427, 48.451637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795460, 27.503841, 48.538651>,  <34.805847, 27.131201, 48.683670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795460, 27.503841, 48.538651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437085, -0.336747, -0.834001,
		-0.899045, 0.136809, 0.415934,
		-0.025965, 0.931603, -0.362548,
		34.787670, 27.783323, 48.429886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169910, 27.151430, 48.330280>,  <34.805847, 27.131201, 48.683670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169910, 27.151430, 48.330280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393559, 27.451208, 48.188457>,  <34.527748, 27.631075, 48.103363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393559, 27.451208, 48.188457>,  <34.169910, 27.151430, 48.330280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393559, 27.451208, 48.188457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194317, -0.297279, -0.934808,
		-0.805991, 0.591570, -0.020586,
		0.559124, 0.749447, -0.354556,
		34.561295, 27.676043, 48.082092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.773323, 27.365789, 47.830296>,  <34.169910, 27.151430, 48.330280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.773323, 27.365789, 47.830296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133900, 27.523373, 47.758511>,  <34.350246, 27.617922, 47.715439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133900, 27.523373, 47.758511>,  <33.773323, 27.365789, 47.830296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133900, 27.523373, 47.758511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180340, -0.035138, -0.982976,
		-0.393556, 0.918457, 0.039371,
		0.901438, 0.393957, -0.179463,
		34.404331, 27.641560, 47.704670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666290, 27.878040, 47.447353>,  <33.773323, 27.365789, 47.830296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.666290, 27.878040, 47.447353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049259, 27.799095, 47.363083>,  <34.279041, 27.751728, 47.312519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049259, 27.799095, 47.363083>,  <33.666290, 27.878040, 47.447353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049259, 27.799095, 47.363083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221777, -0.035663, -0.974445,
		0.184806, 0.979682, -0.077915,
		0.957424, -0.197363, -0.210680,
		34.336487, 27.739885, 47.299877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848782, 28.400465, 47.018688>,  <33.666290, 27.878040, 47.447353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848782, 28.400465, 47.018688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074562, 28.075754, 46.958809>,  <34.210030, 27.880928, 46.922882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074562, 28.075754, 46.958809>,  <33.848782, 28.400465, 47.018688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074562, 28.075754, 46.958809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160530, 0.069940, -0.984550,
		0.809704, 0.579765, -0.090836,
		0.564455, -0.811776, -0.149701,
		34.243900, 27.832222, 46.913898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249496, 28.632334, 46.420315>,  <33.848782, 28.400465, 47.018688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249496, 28.632334, 46.420315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325714, 28.239855, 46.432575>,  <34.371445, 28.004368, 46.439930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325714, 28.239855, 46.432575>,  <34.249496, 28.632334, 46.420315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325714, 28.239855, 46.432575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005645, -0.032316, -0.999462,
		0.981662, 0.190271, -0.011696,
		0.190547, -0.981200, 0.030649,
		34.382877, 27.945496, 46.441769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844116, 28.538340, 46.087185>,  <34.249496, 28.632334, 46.420315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844116, 28.538340, 46.087185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639305, 28.194904, 46.076931>,  <34.516418, 27.988844, 46.070778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639305, 28.194904, 46.076931>,  <34.844116, 28.538340, 46.087185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639305, 28.194904, 46.076931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006457, 0.033692, -0.999411,
		0.858944, -0.511561, -0.022795,
		-0.512028, -0.858586, -0.025637,
		34.485695, 27.937328, 46.069241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206699, 28.188164, 45.598900>,  <34.844116, 28.538340, 46.087185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206699, 28.188164, 45.598900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838291, 28.037031, 45.636776>,  <34.617245, 27.946352, 45.659504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838291, 28.037031, 45.636776>,  <35.206699, 28.188164, 45.598900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838291, 28.037031, 45.636776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165174, 0.158675, -0.973417,
		0.352762, -0.912176, -0.208551,
		-0.921019, -0.377832, 0.094693,
		34.561985, 27.923681, 45.665184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161156, 27.808601, 44.996170>,  <35.206699, 28.188164, 45.598900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161156, 27.808601, 44.996170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781895, 27.820059, 45.122776>,  <34.554337, 27.826933, 45.198738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781895, 27.820059, 45.122776>,  <35.161156, 27.808601, 44.996170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781895, 27.820059, 45.122776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303029, 0.218706, -0.927546,
		-0.095794, -0.975370, -0.198686,
		-0.948154, 0.028646, 0.316516,
		34.497448, 27.828651, 45.217731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840107, 27.381565, 44.475002>,  <35.161156, 27.808601, 44.996170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840107, 27.381565, 44.475002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556953, 27.569000, 44.686405>,  <34.387062, 27.681461, 44.813248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556953, 27.569000, 44.686405>,  <34.840107, 27.381565, 44.475002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556953, 27.569000, 44.686405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413993, 0.330990, -0.847971,
		-0.572280, -0.819067, -0.040311,
		-0.707888, 0.468589, 0.528507,
		34.344585, 27.709578, 44.844955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173557, 27.280083, 44.165951>,  <34.840107, 27.381565, 44.475002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173557, 27.280083, 44.165951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108910, 27.616835, 44.371910>,  <34.070122, 27.818886, 44.495483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108910, 27.616835, 44.371910>,  <34.173557, 27.280083, 44.165951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108910, 27.616835, 44.371910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456614, 0.398751, -0.795300,
		-0.874862, -0.363642, 0.319970,
		-0.161616, 0.841881, 0.514896,
		34.060425, 27.869398, 44.526379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469604, 27.460737, 44.045841>,  <34.173557, 27.280083, 44.165951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469604, 27.460737, 44.045841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629299, 27.797575, 44.190884>,  <33.725117, 27.999678, 44.277908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629299, 27.797575, 44.190884>,  <33.469604, 27.460737, 44.045841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629299, 27.797575, 44.190884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406060, 0.516993, -0.753547,
		-0.822024, 0.153606, 0.548345,
		0.399240, 0.842094, 0.362607,
		33.749073, 28.050203, 44.299667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879265, 27.988255, 44.253731>,  <33.469604, 27.460737, 44.045841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879265, 27.988255, 44.253731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227512, 28.155695, 44.150352>,  <33.436462, 28.256159, 44.088326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227512, 28.155695, 44.150352>,  <32.879265, 27.988255, 44.253731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227512, 28.155695, 44.150352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477433, 0.592215, -0.649106,
		-0.118660, 0.688516, 0.715448,
		0.870619, 0.418602, -0.258448,
		33.488697, 28.281275, 44.072819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.685070, 28.692230, 44.169231>,  <32.879265, 27.988255, 44.253731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.685070, 28.692230, 44.169231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016632, 28.605669, 43.962894>,  <33.215569, 28.553732, 43.839092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016632, 28.605669, 43.962894>,  <32.685070, 28.692230, 44.169231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016632, 28.605669, 43.962894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366441, 0.486688, -0.793004,
		0.422660, 0.846348, 0.324119,
		0.828903, -0.216401, -0.515840,
		33.265305, 28.540749, 43.808144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889507, 29.298740, 43.903496>,  <32.685070, 28.692230, 44.169231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.889507, 29.298740, 43.903496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.100487, 29.046080, 43.676228>,  <33.227074, 28.894484, 43.539867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.100487, 29.046080, 43.676228>,  <32.889507, 29.298740, 43.903496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.100487, 29.046080, 43.676228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224664, 0.541251, -0.810292,
		0.819346, 0.555032, 0.143570,
		0.527445, -0.631654, -0.568168,
		33.258720, 28.856583, 43.505775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105381, 29.758793, 43.344849>,  <32.889507, 29.298740, 43.903496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105381, 29.758793, 43.344849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183575, 29.382235, 43.234894>,  <33.230492, 29.156300, 43.168922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183575, 29.382235, 43.234894>,  <33.105381, 29.758793, 43.344849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183575, 29.382235, 43.234894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035944, 0.273227, -0.961278,
		0.980049, 0.197791, 0.019573,
		0.195480, -0.941396, -0.274885,
		33.242218, 29.099815, 43.152428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616634, 29.812948, 42.726555>,  <33.105381, 29.758793, 43.344849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616634, 29.812948, 42.726555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.425713, 29.461958, 42.745384>,  <33.311161, 29.251364, 42.756680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.425713, 29.461958, 42.745384>,  <33.616634, 29.812948, 42.726555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.425713, 29.461958, 42.745384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208764, 0.061198, -0.976049,
		0.853581, -0.475697, -0.212396,
		-0.477302, -0.877477, 0.047071,
		33.282520, 29.198715, 42.759506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820866, 29.357613, 42.127052>,  <33.616634, 29.812948, 42.726555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820866, 29.357613, 42.127052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456322, 29.259714, 42.259426>,  <33.237595, 29.200975, 42.338852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456322, 29.259714, 42.259426>,  <33.820866, 29.357613, 42.127052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456322, 29.259714, 42.259426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339632, -0.007072, -0.940532,
		0.232531, -0.969562, -0.076678,
		-0.911361, -0.244745, 0.330939,
		33.182915, 29.186291, 42.358707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702000, 28.826721, 41.743511>,  <33.820866, 29.357613, 42.127052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702000, 28.826721, 41.743511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335442, 28.908253, 41.881306>,  <33.115505, 28.957172, 41.963982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335442, 28.908253, 41.881306>,  <33.702000, 28.826721, 41.743511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335442, 28.908253, 41.881306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386821, -0.229767, -0.893072,
		-0.102881, -0.951663, 0.289402,
		-0.916398, 0.203827, 0.344484,
		33.060524, 28.969402, 41.984650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250282, 28.386000, 41.376465>,  <33.702000, 28.826721, 41.743511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250282, 28.386000, 41.376465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974396, 28.629866, 41.532719>,  <32.808865, 28.776186, 41.626472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974396, 28.629866, 41.532719>,  <33.250282, 28.386000, 41.376465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974396, 28.629866, 41.532719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588195, -0.157127, -0.793308,
		-0.422273, -0.776930, 0.466975,
		-0.689719, 0.609665, 0.390635,
		32.767479, 28.812765, 41.649910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.562485, 27.983347, 41.312466>,  <33.250282, 28.386000, 41.376465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.562485, 27.983347, 41.312466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514523, 28.380186, 41.327255>,  <32.485744, 28.618290, 41.336128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514523, 28.380186, 41.327255>,  <32.562485, 27.983347, 41.312466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514523, 28.380186, 41.327255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639341, -0.048675, -0.767381,
		-0.759516, -0.115654, 0.640125,
		-0.119909, 0.992096, 0.036973,
		32.478550, 28.677814, 41.338348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.909594, 28.089283, 41.378593>,  <32.562485, 27.983347, 41.312466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.909594, 28.089283, 41.378593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.050098, 28.419493, 41.201904>,  <32.134403, 28.617619, 41.095890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.050098, 28.419493, 41.201904>,  <31.909594, 28.089283, 41.378593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050098, 28.419493, 41.201904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610662, -0.155627, -0.776448,
		-0.709722, 0.542483, 0.449451,
		0.351263, 0.825526, -0.441725,
		32.155476, 28.667150, 41.069386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.306545, 28.299244, 41.118546>,  <31.909594, 28.089283, 41.378593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.306545, 28.299244, 41.118546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602409, 28.507217, 40.947632>,  <31.779928, 28.632002, 40.845085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602409, 28.507217, 40.947632>,  <31.306545, 28.299244, 41.118546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602409, 28.507217, 40.947632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454978, -0.081490, -0.886766,
		-0.495880, 0.850310, 0.176284,
		0.739661, 0.519935, -0.427282,
		31.824308, 28.663198, 40.819447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.042177, 28.937511, 40.801132>,  <31.306545, 28.299244, 41.118546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.042177, 28.937511, 40.801132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.353537, 28.871828, 40.558765>,  <31.540352, 28.832418, 40.413345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.353537, 28.871828, 40.558765>,  <31.042177, 28.937511, 40.801132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.353537, 28.871828, 40.558765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594150, 0.118924, -0.795514,
		0.202688, 0.979231, -0.004995,
		0.778398, -0.164209, -0.605915,
		31.587055, 28.822565, 40.376991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.924711, 29.346481, 40.279049>,  <31.042177, 28.937511, 40.801132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.924711, 29.346481, 40.279049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.223738, 29.139360, 40.112663>,  <31.403154, 29.015089, 40.012833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.223738, 29.139360, 40.112663>,  <30.924711, 29.346481, 40.279049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.223738, 29.139360, 40.112663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422236, 0.112940, -0.899422,
		0.512700, 0.848014, -0.134204,
		0.747566, -0.517800, -0.415967,
		31.448008, 28.984020, 39.987873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130999, 29.698391, 39.625969>,  <30.924711, 29.346481, 40.279049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130999, 29.698391, 39.625969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.287029, 29.334745, 39.567520>,  <31.380648, 29.116558, 39.532452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.287029, 29.334745, 39.567520>,  <31.130999, 29.698391, 39.625969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.287029, 29.334745, 39.567520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201144, 0.070726, -0.977005,
		0.898543, 0.410500, -0.155275,
		0.390078, -0.909114, -0.146120,
		31.404053, 29.062012, 39.523685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660423, 29.776220, 39.067291>,  <31.130999, 29.698391, 39.625969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660423, 29.776220, 39.067291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.534740, 29.397221, 39.091026>,  <31.459332, 29.169821, 39.105267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.534740, 29.397221, 39.091026>,  <31.660423, 29.776220, 39.067291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.534740, 29.397221, 39.091026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080710, -0.035613, -0.996101,
		0.945918, -0.317771, -0.065282,
		-0.314207, -0.947499, 0.059335,
		31.440477, 29.112970, 39.108826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172436, 29.328260, 38.623234>,  <31.660423, 29.776220, 39.067291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172436, 29.328260, 38.623234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.807350, 29.169582, 38.662395>,  <31.588299, 29.074375, 38.685894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.807350, 29.169582, 38.662395>,  <32.172436, 29.328260, 38.623234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.807350, 29.169582, 38.662395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078637, -0.064596, -0.994808,
		0.400961, -0.915674, 0.027762,
		-0.912714, -0.396697, 0.097906,
		31.533535, 29.050573, 38.691769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.983723, 29.064678, 38.015514>,  <32.172436, 29.328260, 38.623234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.983723, 29.064678, 38.015514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.624321, 28.951681, 38.149910>,  <31.408680, 28.883883, 38.230549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.624321, 28.951681, 38.149910>,  <31.983723, 29.064678, 38.015514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.624321, 28.951681, 38.149910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319924, -0.102666, -0.941864,
		0.300564, -0.953760, 0.001870,
		-0.898504, -0.282492, 0.335988,
		31.354771, 28.866934, 38.250706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.730671, 28.509750, 37.595993>,  <31.983723, 29.064678, 38.015514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.730671, 28.509750, 37.595993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.413074, 28.708227, 37.736492>,  <31.222517, 28.827312, 37.820789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.413074, 28.708227, 37.736492>,  <31.730671, 28.509750, 37.595993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.413074, 28.708227, 37.736492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319944, 0.150221, -0.935452,
		-0.516926, -0.855119, 0.039479,
		-0.793992, 0.496190, 0.351244,
		31.174877, 28.857084, 37.841866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.199188, 28.332331, 37.185760>,  <31.730671, 28.509750, 37.595993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.199188, 28.332331, 37.185760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.088638, 28.687353, 37.333199>,  <31.022308, 28.900366, 37.421661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.088638, 28.687353, 37.333199>,  <31.199188, 28.332331, 37.185760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.088638, 28.687353, 37.333199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281006, 0.292140, -0.914161,
		-0.919050, -0.356228, 0.168669,
		-0.276375, 0.887556, 0.368593,
		31.005726, 28.953621, 37.443775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.545824, 28.412876, 36.854893>,  <31.199188, 28.332331, 37.185760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.545824, 28.412876, 36.854893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.650364, 28.774433, 36.990349>,  <30.713087, 28.991367, 37.071621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.650364, 28.774433, 36.990349>,  <30.545824, 28.412876, 36.854893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.650364, 28.774433, 36.990349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489551, 0.426486, -0.760559,
		-0.831887, 0.032991, 0.553963,
		0.261349, 0.903892, 0.338637,
		30.728769, 29.045601, 37.091938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.954617, 28.773771, 36.721977>,  <30.545824, 28.412876, 36.854893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.954617, 28.773771, 36.721977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.243031, 29.047180, 36.767429>,  <30.416079, 29.211226, 36.794701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.243031, 29.047180, 36.767429>,  <29.954617, 28.773771, 36.721977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.243031, 29.047180, 36.767429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481243, 0.611988, -0.627596,
		-0.498515, 0.397833, 0.770203,
		0.721033, 0.683520, 0.113630,
		30.459341, 29.252235, 36.801517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.584463, 29.444036, 36.712360>,  <29.954617, 28.773771, 36.721977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.584463, 29.444036, 36.712360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.968975, 29.508226, 36.622746>,  <30.199682, 29.546741, 36.568977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.968975, 29.508226, 36.622746>,  <29.584463, 29.444036, 36.712360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.968975, 29.508226, 36.622746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273175, 0.662025, -0.697924,
		0.036315, 0.732100, 0.680229,
		0.961279, 0.160477, -0.224033,
		30.257359, 29.556370, 36.555534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.658094, 30.143110, 36.601261>,  <29.584463, 29.444036, 36.712360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.658094, 30.143110, 36.601261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.975365, 30.030569, 36.385220>,  <30.165728, 29.963043, 36.255596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.975365, 30.030569, 36.385220>,  <29.658094, 30.143110, 36.601261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.975365, 30.030569, 36.385220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330162, 0.546566, -0.769584,
		0.511728, 0.788737, 0.340630,
		0.793175, -0.281354, -0.540104,
		30.213318, 29.946163, 36.223186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.893152, 30.799795, 36.231480>,  <29.658094, 30.143110, 36.601261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.893152, 30.799795, 36.231480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.099932, 30.511765, 36.046329>,  <30.223999, 30.338945, 35.935238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.099932, 30.511765, 36.046329>,  <29.893152, 30.799795, 36.231480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.099932, 30.511765, 36.046329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177384, 0.438885, -0.880860,
		0.837437, 0.537465, 0.099151,
		0.516947, -0.720077, -0.462876,
		30.255016, 30.295742, 35.907467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.193541, 31.156693, 35.711479>,  <29.893152, 30.799795, 36.231480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.193541, 31.156693, 35.711479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.200140, 30.774435, 35.593857>,  <30.204100, 30.545080, 35.523285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.200140, 30.774435, 35.593857>,  <30.193541, 31.156693, 35.711479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.200140, 30.774435, 35.593857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231674, 0.282440, -0.930889,
		0.972654, 0.083486, -0.216738,
		0.016501, -0.955646, -0.294057,
		30.205090, 30.487741, 35.505638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.698143, 31.074272, 35.117702>,  <30.193541, 31.156693, 35.711479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.698143, 31.074272, 35.117702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.425169, 30.782497, 35.098911>,  <30.261385, 30.607433, 35.087639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.425169, 30.782497, 35.098911>,  <30.698143, 31.074272, 35.117702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.425169, 30.782497, 35.098911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200583, 0.248682, -0.947589,
		0.702887, -0.637244, -0.316021,
		-0.682434, -0.729436, -0.046975,
		30.220438, 30.563667, 35.084820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855635, 30.674797, 34.419617>,  <30.698143, 31.074272, 35.117702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855635, 30.674797, 34.419617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.482122, 30.640358, 34.558552>,  <30.258015, 30.619694, 34.641914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.482122, 30.640358, 34.558552>,  <30.855635, 30.674797, 34.419617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.482122, 30.640358, 34.558552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355292, 0.338917, -0.871150,
		-0.042716, -0.936869, -0.347063,
		-0.933779, -0.086096, 0.347339,
		30.201988, 30.614529, 34.662754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.398384, 30.768799, 34.860634>,  <30.855635, 30.674797, 34.419617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.398384, 30.768799, 34.860634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.647963, 30.967747, 34.619534>,  <31.797710, 31.087116, 34.474873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.647963, 30.967747, 34.619534>,  <31.398384, 30.768799, 34.860634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.647963, 30.967747, 34.619534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761353, -0.213030, 0.612340,
		0.176154, -0.840977, -0.511593,
		0.623948, 0.497369, -0.602754,
		31.835148, 31.116957, 34.438705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929094, 30.328339, 34.627541>,  <31.398384, 30.768799, 34.860634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929094, 30.328339, 34.627541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.077198, 30.699909, 34.626942>,  <32.166061, 30.922852, 34.626583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.077198, 30.699909, 34.626942>,  <31.929094, 30.328339, 34.627541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.077198, 30.699909, 34.626942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696924, -0.276718, 0.661608,
		0.614170, -0.246012, -0.749849,
		0.370260, 0.928927, -0.001500,
		32.188274, 30.978588, 34.626492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736614, 30.236370, 34.517265>,  <31.929094, 30.328339, 34.627541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736614, 30.236370, 34.517265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654346, 30.573586, 34.716057>,  <32.604984, 30.775915, 34.835331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654346, 30.573586, 34.716057>,  <32.736614, 30.236370, 34.517265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654346, 30.573586, 34.716057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609714, -0.286842, 0.738899,
		0.765474, 0.454983, -0.455017,
		-0.205668, 0.843038, 0.496979,
		32.592648, 30.826496, 34.865150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404816, 30.529648, 34.719597>,  <32.736614, 30.236370, 34.517265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404816, 30.529648, 34.719597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124149, 30.711197, 34.939293>,  <32.955750, 30.820126, 35.071110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124149, 30.711197, 34.939293>,  <33.404816, 30.529648, 34.719597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124149, 30.711197, 34.939293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616614, 0.000577, 0.787265,
		0.357000, 0.891067, -0.280268,
		-0.701668, 0.453871, 0.549239,
		32.913651, 30.847359, 35.104065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750202, 31.108107, 35.029743>,  <33.404816, 30.529648, 34.719597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750202, 31.108107, 35.029743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444904, 31.011442, 35.269428>,  <33.261726, 30.953444, 35.413239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444904, 31.011442, 35.269428>,  <33.750202, 31.108107, 35.029743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444904, 31.011442, 35.269428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559233, 0.217387, 0.800001,
		-0.323590, 0.945697, -0.030775,
		-0.763248, -0.241662, 0.599209,
		33.215931, 30.938944, 35.449192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895134, 31.342686, 35.679951>,  <33.750202, 31.108107, 35.029743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895134, 31.342686, 35.679951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608738, 31.077930, 35.768734>,  <33.436901, 30.919077, 35.822002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608738, 31.077930, 35.768734>,  <33.895134, 31.342686, 35.679951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608738, 31.077930, 35.768734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279310, 0.019789, 0.959997,
		-0.639805, 0.749339, 0.170704,
		-0.715985, -0.661890, 0.221959,
		33.393944, 30.879364, 35.835323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665665, 31.541843, 36.373787>,  <33.895134, 31.342686, 35.679951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665665, 31.541843, 36.373787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.516895, 31.172506, 36.335609>,  <33.427635, 30.950903, 36.312702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.516895, 31.172506, 36.335609>,  <33.665665, 31.541843, 36.373787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516895, 31.172506, 36.335609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248498, -0.198102, 0.948158,
		-0.894384, 0.328923, 0.303128,
		-0.371922, -0.923344, -0.095443,
		33.405319, 30.895502, 36.306976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238213, 31.448967, 36.982117>,  <33.665665, 31.541843, 36.373787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238213, 31.448967, 36.982117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.338017, 31.090502, 36.835346>,  <33.397900, 30.875423, 36.747284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.338017, 31.090502, 36.835346>,  <33.238213, 31.448967, 36.982117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338017, 31.090502, 36.835346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451297, -0.227635, 0.862852,
		-0.856781, -0.380887, 0.347637,
		0.249514, -0.896162, -0.366927,
		33.412872, 30.821653, 36.725269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120304, 31.069887, 37.583168>,  <33.238213, 31.448967, 36.982117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120304, 31.069887, 37.583168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337299, 30.835617, 37.342274>,  <33.467495, 30.695055, 37.197735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337299, 30.835617, 37.342274>,  <33.120304, 31.069887, 37.583168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337299, 30.835617, 37.342274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480248, -0.371983, 0.794349,
		-0.689253, -0.720148, 0.079473,
		0.542486, -0.585675, -0.602240,
		33.500046, 30.659914, 37.161602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085232, 30.345348, 37.780262>,  <33.120304, 31.069887, 37.583168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085232, 30.345348, 37.780262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.425320, 30.403612, 37.577911>,  <33.629372, 30.438570, 37.456501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.425320, 30.403612, 37.577911>,  <33.085232, 30.345348, 37.780262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.425320, 30.403612, 37.577911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519412, -0.388494, 0.761106,
		-0.085667, -0.909865, -0.405963,
		0.850219, 0.145661, -0.505876,
		33.680386, 30.447309, 37.426147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464043, 29.685389, 37.749176>,  <33.085232, 30.345348, 37.780262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464043, 29.685389, 37.749176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726971, 29.983240, 37.702770>,  <33.884727, 30.161951, 37.674927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726971, 29.983240, 37.702770>,  <33.464043, 29.685389, 37.749176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726971, 29.983240, 37.702770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623921, -0.451372, 0.637954,
		0.422676, -0.491721, -0.761286,
		0.657318, 0.744630, -0.116011,
		33.924168, 30.206629, 37.667969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077869, 29.390648, 37.773148>,  <33.464043, 29.685389, 37.749176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077869, 29.390648, 37.773148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188843, 29.773970, 37.800533>,  <34.255428, 30.003962, 37.816963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188843, 29.773970, 37.800533>,  <34.077869, 29.390648, 37.773148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188843, 29.773970, 37.800533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786349, -0.267438, 0.556896,
		0.551984, -0.100665, -0.827756,
		0.277433, 0.958302, 0.068464,
		34.272072, 30.061460, 37.821072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830929, 29.361088, 37.538631>,  <34.077869, 29.390648, 37.773148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830929, 29.361088, 37.538631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.708755, 29.646719, 37.790600>,  <34.635452, 29.818098, 37.941780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.708755, 29.646719, 37.790600>,  <34.830929, 29.361088, 37.538631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708755, 29.646719, 37.790600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707974, -0.272086, 0.651723,
		0.636774, 0.645027, -0.422444,
		-0.305438, 0.714079, 0.629920,
		34.617123, 29.860943, 37.979576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348820, 29.525518, 37.964561>,  <34.830929, 29.361088, 37.538631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348820, 29.525518, 37.964561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082321, 29.702906, 38.204380>,  <34.922424, 29.809338, 38.348270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082321, 29.702906, 38.204380>,  <35.348820, 29.525518, 37.964561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082321, 29.702906, 38.204380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610019, -0.138353, 0.780215,
		0.428951, 0.885547, -0.178349,
		-0.666242, 0.443470, 0.599547,
		34.882450, 29.835947, 38.384243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807117, 29.844601, 38.439110>,  <35.348820, 29.525518, 37.964561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807117, 29.844601, 38.439110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.455036, 29.872698, 38.626858>,  <35.243790, 29.889557, 38.739506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.455036, 29.872698, 38.626858>,  <35.807117, 29.844601, 38.439110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455036, 29.872698, 38.626858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460578, -0.112207, 0.880499,
		0.114516, 0.991199, 0.066412,
		-0.880201, 0.070243, 0.469373,
		35.190975, 29.893770, 38.767670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742874, 30.438747, 38.933640>,  <35.807117, 29.844601, 38.439110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742874, 30.438747, 38.933640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462784, 30.181744, 39.058132>,  <35.294727, 30.027542, 39.132828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462784, 30.181744, 39.058132>,  <35.742874, 30.438747, 38.933640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462784, 30.181744, 39.058132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312196, 0.116471, 0.942851,
		-0.642039, 0.757376, 0.119031,
		-0.700229, -0.642508, 0.311228,
		35.252716, 29.988991, 39.151501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405392, 30.819201, 39.443249>,  <35.742874, 30.438747, 38.933640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405392, 30.819201, 39.443249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.317692, 30.437798, 39.525951>,  <35.265072, 30.208956, 39.575573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.317692, 30.437798, 39.525951>,  <35.405392, 30.819201, 39.443249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317692, 30.437798, 39.525951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067404, 0.226211, 0.971744,
		-0.973337, 0.199121, -0.113867,
		-0.219253, -0.953509, 0.206758,
		35.251915, 30.151745, 39.587978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829838, 30.826811, 39.934071>,  <35.405392, 30.819201, 39.443249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829838, 30.826811, 39.934071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.014603, 30.472469, 39.951492>,  <35.125462, 30.259865, 39.961945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.014603, 30.472469, 39.951492>,  <34.829838, 30.826811, 39.934071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014603, 30.472469, 39.951492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006077, 0.045940, 0.998926,
		-0.886905, -0.461681, 0.015837,
		0.461912, -0.885856, 0.043550,
		35.153175, 30.206713, 39.964558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497875, 30.500982, 40.430958>,  <34.829838, 30.826811, 39.934071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497875, 30.500982, 40.430958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826012, 30.273594, 40.406021>,  <35.022892, 30.137161, 40.391060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826012, 30.273594, 40.406021>,  <34.497875, 30.500982, 40.430958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826012, 30.273594, 40.406021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045212, -0.044203, 0.997999,
		-0.570090, -0.821515, -0.010560,
		0.820337, -0.568471, -0.062342,
		35.072113, 30.103052, 40.387318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361320, 29.821211, 40.818935>,  <34.497875, 30.500982, 40.430958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361320, 29.821211, 40.818935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756855, 29.869776, 40.784374>,  <34.994175, 29.898914, 40.763638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756855, 29.869776, 40.784374>,  <34.361320, 29.821211, 40.818935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756855, 29.869776, 40.784374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083876, 0.025781, 0.996143,
		0.123173, -0.992267, 0.015309,
		0.988834, 0.121414, -0.086403,
		35.053505, 29.906199, 40.758453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649380, 29.292509, 41.232151>,  <34.361320, 29.821211, 40.818935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649380, 29.292509, 41.232151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959934, 29.543713, 41.210888>,  <35.146267, 29.694435, 41.198132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959934, 29.543713, 41.210888>,  <34.649380, 29.292509, 41.232151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959934, 29.543713, 41.210888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199745, -0.165186, 0.965824,
		0.597767, -0.760471, -0.253690,
		0.776387, 0.628011, -0.053158,
		35.192852, 29.732117, 41.194942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248089, 28.916162, 41.485569>,  <34.649380, 29.292509, 41.232151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248089, 28.916162, 41.485569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307888, 29.306980, 41.546276>,  <35.343769, 29.541471, 41.582703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307888, 29.306980, 41.546276>,  <35.248089, 28.916162, 41.485569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307888, 29.306980, 41.546276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277783, -0.188815, 0.941905,
		0.948940, -0.098653, -0.299634,
		0.149498, 0.977045, 0.151770,
		35.352737, 29.600094, 41.591808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863377, 28.928736, 41.793880>,  <35.248089, 28.916162, 41.485569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863377, 28.928736, 41.793880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.680305, 29.264488, 41.911160>,  <35.570461, 29.465940, 41.981529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.680305, 29.264488, 41.911160>,  <35.863377, 28.928736, 41.793880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680305, 29.264488, 41.911160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240670, -0.200499, 0.949673,
		0.855926, 0.505209, -0.110250,
		-0.457678, 0.839383, 0.293200,
		35.543003, 29.516304, 41.999119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319241, 29.205105, 42.311192>,  <35.863377, 28.928736, 41.793880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319241, 29.205105, 42.311192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.021591, 29.465694, 42.370335>,  <35.843002, 29.622047, 42.405819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.021591, 29.465694, 42.370335>,  <36.319241, 29.205105, 42.311192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021591, 29.465694, 42.370335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221425, 0.031711, 0.974662,
		0.630276, 0.758010, -0.167849,
		-0.744126, 0.651472, 0.147855,
		35.798355, 29.661137, 42.414692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590492, 29.699551, 42.609070>,  <36.319241, 29.205105, 42.311192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590492, 29.699551, 42.609070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206947, 29.701868, 42.722599>,  <35.976822, 29.703259, 42.790718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206947, 29.701868, 42.722599>,  <36.590492, 29.699551, 42.609070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206947, 29.701868, 42.722599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282792, -0.068084, 0.956762,
		0.024866, 0.997663, 0.063645,
		-0.958859, 0.005793, 0.283824,
		35.919289, 29.703606, 42.807747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537792, 30.166269, 43.269421>,  <36.590492, 29.699551, 42.609070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537792, 30.166269, 43.269421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.201298, 29.950871, 43.250034>,  <35.999401, 29.821632, 43.238403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.201298, 29.950871, 43.250034>,  <36.537792, 30.166269, 43.269421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201298, 29.950871, 43.250034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004249, -0.096225, 0.995351,
		-0.540656, 0.837116, 0.083236,
		-0.841233, -0.538496, -0.048468,
		35.948929, 29.789322, 43.235493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016850, 30.517992, 43.644745>,  <36.537792, 30.166269, 43.269421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016850, 30.517992, 43.644745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929665, 30.127615, 43.642651>,  <35.877354, 29.893389, 43.641396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929665, 30.127615, 43.642651>,  <36.016850, 30.517992, 43.644745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929665, 30.127615, 43.642651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003458, -0.004588, 0.999984,
		-0.975950, 0.217981, -0.002374,
		-0.217966, -0.975942, -0.005231,
		35.864273, 29.834833, 43.641083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494614, 30.473423, 44.172184>,  <36.016850, 30.517992, 43.644745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494614, 30.473423, 44.172184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615875, 30.097675, 44.108082>,  <35.688633, 29.872227, 44.069622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615875, 30.097675, 44.108082>,  <35.494614, 30.473423, 44.172184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615875, 30.097675, 44.108082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078752, -0.142899, 0.986599,
		-0.949682, -0.311710, 0.030657,
		0.303152, -0.939370, -0.160256,
		35.706821, 29.815865, 44.060005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078171, 30.047735, 44.538746>,  <35.494614, 30.473423, 44.172184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078171, 30.047735, 44.538746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.420288, 29.843622, 44.502777>,  <35.625557, 29.721153, 44.481197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.420288, 29.843622, 44.502777>,  <35.078171, 30.047735, 44.538746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420288, 29.843622, 44.502777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130789, 0.044695, 0.990402,
		-0.501368, -0.858844, 0.104968,
		0.855292, -0.510284, -0.089919,
		35.676876, 29.690536, 44.475800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117245, 29.676954, 45.154442>,  <35.078171, 30.047735, 44.538746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117245, 29.676954, 45.154442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490757, 29.678650, 45.011314>,  <35.714863, 29.679668, 44.925438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490757, 29.678650, 45.011314>,  <35.117245, 29.676954, 45.154442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490757, 29.678650, 45.011314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357791, 0.006165, 0.933781,
		0.006165, -0.999972, 0.004240,
		-0.933781, -0.004240, 0.357819,
		35.770893, 29.679922, 44.903969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493862, 29.136892, 45.484085>,  <35.117245, 29.676954, 45.154442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493862, 29.136892, 45.484085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.776440, 29.394062, 45.365704>,  <35.945984, 29.548365, 45.294674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.776440, 29.394062, 45.365704>,  <35.493862, 29.136892, 45.484085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776440, 29.394062, 45.365704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339025, 0.059673, 0.938883,
		0.621292, -0.763601, -0.175812,
		0.706441, 0.642925, -0.295954,
		35.988373, 29.586939, 45.276917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057247, 29.014118, 45.950909>,  <35.493862, 29.136892, 45.484085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057247, 29.014118, 45.950909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.148666, 29.376188, 45.807564>,  <36.203518, 29.593430, 45.721558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.148666, 29.376188, 45.807564>,  <36.057247, 29.014118, 45.950909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148666, 29.376188, 45.807564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567807, 0.175070, 0.804329,
		0.790797, -0.387311, -0.473952,
		0.228551, 0.905174, -0.358363,
		36.217232, 29.647741, 45.700054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848335, 29.185001, 46.073875>,  <36.057247, 29.014118, 45.950909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848335, 29.185001, 46.073875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.669445, 29.538837, 46.020977>,  <36.562111, 29.751139, 45.989239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.669445, 29.538837, 46.020977>,  <36.848335, 29.185001, 46.073875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669445, 29.538837, 46.020977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524676, 0.379209, 0.762178,
		0.724366, 0.271476, -0.633715,
		-0.447224, 0.884591, -0.132249,
		36.535278, 29.804214, 45.981300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294495, 29.534231, 46.408573>,  <36.848335, 29.185001, 46.073875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294495, 29.534231, 46.408573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.979374, 29.774498, 46.354069>,  <36.790302, 29.918657, 46.321365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.979374, 29.774498, 46.354069>,  <37.294495, 29.534231, 46.408573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979374, 29.774498, 46.354069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215926, 0.476520, 0.852235,
		0.576839, 0.641972, -0.505103,
		-0.787802, 0.600667, -0.136257,
		36.743034, 29.954699, 46.313190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560200, 30.179626, 46.683064>,  <37.294495, 29.534231, 46.408573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560200, 30.179626, 46.683064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.161774, 30.215084, 46.682476>,  <36.922718, 30.236359, 46.682121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.161774, 30.215084, 46.682476>,  <37.560200, 30.179626, 46.683064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161774, 30.215084, 46.682476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029620, 0.348365, 0.936891,
		0.083563, 0.933158, -0.349619,
		-0.996062, 0.088645, -0.001471,
		36.862953, 30.241678, 46.682034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317093, 30.968435, 46.857624>,  <37.560200, 30.179626, 46.683064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317093, 30.968435, 46.857624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035973, 30.698013, 46.946182>,  <36.867298, 30.535759, 46.999317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035973, 30.698013, 46.946182>,  <37.317093, 30.968435, 46.857624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035973, 30.698013, 46.946182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016823, 0.326920, 0.944902,
		-0.711184, 0.660357, -0.241134,
		-0.702805, -0.676056, 0.221391,
		36.825130, 30.495197, 47.012600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900528, 31.343729, 47.361450>,  <37.317093, 30.968435, 46.857624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900528, 31.343729, 47.361450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.751389, 30.975634, 47.409019>,  <36.661903, 30.754776, 47.437561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.751389, 30.975634, 47.409019>,  <36.900528, 31.343729, 47.361450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751389, 30.975634, 47.409019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297650, 0.240010, 0.924013,
		-0.878857, 0.309118, -0.363397,
		-0.372848, -0.920240, 0.118926,
		36.639534, 30.699562, 47.444698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168289, 31.398407, 47.672352>,  <36.900528, 31.343729, 47.361450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168289, 31.398407, 47.672352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346775, 31.053682, 47.768826>,  <36.453869, 30.846848, 47.826710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346775, 31.053682, 47.768826>,  <36.168289, 31.398407, 47.672352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346775, 31.053682, 47.768826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258828, 0.133708, 0.956624,
		-0.856679, -0.489287, -0.163399,
		0.446216, -0.861812, 0.241186,
		36.480640, 30.795139, 47.841183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969063, 31.706980, 48.271660>,  <36.168289, 31.398407, 47.672352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969063, 31.706980, 48.271660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.149937, 32.063637, 48.262638>,  <36.258461, 32.277630, 48.257225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.149937, 32.063637, 48.262638>,  <35.969063, 31.706980, 48.271660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.149937, 32.063637, 48.262638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351669, 0.154990, -0.923205,
		-0.819671, 0.425388, 0.383646,
		0.452182, 0.891641, -0.022555,
		36.285591, 32.331127, 48.255871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452011, 32.288078, 48.046936>,  <35.969063, 31.706980, 48.271660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452011, 32.288078, 48.046936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.806934, 32.462318, 47.986355>,  <36.019890, 32.566860, 47.950005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.806934, 32.462318, 47.986355>,  <35.452011, 32.288078, 48.046936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806934, 32.462318, 47.986355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356190, 0.438703, -0.825026,
		-0.292937, 0.785999, 0.544420,
		0.887309, 0.435597, -0.151453,
		36.073128, 32.592999, 47.940918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295105, 32.799759, 47.600346>,  <35.452011, 32.288078, 48.046936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295105, 32.799759, 47.600346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691399, 32.792381, 47.546532>,  <35.929176, 32.787952, 47.514244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691399, 32.792381, 47.546532>,  <35.295105, 32.799759, 47.600346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691399, 32.792381, 47.546532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128162, 0.200386, -0.971298,
		0.044875, 0.979543, 0.196166,
		0.990737, -0.018446, -0.134533,
		35.988621, 32.786846, 47.506172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424313, 33.429760, 47.226768>,  <35.295105, 32.799759, 47.600346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424313, 33.429760, 47.226768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.717724, 33.167927, 47.153599>,  <35.893768, 33.010826, 47.109695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.717724, 33.167927, 47.153599>,  <35.424313, 33.429760, 47.226768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717724, 33.167927, 47.153599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089708, 0.173541, -0.980732,
		0.673717, 0.735801, 0.068575,
		0.733524, -0.654585, -0.182925,
		35.937782, 32.971550, 47.098721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875877, 33.734119, 46.834938>,  <35.424313, 33.429760, 47.226768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875877, 33.734119, 46.834938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.920303, 33.340359, 46.780373>,  <35.946960, 33.104103, 46.747635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.920303, 33.340359, 46.780373>,  <35.875877, 33.734119, 46.834938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920303, 33.340359, 46.780373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135859, 0.120935, -0.983319,
		0.984483, 0.127745, -0.120309,
		0.111064, -0.984406, -0.136414,
		35.953621, 33.045036, 46.739449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166817, 33.786442, 46.242397>,  <35.875877, 33.734119, 46.834938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166817, 33.786442, 46.242397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054420, 33.402603, 46.248245>,  <35.986984, 33.172298, 46.251755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054420, 33.402603, 46.248245>,  <36.166817, 33.786442, 46.242397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054420, 33.402603, 46.248245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123732, 0.021112, -0.992091,
		0.951701, -0.280577, -0.124665,
		-0.280990, -0.959599, 0.014624,
		35.970123, 33.114723, 46.252632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457180, 33.404415, 45.672039>,  <36.166817, 33.786442, 46.242397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457180, 33.404415, 45.672039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.149776, 33.165287, 45.763256>,  <35.965336, 33.021809, 45.817986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.149776, 33.165287, 45.763256>,  <36.457180, 33.404415, 45.672039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.149776, 33.165287, 45.763256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374762, 0.131688, -0.917721,
		0.518604, -0.790738, -0.325244,
		-0.768507, -0.597823, 0.228045,
		35.919224, 32.985939, 45.831669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408684, 32.987846, 45.013378>,  <36.457180, 33.404415, 45.672039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408684, 32.987846, 45.013378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092823, 32.915535, 45.247906>,  <35.903305, 32.872147, 45.388622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092823, 32.915535, 45.247906>,  <36.408684, 32.987846, 45.013378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092823, 32.915535, 45.247906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606100, 0.081327, -0.791220,
		0.095352, -0.980156, -0.173790,
		-0.789653, -0.180779, 0.586317,
		35.855927, 32.861301, 45.423801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128021, 32.338295, 44.700230>,  <36.408684, 32.987846, 45.013378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128021, 32.338295, 44.700230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.840347, 32.545177, 44.885818>,  <35.667744, 32.669308, 44.997173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.840347, 32.545177, 44.885818>,  <36.128021, 32.338295, 44.700230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840347, 32.545177, 44.885818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586862, -0.094669, -0.804133,
		-0.371979, -0.850609, 0.371613,
		-0.719183, 0.517206, 0.463976,
		35.624592, 32.700340, 45.025013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435810, 31.876682, 44.638844>,  <36.128021, 32.338295, 44.700230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435810, 31.876682, 44.638844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.306290, 32.247684, 44.713554>,  <35.228577, 32.470287, 44.758381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.306290, 32.247684, 44.713554>,  <35.435810, 31.876682, 44.638844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306290, 32.247684, 44.713554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630979, -0.064595, -0.773106,
		-0.704995, -0.368187, 0.606153,
		-0.323802, 0.927505, 0.186779,
		35.209148, 32.525936, 44.769588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775311, 31.929058, 44.410786>,  <35.435810, 31.876682, 44.638844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775311, 31.929058, 44.410786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869743, 32.317371, 44.427952>,  <34.926403, 32.550362, 44.438251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869743, 32.317371, 44.427952>,  <34.775311, 31.929058, 44.410786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869743, 32.317371, 44.427952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508118, 0.160968, -0.846112,
		-0.828301, 0.177946, 0.531275,
		0.236080, 0.970785, 0.042913,
		34.940567, 32.608608, 44.440826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085926, 32.263771, 44.274765>,  <34.775311, 31.929058, 44.410786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085926, 32.263771, 44.274765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385181, 32.516743, 44.194443>,  <34.564735, 32.668526, 44.146252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385181, 32.516743, 44.194443>,  <34.085926, 32.263771, 44.274765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385181, 32.516743, 44.194443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351340, 0.120841, -0.928417,
		-0.562892, 0.765135, 0.312604,
		0.748139, 0.632429, -0.200802,
		34.609623, 32.706470, 44.134201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733173, 32.901249, 44.040146>,  <34.085926, 32.263771, 44.274765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733173, 32.901249, 44.040146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099461, 32.882679, 43.880493>,  <34.319233, 32.871536, 43.784702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099461, 32.882679, 43.880493>,  <33.733173, 32.901249, 44.040146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099461, 32.882679, 43.880493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384821, 0.184557, -0.904351,
		0.115650, 0.981725, 0.151135,
		0.915717, -0.046428, -0.399132,
		34.374176, 32.868752, 43.760754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814564, 33.488258, 43.577126>,  <33.733173, 32.901249, 44.040146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814564, 33.488258, 43.577126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085136, 33.210197, 43.479797>,  <34.247482, 33.043362, 43.421398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085136, 33.210197, 43.479797>,  <33.814564, 33.488258, 43.577126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085136, 33.210197, 43.479797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191297, 0.153208, -0.969501,
		0.711226, 0.702351, -0.029345,
		0.676435, -0.695148, -0.243323,
		34.288067, 33.001652, 43.406799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045311, 33.796597, 43.036449>,  <33.814564, 33.488258, 43.577126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045311, 33.796597, 43.036449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175976, 33.420338, 42.999611>,  <34.254375, 33.194584, 42.977509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175976, 33.420338, 42.999611>,  <34.045311, 33.796597, 43.036449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175976, 33.420338, 42.999611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102481, 0.061617, -0.992825,
		0.939569, 0.333755, -0.076271,
		0.326661, -0.940644, -0.092097,
		34.273975, 33.138145, 42.971981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642242, 33.863243, 42.574909>,  <34.045311, 33.796597, 43.036449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642242, 33.863243, 42.574909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532387, 33.478626, 42.574352>,  <34.466473, 33.247856, 42.574020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532387, 33.478626, 42.574352>,  <34.642242, 33.863243, 42.574909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532387, 33.478626, 42.574352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067839, 0.020817, -0.997479,
		0.959152, -0.273851, -0.070948,
		-0.274638, -0.961547, -0.001389,
		34.449997, 33.190163, 42.573936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022568, 33.531364, 41.951633>,  <34.642242, 33.863243, 42.574909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022568, 33.531364, 41.951633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732960, 33.277363, 42.059387>,  <34.559196, 33.124962, 42.124039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732960, 33.277363, 42.059387>,  <35.022568, 33.531364, 41.951633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732960, 33.277363, 42.059387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116088, -0.272793, -0.955043,
		0.679942, -0.722741, 0.123791,
		-0.724018, -0.635004, 0.269385,
		34.515755, 33.086861, 42.140202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233875, 32.951744, 41.568420>,  <35.022568, 33.531364, 41.951633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233875, 32.951744, 41.568420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838634, 32.942570, 41.629250>,  <34.601490, 32.937065, 41.665745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838634, 32.942570, 41.629250>,  <35.233875, 32.951744, 41.568420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838634, 32.942570, 41.629250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137055, -0.317224, -0.938395,
		0.069768, -0.948073, 0.310306,
		-0.988104, -0.022941, 0.152070,
		34.542202, 32.935688, 41.674870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014599, 32.354263, 41.363487>,  <35.233875, 32.951744, 41.568420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014599, 32.354263, 41.363487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677464, 32.569340, 41.354427>,  <34.475182, 32.698387, 41.348991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677464, 32.569340, 41.354427>,  <35.014599, 32.354263, 41.363487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677464, 32.569340, 41.354427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171669, -0.308512, -0.935602,
		-0.510054, -0.784671, 0.352330,
		-0.842838, 0.537692, -0.022654,
		34.424614, 32.730648, 41.347630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561760, 31.890076, 40.988750>,  <35.014599, 32.354263, 41.363487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561760, 31.890076, 40.988750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407570, 32.258259, 40.962921>,  <34.315056, 32.479168, 40.947422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407570, 32.258259, 40.962921>,  <34.561760, 31.890076, 40.988750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407570, 32.258259, 40.962921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136035, -0.125909, -0.982671,
		-0.912635, -0.370011, 0.173749,
		-0.385476, 0.920456, -0.064574,
		34.291927, 32.534397, 40.943550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144245, 31.902624, 40.424278>,  <34.561760, 31.890076, 40.988750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144245, 31.902624, 40.424278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.143101, 32.296928, 40.491531>,  <34.142414, 32.533512, 40.531883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.143101, 32.296928, 40.491531>,  <34.144245, 31.902624, 40.424278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143101, 32.296928, 40.491531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065434, 0.167589, -0.983683,
		-0.997853, -0.013814, 0.064023,
		-0.002859, 0.985760, 0.168133,
		34.142242, 32.592655, 40.541973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553070, 32.149746, 40.210384>,  <34.144245, 31.902624, 40.424278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553070, 32.149746, 40.210384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.793766, 32.469032, 40.199291>,  <33.938183, 32.660603, 40.192635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.793766, 32.469032, 40.199291>,  <33.553070, 32.149746, 40.210384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793766, 32.469032, 40.199291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112657, 0.050453, -0.992352,
		-0.790708, 0.600261, 0.120284,
		0.601739, 0.798211, -0.027730,
		33.974289, 32.708496, 40.190971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213047, 32.703274, 39.721920>,  <33.553070, 32.149746, 40.210384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213047, 32.703274, 39.721920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594845, 32.820965, 39.741409>,  <33.823921, 32.891579, 39.753101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594845, 32.820965, 39.741409>,  <33.213047, 32.703274, 39.721920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594845, 32.820965, 39.741409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002757, 0.172060, -0.985083,
		-0.298224, 0.940119, 0.165041,
		0.954492, 0.294230, 0.048720,
		33.881191, 32.909233, 39.756027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338570, 33.171070, 39.172546>,  <33.213047, 32.703274, 39.721920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338570, 33.171070, 39.172546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711819, 33.087292, 39.289452>,  <33.935768, 33.037025, 39.359592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711819, 33.087292, 39.289452>,  <33.338570, 33.171070, 39.172546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711819, 33.087292, 39.289452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293970, -0.023637, -0.955522,
		0.207041, 0.977534, 0.039516,
		0.933121, -0.209449, 0.292259,
		33.991756, 33.024456, 39.377129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809681, 33.611542, 38.870499>,  <33.338570, 33.171070, 39.172546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809681, 33.611542, 38.870499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061363, 33.312401, 38.955170>,  <34.212372, 33.132915, 39.005974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061363, 33.312401, 38.955170>,  <33.809681, 33.611542, 38.870499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061363, 33.312401, 38.955170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421501, 0.099501, -0.901353,
		0.653020, 0.656362, 0.377829,
		0.629208, -0.747856, 0.211681,
		34.250126, 33.088043, 39.018673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551353, 33.750507, 38.743572>,  <33.809681, 33.611542, 38.870499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551353, 33.750507, 38.743572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524971, 33.351387, 38.745975>,  <34.509140, 33.111916, 38.747417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524971, 33.351387, 38.745975>,  <34.551353, 33.750507, 38.743572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524971, 33.351387, 38.745975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381394, -0.030777, -0.923900,
		0.922056, -0.058647, 0.382587,
		-0.065959, -0.997804, 0.006010,
		34.505184, 33.052044, 38.747780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097172, 33.503670, 38.391605>,  <34.551353, 33.750507, 38.743572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097172, 33.503670, 38.391605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.894386, 33.159882, 38.365398>,  <34.772717, 32.953609, 38.349674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.894386, 33.159882, 38.365398>,  <35.097172, 33.503670, 38.391605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894386, 33.159882, 38.365398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463662, -0.207835, -0.861291,
		0.726639, -0.467023, 0.503870,
		-0.506964, -0.859473, -0.065520,
		34.742298, 32.902039, 38.345741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673035, 32.932034, 38.301704>,  <35.097172, 33.503670, 38.391605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673035, 32.932034, 38.301704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320091, 32.807060, 38.160950>,  <35.108326, 32.732079, 38.076496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320091, 32.807060, 38.160950>,  <35.673035, 32.932034, 38.301704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320091, 32.807060, 38.160950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448978, -0.335041, -0.828351,
		0.140905, -0.888896, 0.435902,
		-0.882363, -0.312429, -0.351885,
		35.055382, 32.713333, 38.055386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763161, 32.247276, 38.154579>,  <35.673035, 32.932034, 38.301704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763161, 32.247276, 38.154579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462147, 32.365433, 37.919144>,  <35.281536, 32.436325, 37.777882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462147, 32.365433, 37.919144>,  <35.763161, 32.247276, 38.154579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462147, 32.365433, 37.919144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502559, -0.319995, -0.803142,
		-0.425586, -0.900193, 0.092355,
		-0.752536, 0.295392, -0.588586,
		35.236385, 32.454048, 37.742569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789978, 31.733084, 37.652802>,  <35.763161, 32.247276, 38.154579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789978, 31.733084, 37.652802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.557003, 32.007278, 37.478046>,  <35.417217, 32.171795, 37.373196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.557003, 32.007278, 37.478046>,  <35.789978, 31.733084, 37.652802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557003, 32.007278, 37.478046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486991, -0.136071, -0.862743,
		-0.650847, -0.715256, -0.254573,
		-0.582442, 0.685488, -0.436884,
		35.382271, 32.212925, 37.346981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564411, 31.399462, 37.103844>,  <35.789978, 31.733084, 37.652802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564411, 31.399462, 37.103844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478565, 31.783949, 37.034561>,  <35.427059, 32.014641, 36.992992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478565, 31.783949, 37.034561>,  <35.564411, 31.399462, 37.103844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478565, 31.783949, 37.034561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545407, -0.029169, -0.837664,
		-0.810230, -0.274244, -0.517994,
		-0.214615, 0.961218, -0.173208,
		35.414181, 32.072315, 36.982597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821205, 31.397068, 36.437748>,  <35.564411, 31.399462, 37.103844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821205, 31.397068, 36.437748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683495, 31.768427, 36.493683>,  <35.600868, 31.991241, 36.527245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683495, 31.768427, 36.493683>,  <35.821205, 31.397068, 36.437748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683495, 31.768427, 36.493683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424382, 0.286741, -0.858883,
		-0.837482, -0.236345, -0.492712,
		-0.344273, 0.928397, 0.139840,
		35.580212, 32.046947, 36.535633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346142, 31.561012, 35.816280>,  <35.821205, 31.397068, 36.437748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346142, 31.561012, 35.816280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537563, 31.868511, 35.985996>,  <35.652416, 32.053009, 36.087826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537563, 31.868511, 35.985996>,  <35.346142, 31.561012, 35.816280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537563, 31.868511, 35.985996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435969, 0.211415, -0.874777,
		-0.762182, 0.603601, -0.233976,
		0.478550, 0.768745, 0.424288,
		35.681129, 32.099136, 36.113281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167183, 32.178204, 35.388916>,  <35.346142, 31.561012, 35.816280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167183, 32.178204, 35.388916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499912, 32.220577, 35.606850>,  <35.699551, 32.246002, 35.737610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499912, 32.220577, 35.606850>,  <35.167183, 32.178204, 35.388916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499912, 32.220577, 35.606850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491161, 0.316681, -0.811464,
		-0.258502, 0.942598, 0.211391,
		0.831828, 0.105938, 0.544830,
		35.749462, 32.252357, 35.770298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396957, 32.852654, 35.228168>,  <35.167183, 32.178204, 35.388916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396957, 32.852654, 35.228168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699192, 32.626053, 35.359718>,  <35.880535, 32.490093, 35.438648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699192, 32.626053, 35.359718>,  <35.396957, 32.852654, 35.228168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699192, 32.626053, 35.359718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507785, 0.189384, -0.840409,
		0.413810, 0.802003, 0.430758,
		0.755589, -0.566503, 0.328876,
		35.925869, 32.456100, 35.458382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962471, 33.260002, 35.226536>,  <35.396957, 32.852654, 35.228168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.962471, 33.260002, 35.226536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.115353, 32.890499, 35.236275>,  <36.207081, 32.668797, 35.242119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.115353, 32.890499, 35.236275>,  <35.962471, 33.260002, 35.226536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115353, 32.890499, 35.236275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647937, 0.249111, -0.719807,
		0.658861, 0.290888, 0.693748,
		0.382203, -0.923758, 0.024348,
		36.230015, 32.613373, 35.243580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643181, 33.436562, 35.322289>,  <35.962471, 33.260002, 35.226536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643181, 33.436562, 35.322289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583130, 33.077454, 35.156654>,  <36.547100, 32.861988, 35.057274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583130, 33.077454, 35.156654>,  <36.643181, 33.436562, 35.322289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583130, 33.077454, 35.156654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584001, 0.257430, -0.769852,
		0.797750, -0.357402, 0.485653,
		-0.150125, -0.897772, -0.414088,
		36.538094, 32.808121, 35.032429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255688, 33.170811, 35.164394>,  <36.643181, 33.436562, 35.322289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255688, 33.170811, 35.164394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.005325, 32.974586, 34.921879>,  <36.855106, 32.856850, 34.776367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.005325, 32.974586, 34.921879>,  <37.255688, 33.170811, 35.164394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005325, 32.974586, 34.921879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682277, 0.032177, -0.730385,
		0.377809, -0.870811, 0.314561,
		-0.625906, -0.490564, -0.606291,
		36.817554, 32.827415, 34.739990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666950, 32.957794, 34.702175>,  <37.255688, 33.170811, 35.164394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666950, 32.957794, 34.702175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.312244, 32.940388, 34.518108>,  <37.099422, 32.929943, 34.407669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.312244, 32.940388, 34.518108>,  <37.666950, 32.957794, 34.702175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312244, 32.940388, 34.518108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428830, 0.294059, -0.854186,
		0.172488, -0.954796, -0.242100,
		-0.886765, -0.043517, -0.460167,
		37.046215, 32.927334, 34.380058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291786, 33.361698, 34.848873>,  <37.666950, 32.957794, 34.702175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.291786, 33.361698, 34.848873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.414898, 33.196457, 35.191711>,  <38.488766, 33.097313, 35.397415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.414898, 33.196457, 35.191711>,  <38.291786, 33.361698, 34.848873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414898, 33.196457, 35.191711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865705, -0.252155, -0.432404,
		0.394748, 0.875080, 0.280015,
		0.307781, -0.413101, 0.857099,
		38.507233, 33.072525, 35.448841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937790, 33.680935, 35.164272>,  <38.291786, 33.361698, 34.848873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.937790, 33.680935, 35.164272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927448, 33.287067, 35.233273>,  <38.921246, 33.050747, 35.274673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927448, 33.287067, 35.233273>,  <38.937790, 33.680935, 35.164272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927448, 33.287067, 35.233273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781509, -0.127508, -0.610725,
		0.623358, 0.119024, 0.772825,
		-0.025850, -0.984670, 0.172502,
		38.919693, 32.991665, 35.285023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624367, 33.588001, 35.265507>,  <38.937790, 33.680935, 35.164272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624367, 33.588001, 35.265507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456264, 33.245098, 35.146515>,  <39.355404, 33.039356, 35.075119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456264, 33.245098, 35.146515>,  <39.624367, 33.588001, 35.265507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456264, 33.245098, 35.146515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849692, -0.256723, -0.460561,
		0.318452, -0.446316, 0.836296,
		-0.420252, -0.857260, -0.297478,
		39.330189, 32.987919, 35.057270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.332508, 33.504627, 35.016338>,  <39.624367, 33.588001, 35.265507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.332508, 33.504627, 35.016338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.422958, 33.555084, 35.402699>,  <40.477230, 33.585358, 35.634514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.422958, 33.555084, 35.402699>,  <40.332508, 33.504627, 35.016338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.422958, 33.555084, 35.402699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291449, -0.954918, 0.056475,
		0.929476, 0.268739, -0.252694,
		0.226125, 0.126140, 0.965897,
		40.490795, 33.592926, 35.692467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.987583, 33.322147, 35.253139>,  <40.332508, 33.504627, 35.016338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.987583, 33.322147, 35.253139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.779724, 33.288872, 35.593269>,  <40.655010, 33.268906, 35.797348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.779724, 33.288872, 35.593269>,  <40.987583, 33.322147, 35.253139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779724, 33.288872, 35.593269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377998, -0.914930, 0.141495,
		0.766214, 0.394947, 0.506886,
		-0.519648, -0.083186, 0.850321,
		40.623829, 33.263916, 35.848366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.536461, 33.213341, 35.797520>,  <40.987583, 33.322147, 35.253139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.536461, 33.213341, 35.797520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.184505, 33.059250, 35.908802>,  <40.973331, 32.966793, 35.975571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.184505, 33.059250, 35.908802>,  <41.536461, 33.213341, 35.797520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.184505, 33.059250, 35.908802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434656, -0.889077, 0.143585,
		0.192033, 0.247263, 0.949729,
		-0.879885, -0.385232, 0.278206,
		40.920540, 32.943680, 35.992264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.054424, 33.761383, 36.043407>,  <41.536461, 33.213341, 35.797520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.054424, 33.761383, 36.043407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.231701, 33.989555, 36.320015>,  <42.338066, 34.126457, 36.485977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.231701, 33.989555, 36.320015>,  <42.054424, 33.761383, 36.043407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.231701, 33.989555, 36.320015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047742, 0.755298, -0.653640,
		-0.895155, 0.322702, 0.307508,
		0.443191, 0.570428, 0.691516,
		42.364658, 34.160683, 36.527470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.778957, 34.441902, 36.038063>,  <42.054424, 33.761383, 36.043407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.778957, 34.441902, 36.038063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.165966, 34.442356, 36.139179>,  <42.398170, 34.442627, 36.199848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.165966, 34.442356, 36.139179>,  <41.778957, 34.441902, 36.038063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.165966, 34.442356, 36.139179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179965, 0.699185, -0.691920,
		-0.177529, 0.714940, 0.676272,
		0.967521, 0.001131, 0.252790,
		42.456223, 34.442696, 36.215015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.987183, 35.101521, 36.298534>,  <41.778957, 34.441902, 36.038063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.987183, 35.101521, 36.298534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.283974, 34.895721, 36.126602>,  <42.462048, 34.772240, 36.023441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.283974, 34.895721, 36.126602>,  <41.987183, 35.101521, 36.298534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.283974, 34.895721, 36.126602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301921, 0.828875, -0.470967,
		0.598591, 0.219672, 0.770346,
		0.741979, -0.514500, -0.429834,
		42.506569, 34.741371, 35.997650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.639030, 35.491032, 36.388092>,  <41.987183, 35.101521, 36.298534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.639030, 35.491032, 36.388092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.641315, 35.248051, 36.070358>,  <42.642689, 35.102261, 35.879719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.641315, 35.248051, 36.070358>,  <42.639030, 35.491032, 36.388092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.641315, 35.248051, 36.070358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214447, 0.776611, -0.592357,
		0.976719, -0.166958, 0.134704,
		0.005714, -0.607454, -0.794335,
		42.643028, 35.065815, 35.832058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.259605, 35.680355, 35.929562>,  <42.639030, 35.491032, 36.388092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.259605, 35.680355, 35.929562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.987659, 35.481239, 35.714161>,  <42.824490, 35.361771, 35.584919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.987659, 35.481239, 35.714161>,  <43.259605, 35.680355, 35.929562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.987659, 35.481239, 35.714161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041701, 0.706893, -0.706090,
		0.732147, -0.502505, -0.459836,
		-0.679869, -0.497786, -0.538505,
		42.783699, 35.331902, 35.552608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.471424, 35.916710, 35.369705>,  <43.259605, 35.680355, 35.929562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.471424, 35.916710, 35.369705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.103222, 35.777245, 35.299156>,  <42.882301, 35.693565, 35.256828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.103222, 35.777245, 35.299156>,  <43.471424, 35.916710, 35.369705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.103222, 35.777245, 35.299156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096229, 0.639771, -0.762517,
		0.378700, -0.684928, -0.622464,
		-0.920503, -0.348664, -0.176371,
		42.827072, 35.672646, 35.246246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.496014, 35.890141, 34.666290>,  <43.471424, 35.916710, 35.369705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.496014, 35.890141, 34.666290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.111446, 35.888042, 34.776302>,  <42.880707, 35.886784, 34.842312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.111446, 35.888042, 34.776302>,  <43.496014, 35.890141, 34.666290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.111446, 35.888042, 34.776302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226129, 0.584393, -0.779327,
		-0.156640, -0.811454, -0.563033,
		-0.961420, -0.005245, 0.275032,
		42.823021, 35.886471, 34.858810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.170658, 35.765896, 34.088009>,  <43.496014, 35.890141, 34.666290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.170658, 35.765896, 34.088009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.875423, 35.923271, 34.307255>,  <42.698280, 36.017696, 34.438801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.875423, 35.923271, 34.307255>,  <43.170658, 35.765896, 34.088009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.875423, 35.923271, 34.307255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358273, 0.459829, -0.812525,
		-0.571719, -0.796091, -0.198435,
		-0.738090, 0.393442, 0.548111,
		42.653996, 36.041306, 34.471687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.547779, 35.638409, 33.618244>,  <43.170658, 35.765896, 34.088009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.547779, 35.638409, 33.618244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.421932, 35.924969, 33.867336>,  <42.346424, 36.096905, 34.016792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.421932, 35.924969, 33.867336>,  <42.547779, 35.638409, 33.618244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.421932, 35.924969, 33.867336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360521, 0.516697, -0.776562,
		-0.878090, -0.468825, 0.095717,
		-0.314615, 0.716399, 0.622728,
		42.327549, 36.139889, 34.054153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.983231, 35.820312, 33.331383>,  <42.547779, 35.638409, 33.618244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.983231, 35.820312, 33.331383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.075123, 36.128258, 33.569553>,  <42.130257, 36.313026, 33.712456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.075123, 36.128258, 33.569553>,  <41.983231, 35.820312, 33.331383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.075123, 36.128258, 33.569553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384570, 0.633806, -0.671115,
		-0.894053, -0.074809, 0.441669,
		0.229727, 0.769866, 0.595426,
		42.144039, 36.359219, 33.748180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.375946, 36.212540, 33.489300>,  <41.983231, 35.820312, 33.331383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.375946, 36.212540, 33.489300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.699623, 36.446495, 33.511589>,  <41.893829, 36.586868, 33.524963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.699623, 36.446495, 33.511589>,  <41.375946, 36.212540, 33.489300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.699623, 36.446495, 33.511589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405835, 0.625002, -0.666837,
		-0.424852, 0.516988, 0.743118,
		0.809197, 0.584890, 0.055722,
		41.942383, 36.621964, 33.528305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.102520, 36.823772, 33.284031>,  <41.375946, 36.212540, 33.489300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.102520, 36.823772, 33.284031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.490322, 36.921333, 33.274521>,  <41.723003, 36.979870, 33.268814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.490322, 36.921333, 33.274521>,  <41.102520, 36.823772, 33.284031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.490322, 36.921333, 33.274521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162320, 0.566454, -0.807949,
		-0.183589, 0.787174, 0.588772,
		0.969509, 0.243900, -0.023780,
		41.781174, 36.994503, 33.267387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.138268, 37.625984, 33.244347>,  <41.102520, 36.823772, 33.284031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.138268, 37.625984, 33.244347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.472557, 37.449520, 33.113537>,  <41.673130, 37.343643, 33.035053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.472557, 37.449520, 33.113537>,  <41.138268, 37.625984, 33.244347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.472557, 37.449520, 33.113537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137638, 0.408223, -0.902446,
		0.531622, 0.799207, 0.280441,
		0.835724, -0.441160, -0.327022,
		41.723274, 37.317173, 33.015430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.537971, 38.133556, 32.996201>,  <41.138268, 37.625984, 33.244347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.537971, 38.133556, 32.996201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.634945, 37.786648, 32.822269>,  <41.693127, 37.578503, 32.717911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.634945, 37.786648, 32.822269>,  <41.537971, 38.133556, 32.996201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.634945, 37.786648, 32.822269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152174, 0.408654, -0.899914,
		0.958160, 0.284335, -0.032906,
		0.242430, -0.867269, -0.434824,
		41.707672, 37.526466, 32.691822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.055840, 38.251774, 32.436672>,  <41.537971, 38.133556, 32.996201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.055840, 38.251774, 32.436672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.837067, 37.922646, 32.374931>,  <41.705803, 37.725166, 32.337887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.837067, 37.922646, 32.374931>,  <42.055840, 38.251774, 32.436672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.837067, 37.922646, 32.374931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191566, 0.302482, -0.933706,
		0.814963, -0.481109, -0.323063,
		-0.546935, -0.822824, -0.154348,
		41.672985, 37.675800, 32.328629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.207825, 38.154957, 31.729496>,  <42.055840, 38.251774, 32.436672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.207825, 38.154957, 31.729496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.924019, 37.878891, 31.786428>,  <41.753735, 37.713249, 31.820587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.924019, 37.878891, 31.786428>,  <42.207825, 38.154957, 31.729496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.924019, 37.878891, 31.786428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216050, 0.020796, -0.976161,
		0.670754, -0.723351, -0.163866,
		-0.709515, -0.690167, 0.142331,
		41.711163, 37.671841, 31.829128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.270519, 37.681080, 31.122908>,  <42.207825, 38.154957, 31.729496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.270519, 37.681080, 31.122908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.917446, 37.618313, 31.300104>,  <41.705601, 37.580654, 31.406422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.917446, 37.618313, 31.300104>,  <42.270519, 37.681080, 31.122908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.917446, 37.618313, 31.300104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429709, -0.112205, -0.895969,
		0.190299, -0.981217, 0.031613,
		-0.882687, -0.156918, 0.442990,
		41.652641, 37.571239, 31.433001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.026093, 36.992645, 30.898258>,  <42.270519, 37.681080, 31.122908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.026093, 36.992645, 30.898258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.703888, 37.201763, 31.009859>,  <41.510567, 37.327232, 31.076820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.703888, 37.201763, 31.009859>,  <42.026093, 36.992645, 30.898258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.703888, 37.201763, 31.009859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356340, -0.051143, -0.932956,
		-0.473478, -0.850922, 0.227489,
		-0.805507, 0.522797, 0.279002,
		41.462234, 37.358601, 31.093559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.423569, 36.628052, 30.736732>,  <42.026093, 36.992645, 30.898258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.423569, 36.628052, 30.736732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.302959, 37.008244, 30.766838>,  <41.230595, 37.236359, 30.784901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.302959, 37.008244, 30.766838>,  <41.423569, 36.628052, 30.736732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.302959, 37.008244, 30.766838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451632, -0.072861, -0.889224,
		-0.839709, -0.302113, 0.451238,
		-0.301524, 0.950483, 0.075262,
		41.212502, 37.293388, 30.789417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661190, 36.640041, 30.535660>,  <41.423569, 36.628052, 30.736732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.661190, 36.640041, 30.535660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.810081, 37.010532, 30.511820>,  <40.899418, 37.232826, 30.497517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.810081, 37.010532, 30.511820>,  <40.661190, 36.640041, 30.535660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.810081, 37.010532, 30.511820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386632, 0.096360, -0.917186,
		-0.843779, 0.364445, 0.393977,
		0.372227, 0.926226, -0.059600,
		40.921749, 37.288399, 30.493940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118332, 37.065178, 30.352314>,  <40.661190, 36.640041, 30.535660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118332, 37.065178, 30.352314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.454693, 37.257198, 30.252361>,  <40.656509, 37.372410, 30.192390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.454693, 37.257198, 30.252361>,  <40.118332, 37.065178, 30.352314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.454693, 37.257198, 30.252361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289371, 0.008646, -0.957178,
		-0.457333, 0.877199, 0.146183,
		0.840899, 0.480050, -0.249881,
		40.706963, 37.401215, 30.177397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916218, 37.560684, 29.901026>,  <40.118332, 37.065178, 30.352314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.916218, 37.560684, 29.901026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310242, 37.522892, 29.843441>,  <40.546658, 37.500217, 29.808889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310242, 37.522892, 29.843441>,  <39.916218, 37.560684, 29.901026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310242, 37.522892, 29.843441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133535, 0.108716, -0.985063,
		0.108716, 0.989573, 0.094477,
		0.985063, -0.094477, -0.143962,
		40.605762, 37.494549, 29.800253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.032543, 38.191784, 29.559086>,  <39.916218, 37.560684, 29.901026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.032543, 38.191784, 29.559086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310753, 37.911270, 29.496544>,  <40.477680, 37.742962, 29.459019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310753, 37.911270, 29.496544>,  <40.032543, 38.191784, 29.559086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310753, 37.911270, 29.496544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022363, 0.196381, -0.980273,
		0.718152, 0.685302, 0.120906,
		0.695527, -0.701281, -0.156357,
		40.519409, 37.700886, 29.449636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541317, 38.512928, 29.064192>,  <40.032543, 38.191784, 29.559086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.541317, 38.512928, 29.064192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.562714, 38.113834, 29.047905>,  <40.575550, 37.874378, 29.038134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.562714, 38.113834, 29.047905>,  <40.541317, 38.512928, 29.064192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.562714, 38.113834, 29.047905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121109, 0.046957, -0.991528,
		0.991197, 0.048108, 0.123347,
		0.053492, -0.997738, -0.040717,
		40.578762, 37.814514, 29.035690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.103241, 38.275417, 28.625700>,  <40.541317, 38.512928, 29.064192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.103241, 38.275417, 28.625700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.910011, 37.925541, 28.641430>,  <40.794075, 37.715614, 28.650867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.910011, 37.925541, 28.641430>,  <41.103241, 38.275417, 28.625700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.910011, 37.925541, 28.641430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355928, -0.237211, -0.903906,
		0.799971, -0.422657, 0.425919,
		-0.483075, -0.874696, 0.039327,
		40.765087, 37.663132, 28.653229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.620758, 37.703465, 28.517031>,  <41.103241, 38.275417, 28.625700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.620758, 37.703465, 28.517031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.254246, 37.596149, 28.398073>,  <41.034336, 37.531761, 28.326698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.254246, 37.596149, 28.398073>,  <41.620758, 37.703465, 28.517031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.254246, 37.596149, 28.398073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350996, -0.180195, -0.918875,
		0.192938, -0.946335, 0.259280,
		-0.916284, -0.268292, -0.297393,
		40.979359, 37.515663, 28.308855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.241890, 37.804440, 28.758963>,  <41.620758, 37.703465, 28.517031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.241890, 37.804440, 28.758963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.130779, 38.073666, 29.033138>,  <42.064114, 38.235199, 29.197643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.130779, 38.073666, 29.033138>,  <42.241890, 37.804440, 28.758963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.130779, 38.073666, 29.033138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292403, -0.738902, 0.607062,
		0.915064, -0.031799, 0.402053,
		-0.277774, 0.673062, 0.685441,
		42.047447, 38.275585, 29.238770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.955940, 38.361210, 28.461908>,  <42.241890, 37.804440, 28.758963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.955940, 38.361210, 28.461908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.613667, 38.568069, 28.454262>,  <41.408302, 38.692184, 28.449673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.613667, 38.568069, 28.454262>,  <41.955940, 38.361210, 28.461908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.613667, 38.568069, 28.454262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415058, 0.707894, 0.571501,
		0.309083, 0.481089, -0.820379,
		-0.855684, 0.517146, -0.019118,
		41.356960, 38.723213, 28.448526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.105324, 38.949757, 28.211048>,  <41.955940, 38.361210, 28.461908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.105324, 38.949757, 28.211048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.784786, 38.998161, 28.445383>,  <41.592464, 39.027203, 28.585985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.784786, 38.998161, 28.445383>,  <42.105324, 38.949757, 28.211048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.784786, 38.998161, 28.445383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466144, 0.740086, 0.484750,
		-0.374912, 0.661536, -0.649470,
		-0.801343, 0.121008, 0.585838,
		41.544384, 39.034462, 28.621134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.162472, 38.293934, 27.682932>,  <42.105324, 38.949757, 28.211048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.162472, 38.293934, 27.682932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.862862, 38.522396, 27.548624>,  <41.683094, 38.659473, 27.468039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.862862, 38.522396, 27.548624>,  <42.162472, 38.293934, 27.682932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.862862, 38.522396, 27.548624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351465, -0.087068, -0.932143,
		-0.561632, -0.816212, -0.135523,
		-0.749027, 0.571154, -0.335770,
		41.638153, 38.693741, 27.447893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.817585, 38.366489, 28.170202>,  <42.162472, 38.293934, 27.682932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.817585, 38.366489, 28.170202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.167580, 38.514236, 28.045000>,  <43.377575, 38.602886, 27.969879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.167580, 38.514236, 28.045000>,  <42.817585, 38.366489, 28.170202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.167580, 38.514236, 28.045000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442584, -0.348132, 0.826392,
		0.196278, -0.861609, -0.468087,
		0.874982, 0.369370, -0.313004,
		43.430073, 38.625046, 27.951099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.456486, 37.936604, 28.255434>,  <42.817585, 38.366489, 28.170202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.456486, 37.936604, 28.255434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.562321, 38.318279, 28.311317>,  <43.625820, 38.547283, 28.344847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.562321, 38.318279, 28.311317>,  <43.456486, 37.936604, 28.255434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.562321, 38.318279, 28.311317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424788, -0.245374, 0.871405,
		0.865766, -0.171215, -0.470250,
		0.264585, 0.954189, 0.139707,
		43.641697, 38.604538, 28.353230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.205231, 37.977657, 28.263308>,  <43.456486, 37.936604, 28.255434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.205231, 37.977657, 28.263308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.011158, 38.261246, 28.468033>,  <43.894714, 38.431400, 28.590868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.011158, 38.261246, 28.468033>,  <44.205231, 37.977657, 28.263308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.011158, 38.261246, 28.468033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442998, -0.305345, 0.842922,
		0.753888, 0.635705, -0.165925,
		-0.485185, 0.708973, 0.511812,
		43.865601, 38.473938, 28.621576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.708763, 38.213566, 28.711260>,  <44.205231, 37.977657, 28.263308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.708763, 38.213566, 28.711260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.356579, 38.298630, 28.880756>,  <44.145267, 38.349670, 28.982454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.356579, 38.298630, 28.880756>,  <44.708763, 38.213566, 28.711260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.356579, 38.298630, 28.880756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310827, -0.415964, 0.854611,
		0.358006, 0.884165, 0.300140,
		-0.880465, 0.212665, 0.423740,
		44.092438, 38.362431, 29.007877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.884174, 38.629566, 29.369926>,  <44.708763, 38.213566, 28.711260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.884174, 38.629566, 29.369926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.512943, 38.488586, 29.418005>,  <44.290203, 38.403999, 29.446852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.512943, 38.488586, 29.418005>,  <44.884174, 38.629566, 29.369926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.512943, 38.488586, 29.418005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238591, -0.314984, 0.918618,
		-0.285904, 0.881229, 0.376422,
		-0.928080, -0.352448, 0.120198,
		44.234520, 38.382851, 29.454065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.646564, 38.824219, 29.958958>,  <44.884174, 38.629566, 29.369926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.646564, 38.824219, 29.958958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.408218, 38.512245, 29.882389>,  <44.265209, 38.325062, 29.836449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.408218, 38.512245, 29.882389>,  <44.646564, 38.824219, 29.958958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.408218, 38.512245, 29.882389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081553, -0.295891, 0.951734,
		-0.798930, 0.551498, 0.239919,
		-0.595869, -0.779935, -0.191420,
		44.229458, 38.278263, 29.824963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.031052, 38.932438, 30.436577>,  <44.646564, 38.824219, 29.958958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.031052, 38.932438, 30.436577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.068691, 38.556870, 30.304173>,  <44.091274, 38.331528, 30.224730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.068691, 38.556870, 30.304173>,  <44.031052, 38.932438, 30.436577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.068691, 38.556870, 30.304173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053684, -0.327219, 0.943423,
		-0.994114, -0.106548, 0.019613,
		0.094102, -0.938923, -0.331013,
		44.096920, 38.275192, 30.204868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.655453, 38.638172, 30.882336>,  <44.031052, 38.932438, 30.436577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.655453, 38.638172, 30.882336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.865894, 38.324654, 30.750343>,  <43.992157, 38.136543, 30.671148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.865894, 38.324654, 30.750343>,  <43.655453, 38.638172, 30.882336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.865894, 38.324654, 30.750343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000192, -0.387910, 0.921697,
		-0.850423, -0.484968, -0.203928,
		0.526099, -0.783793, -0.329981,
		44.023724, 38.089516, 30.651348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.487534, 38.038044, 31.348431>,  <43.655453, 38.638172, 30.882336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.487534, 38.038044, 31.348431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.806889, 37.915489, 31.141081>,  <43.998501, 37.841957, 31.016672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.806889, 37.915489, 31.141081>,  <43.487534, 38.038044, 31.348431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.806889, 37.915489, 31.141081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277969, -0.576129, 0.768641,
		-0.534149, -0.757763, -0.374807,
		0.798384, -0.306384, -0.518374,
		44.046406, 37.823574, 30.985569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.552322, 37.233334, 31.355288>,  <43.487534, 38.038044, 31.348431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.552322, 37.233334, 31.355288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.898846, 37.422176, 31.290028>,  <44.106762, 37.535480, 31.250872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.898846, 37.422176, 31.290028>,  <43.552322, 37.233334, 31.355288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.898846, 37.422176, 31.290028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437480, -0.559494, 0.703973,
		0.241069, -0.681236, -0.691233,
		0.866312, 0.472107, -0.163150,
		44.158741, 37.563808, 31.241083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.008762, 36.734406, 31.307035>,  <43.552322, 37.233334, 31.355288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.008762, 36.734406, 31.307035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.250748, 37.046543, 31.370377>,  <44.395939, 37.233826, 31.408381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.250748, 37.046543, 31.370377>,  <44.008762, 36.734406, 31.307035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.250748, 37.046543, 31.370377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573491, -0.564977, 0.593218,
		0.552383, -0.268061, -0.789314,
		0.604963, 0.780348, 0.158353,
		44.432236, 37.280647, 31.417883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.692802, 36.476799, 31.203114>,  <44.008762, 36.734406, 31.307035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.692802, 36.476799, 31.203114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.716568, 36.805981, 31.429110>,  <44.730827, 37.003490, 31.564707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.716568, 36.805981, 31.429110>,  <44.692802, 36.476799, 31.203114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.716568, 36.805981, 31.429110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730960, -0.421325, 0.536827,
		0.679829, 0.381093, -0.626578,
		0.059412, 0.822954, 0.564992,
		44.734390, 37.052868, 31.598608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.468372, 36.545345, 31.395615>,  <44.692802, 36.476799, 31.203114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.468372, 36.545345, 31.395615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.275848, 36.772350, 31.662828>,  <45.160336, 36.908554, 31.823156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.275848, 36.772350, 31.662828>,  <45.468372, 36.545345, 31.395615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.275848, 36.772350, 31.662828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360992, -0.566150, 0.741053,
		0.798767, 0.597829, 0.067623,
		-0.481308, 0.567517, 0.668033,
		45.131454, 36.942604, 31.863237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.915085, 36.702248, 32.050289>,  <45.468372, 36.545345, 31.395615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.915085, 36.702248, 32.050289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.531261, 36.735371, 32.157913>,  <45.300968, 36.755245, 32.222488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.531261, 36.735371, 32.157913>,  <45.915085, 36.702248, 32.050289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.531261, 36.735371, 32.157913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173169, -0.579919, 0.796057,
		0.221954, 0.810455, 0.542125,
		-0.959557, 0.082809, 0.269061,
		45.243393, 36.760212, 32.238632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.954002, 36.655743, 32.793453>,  <45.915085, 36.702248, 32.050289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.954002, 36.655743, 32.793453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.567074, 36.592060, 32.714523>,  <45.334915, 36.553848, 32.667164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.567074, 36.592060, 32.714523>,  <45.954002, 36.655743, 32.793453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.567074, 36.592060, 32.714523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068346, -0.585725, 0.807623,
		-0.244162, 0.794719, 0.555704,
		-0.967323, -0.159211, -0.197328,
		45.276878, 36.544296, 32.655323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.710941, 36.656734, 33.474121>,  <45.954002, 36.655743, 32.793453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.710941, 36.656734, 33.474121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.440121, 36.499416, 33.225311>,  <45.277626, 36.405025, 33.076027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.440121, 36.499416, 33.225311>,  <45.710941, 36.656734, 33.474121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.440121, 36.499416, 33.225311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229461, -0.690264, 0.686209,
		-0.699244, 0.607332, 0.377101,
		-0.677056, -0.393298, -0.622022,
		45.237003, 36.381428, 33.038704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.042274, 36.733356, 33.826820>,  <45.710941, 36.656734, 33.474121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.042274, 36.733356, 33.826820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.014568, 36.434471, 33.562435>,  <44.997944, 36.255138, 33.403805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.014568, 36.434471, 33.562435>,  <45.042274, 36.733356, 33.826820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.014568, 36.434471, 33.562435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360831, -0.598929, 0.714902,
		-0.930055, 0.288015, -0.228132,
		-0.069268, -0.747216, -0.660962,
		44.993790, 36.210308, 33.364147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.328465, 36.578777, 33.816681>,  <45.042274, 36.733356, 33.826820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.328465, 36.578777, 33.816681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.527168, 36.254265, 33.693359>,  <44.646389, 36.059555, 33.619366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.527168, 36.254265, 33.693359>,  <44.328465, 36.578777, 33.816681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.527168, 36.254265, 33.693359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329017, -0.504757, 0.798103,
		-0.803108, -0.295023, -0.517666,
		0.496754, -0.811284, -0.308307,
		44.676193, 36.010880, 33.600868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.926067, 35.999771, 33.961235>,  <44.328465, 36.578777, 33.816681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.926067, 35.999771, 33.961235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.279350, 35.816540, 33.921032>,  <44.491322, 35.706600, 33.896908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.279350, 35.816540, 33.921032>,  <43.926067, 35.999771, 33.961235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.279350, 35.816540, 33.921032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206675, -0.572567, 0.793380,
		-0.420978, -0.679950, -0.600371,
		0.883211, -0.458078, -0.100509,
		44.544315, 35.679115, 33.890881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.789185, 35.253006, 33.904152>,  <43.926067, 35.999771, 33.961235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.789185, 35.253006, 33.904152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.167850, 35.273460, 34.031406>,  <44.395050, 35.285732, 34.107758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.167850, 35.273460, 34.031406>,  <43.789185, 35.253006, 33.904152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.167850, 35.273460, 34.031406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140291, -0.823419, 0.549819,
		0.290077, -0.565125, -0.772327,
		0.946665, 0.051140, 0.318137,
		44.451851, 35.288803, 34.126846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.041489, 34.511101, 33.854294>,  <43.789185, 35.253006, 33.904152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.041489, 34.511101, 33.854294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.334885, 34.678623, 34.068432>,  <44.510921, 34.779137, 34.196915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.334885, 34.678623, 34.068432>,  <44.041489, 34.511101, 33.854294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.334885, 34.678623, 34.068432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025946, -0.804299, 0.593658,
		0.679200, -0.421554, -0.600815,
		0.733494, 0.418802, 0.535343,
		44.554932, 34.804264, 34.229034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.528084, 33.936726, 34.022114>,  <44.041489, 34.511101, 33.854294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.528084, 33.936726, 34.022114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.602737, 34.211494, 34.303055>,  <44.647530, 34.376354, 34.471619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.602737, 34.211494, 34.303055>,  <44.528084, 33.936726, 34.022114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.602737, 34.211494, 34.303055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046601, -0.707924, 0.704750,
		0.981323, -0.164263, -0.100113,
		0.186637, 0.686922, 0.702357,
		44.658730, 34.417572, 34.513763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.244694, 33.928257, 34.254803>,  <44.528084, 33.936726, 34.022114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.244694, 33.928257, 34.254803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.016518, 34.085087, 34.543491>,  <44.879612, 34.179184, 34.716705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.016518, 34.085087, 34.543491>,  <45.244694, 33.928257, 34.254803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.016518, 34.085087, 34.543491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200506, -0.785649, 0.585281,
		0.796491, 0.478575, 0.369551,
		-0.570438, 0.392074, 0.721719,
		44.845387, 34.202709, 34.760006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.689625, 33.910881, 34.880165>,  <45.244694, 33.928257, 34.254803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.689625, 33.910881, 34.880165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.324020, 33.972370, 35.030334>,  <45.104656, 34.009266, 35.120438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.324020, 33.972370, 35.030334>,  <45.689625, 33.910881, 34.880165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.324020, 33.972370, 35.030334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224264, -0.579691, 0.783367,
		0.338055, 0.800204, 0.495371,
		-0.914016, 0.153728, 0.375424,
		45.049816, 34.018490, 35.142963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.948090, 34.425697, 34.277447>,  <45.689625, 33.910881, 34.880165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.948090, 34.425697, 34.277447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.325188, 34.353111, 34.165520>,  <46.551449, 34.309559, 34.098362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.325188, 34.353111, 34.165520>,  <45.948090, 34.425697, 34.277447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.325188, 34.353111, 34.165520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323053, 0.705319, 0.631001,
		0.082855, -0.685270, 0.723561,
		0.942747, -0.181467, -0.279817,
		46.608013, 34.298672, 34.081573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.341454, 34.770218, 34.780544>,  <45.948090, 34.425697, 34.277447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.341454, 34.770218, 34.780544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.639935, 34.668427, 34.534481>,  <46.819023, 34.607353, 34.386841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.639935, 34.668427, 34.534481>,  <46.341454, 34.770218, 34.780544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.639935, 34.668427, 34.534481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620865, 0.599471, 0.505135,
		0.240227, -0.758865, 0.605321,
		0.746202, -0.254475, -0.615162,
		46.863796, 34.592083, 34.349934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.854027, 34.608456, 35.204201>,  <46.341454, 34.770218, 34.780544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.854027, 34.608456, 35.204201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.996548, 34.722008, 34.848118>,  <47.082058, 34.790138, 34.634468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.996548, 34.722008, 34.848118>,  <46.854027, 34.608456, 35.204201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.996548, 34.722008, 34.848118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634526, 0.625840, 0.453543,
		0.685878, -0.726453, 0.042853,
		0.356297, 0.283884, -0.890203,
		47.103436, 34.807171, 34.581059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.638081, 34.568466, 35.243111>,  <46.854027, 34.608456, 35.204201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.638081, 34.568466, 35.243111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.520725, 34.854801, 34.989655>,  <47.450314, 35.026604, 34.837582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.520725, 34.854801, 34.989655>,  <47.638081, 34.568466, 35.243111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.520725, 34.854801, 34.989655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606030, 0.651874, 0.455837,
		0.739358, -0.250265, -0.625074,
		-0.293390, 0.715840, -0.633637,
		47.432709, 35.069553, 34.799564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.191601, 35.727764, 42.830605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.879459, 35.491940, 42.913998>,  <32.692173, 35.350445, 42.964035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.879459, 35.491940, 42.913998>,  <33.191601, 35.727764, 42.830605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879459, 35.491940, 42.913998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186567, -0.098718, -0.977470,
		0.596861, -0.801667, -0.032958,
		-0.780352, -0.589563, 0.208486,
		32.645355, 35.315071, 42.976543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348721, 35.112415, 42.585091>,  <33.191601, 35.727764, 42.830605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348721, 35.112415, 42.585091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.949272, 35.117592, 42.605423>,  <32.709602, 35.120697, 42.617622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.949272, 35.117592, 42.605423>,  <33.348721, 35.112415, 42.585091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949272, 35.117592, 42.605423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052409, -0.208208, -0.976679,
		-0.002057, -0.977999, 0.208600,
		-0.998623, 0.012941, 0.050828,
		32.649685, 35.121475, 42.620670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116112, 34.488731, 42.271271>,  <33.348721, 35.112415, 42.585091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116112, 34.488731, 42.271271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.804317, 34.738571, 42.252209>,  <32.617241, 34.888474, 42.240772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.804317, 34.738571, 42.252209>,  <33.116112, 34.488731, 42.271271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804317, 34.738571, 42.252209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105860, -0.206323, -0.972741,
		-0.617406, -0.753197, 0.226946,
		-0.779489, 0.624601, -0.047652,
		32.570469, 34.925953, 42.237915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636932, 34.126183, 41.776817>,  <33.116112, 34.488731, 42.271271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636932, 34.126183, 41.776817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.531185, 34.511711, 41.790497>,  <32.467739, 34.743027, 41.798702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.531185, 34.511711, 41.790497>,  <32.636932, 34.126183, 41.776817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.531185, 34.511711, 41.790497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150407, -0.006179, -0.988605,
		-0.952622, -0.266494, 0.146599,
		-0.264363, 0.963817, 0.034196,
		32.451878, 34.800858, 41.800755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910152, 34.142006, 41.531116>,  <32.636932, 34.126183, 41.776817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910152, 34.142006, 41.531116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.111431, 34.483940, 41.480450>,  <32.232197, 34.689102, 41.450050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.111431, 34.483940, 41.480450>,  <31.910152, 34.142006, 41.531116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111431, 34.483940, 41.480450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251032, 0.004338, -0.967969,
		-0.826907, 0.518878, 0.216774,
		0.503198, 0.854837, -0.126668,
		32.262390, 34.740391, 41.442448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441980, 34.521225, 41.108650>,  <31.910152, 34.142006, 41.531116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441980, 34.521225, 41.108650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.777754, 34.734753, 41.067883>,  <31.979218, 34.862869, 41.043423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.777754, 34.734753, 41.067883>,  <31.441980, 34.521225, 41.108650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.777754, 34.734753, 41.067883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181242, 0.098179, -0.978526,
		-0.512351, 0.839879, 0.179165,
		0.839433, 0.533821, -0.101919,
		32.029583, 34.894897, 41.037308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.274399, 35.114674, 40.622555>,  <31.441980, 34.521225, 41.108650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.274399, 35.114674, 40.622555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.672529, 35.085983, 40.648430>,  <31.911407, 35.068768, 40.663956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.672529, 35.085983, 40.648430>,  <31.274399, 35.114674, 40.622555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.672529, 35.085983, 40.648430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086350, 0.360627, -0.928704,
		0.043285, 0.929948, 0.365134,
		0.995324, -0.071728, 0.064691,
		31.971127, 35.064465, 40.667839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.439001, 35.542988, 40.091240>,  <31.274399, 35.114674, 40.622555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.439001, 35.542988, 40.091240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.787079, 35.350430, 40.133240>,  <31.995926, 35.234894, 40.158440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.787079, 35.350430, 40.133240>,  <31.439001, 35.542988, 40.091240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787079, 35.350430, 40.133240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029068, -0.162567, -0.986269,
		0.491852, 0.861297, -0.127472,
		0.870193, -0.481394, 0.104995,
		32.048138, 35.206013, 40.164738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.877077, 35.876026, 39.611717>,  <31.439001, 35.542988, 40.091240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.877077, 35.876026, 39.611717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.042454, 35.522228, 39.698193>,  <32.141682, 35.309952, 39.750080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.042454, 35.522228, 39.698193>,  <31.877077, 35.876026, 39.611717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042454, 35.522228, 39.698193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311649, -0.085632, -0.946331,
		0.855535, 0.458630, 0.240247,
		0.413443, -0.884492, 0.216193,
		32.166485, 35.256882, 39.763050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536270, 35.905258, 39.346645>,  <31.877077, 35.876026, 39.611717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536270, 35.905258, 39.346645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.441990, 35.518059, 39.381130>,  <32.385422, 35.285740, 39.401821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.441990, 35.518059, 39.381130>,  <32.536270, 35.905258, 39.346645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441990, 35.518059, 39.381130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225655, -0.140801, -0.963979,
		0.945265, -0.207755, 0.251620,
		-0.235699, -0.967994, 0.086213,
		32.371281, 35.227661, 39.406994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145256, 35.489437, 39.152077>,  <32.536270, 35.905258, 39.346645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145256, 35.489437, 39.152077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.808533, 35.276405, 39.116932>,  <32.606499, 35.148586, 39.095844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.808533, 35.276405, 39.116932>,  <33.145256, 35.489437, 39.152077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.808533, 35.276405, 39.116932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243509, -0.229423, -0.942374,
		0.481734, -0.814690, 0.322818,
		-0.841805, -0.532582, -0.087863,
		32.555992, 35.116631, 39.090572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347755, 34.839039, 38.958382>,  <33.145256, 35.489437, 39.152077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347755, 34.839039, 38.958382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.969116, 34.863277, 38.831715>,  <32.741932, 34.877819, 38.755714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.969116, 34.863277, 38.831715>,  <33.347755, 34.839039, 38.958382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969116, 34.863277, 38.831715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275273, -0.359441, -0.891643,
		-0.167852, -0.931198, 0.323566,
		-0.946600, 0.060595, -0.316667,
		32.685135, 34.881454, 38.736713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258720, 34.210144, 38.613186>,  <33.347755, 34.839039, 38.958382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258720, 34.210144, 38.613186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.950001, 34.428387, 38.482555>,  <32.764771, 34.559330, 38.404179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.950001, 34.428387, 38.482555>,  <33.258720, 34.210144, 38.613186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950001, 34.428387, 38.482555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044639, -0.465831, -0.883747,
		-0.634305, -0.696648, 0.335170,
		-0.771793, 0.545604, -0.326576,
		32.718464, 34.592068, 38.384583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.828194, 33.771156, 38.318783>,  <33.258720, 34.210144, 38.613186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.828194, 33.771156, 38.318783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.734383, 34.109890, 38.127838>,  <32.678097, 34.313129, 38.013271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.734383, 34.109890, 38.127838>,  <32.828194, 33.771156, 38.318783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.734383, 34.109890, 38.127838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111842, -0.464293, -0.878592,
		-0.965654, -0.259443, 0.014178,
		-0.234527, 0.846830, -0.477363,
		32.664024, 34.363937, 37.984631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.495941, 33.521545, 37.682171>,  <32.828194, 33.771156, 38.318783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.495941, 33.521545, 37.682171> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.565475, 33.908260, 37.607220>,  <32.607197, 34.140289, 37.562248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.565475, 33.908260, 37.607220>,  <32.495941, 33.521545, 37.682171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565475, 33.908260, 37.607220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176834, -0.217824, -0.959835,
		-0.968767, 0.133721, -0.208826,
		0.173838, 0.966784, -0.187374,
		32.617626, 34.198296, 37.551006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035351, 33.638863, 37.076153>,  <32.495941, 33.521545, 37.682171>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035351, 33.638863, 37.076153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.323074, 33.916740, 37.076405>,  <32.495708, 34.083466, 37.076557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.323074, 33.916740, 37.076405>,  <32.035351, 33.638863, 37.076153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323074, 33.916740, 37.076405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216693, -0.223505, -0.950310,
		-0.660030, 0.683703, -0.311304,
		0.719308, 0.694691, 0.000634,
		32.538868, 34.125149, 37.076595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892897, 34.172600, 36.505024>,  <32.035351, 33.638863, 37.076153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.892897, 34.172600, 36.505024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.285908, 34.192585, 36.576740>,  <32.521713, 34.204575, 36.619770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.285908, 34.192585, 36.576740>,  <31.892897, 34.172600, 36.505024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.285908, 34.192585, 36.576740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183000, -0.083583, -0.979553,
		-0.033955, 0.995247, -0.091266,
		0.982526, 0.049962, 0.179292,
		32.580666, 34.207573, 36.630527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.113461, 34.592468, 35.956741>,  <31.892897, 34.172600, 36.505024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.113461, 34.592468, 35.956741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.451527, 34.452469, 36.118332>,  <32.654366, 34.368469, 36.215286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.451527, 34.452469, 36.118332>,  <32.113461, 34.592468, 35.956741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451527, 34.452469, 36.118332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401466, -0.083305, -0.912077,
		0.352881, 0.933038, 0.070107,
		0.845162, -0.350001, 0.403980,
		32.705074, 34.347469, 36.239525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683632, 35.072922, 35.737083>,  <32.113461, 34.592468, 35.956741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683632, 35.072922, 35.737083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.853790, 34.723347, 35.831123>,  <32.955883, 34.513599, 35.887547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.853790, 34.723347, 35.831123>,  <32.683632, 35.072922, 35.737083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853790, 34.723347, 35.831123> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488511, 0.003058, -0.872552,
		0.761839, 0.486025, 0.428230,
		0.425392, -0.873940, 0.235099,
		32.981407, 34.461166, 35.901653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326313, 35.157375, 35.675472>,  <32.683632, 35.072922, 35.737083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326313, 35.157375, 35.675472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.286640, 34.762535, 35.625198>,  <33.262836, 34.525631, 35.595032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.286640, 34.762535, 35.625198>,  <33.326313, 35.157375, 35.675472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286640, 34.762535, 35.625198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577872, 0.045692, -0.814847,
		0.810079, -0.153447, 0.565885,
		-0.099180, -0.987100, -0.125687,
		33.256886, 34.466404, 35.587494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115974, 34.830238, 35.646618>,  <33.326313, 35.157375, 35.675472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115974, 34.830238, 35.646618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.862541, 34.580513, 35.463837>,  <33.710480, 34.430676, 35.354168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.862541, 34.580513, 35.463837>,  <34.115974, 34.830238, 35.646618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862541, 34.580513, 35.463837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631927, -0.076843, -0.771209,
		0.446365, -0.777383, 0.443209,
		-0.633582, -0.624316, -0.456949,
		33.672466, 34.393219, 35.326752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527443, 34.319145, 35.187157>,  <34.115974, 34.830238, 35.646618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.527443, 34.319145, 35.187157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.156246, 34.282803, 35.042618>,  <33.933529, 34.260998, 34.955894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.156246, 34.282803, 35.042618>,  <34.527443, 34.319145, 35.187157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156246, 34.282803, 35.042618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371415, -0.148373, -0.916535,
		0.029659, -0.984749, 0.171435,
		-0.927993, -0.090857, -0.361349,
		33.877850, 34.255547, 34.934212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053585, 33.791924, 35.208652>,  <34.527443, 34.319145, 35.187157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053585, 33.791924, 35.208652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.376488, 34.027813, 35.199215>,  <35.570229, 34.169346, 35.193554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.376488, 34.027813, 35.199215>,  <35.053585, 33.791924, 35.208652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376488, 34.027813, 35.199215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016301, 0.062234, 0.997929,
		0.589973, -0.805202, 0.059852,
		0.807259, 0.589726, -0.023591,
		35.618664, 34.204731, 35.192139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180885, 33.802551, 35.894485>,  <35.053585, 33.791924, 35.208652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180885, 33.802551, 35.894485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.404327, 34.106125, 35.760632>,  <35.538391, 34.288269, 35.680321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.404327, 34.106125, 35.760632>,  <35.180885, 33.802551, 35.894485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404327, 34.106125, 35.760632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159246, 0.297807, 0.941250,
		0.814006, -0.579073, 0.045498,
		0.558602, 0.758937, -0.334631,
		35.571907, 34.333805, 35.660244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794193, 33.645691, 36.194221>,  <35.180885, 33.802551, 35.894485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794193, 33.645691, 36.194221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.801605, 34.036266, 36.108227>,  <35.806053, 34.270611, 36.056629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.801605, 34.036266, 36.108227>,  <35.794193, 33.645691, 36.194221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801605, 34.036266, 36.108227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189067, 0.207718, 0.959743,
		0.981789, -0.058433, -0.180763,
		0.018533, 0.976442, -0.214983,
		35.807163, 34.329201, 36.043732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425732, 33.929916, 36.514935>,  <35.794193, 33.645691, 36.194221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425732, 33.929916, 36.514935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.159447, 34.223263, 36.459801>,  <35.999676, 34.399273, 36.426720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.159447, 34.223263, 36.459801>,  <36.425732, 33.929916, 36.514935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159447, 34.223263, 36.459801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096475, 0.267744, 0.958648,
		0.739946, 0.624886, -0.248992,
		-0.665712, 0.733369, -0.137830,
		35.959732, 34.443275, 36.418453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783798, 34.471188, 36.843548>,  <36.425732, 33.929916, 36.514935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783798, 34.471188, 36.843548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.397293, 34.567383, 36.806671>,  <36.165390, 34.625099, 36.784546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.397293, 34.567383, 36.806671>,  <36.783798, 34.471188, 36.843548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397293, 34.567383, 36.806671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004564, 0.373900, 0.927458,
		0.257514, 0.895748, -0.362383,
		-0.966264, 0.240487, -0.092196,
		36.107414, 34.639530, 36.779011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700611, 35.151318, 37.170742>,  <36.783798, 34.471188, 36.843548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700611, 35.151318, 37.170742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.327374, 35.010609, 37.140850>,  <36.103432, 34.926182, 37.122913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.327374, 35.010609, 37.140850>,  <36.700611, 35.151318, 37.170742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327374, 35.010609, 37.140850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196884, 0.325790, 0.924715,
		-0.300946, 0.877561, -0.373253,
		-0.933096, -0.351777, -0.074732,
		36.047443, 34.905075, 37.118431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236317, 35.644459, 37.580482>,  <36.700611, 35.151318, 37.170742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236317, 35.644459, 37.580482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.007099, 35.317799, 37.553051>,  <35.869568, 35.121803, 37.536591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.007099, 35.317799, 37.553051>,  <36.236317, 35.644459, 37.580482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007099, 35.317799, 37.553051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355337, 0.172183, 0.918743,
		-0.738485, 0.550847, -0.388854,
		-0.573041, -0.816652, -0.068582,
		35.835186, 35.072803, 37.532478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608028, 35.883240, 37.845245>,  <36.236317, 35.644459, 37.580482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608028, 35.883240, 37.845245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.593212, 35.484135, 37.867531>,  <35.584320, 35.244671, 37.880901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.593212, 35.484135, 37.867531>,  <35.608028, 35.883240, 37.845245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.593212, 35.484135, 37.867531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308309, 0.064445, 0.949101,
		-0.950565, 0.017981, -0.310005,
		-0.037044, -0.997759, 0.055715,
		35.582100, 35.184807, 37.884247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966091, 35.684677, 38.022785>,  <35.608028, 35.883240, 37.845245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966091, 35.684677, 38.022785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.204296, 35.383377, 38.134483>,  <35.347221, 35.202599, 38.201504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.204296, 35.383377, 38.134483>,  <34.966091, 35.684677, 38.022785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204296, 35.383377, 38.134483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374464, 0.047257, 0.926036,
		-0.710730, -0.656039, -0.253922,
		0.595516, -0.753246, 0.279250,
		35.382950, 35.157402, 38.218258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554359, 35.375347, 38.446201>,  <34.966091, 35.684677, 38.022785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554359, 35.375347, 38.446201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.915394, 35.228474, 38.536110>,  <35.132015, 35.140350, 38.590057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.915394, 35.228474, 38.536110>,  <34.554359, 35.375347, 38.446201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915394, 35.228474, 38.536110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252272, -0.028006, 0.967251,
		-0.348864, -0.929727, -0.117908,
		0.902582, -0.367184, 0.224773,
		35.186169, 35.118320, 38.603542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344101, 34.804871, 38.904358>,  <34.554359, 35.375347, 38.446201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344101, 34.804871, 38.904358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.728451, 34.884724, 38.981163>,  <34.959061, 34.932636, 39.027248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.728451, 34.884724, 38.981163>,  <34.344101, 34.804871, 38.904358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728451, 34.884724, 38.981163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190016, -0.029322, 0.981343,
		0.201535, -0.979433, 0.009758,
		0.960873, 0.199629, 0.192017,
		35.016712, 34.944614, 39.038769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571625, 34.381832, 39.462357>,  <34.344101, 34.804871, 38.904358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571625, 34.381832, 39.462357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.834572, 34.683250, 39.459850>,  <34.992340, 34.864101, 39.458347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.834572, 34.683250, 39.459850>,  <34.571625, 34.381832, 39.462357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834572, 34.683250, 39.459850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040539, -0.027054, 0.998812,
		0.752477, -0.656843, -0.048332,
		0.657370, 0.753542, -0.006270,
		35.031784, 34.909313, 39.457970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255550, 34.225590, 39.830879>,  <34.571625, 34.381832, 39.462357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255550, 34.225590, 39.830879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.197872, 34.620064, 39.863495>,  <35.163265, 34.856747, 39.883064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.197872, 34.620064, 39.863495>,  <35.255550, 34.225590, 39.830879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197872, 34.620064, 39.863495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166991, -0.056965, 0.984311,
		0.975358, 0.155546, -0.156470,
		-0.144192, 0.986185, 0.081536,
		35.154613, 34.915920, 39.887955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709564, 34.362015, 40.431263>,  <35.255550, 34.225590, 39.830879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709564, 34.362015, 40.431263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.473877, 34.683586, 40.398979>,  <35.332462, 34.876530, 40.379608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.473877, 34.683586, 40.398979>,  <35.709564, 34.362015, 40.431263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473877, 34.683586, 40.398979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113054, 0.180947, 0.976973,
		0.800023, 0.566529, -0.197505,
		-0.589221, 0.803930, -0.080714,
		35.297112, 34.924767, 40.374763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007324, 34.864712, 40.875874>,  <35.709564, 34.362015, 40.431263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007324, 34.864712, 40.875874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.654034, 35.038513, 40.805309>,  <35.442059, 35.142796, 40.762970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.654034, 35.038513, 40.805309>,  <36.007324, 34.864712, 40.875874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654034, 35.038513, 40.805309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057261, 0.473283, 0.879048,
		0.465443, 0.766294, -0.442895,
		-0.883224, 0.434508, -0.176407,
		35.389065, 35.168865, 40.752388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059875, 35.643665, 40.870720>,  <36.007324, 34.864712, 40.875874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059875, 35.643665, 40.870720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.692394, 35.527214, 40.977474>,  <35.471905, 35.457344, 41.041527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.692394, 35.527214, 40.977474>,  <36.059875, 35.643665, 40.870720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692394, 35.527214, 40.977474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138423, 0.395530, 0.907962,
		-0.369891, 0.871092, -0.323078,
		-0.918706, -0.291125, 0.266882,
		35.416782, 35.439877, 41.057537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845646, 36.172310, 41.150188>,  <36.059875, 35.643665, 40.870720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845646, 36.172310, 41.150188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.578880, 35.902740, 41.277344>,  <35.418819, 35.740997, 41.353638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.578880, 35.902740, 41.277344>,  <35.845646, 36.172310, 41.150188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578880, 35.902740, 41.277344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024239, 0.406775, 0.913207,
		-0.744740, 0.616736, -0.254949,
		-0.666914, -0.673922, 0.317891,
		35.378807, 35.700565, 41.372711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419312, 36.494293, 41.566139>,  <35.845646, 36.172310, 41.150188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419312, 36.494293, 41.566139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.376812, 36.117908, 41.694702>,  <35.351311, 35.892078, 41.771839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.376812, 36.117908, 41.694702>,  <35.419312, 36.494293, 41.566139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376812, 36.117908, 41.694702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041653, 0.318737, 0.946927,
		-0.993466, 0.114001, 0.005327,
		-0.106253, -0.940962, 0.321403,
		35.344936, 35.835621, 41.791122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.796097, 36.564587, 42.068638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.983200, 36.221294, 42.153160>,  <35.095463, 36.015320, 42.203873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.983200, 36.221294, 42.153160>,  <34.796097, 36.564587, 42.068638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983200, 36.221294, 42.153160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238193, 0.107827, 0.965214,
		-0.851156, -0.501818, -0.153987,
		0.467758, -0.858226, 0.211308,
		35.123528, 35.963825, 42.216553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287876, 36.200283, 42.330189>,  <34.796097, 36.564587, 42.068638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.287876, 36.200283, 42.330189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.638870, 36.055019, 42.455494>,  <34.849468, 35.967861, 42.530678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.638870, 36.055019, 42.455494>,  <34.287876, 36.200283, 42.330189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638870, 36.055019, 42.455494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356017, -0.055580, 0.932825,
		-0.321356, -0.930067, -0.178063,
		0.877486, -0.363162, 0.313259,
		34.902115, 35.946072, 42.549473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057323, 35.709278, 42.807224>,  <34.287876, 36.200283, 42.330189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057323, 35.709278, 42.807224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.442825, 35.755760, 42.903286>,  <34.674126, 35.783649, 42.960922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.442825, 35.755760, 42.903286>,  <34.057323, 35.709278, 42.807224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442825, 35.755760, 42.903286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245811, 0.036838, 0.968618,
		0.103709, -0.992542, 0.064066,
		0.963754, 0.116203, 0.240157,
		34.731953, 35.790619, 42.975334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169613, 35.132534, 43.244217>,  <34.057323, 35.709278, 42.807224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169613, 35.132534, 43.244217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.468262, 35.383034, 43.333988>,  <34.647453, 35.533333, 43.387852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.468262, 35.383034, 43.333988>,  <34.169613, 35.132534, 43.244217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468262, 35.383034, 43.333988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023404, -0.312430, 0.949652,
		0.664835, -0.714285, -0.218611,
		0.746623, 0.626246, 0.224432,
		34.692249, 35.570908, 43.401318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575752, 34.747223, 43.731884>,  <34.169613, 35.132534, 43.244217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575752, 34.747223, 43.731884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.690163, 35.129074, 43.765045>,  <34.758808, 35.358185, 43.784943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.690163, 35.129074, 43.765045>,  <34.575752, 34.747223, 43.731884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690163, 35.129074, 43.765045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138819, -0.044326, 0.989325,
		0.948112, -0.294485, 0.119842,
		0.286030, 0.954627, 0.082906,
		34.775970, 35.415462, 43.789917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889946, 34.699554, 44.405212>,  <34.575752, 34.747223, 43.731884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889946, 34.699554, 44.405212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.824829, 35.086231, 44.326221>,  <34.785759, 35.318237, 44.278828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.824829, 35.086231, 44.326221>,  <34.889946, 34.699554, 44.405212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824829, 35.086231, 44.326221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202831, 0.163086, 0.965538,
		0.965588, 0.197234, 0.169527,
		-0.162790, 0.966696, -0.197479,
		34.775993, 35.376240, 44.266979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295067, 35.040489, 44.993637>,  <34.889946, 34.699554, 44.405212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295067, 35.040489, 44.993637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.084053, 35.341763, 44.836449>,  <34.957443, 35.522526, 44.742138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.084053, 35.341763, 44.836449>,  <35.295067, 35.040489, 44.993637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084053, 35.341763, 44.836449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233006, 0.316551, 0.919513,
		0.816955, 0.576638, 0.008505,
		-0.527534, 0.753183, -0.392968,
		34.925793, 35.567719, 44.718559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518913, 35.626591, 45.347855>,  <35.295067, 35.040489, 44.993637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518913, 35.626591, 45.347855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.166126, 35.711647, 45.179611>,  <34.954453, 35.762680, 45.078667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.166126, 35.711647, 45.179611>,  <35.518913, 35.626591, 45.347855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166126, 35.711647, 45.179611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334540, 0.346164, 0.876500,
		0.331982, 0.913758, -0.234169,
		-0.881970, 0.212643, -0.420609,
		34.901535, 35.775440, 45.053429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411808, 36.362103, 45.493683>,  <35.518913, 35.626591, 45.347855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411808, 36.362103, 45.493683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.083511, 36.138069, 45.448627>,  <34.886532, 36.003651, 45.421597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.083511, 36.138069, 45.448627>,  <35.411808, 36.362103, 45.493683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.083511, 36.138069, 45.448627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271285, 0.208574, 0.939628,
		-0.502778, 0.801750, -0.323128,
		-0.820743, -0.560084, -0.112637,
		34.837288, 35.970043, 45.414837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949932, 36.679535, 45.873375>,  <35.411808, 36.362103, 45.493683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949932, 36.679535, 45.873375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.842003, 36.295273, 45.847008>,  <34.777245, 36.064716, 45.831188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.842003, 36.295273, 45.847008>,  <34.949932, 36.679535, 45.873375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842003, 36.295273, 45.847008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190094, -0.013972, 0.981666,
		-0.943960, 0.277406, -0.178844,
		-0.269821, -0.960651, -0.065922,
		34.761055, 36.007076, 45.827232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326889, 36.518692, 46.309135>,  <34.949932, 36.679535, 45.873375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326889, 36.518692, 46.309135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.493774, 36.157909, 46.264599>,  <34.593906, 35.941441, 46.237877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.493774, 36.157909, 46.264599>,  <34.326889, 36.518692, 46.309135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493774, 36.157909, 46.264599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137221, -0.183632, 0.973370,
		-0.898388, -0.390826, -0.200382,
		0.417215, -0.901962, -0.111343,
		34.618938, 35.887321, 46.231197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075806, 36.187878, 46.914433>,  <34.326889, 36.518692, 46.309135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075806, 36.187878, 46.914433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.342449, 35.925365, 46.773056>,  <34.502434, 35.767857, 46.688229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.342449, 35.925365, 46.773056>,  <34.075806, 36.187878, 46.914433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342449, 35.925365, 46.773056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029037, -0.496668, 0.867455,
		-0.744841, -0.567991, -0.350140,
		0.666610, -0.656283, -0.353446,
		34.542431, 35.728481, 46.667023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826786, 35.547398, 47.027588>,  <34.075806, 36.187878, 46.914433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826786, 35.547398, 47.027588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.224113, 35.504017, 47.011784>,  <34.462509, 35.477989, 47.002300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.224113, 35.504017, 47.011784>,  <33.826786, 35.547398, 47.027588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224113, 35.504017, 47.011784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012670, -0.442710, 0.896575,
		-0.114726, -0.890082, -0.441126,
		0.993316, -0.108449, -0.039513,
		34.522110, 35.471481, 46.999931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.002556, 34.763393, 47.044945>,  <33.826786, 35.547398, 47.027588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.002556, 34.763393, 47.044945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.312218, 34.987705, 47.162388>,  <34.498016, 35.122292, 47.232853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.312218, 34.987705, 47.162388>,  <34.002556, 34.763393, 47.044945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312218, 34.987705, 47.162388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099330, -0.565713, 0.818598,
		0.625152, -0.604559, -0.493653,
		0.774157, 0.560783, 0.293605,
		34.544464, 35.155941, 47.250469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445515, 34.372005, 47.380707>,  <34.002556, 34.763393, 47.044945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445515, 34.372005, 47.380707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.611057, 34.709591, 47.517204>,  <34.710381, 34.912144, 47.599102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.611057, 34.709591, 47.517204>,  <34.445515, 34.372005, 47.380707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611057, 34.709591, 47.517204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375041, -0.499625, 0.780845,
		0.829500, -0.195175, -0.523293,
		0.413852, 0.843968, 0.341240,
		34.735214, 34.962780, 47.619576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032230, 34.174950, 47.763611>,  <34.445515, 34.372005, 47.380707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032230, 34.174950, 47.763611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.979752, 34.546558, 47.902008>,  <34.948265, 34.769524, 47.985046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.979752, 34.546558, 47.902008>,  <35.032230, 34.174950, 47.763611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979752, 34.546558, 47.902008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204403, -0.316160, 0.926425,
		0.970055, 0.192264, -0.148416,
		-0.131195, 0.929019, 0.345992,
		34.940392, 34.825264, 48.005806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699303, 34.380070, 48.102917>,  <35.032230, 34.174950, 47.763611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699303, 34.380070, 48.102917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.411678, 34.612976, 48.254665>,  <35.239105, 34.752720, 48.345715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.411678, 34.612976, 48.254665>,  <35.699303, 34.380070, 48.102917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411678, 34.612976, 48.254665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228618, -0.317325, 0.920347,
		0.656271, 0.748514, 0.095059,
		-0.719057, 0.582265, 0.379375,
		35.195961, 34.787655, 48.368477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075455, 34.705235, 48.698952>,  <35.699303, 34.380070, 48.102917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075455, 34.705235, 48.698952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.684734, 34.770050, 48.754951>,  <35.450302, 34.808941, 48.788551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.684734, 34.770050, 48.754951>,  <36.075455, 34.705235, 48.698952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684734, 34.770050, 48.754951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069567, -0.378175, 0.923117,
		0.202523, 0.911442, 0.358130,
		-0.976803, 0.162038, 0.139996,
		35.391693, 34.818661, 48.796951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021023, 34.995251, 49.302654>,  <36.075455, 34.705235, 48.698952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021023, 34.995251, 49.302654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.664623, 34.818718, 49.260036>,  <35.450783, 34.712799, 49.234467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.664623, 34.818718, 49.260036>,  <36.021023, 34.995251, 49.302654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664623, 34.818718, 49.260036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083083, -0.389212, 0.917394,
		-0.446341, 0.808544, 0.383454,
		-0.890998, -0.441329, -0.106545,
		35.397324, 34.686317, 49.228073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680473, 35.063854, 49.956219>,  <36.021023, 34.995251, 49.302654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680473, 35.063854, 49.956219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.476456, 34.772411, 49.773357>,  <35.354046, 34.597546, 49.663639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.476456, 34.772411, 49.773357>,  <35.680473, 35.063854, 49.956219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476456, 34.772411, 49.773357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154463, -0.445259, 0.881978,
		-0.846166, 0.520461, 0.114560,
		-0.510044, -0.728604, -0.457155,
		35.323444, 34.553829, 49.636211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110687, 35.025917, 50.346218>,  <35.680473, 35.063854, 49.956219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110687, 35.025917, 50.346218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.119080, 34.680576, 50.144550>,  <35.124115, 34.473373, 50.023548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.119080, 34.680576, 50.144550>,  <35.110687, 35.025917, 50.346218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119080, 34.680576, 50.144550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270067, -0.490429, 0.828579,
		-0.962613, 0.118778, -0.243450,
		0.020978, -0.863348, -0.504172,
		35.125374, 34.421574, 49.993298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530350, 34.756721, 50.403782>,  <35.110687, 35.025917, 50.346218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530350, 34.756721, 50.403782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.795624, 34.463108, 50.345291>,  <34.954788, 34.286942, 50.310196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.795624, 34.463108, 50.345291>,  <34.530350, 34.756721, 50.403782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795624, 34.463108, 50.345291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202569, -0.364114, 0.909058,
		-0.720523, -0.573251, -0.390167,
		0.663184, -0.734033, -0.146230,
		34.994579, 34.242897, 50.301422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173729, 34.119579, 50.403061>,  <34.530350, 34.756721, 50.403782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173729, 34.119579, 50.403061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.555721, 34.100666, 50.520210>,  <34.784916, 34.089317, 50.590500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.555721, 34.100666, 50.520210>,  <34.173729, 34.119579, 50.403061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555721, 34.100666, 50.520210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290290, -0.352530, 0.889637,
		0.061187, -0.934606, -0.350384,
		0.954981, -0.047279, 0.292876,
		34.842216, 34.086483, 50.608074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549923, 33.343422, 50.477596>,  <34.173729, 34.119579, 50.403061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549923, 33.343422, 50.477596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.705566, 33.623558, 50.716969>,  <34.798954, 33.791637, 50.860592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.705566, 33.623558, 50.716969>,  <34.549923, 33.343422, 50.477596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705566, 33.623558, 50.716969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303398, -0.515956, 0.801086,
		0.869795, -0.493274, 0.011718,
		0.389109, 0.700336, 0.598434,
		34.822300, 33.833660, 50.896500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446556, 32.771027, 50.077869>,  <34.549923, 33.343422, 50.477596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446556, 32.771027, 50.077869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.131001, 32.591415, 50.245693>,  <33.941669, 32.483646, 50.346386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.131001, 32.591415, 50.245693>,  <34.446556, 32.771027, 50.077869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131001, 32.591415, 50.245693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341419, -0.247424, -0.906761,
		0.510974, -0.858575, 0.041881,
		-0.788885, -0.449033, 0.419561,
		33.894337, 32.456707, 50.371563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436729, 32.183704, 49.747955>,  <34.446556, 32.771027, 50.077869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436729, 32.183704, 49.747955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.065907, 32.244061, 49.885242>,  <33.843414, 32.280273, 49.967613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.065907, 32.244061, 49.885242>,  <34.436729, 32.183704, 49.747955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065907, 32.244061, 49.885242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363828, -0.141056, -0.920724,
		-0.090516, -0.978435, 0.185665,
		-0.927058, 0.150890, 0.343214,
		33.787788, 32.289326, 49.988209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913109, 31.722151, 49.352238>,  <34.436729, 32.183704, 49.747955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913109, 31.722151, 49.352238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.689880, 32.020210, 49.498287>,  <33.555943, 32.199047, 49.585918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.689880, 32.020210, 49.498287>,  <33.913109, 31.722151, 49.352238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689880, 32.020210, 49.498287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554931, -0.007994, -0.831858,
		-0.616938, -0.666851, 0.417967,
		-0.558066, 0.745148, 0.365125,
		33.522461, 32.243755, 49.607826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342583, 31.471478, 49.249310>,  <33.913109, 31.722151, 49.352238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342583, 31.471478, 49.249310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.277828, 31.865887, 49.265083>,  <33.238976, 32.102531, 49.274548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.277828, 31.865887, 49.265083>,  <33.342583, 31.471478, 49.249310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277828, 31.865887, 49.265083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425319, -0.033658, -0.904417,
		-0.890448, -0.163183, 0.424823,
		-0.161884, 0.986021, 0.039434,
		33.229263, 32.161694, 49.276913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803848, 31.608526, 48.782619>,  <33.342583, 31.471478, 49.249310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803848, 31.608526, 48.782619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.927948, 31.983362, 48.846622>,  <33.002407, 32.208263, 48.885025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.927948, 31.983362, 48.846622>,  <32.803848, 31.608526, 48.782619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927948, 31.983362, 48.846622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070628, 0.190574, -0.979129,
		-0.948026, 0.292477, 0.125311,
		0.310254, 0.937090, 0.160012,
		33.021023, 32.264488, 48.894627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.475071, 31.996172, 48.294785>,  <32.803848, 31.608526, 48.782619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.475071, 31.996172, 48.294785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.767368, 32.251041, 48.392784>,  <32.942745, 32.403961, 48.451584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.767368, 32.251041, 48.392784>,  <32.475071, 31.996172, 48.294785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767368, 32.251041, 48.392784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014645, 0.344181, -0.938789,
		-0.682496, 0.689601, 0.242177,
		0.730743, 0.637173, 0.245001,
		32.986591, 32.442192, 48.466286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.103184, 32.674255, 48.193981>,  <32.475071, 31.996172, 48.294785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.103184, 32.674255, 48.193981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.501438, 32.706371, 48.174946>,  <32.740391, 32.725643, 48.163525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.501438, 32.706371, 48.174946>,  <32.103184, 32.674255, 48.193981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501438, 32.706371, 48.174946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084716, 0.563384, -0.821840,
		-0.039177, 0.822284, 0.567727,
		0.995635, 0.080293, -0.047589,
		32.800129, 32.730457, 48.160667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212421, 33.275925, 48.016808>,  <32.103184, 32.674255, 48.193981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212421, 33.275925, 48.016808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.547276, 33.091831, 47.898567>,  <32.748188, 32.981373, 47.827621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.547276, 33.091831, 47.898567>,  <32.212421, 33.275925, 48.016808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547276, 33.091831, 47.898567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078042, 0.434392, -0.897337,
		0.541394, 0.774265, 0.327729,
		0.837139, -0.460236, -0.295602,
		32.798416, 32.953762, 47.809887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632111, 33.804340, 47.843910>,  <32.212421, 33.275925, 48.016808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632111, 33.804340, 47.843910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.816296, 33.490704, 47.677452>,  <32.926807, 33.302521, 47.577579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.816296, 33.490704, 47.677452>,  <32.632111, 33.804340, 47.843910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816296, 33.490704, 47.677452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041134, 0.449447, -0.892359,
		0.886727, 0.428013, 0.174700,
		0.460460, -0.784093, -0.416143,
		32.954433, 33.255474, 47.552608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.357231, 34.020935, 47.617443>,  <32.632111, 33.804340, 47.843910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.357231, 34.020935, 47.617443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.245560, 33.700787, 47.405228>,  <33.178555, 33.508698, 47.277901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.245560, 33.700787, 47.405228>,  <33.357231, 34.020935, 47.617443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245560, 33.700787, 47.405228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061522, 0.536458, -0.841681,
		0.958265, -0.267622, -0.100529,
		-0.279182, -0.800370, -0.530534,
		33.161804, 33.460674, 47.246067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822155, 33.894066, 47.061668>,  <33.357231, 34.020935, 47.617443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822155, 33.894066, 47.061668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.489132, 33.714375, 46.932030>,  <33.289318, 33.606560, 46.854248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.489132, 33.714375, 46.932030>,  <33.822155, 33.894066, 47.061668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489132, 33.714375, 46.932030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047265, 0.525335, -0.849581,
		0.551920, -0.722643, -0.416138,
		-0.832556, -0.449232, -0.324099,
		33.239365, 33.579609, 46.834801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.879364, 33.864197, 46.384132>,  <33.822155, 33.894066, 47.061668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.879364, 33.864197, 46.384132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.488144, 33.792171, 46.426075>,  <33.253410, 33.748955, 46.451241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.488144, 33.792171, 46.426075>,  <33.879364, 33.864197, 46.384132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488144, 33.792171, 46.426075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133258, 0.153681, -0.979094,
		0.160243, -0.971565, -0.174309,
		-0.978041, -0.180120, 0.104842,
		33.194729, 33.738152, 46.457531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596336, 33.416718, 45.765327>,  <33.879364, 33.864197, 46.384132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596336, 33.416718, 45.765327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.286606, 33.623493, 45.911312>,  <33.100769, 33.747559, 45.998901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.286606, 33.623493, 45.911312>,  <33.596336, 33.416718, 45.765327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286606, 33.623493, 45.911312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207467, 0.337478, -0.918186,
		-0.597815, -0.786689, -0.154068,
		-0.774322, 0.516941, 0.364962,
		33.054310, 33.778576, 46.020802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171783, 33.416393, 45.173855>,  <33.596336, 33.416718, 45.765327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171783, 33.416393, 45.173855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.011864, 33.687412, 45.420784>,  <32.915913, 33.850025, 45.568943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.011864, 33.687412, 45.420784>,  <33.171783, 33.416393, 45.173855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011864, 33.687412, 45.420784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227010, 0.579320, -0.782850,
		-0.888048, -0.453120, -0.077800,
		-0.399796, 0.677547, 0.617327,
		32.891926, 33.890675, 45.605984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388054, 33.404327, 45.016174>,  <33.171783, 33.416393, 45.173855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.388054, 33.404327, 45.016174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.490791, 33.766476, 45.151432>,  <32.552433, 33.983765, 45.232586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.490791, 33.766476, 45.151432>,  <32.388054, 33.404327, 45.016174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490791, 33.766476, 45.151432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293540, 0.406433, -0.865244,
		-0.920797, 0.122970, 0.370150,
		0.256840, 0.905368, 0.338146,
		32.567844, 34.038086, 45.252876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830175, 33.805164, 44.776691>,  <32.388054, 33.404327, 45.016174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830175, 33.805164, 44.776691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.086315, 34.091270, 44.888660>,  <32.239998, 34.262932, 44.955841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.086315, 34.091270, 44.888660>,  <31.830175, 33.805164, 44.776691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.086315, 34.091270, 44.888660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311971, 0.575226, -0.756167,
		-0.701874, 0.396884, 0.591486,
		0.640349, 0.715261, 0.279919,
		32.278419, 34.305847, 44.972637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533209, 34.510529, 44.787189>,  <31.830175, 33.805164, 44.776691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533209, 34.510529, 44.787189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.920471, 34.589264, 44.725311>,  <32.152828, 34.636505, 44.688183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.920471, 34.589264, 44.725311>,  <31.533209, 34.510529, 44.787189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920471, 34.589264, 44.725311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246870, 0.647877, -0.720632,
		-0.041627, 0.735872, 0.675840,
		0.968154, 0.196843, -0.154695,
		32.210918, 34.648315, 44.678902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.589952, 35.189278, 44.697250>,  <31.533209, 34.510529, 44.787189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.589952, 35.189278, 44.697250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.938393, 35.072498, 44.539284>,  <32.147457, 35.002430, 44.444504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.938393, 35.072498, 44.539284>,  <31.589952, 35.189278, 44.697250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.938393, 35.072498, 44.539284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086812, 0.699925, -0.708921,
		0.483374, 0.651823, 0.584360,
		0.871099, -0.291944, -0.394912,
		32.199722, 34.984917, 44.420811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842043, 35.825657, 44.284840>,  <31.589952, 35.189278, 44.697250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.842043, 35.825657, 44.284840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.048714, 35.515720, 44.139149>,  <32.172718, 35.329758, 44.051735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.048714, 35.515720, 44.139149>,  <31.842043, 35.825657, 44.284840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048714, 35.515720, 44.139149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007434, 0.421338, -0.906873,
		0.856147, 0.471270, 0.211936,
		0.516679, -0.774841, -0.364231,
		32.203716, 35.283268, 44.029881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266853, 36.146809, 43.768173>,  <31.842043, 35.825657, 44.284840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266853, 36.146809, 43.768173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.252789, 35.752739, 43.701004>,  <32.244350, 35.516296, 43.660702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.252789, 35.752739, 43.701004>,  <32.266853, 36.146809, 43.768173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252789, 35.752739, 43.701004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118802, 0.162718, -0.979494,
		0.992295, -0.054394, 0.111319,
		-0.035165, -0.985172, -0.167926,
		32.242241, 35.457188, 43.650627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.456604, 37.034584, 29.229750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.236904, 37.366810, 29.266609>,  <41.105083, 37.566147, 29.288725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.236904, 37.366810, 29.266609>,  <41.456604, 37.034584, 29.229750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.236904, 37.366810, 29.266609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026133, -0.127290, 0.991521,
		0.835251, 0.542183, 0.091619,
		-0.549248, 0.830563, 0.092151,
		41.072128, 37.615978, 29.294254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.863644, 37.622070, 29.609856>,  <41.456604, 37.034584, 29.229750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.863644, 37.622070, 29.609856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.468479, 37.613136, 29.671228>,  <41.231380, 37.607777, 29.708052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.468479, 37.613136, 29.671228>,  <41.863644, 37.622070, 29.609856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.468479, 37.613136, 29.671228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154142, -0.034705, 0.987439,
		-0.016732, 0.999148, 0.037728,
		-0.987907, -0.022337, 0.153430,
		41.172108, 37.606434, 29.717257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.680527, 38.181824, 29.932621>,  <41.863644, 37.622070, 29.609856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.680527, 38.181824, 29.932621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.364388, 37.945877, 29.998835>,  <41.174702, 37.804310, 30.038563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.364388, 37.945877, 29.998835>,  <41.680527, 38.181824, 29.932621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.364388, 37.945877, 29.998835> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076232, 0.173410, 0.981895,
		-0.607893, 0.788661, -0.092088,
		-0.790351, -0.589867, 0.165536,
		41.127281, 37.768917, 30.048494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296741, 38.559341, 30.403856>,  <41.680527, 38.181824, 29.932621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.296741, 38.559341, 30.403856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.187614, 38.175766, 30.434835>,  <41.122139, 37.945621, 30.453423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.187614, 38.175766, 30.434835>,  <41.296741, 38.559341, 30.403856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.187614, 38.175766, 30.434835> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105074, 0.050322, 0.993190,
		-0.956310, 0.279100, 0.087031,
		-0.272820, -0.958943, 0.077450,
		41.105770, 37.888084, 30.458071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.732979, 38.451389, 30.970810>,  <41.296741, 38.559341, 30.403856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.732979, 38.451389, 30.970810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.922382, 38.104389, 30.909853>,  <41.036026, 37.896187, 30.873278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.922382, 38.104389, 30.909853>,  <40.732979, 38.451389, 30.970810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.922382, 38.104389, 30.909853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095226, -0.121585, 0.988002,
		-0.875625, -0.482342, 0.025037,
		0.473511, -0.867504, -0.152395,
		41.064434, 37.844139, 30.864134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.488270, 38.116196, 31.518242>,  <40.732979, 38.451389, 30.970810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.488270, 38.116196, 31.518242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.790611, 37.894093, 31.379465>,  <40.972015, 37.760830, 31.296198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.790611, 37.894093, 31.379465>,  <40.488270, 38.116196, 31.518242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.790611, 37.894093, 31.379465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324349, -0.142758, 0.935103,
		-0.568757, -0.819331, 0.072195,
		0.755853, -0.555263, -0.346944,
		41.017368, 37.727512, 31.275381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.501987, 37.527225, 31.955919>,  <40.488270, 38.116196, 31.518242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.501987, 37.527225, 31.955919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.865555, 37.542454, 31.789829>,  <41.083694, 37.551590, 31.690174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.865555, 37.542454, 31.789829>,  <40.501987, 37.527225, 31.955919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.865555, 37.542454, 31.789829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397490, -0.379913, 0.835265,
		-0.125950, -0.924238, -0.360444,
		0.908921, 0.038071, -0.415226,
		41.138229, 37.553875, 31.665262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.747932, 36.794506, 31.967621>,  <40.501987, 37.527225, 31.955919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.747932, 36.794506, 31.967621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.023911, 37.083233, 31.945860>,  <41.189499, 37.256470, 31.932804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.023911, 37.083233, 31.945860>,  <40.747932, 36.794506, 31.967621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.023911, 37.083233, 31.945860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375313, -0.292454, 0.879551,
		0.618961, -0.627262, -0.472684,
		0.689947, 0.721812, -0.054402,
		41.230896, 37.299778, 31.929539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.463516, 36.418816, 32.133678>,  <40.747932, 36.794506, 31.967621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.463516, 36.418816, 32.133678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.501972, 36.815235, 32.170719>,  <41.525047, 37.053089, 32.192944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.501972, 36.815235, 32.170719>,  <41.463516, 36.418816, 32.133678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.501972, 36.815235, 32.170719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310878, -0.118278, 0.943061,
		0.945575, -0.061877, -0.319467,
		0.096139, 0.991051, 0.092605,
		41.530815, 37.112549, 32.198502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.153271, 36.473660, 32.122437>,  <41.463516, 36.418816, 32.133678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.153271, 36.473660, 32.122437> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.995266, 36.788948, 32.311188>,  <41.900463, 36.978123, 32.424438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.995266, 36.788948, 32.311188>,  <42.153271, 36.473660, 32.122437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.995266, 36.788948, 32.311188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503811, -0.243653, 0.828739,
		0.768207, 0.565098, -0.300870,
		-0.395011, 0.788224, 0.471878,
		41.876762, 37.025414, 32.452751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.699455, 36.640877, 32.535282>,  <42.153271, 36.473660, 32.122437>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.699455, 36.640877, 32.535282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.395721, 36.844173, 32.697815>,  <42.213482, 36.966152, 32.795334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.395721, 36.844173, 32.697815>,  <42.699455, 36.640877, 32.535282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.395721, 36.844173, 32.697815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459295, -0.023712, 0.887968,
		0.460934, 0.860890, -0.215426,
		-0.759334, 0.508238, 0.406332,
		42.167923, 36.996643, 32.819714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.015724, 37.147781, 32.967812>,  <42.699455, 36.640877, 32.535282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.015724, 37.147781, 32.967812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.634895, 37.096813, 33.079033>,  <42.406399, 37.066231, 33.145767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.634895, 37.096813, 33.079033>,  <43.015724, 37.147781, 32.967812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.634895, 37.096813, 33.079033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296682, -0.163650, 0.940850,
		-0.074382, 0.978254, 0.193611,
		-0.952075, -0.127424, 0.278058,
		42.349274, 37.058586, 33.162449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.802528, 37.557541, 33.646511>,  <43.015724, 37.147781, 32.967812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.802528, 37.557541, 33.646511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.548576, 37.250732, 33.609409>,  <42.396206, 37.066647, 33.587147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.548576, 37.250732, 33.609409>,  <42.802528, 37.557541, 33.646511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.548576, 37.250732, 33.609409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169424, -0.255349, 0.951889,
		-0.753805, 0.588620, 0.292068,
		-0.634880, -0.767022, -0.092757,
		42.358112, 37.020626, 33.581581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.498745, 37.390549, 34.463860>,  <42.802528, 37.557541, 33.646511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.498745, 37.390549, 34.463860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.399342, 37.079571, 34.232750>,  <42.339699, 36.892982, 34.094086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.399342, 37.079571, 34.232750>,  <42.498745, 37.390549, 34.463860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.399342, 37.079571, 34.232750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053542, -0.606599, 0.793203,
		-0.967149, 0.166182, 0.192370,
		-0.248507, -0.777446, -0.577774,
		42.324791, 36.846336, 34.059418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.995098, 37.074627, 34.878918>,  <42.498745, 37.390549, 34.463860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.995098, 37.074627, 34.878918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.104748, 36.784374, 34.626469>,  <42.170536, 36.610222, 34.474998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.104748, 36.784374, 34.626469>,  <41.995098, 37.074627, 34.878918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.104748, 36.784374, 34.626469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086699, -0.634946, 0.767676,
		-0.957779, -0.265155, -0.111141,
		0.274122, -0.725628, -0.631127,
		42.186985, 36.566685, 34.437130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.684471, 36.484974, 35.213341>,  <41.995098, 37.074627, 34.878918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.684471, 36.484974, 35.213341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.972168, 36.337978, 34.977497>,  <42.144787, 36.249783, 34.835991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.972168, 36.337978, 34.977497>,  <41.684471, 36.484974, 35.213341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.972168, 36.337978, 34.977497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181065, -0.720183, 0.669740,
		-0.670750, -0.588464, -0.451447,
		0.719243, -0.367487, -0.589613,
		42.187939, 36.227734, 34.800613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.600346, 35.848061, 35.328514>,  <41.684471, 36.484974, 35.213341>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.600346, 35.848061, 35.328514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.958279, 35.837780, 35.150249>,  <42.173038, 35.831612, 35.043289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.958279, 35.837780, 35.150249>,  <41.600346, 35.848061, 35.328514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.958279, 35.837780, 35.150249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185448, -0.886716, 0.423490,
		-0.406059, -0.461600, -0.788696,
		0.894832, -0.025700, -0.445662,
		42.226727, 35.830070, 35.016552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.627056, 35.213631, 35.079102>,  <41.600346, 35.848061, 35.328514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.627056, 35.213631, 35.079102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.001808, 35.349113, 35.113838>,  <42.226658, 35.430405, 35.134678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.001808, 35.349113, 35.113838>,  <41.627056, 35.213631, 35.079102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.001808, 35.349113, 35.113838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277718, -0.871693, 0.403762,
		0.212455, -0.354158, -0.910733,
		0.936875, 0.338708, 0.086840,
		42.282871, 35.450726, 35.139889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.954567, 34.662373, 34.764366>,  <41.627056, 35.213631, 35.079102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.954567, 34.662373, 34.764366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.192848, 34.868526, 35.010788>,  <42.335815, 34.992218, 35.158642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.192848, 34.868526, 35.010788>,  <41.954567, 34.662373, 34.764366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.192848, 34.868526, 35.010788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199057, -0.837795, 0.508406,
		0.778150, -0.180227, -0.601665,
		0.595700, 0.515381, 0.616055,
		42.371559, 35.023140, 35.195602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.607651, 34.315315, 34.753334>,  <41.954567, 34.662373, 34.764366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.607651, 34.315315, 34.753334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.634842, 34.527817, 35.091125>,  <42.651157, 34.655315, 35.293800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.634842, 34.527817, 35.091125>,  <42.607651, 34.315315, 34.753334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.634842, 34.527817, 35.091125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090436, -0.846237, 0.525076,
		0.993580, 0.040680, -0.105568,
		0.067975, 0.531252, 0.844483,
		42.655235, 34.687191, 35.344471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.312805, 34.177925, 35.269199>,  <42.607651, 34.315315, 34.753334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.312805, 34.177925, 35.269199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.014130, 34.325924, 35.490307>,  <42.834923, 34.414722, 35.622971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.014130, 34.325924, 35.490307>,  <43.312805, 34.177925, 35.269199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.014130, 34.325924, 35.490307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080684, -0.774499, 0.627409,
		0.660260, 0.513079, 0.548458,
		-0.746690, 0.370001, 0.552768,
		42.790123, 34.436924, 35.656136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.978809, 34.302029, 35.770607>,  <43.312805, 34.177925, 35.269199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.978809, 34.302029, 35.770607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.314587, 34.219933, 35.569324>,  <44.516052, 34.170673, 35.448555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.314587, 34.219933, 35.569324>,  <43.978809, 34.302029, 35.770607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.314587, 34.219933, 35.569324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103328, 0.848774, -0.518561,
		0.533541, 0.487296, 0.691286,
		0.839438, -0.205244, -0.503207,
		44.566418, 34.158360, 35.418362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.185909, 34.998714, 35.548168>,  <43.978809, 34.302029, 35.770607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.185909, 34.998714, 35.548168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.425083, 34.756737, 35.337830>,  <44.568588, 34.611549, 35.211624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.425083, 34.756737, 35.337830>,  <44.185909, 34.998714, 35.548168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.425083, 34.756737, 35.337830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192280, 0.745146, -0.638581,
		0.778138, 0.280721, 0.561869,
		0.597937, -0.604940, -0.525850,
		44.604465, 34.575256, 35.180073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.863373, 35.309948, 35.495480>,  <44.185909, 34.998714, 35.548168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.863373, 35.309948, 35.495480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.822098, 35.047062, 35.196838>,  <44.797333, 34.889332, 35.017654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.822098, 35.047062, 35.196838>,  <44.863373, 35.309948, 35.495480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.822098, 35.047062, 35.196838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359540, 0.675213, -0.644064,
		0.927406, -0.334896, 0.166619,
		-0.103191, -0.657216, -0.746605,
		44.791142, 34.849895, 34.972858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.443520, 35.377487, 35.014565>,  <44.863373, 35.309948, 35.495480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.443520, 35.377487, 35.014565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.154945, 35.220200, 34.786560>,  <44.981800, 35.125828, 34.649757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.154945, 35.220200, 34.786560>,  <45.443520, 35.377487, 35.014565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.154945, 35.220200, 34.786560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240997, 0.629112, -0.739012,
		0.649201, -0.670515, -0.359093,
		-0.721429, -0.393227, -0.570012,
		44.938515, 35.102234, 34.615559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.679279, 35.417252, 34.423130>,  <45.443520, 35.377487, 35.014565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.679279, 35.417252, 34.423130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.295956, 35.357708, 34.325569>,  <45.065964, 35.321983, 34.267033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.295956, 35.357708, 34.325569>,  <45.679279, 35.417252, 34.423130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.295956, 35.357708, 34.325569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149750, 0.465327, -0.872379,
		0.243355, -0.872532, -0.423635,
		-0.958308, -0.148859, -0.243901,
		45.008465, 35.313049, 34.252399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.670464, 35.056877, 33.771080>,  <45.679279, 35.417252, 34.423130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.670464, 35.056877, 33.771080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.312801, 35.231503, 33.810867>,  <45.098202, 35.336277, 33.834740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.312801, 35.231503, 33.810867>,  <45.670464, 35.056877, 33.771080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.312801, 35.231503, 33.810867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105540, 0.421397, -0.900714,
		-0.435131, -0.794884, -0.422871,
		-0.894160, 0.436559, 0.099471,
		45.044552, 35.362469, 33.840710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.396660, 34.978687, 33.048641>,  <45.670464, 35.056877, 33.771080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.396660, 34.978687, 33.048641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.209930, 35.268620, 33.251301>,  <45.097893, 35.442577, 33.372898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.209930, 35.268620, 33.251301>,  <45.396660, 34.978687, 33.048641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.209930, 35.268620, 33.251301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112532, 0.519563, -0.846989,
		-0.877159, -0.452413, -0.160980,
		-0.466828, 0.724829, 0.506651,
		45.069881, 35.486069, 33.403297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.707890, 35.218979, 32.666611>,  <45.396660, 34.978687, 33.048641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.707890, 35.218979, 32.666611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.831425, 35.532768, 32.881729>,  <44.905544, 35.721043, 33.010799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.831425, 35.532768, 32.881729>,  <44.707890, 35.218979, 32.666611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.831425, 35.532768, 32.881729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012883, 0.561930, -0.827085,
		-0.951029, 0.262360, 0.163436,
		0.308834, 0.784476, 0.537791,
		44.924076, 35.768112, 33.043068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.415909, 35.672756, 32.283253>,  <44.707890, 35.218979, 32.666611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.415909, 35.672756, 32.283253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.667046, 35.893005, 32.503304>,  <44.817726, 36.025154, 32.635334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.667046, 35.893005, 32.503304>,  <44.415909, 35.672756, 32.283253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.667046, 35.893005, 32.503304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096103, 0.646541, -0.756802,
		-0.772388, 0.528018, 0.353007,
		0.627838, 0.550619, 0.550125,
		44.855396, 36.058189, 32.668343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.065731, 36.267624, 32.368248>,  <44.415909, 35.672756, 32.283253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.065731, 36.267624, 32.368248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.444290, 36.365173, 32.452961>,  <44.671425, 36.423702, 32.503788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.444290, 36.365173, 32.452961>,  <44.065731, 36.267624, 32.368248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.444290, 36.365173, 32.452961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099579, 0.844047, -0.526942,
		-0.307257, 0.477611, 0.823092,
		0.946402, 0.243870, 0.211780,
		44.728210, 36.438335, 32.516495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.075199, 37.015362, 32.660694>,  <44.065731, 36.267624, 32.368248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.075199, 37.015362, 32.660694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.425583, 36.907024, 32.501026>,  <44.635815, 36.842022, 32.405224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.425583, 36.907024, 32.501026>,  <44.075199, 37.015362, 32.660694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.425583, 36.907024, 32.501026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040804, 0.782932, -0.620767,
		0.480656, 0.560055, 0.674766,
		0.875959, -0.270842, -0.399174,
		44.688370, 36.825771, 32.381275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.472992, 37.718735, 32.642563>,  <44.075199, 37.015362, 32.660694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.472992, 37.718735, 32.642563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.665665, 37.461372, 32.404568>,  <44.781269, 37.306953, 32.261772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.665665, 37.461372, 32.404568>,  <44.472992, 37.718735, 32.642563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.665665, 37.461372, 32.404568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031988, 0.665580, -0.745641,
		0.875763, 0.378194, 0.300016,
		0.481681, -0.643407, -0.594988,
		44.810169, 37.268349, 32.226070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.919567, 38.120377, 32.292660>,  <44.472992, 37.718735, 32.642563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.919567, 38.120377, 32.292660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.856575, 37.790009, 32.076122>,  <44.818779, 37.591789, 31.946199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.856575, 37.790009, 32.076122>,  <44.919567, 38.120377, 32.292660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.856575, 37.790009, 32.076122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291344, 0.562644, -0.773660,
		0.943567, 0.035884, -0.329231,
		-0.157478, -0.825920, -0.541347,
		44.809330, 37.542233, 31.913719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.186100, 38.364635, 31.650553>,  <44.919567, 38.120377, 32.292660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.186100, 38.364635, 31.650553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.968449, 38.033752, 31.594492>,  <44.837856, 37.835220, 31.560856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.968449, 38.033752, 31.594492>,  <45.186100, 38.364635, 31.650553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.968449, 38.033752, 31.594492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208999, 0.295420, -0.932226,
		0.812553, -0.477961, -0.333634,
		-0.544130, -0.827212, -0.140151,
		44.805210, 37.785587, 31.552446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.418911, 38.027428, 30.980049>,  <45.186100, 38.364635, 31.650553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.418911, 38.027428, 30.980049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.048367, 37.899521, 31.059656>,  <44.826042, 37.822777, 31.107420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.048367, 37.899521, 31.059656>,  <45.418911, 38.027428, 30.980049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.048367, 37.899521, 31.059656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268113, 0.188742, -0.944718,
		0.264534, -0.928504, -0.260578,
		-0.926357, -0.319775, 0.199015,
		44.770458, 37.803589, 31.119362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.239639, 37.680626, 30.354191>,  <45.418911, 38.027428, 30.980049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.239639, 37.680626, 30.354191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.897591, 37.708450, 30.559685>,  <44.692360, 37.725147, 30.682981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.897591, 37.708450, 30.559685>,  <45.239639, 37.680626, 30.354191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.897591, 37.708450, 30.559685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500810, 0.145267, -0.853280,
		-0.133987, -0.986944, -0.089382,
		-0.855124, 0.069565, 0.513735,
		44.641052, 37.729321, 30.713806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.769306, 37.263416, 29.985268>,  <45.239639, 37.680626, 30.354191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.769306, 37.263416, 29.985268> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.559128, 37.523300, 30.205009>,  <44.433022, 37.679230, 30.336855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.559128, 37.523300, 30.205009>,  <44.769306, 37.263416, 29.985268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.559128, 37.523300, 30.205009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484766, 0.302012, -0.820848,
		-0.699221, -0.697618, 0.156264,
		-0.525445, 0.649706, 0.549355,
		44.401493, 37.718212, 30.369816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.946827, 37.059925, 30.017248>,  <44.769306, 37.263416, 29.985268>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.946827, 37.059925, 30.017248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.066845, 37.440472, 30.045172>,  <44.138855, 37.668800, 30.061926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.066845, 37.440472, 30.045172>,  <43.946827, 37.059925, 30.017248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.066845, 37.440472, 30.045172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657358, 0.259244, -0.707583,
		-0.691268, 0.166418, 0.703173,
		0.300048, 0.951366, 0.069811,
		44.156860, 37.725880, 30.066114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.425552, 37.320339, 29.590996>,  <43.946827, 37.059925, 30.017248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.425552, 37.320339, 29.590996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.675278, 37.626350, 29.654203>,  <43.825111, 37.809956, 29.692129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.675278, 37.626350, 29.654203>,  <43.425552, 37.320339, 29.590996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.675278, 37.626350, 29.654203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428787, 0.504690, -0.749286,
		-0.652974, 0.400031, 0.643117,
		0.624313, 0.765025, 0.158021,
		43.862572, 37.855858, 29.701611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.028767, 37.828026, 29.588625>,  <43.425552, 37.320339, 29.590996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.028767, 37.828026, 29.588625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.383087, 38.009235, 29.548388>,  <43.595680, 38.117962, 29.524244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.383087, 38.009235, 29.548388>,  <43.028767, 37.828026, 29.588625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.383087, 38.009235, 29.548388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321502, 0.442779, -0.837008,
		-0.334646, 0.773766, 0.537865,
		0.885804, 0.453026, -0.100593,
		43.648827, 38.145142, 29.518209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.947720, 38.588081, 29.632284>,  <43.028767, 37.828026, 29.588625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.947720, 38.588081, 29.632284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.281090, 38.497089, 29.430830>,  <43.481113, 38.442493, 29.309958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.281090, 38.497089, 29.430830>,  <42.947720, 38.588081, 29.632284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.281090, 38.497089, 29.430830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298190, 0.582178, -0.756407,
		0.465274, 0.780591, 0.417372,
		0.833429, -0.227480, -0.503636,
		43.531120, 38.428844, 29.279739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.867912, 35.935593, 39.482712> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618038, 35.623245, 39.481510>,  <35.468113, 35.435837, 39.480789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618038, 35.623245, 39.481510>,  <35.867912, 35.935593, 39.482712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618038, 35.623245, 39.481510> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319802, -0.252323, -0.913268,
		0.712387, -0.571465, 0.407347,
		-0.624684, -0.780872, -0.003004,
		35.430634, 35.388985, 39.480610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260635, 35.256767, 39.305481>,  <35.867912, 35.935593, 39.482712>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260635, 35.256767, 39.305481> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881123, 35.168316, 39.215229>,  <35.653416, 35.115246, 39.161076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881123, 35.168316, 39.215229>,  <36.260635, 35.256767, 39.305481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881123, 35.168316, 39.215229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293283, -0.350986, -0.889266,
		0.117450, -0.909895, 0.397864,
		-0.948784, -0.221131, -0.225633,
		35.596489, 35.101978, 39.147537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244766, 34.647526, 39.089378>,  <36.260635, 35.256767, 39.305481>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244766, 34.647526, 39.089378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913704, 34.793304, 38.918659>,  <35.715065, 34.880772, 38.816227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913704, 34.793304, 38.918659>,  <36.244766, 34.647526, 39.089378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913704, 34.793304, 38.918659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263553, -0.419009, -0.868891,
		-0.495499, -0.831629, 0.250745,
		-0.827659, 0.364451, -0.426797,
		35.665405, 34.902641, 38.790619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036289, 34.098415, 38.593517>,  <36.244766, 34.647526, 39.089378>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036289, 34.098415, 38.593517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841228, 34.429565, 38.482658>,  <35.724190, 34.628258, 38.416145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841228, 34.429565, 38.482658>,  <36.036289, 34.098415, 38.593517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841228, 34.429565, 38.482658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168771, -0.222066, -0.960314,
		-0.856568, -0.515076, -0.031430,
		-0.487656, 0.827879, -0.277144,
		35.694931, 34.677929, 38.399513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659809, 33.932266, 37.947800>,  <36.036289, 34.098415, 38.593517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659809, 33.932266, 37.947800> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609406, 34.328712, 37.930775>,  <35.579163, 34.566582, 37.920559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609406, 34.328712, 37.930775>,  <35.659809, 33.932266, 37.947800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609406, 34.328712, 37.930775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168000, -0.020969, -0.985564,
		-0.977700, -0.131340, -0.163865,
		-0.126008, 0.991116, -0.042566,
		35.571602, 34.626049, 37.918003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210064, 33.999325, 37.411221>,  <35.659809, 33.932266, 37.947800>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210064, 33.999325, 37.411221> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383461, 34.358093, 37.446140>,  <35.487499, 34.573353, 37.467094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383461, 34.358093, 37.446140>,  <35.210064, 33.999325, 37.411221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383461, 34.358093, 37.446140> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098387, 0.143405, -0.984761,
		-0.895769, 0.418301, 0.150411,
		0.433496, 0.896917, 0.087303,
		35.513512, 34.627167, 37.472332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819767, 34.426804, 37.002129>,  <35.210064, 33.999325, 37.411221>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819767, 34.426804, 37.002129> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179543, 34.598110, 37.036983>,  <35.395409, 34.700893, 37.057896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179543, 34.598110, 37.036983>,  <34.819767, 34.426804, 37.002129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179543, 34.598110, 37.036983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093155, 0.006925, -0.995628,
		-0.427000, 0.903624, -0.033667,
		0.899440, 0.428270, 0.087134,
		35.449375, 34.726593, 37.063126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794407, 34.984165, 36.580635>,  <34.819767, 34.426804, 37.002129>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794407, 34.984165, 36.580635> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178429, 34.891430, 36.643311>,  <35.408840, 34.835789, 36.680916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178429, 34.891430, 36.643311>,  <34.794407, 34.984165, 36.580635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.178429, 34.891430, 36.643311> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149966, -0.046451, -0.987599,
		0.236241, 0.971645, -0.009827,
		0.960052, -0.231838, 0.156687,
		35.466446, 34.821880, 36.690315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144138, 35.356678, 36.089096>,  <34.794407, 34.984165, 36.580635>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144138, 35.356678, 36.089096> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417061, 35.087402, 36.203129>,  <35.580814, 34.925838, 36.271549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417061, 35.087402, 36.203129>,  <35.144138, 35.356678, 36.089096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417061, 35.087402, 36.203129> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348861, -0.042864, -0.936194,
		0.642455, 0.738227, 0.205603,
		0.682310, -0.673189, 0.285077,
		35.621754, 34.885445, 36.288651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755852, 35.609581, 35.759583>,  <35.144138, 35.356678, 36.089096>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755852, 35.609581, 35.759583> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785759, 35.220673, 35.848213>,  <35.803703, 34.987328, 35.901390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785759, 35.220673, 35.848213>,  <35.755852, 35.609581, 35.759583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785759, 35.220673, 35.848213> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327443, -0.185940, -0.926395,
		0.941908, 0.141818, 0.304462,
		0.074768, -0.972273, 0.221576,
		35.808189, 34.928989, 35.914684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257011, 35.341431, 35.301979>,  <35.755852, 35.609581, 35.759583>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257011, 35.341431, 35.301979> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067265, 35.008888, 35.417786>,  <35.953419, 34.809361, 35.487270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067265, 35.008888, 35.417786>,  <36.257011, 35.341431, 35.301979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067265, 35.008888, 35.417786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025972, -0.341950, -0.939359,
		0.879945, -0.438079, 0.183801,
		-0.474365, -0.831358, 0.289520,
		35.924953, 34.759480, 35.504642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746372, 34.747913, 35.182934>,  <36.257011, 35.341431, 35.301979>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746372, 34.747913, 35.182934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367458, 34.619801, 35.179752>,  <36.140110, 34.542934, 35.177845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367458, 34.619801, 35.179752>,  <36.746372, 34.747913, 35.182934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367458, 34.619801, 35.179752> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082659, -0.220353, -0.971912,
		0.309535, -0.921338, 0.235212,
		-0.947289, -0.320283, -0.007950,
		36.083271, 34.523716, 35.177368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804398, 34.114532, 34.850529>,  <36.746372, 34.747913, 35.182934>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804398, 34.114532, 34.850529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446251, 34.290230, 34.821159>,  <36.231365, 34.395649, 34.803539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446251, 34.290230, 34.821159>,  <36.804398, 34.114532, 34.850529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446251, 34.290230, 34.821159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016644, -0.197760, -0.980109,
		-0.445026, -0.876332, 0.184378,
		-0.895363, 0.439243, -0.073423,
		36.177643, 34.422001, 34.799133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564903, 33.832737, 34.064224>,  <36.804398, 34.114532, 34.850529>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564903, 33.832737, 34.064224> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682438, 33.564220, 33.792038>,  <36.752960, 33.403111, 33.628727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682438, 33.564220, 33.792038>,  <36.564903, 33.832737, 34.064224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682438, 33.564220, 33.792038> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093997, -0.728732, 0.678318,
		-0.951222, -0.135355, -0.277229,
		0.293840, -0.671289, -0.680462,
		36.770592, 33.362835, 33.587898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046986, 33.394615, 33.877243>,  <36.564903, 33.832737, 34.064224>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046986, 33.394615, 33.877243> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405609, 33.217556, 33.870953>,  <36.620781, 33.111320, 33.867180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405609, 33.217556, 33.870953>,  <36.046986, 33.394615, 33.877243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405609, 33.217556, 33.870953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314008, -0.660239, 0.682263,
		-0.312385, -0.606750, -0.730938,
		0.896557, -0.442649, -0.015725,
		36.674576, 33.084763, 33.866234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884583, 32.695816, 33.850208>,  <36.046986, 33.394615, 33.877243>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884583, 32.695816, 33.850208> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245926, 32.739040, 34.016224>,  <36.462734, 32.764977, 34.115833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245926, 32.739040, 34.016224>,  <35.884583, 32.695816, 33.850208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245926, 32.739040, 34.016224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310033, -0.504131, 0.806059,
		0.296341, -0.856839, -0.421910,
		0.903361, 0.108062, 0.415044,
		36.516933, 32.771458, 34.140736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219837, 31.964603, 33.944462>,  <35.884583, 32.695816, 33.850208>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219837, 31.964603, 33.944462> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408566, 32.225471, 34.181801>,  <36.521801, 32.381992, 34.324203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408566, 32.225471, 34.181801>,  <36.219837, 31.964603, 33.944462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408566, 32.225471, 34.181801> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385007, -0.453018, 0.804080,
		0.793193, -0.607824, 0.037346,
		0.471821, 0.652169, 0.593347,
		36.550110, 32.421124, 34.359806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.495197, 31.637314, 34.465210>,  <36.219837, 31.964603, 33.944462>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.495197, 31.637314, 34.465210> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514977, 31.998413, 34.636135>,  <36.526844, 32.215073, 34.738689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514977, 31.998413, 34.636135>,  <36.495197, 31.637314, 34.465210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514977, 31.998413, 34.636135> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043285, -0.425498, 0.903923,
		0.997838, -0.063193, 0.018036,
		0.049447, 0.902750, 0.427314,
		36.529812, 32.269238, 34.764328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661942, 31.446039, 35.182339>,  <36.495197, 31.637314, 34.465210>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661942, 31.446039, 35.182339> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570293, 31.834869, 35.202614>,  <36.515305, 32.068169, 35.214779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570293, 31.834869, 35.202614>,  <36.661942, 31.446039, 35.182339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570293, 31.834869, 35.202614> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161592, -0.089335, 0.982806,
		0.959891, 0.216991, 0.177549,
		-0.229122, 0.972077, 0.050688,
		36.501556, 32.126492, 35.217819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917526, 31.691561, 35.845207>,  <36.661942, 31.446039, 35.182339>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917526, 31.691561, 35.845207> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658813, 31.969143, 35.718651>,  <36.503586, 32.135693, 35.642715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658813, 31.969143, 35.718651>,  <36.917526, 31.691561, 35.845207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658813, 31.969143, 35.718651> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171481, 0.271906, 0.946922,
		0.743150, 0.666704, -0.056863,
		-0.646778, 0.693955, -0.316394,
		36.464779, 32.177330, 35.623734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976952, 32.293991, 36.339230>,  <36.917526, 31.691561, 35.845207>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976952, 32.293991, 36.339230> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611401, 32.304207, 36.177155>,  <36.392071, 32.310337, 36.079910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611401, 32.304207, 36.177155>,  <36.976952, 32.293991, 36.339230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611401, 32.304207, 36.177155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380214, 0.296102, 0.876220,
		0.142355, 0.954815, -0.260890,
		-0.913877, 0.025541, -0.405186,
		36.337238, 32.311871, 36.055599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599556, 32.857735, 36.665401>,  <36.976952, 32.293991, 36.339230>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599556, 32.857735, 36.665401> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309944, 32.644135, 36.490761>,  <36.136177, 32.515972, 36.385979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309944, 32.644135, 36.490761>,  <36.599556, 32.857735, 36.665401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309944, 32.644135, 36.490761> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602887, 0.182408, 0.776694,
		-0.335119, 0.825571, -0.454014,
		-0.724032, -0.534004, -0.436597,
		36.092735, 32.483932, 36.359783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006905, 33.172394, 36.939693>,  <36.599556, 32.857735, 36.665401>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006905, 33.172394, 36.939693> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829933, 32.869164, 36.748035>,  <35.723751, 32.687225, 36.633041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829933, 32.869164, 36.748035>,  <36.006905, 33.172394, 36.939693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829933, 32.869164, 36.748035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763693, 0.038392, 0.644438,
		-0.470137, 0.651037, -0.595921,
		-0.442431, -0.758075, -0.479143,
		35.697205, 32.641743, 36.604294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289822, 33.317863, 36.688931>,  <36.006905, 33.172394, 36.939693>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289822, 33.317863, 36.688931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333988, 32.934624, 36.794655>,  <35.360489, 32.704681, 36.858089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333988, 32.934624, 36.794655>,  <35.289822, 33.317863, 36.688931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333988, 32.934624, 36.794655> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801142, 0.071583, 0.594178,
		-0.588200, -0.277358, -0.759666,
		0.110421, -0.958096, 0.264308,
		35.367115, 32.647194, 36.873947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608479, 32.966999, 36.638676>,  <35.289822, 33.317863, 36.688931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608479, 32.966999, 36.638676> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833660, 32.747910, 36.886250>,  <34.968769, 32.616455, 37.034794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833660, 32.747910, 36.886250>,  <34.608479, 32.966999, 36.638676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833660, 32.747910, 36.886250> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745527, -0.013272, 0.666343,
		-0.356757, -0.836555, -0.415814,
		0.562951, -0.547723, 0.618939,
		35.002544, 32.583591, 37.071930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134453, 32.789093, 37.110283>,  <34.608479, 32.966999, 36.638676>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134453, 32.789093, 37.110283> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473068, 32.696972, 37.302258>,  <34.676235, 32.641701, 37.417442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473068, 32.696972, 37.302258>,  <34.134453, 32.789093, 37.110283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473068, 32.696972, 37.302258> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515778, -0.131732, 0.846534,
		-0.131732, -0.964163, -0.230298,
		-0.846534, 0.230298, -0.479941,
		34.727028, 32.627884, 37.446239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881207, 32.431187, 37.625210>,  <34.134453, 32.789093, 37.110283>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881207, 32.431187, 37.625210> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255665, 32.470554, 37.760231>,  <34.480339, 32.494175, 37.841244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255665, 32.470554, 37.760231>,  <33.881207, 32.431187, 37.625210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255665, 32.470554, 37.760231> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332206, -0.066897, 0.940832,
		0.115175, -0.992894, -0.029931,
		0.936149, 0.098417, 0.337550,
		34.536510, 32.500080, 37.861496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994019, 31.885086, 38.158558>,  <33.881207, 32.431187, 37.625210>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994019, 31.885086, 38.158558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235680, 32.196617, 38.226002>,  <34.380676, 32.383537, 38.266468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235680, 32.196617, 38.226002>,  <33.994019, 31.885086, 38.158558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235680, 32.196617, 38.226002> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157210, -0.090936, 0.983369,
		0.781209, -0.620610, 0.067501,
		0.604150, 0.778828, 0.168606,
		34.416924, 32.430267, 38.276585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.420109, 31.351395, 37.936211>,  <33.994019, 31.885086, 38.158558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.420109, 31.351395, 37.936211> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392666, 30.952869, 37.915607>,  <34.376202, 30.713755, 37.903244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392666, 30.952869, 37.915607>,  <34.420109, 31.351395, 37.936211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.392666, 30.952869, 37.915607> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363029, 0.073025, -0.928912,
		0.929248, -0.045031, -0.366701,
		-0.068608, -0.996313, -0.051510,
		34.372082, 30.653976, 37.900154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675903, 31.175722, 37.293285>,  <34.420109, 31.351395, 37.936211>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675903, 31.175722, 37.293285> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445347, 30.870872, 37.411232>,  <34.307014, 30.687963, 37.481998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445347, 30.870872, 37.411232>,  <34.675903, 31.175722, 37.293285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.445347, 30.870872, 37.411232> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365243, -0.082518, -0.927248,
		0.731010, -0.642150, -0.230798,
		-0.576387, -0.762124, 0.294862,
		34.272430, 30.642235, 37.499691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731949, 30.763817, 36.725231>,  <34.675903, 31.175722, 37.293285>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731949, 30.763817, 36.725231> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414379, 30.644903, 36.937382>,  <34.223835, 30.573555, 37.064671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414379, 30.644903, 36.937382>,  <34.731949, 30.763817, 36.725231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414379, 30.644903, 36.937382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509521, -0.150668, -0.847164,
		0.331761, -0.942825, -0.031854,
		-0.793929, -0.297287, 0.530376,
		34.176201, 30.555717, 37.096493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417282, 30.039135, 36.433624>,  <34.731949, 30.763817, 36.725231>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417282, 30.039135, 36.433624> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121807, 30.216412, 36.636765>,  <33.944519, 30.322779, 36.758648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121807, 30.216412, 36.636765>,  <34.417282, 30.039135, 36.433624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121807, 30.216412, 36.636765> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602150, -0.095315, -0.792673,
		-0.302901, -0.891345, 0.337277,
		-0.738692, 0.443193, 0.507853,
		33.900200, 30.349369, 36.789120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738194, 29.700802, 36.192383>,  <34.417282, 30.039135, 36.433624>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738194, 29.700802, 36.192383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624744, 30.045317, 36.361019>,  <33.556675, 30.252026, 36.462200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624744, 30.045317, 36.361019>,  <33.738194, 29.700802, 36.192383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624744, 30.045317, 36.361019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669221, 0.137100, -0.730306,
		-0.686804, -0.489271, 0.537507,
		-0.283625, 0.861288, 0.421591,
		33.539658, 30.303703, 36.487495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013027, 29.673836, 36.304222>,  <33.738194, 29.700802, 36.192383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013027, 29.673836, 36.304222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146980, 30.049271, 36.270973>,  <33.227352, 30.274530, 36.251022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146980, 30.049271, 36.270973>,  <33.013027, 29.673836, 36.304222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146980, 30.049271, 36.270973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712547, 0.194530, -0.674118,
		-0.616548, 0.284981, 0.733931,
		0.334883, 0.938586, -0.083125,
		33.247444, 30.330847, 36.246037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.493183, 30.092318, 36.252281>,  <33.013027, 29.673836, 36.304222>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.493183, 30.092318, 36.252281> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769985, 30.340733, 36.105072>,  <32.936066, 30.489780, 36.016747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769985, 30.340733, 36.105072>,  <32.493183, 30.092318, 36.252281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769985, 30.340733, 36.105072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624601, 0.259499, -0.736569,
		-0.361935, 0.739577, 0.567475,
		0.692009, 0.621036, -0.368019,
		32.977589, 30.527044, 35.994667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178608, 30.743555, 36.156311>,  <32.493183, 30.092318, 36.252281>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178608, 30.743555, 36.156311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513992, 30.805569, 35.947330>,  <32.715221, 30.842777, 35.821941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513992, 30.805569, 35.947330>,  <32.178608, 30.743555, 36.156311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513992, 30.805569, 35.947330> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528327, 0.466335, -0.709508,
		0.133638, 0.870916, 0.472912,
		0.838458, 0.155035, -0.522449,
		32.765530, 30.852079, 35.790596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.050232, 31.477585, 35.875492>,  <32.178608, 30.743555, 36.156311>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.050232, 31.477585, 35.875492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326065, 31.307592, 35.640934>,  <32.491566, 31.205597, 35.500198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326065, 31.307592, 35.640934>,  <32.050232, 31.477585, 35.875492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326065, 31.307592, 35.640934> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453718, 0.377580, -0.807201,
		0.564458, 0.822693, 0.067551,
		0.689584, -0.424982, -0.586399,
		32.532940, 31.180098, 35.465015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132698, 31.946215, 35.371975>,  <32.050232, 31.477585, 35.875492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.132698, 31.946215, 35.371975> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281013, 31.608042, 35.218216>,  <32.370003, 31.405138, 35.125961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281013, 31.608042, 35.218216>,  <32.132698, 31.946215, 35.371975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281013, 31.608042, 35.218216> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266135, 0.299814, -0.916124,
		0.889769, 0.441988, -0.113832,
		0.370787, -0.845434, -0.384393,
		32.392250, 31.354412, 35.102898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332954, 32.239540, 34.802326>,  <32.132698, 31.946215, 35.371975>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332954, 32.239540, 34.802326> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.348618, 31.843357, 34.749466>,  <32.358013, 31.605648, 34.717751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.348618, 31.843357, 34.749466>,  <32.332954, 32.239540, 34.802326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348618, 31.843357, 34.749466> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129606, 0.126106, -0.983514,
		0.990792, 0.055636, -0.123431,
		0.039153, -0.990456, -0.132155,
		32.360363, 31.546221, 34.709820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659740, 32.095798, 34.155964>,  <32.332954, 32.239540, 34.802326>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659740, 32.095798, 34.155964> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455730, 31.764557, 34.249023>,  <32.333324, 31.565813, 34.304859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455730, 31.764557, 34.249023>,  <32.659740, 32.095798, 34.155964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.455730, 31.764557, 34.249023> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400657, -0.010630, -0.916166,
		0.761151, -0.560479, -0.326362,
		-0.510023, -0.828100, 0.232651,
		32.302723, 31.516127, 34.318817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.090435, 30.710846, 40.995945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.823437, 30.421665, 41.067272>,  <35.663239, 30.248158, 41.110069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.823437, 30.421665, 41.067272>,  <36.090435, 30.710846, 40.995945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823437, 30.421665, 41.067272> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019285, -0.256177, -0.966438,
		0.744368, -0.641650, 0.184938,
		-0.667491, -0.722952, 0.178315,
		35.623188, 30.204781, 41.120766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335941, 29.986477, 40.767078>,  <36.090435, 30.710846, 40.995945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335941, 29.986477, 40.767078> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.936230, 29.972012, 40.762306>,  <35.696404, 29.963331, 40.759441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.936230, 29.972012, 40.762306>,  <36.335941, 29.986477, 40.767078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936230, 29.972012, 40.762306> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016621, -0.132339, -0.991065,
		0.034264, -0.990544, 0.132844,
		-0.999274, -0.036166, -0.011929,
		35.636448, 29.961163, 40.758728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173946, 29.372375, 40.330811>,  <36.335941, 29.986477, 40.767078>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173946, 29.372375, 40.330811> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.841484, 29.593996, 40.349567>,  <35.642006, 29.726969, 40.360821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.841484, 29.593996, 40.349567>,  <36.173946, 29.372375, 40.330811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841484, 29.593996, 40.349567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188595, -0.201566, -0.961147,
		-0.523074, -0.807710, 0.272025,
		-0.831159, 0.554053, 0.046896,
		35.592136, 29.760212, 40.363636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675312, 29.047035, 39.875896>,  <36.173946, 29.372375, 40.330811>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675312, 29.047035, 39.875896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.508987, 29.404577, 39.942978>,  <35.409195, 29.619102, 39.983227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.508987, 29.404577, 39.942978>,  <35.675312, 29.047035, 39.875896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508987, 29.404577, 39.942978> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455040, -0.044817, -0.889342,
		-0.787427, -0.446110, 0.425376,
		-0.415809, 0.893855, 0.167708,
		35.384243, 29.672733, 39.993290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939095, 28.912691, 39.834072>,  <35.675312, 29.047035, 39.875896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939095, 28.912691, 39.834072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.037716, 29.293367, 39.760872>,  <35.096889, 29.521774, 39.716949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.037716, 29.293367, 39.760872>,  <34.939095, 28.912691, 39.834072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037716, 29.293367, 39.760872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574687, -0.008474, -0.818330,
		-0.780349, 0.306935, 0.544836,
		0.246557, 0.951693, -0.183005,
		35.111683, 29.578875, 39.705971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389957, 29.103559, 39.423672>,  <34.939095, 28.912691, 39.834072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389957, 29.103559, 39.423672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.654770, 29.396975, 39.362175>,  <34.813660, 29.573023, 39.325275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.654770, 29.396975, 39.362175>,  <34.389957, 29.103559, 39.423672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654770, 29.396975, 39.362175> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497216, 0.276377, -0.822430,
		-0.560792, 0.620918, 0.547697,
		0.662033, 0.733537, -0.153740,
		34.853378, 29.617035, 39.316051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012440, 29.775427, 39.353298>,  <34.389957, 29.103559, 39.423672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012440, 29.775427, 39.353298> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.363476, 29.812403, 39.165134>,  <34.574097, 29.834589, 39.052238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.363476, 29.812403, 39.165134>,  <34.012440, 29.775427, 39.353298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363476, 29.812403, 39.165134> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472712, 0.330236, -0.816999,
		0.079822, 0.939361, 0.333510,
		0.877594, 0.092440, -0.470407,
		34.626755, 29.840136, 39.024014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026020, 30.473886, 39.017078>,  <34.012440, 29.775427, 39.353298>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026020, 30.473886, 39.017078> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.297722, 30.265869, 38.809937>,  <34.460743, 30.141058, 38.685654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.297722, 30.265869, 38.809937>,  <34.026020, 30.473886, 39.017078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297722, 30.265869, 38.809937> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418324, 0.305414, -0.855410,
		0.603010, 0.797669, -0.010093,
		0.679252, -0.520044, -0.517852,
		34.501499, 30.109856, 38.654579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249451, 30.982567, 38.600948>,  <34.026020, 30.473886, 39.017078>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249451, 30.982567, 38.600948> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.375618, 30.645462, 38.426472>,  <34.451317, 30.443199, 38.321785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.375618, 30.645462, 38.426472>,  <34.249451, 30.982567, 38.600948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375618, 30.645462, 38.426472> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418423, 0.289048, -0.861030,
		0.851724, 0.454098, -0.261460,
		0.315418, -0.842761, -0.436194,
		34.470242, 30.392633, 38.295612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410854, 31.750338, 38.734161>,  <34.249451, 30.982567, 38.600948>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410854, 31.750338, 38.734161> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.432514, 32.149750, 38.733406>,  <34.445511, 32.389397, 38.732952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.432514, 32.149750, 38.733406>,  <34.410854, 31.750338, 38.734161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432514, 32.149750, 38.733406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090683, 0.006797, 0.995857,
		0.994407, -0.053752, 0.090918,
		0.054147, 0.998531, -0.001885,
		34.448757, 32.449310, 38.732841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744347, 31.948105, 39.326797>,  <34.410854, 31.750338, 38.734161>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744347, 31.948105, 39.326797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.591835, 32.305534, 39.232014>,  <34.500328, 32.519993, 39.175144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.591835, 32.305534, 39.232014>,  <34.744347, 31.948105, 39.326797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.591835, 32.305534, 39.232014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184322, 0.177697, 0.966669,
		0.905899, 0.412247, 0.096954,
		-0.381278, 0.893575, -0.236962,
		34.477451, 32.573608, 39.160927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044933, 32.460190, 39.719818>,  <34.744347, 31.948105, 39.326797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044933, 32.460190, 39.719818> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.700287, 32.616161, 39.589848>,  <34.493500, 32.709743, 39.511864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.700287, 32.616161, 39.589848>,  <35.044933, 32.460190, 39.719818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700287, 32.616161, 39.589848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167411, 0.386028, 0.907169,
		0.479162, 0.836026, -0.267329,
		-0.861614, 0.389927, -0.324930,
		34.441803, 32.733139, 39.492367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132294, 33.086288, 39.886505>,  <35.044933, 32.460190, 39.719818>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132294, 33.086288, 39.886505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.739594, 33.019634, 39.849838>,  <34.503975, 32.979641, 39.827839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.739594, 33.019634, 39.849838>,  <35.132294, 33.086288, 39.886505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739594, 33.019634, 39.849838> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152279, 0.399974, 0.903787,
		-0.113938, 0.901251, -0.418049,
		-0.981748, -0.166636, -0.091669,
		34.445068, 32.969643, 39.822338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820168, 33.659721, 40.236546>,  <35.132294, 33.086288, 39.886505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820168, 33.659721, 40.236546> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.553799, 33.362556, 40.209339>,  <34.393978, 33.184258, 40.193016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.553799, 33.362556, 40.209339>,  <34.820168, 33.659721, 40.236546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553799, 33.362556, 40.209339> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042544, -0.053211, 0.997677,
		-0.744805, 0.667271, 0.003828,
		-0.665924, -0.742912, -0.068020,
		34.354023, 33.139683, 40.188934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199451, 33.883877, 40.670914>,  <34.820168, 33.659721, 40.236546>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199451, 33.883877, 40.670914> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.203033, 33.485035, 40.640732>,  <34.205181, 33.245728, 40.622623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.203033, 33.485035, 40.640732>,  <34.199451, 33.883877, 40.670914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203033, 33.485035, 40.640732> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112604, -0.075981, 0.990730,
		-0.993600, -0.000373, -0.112959,
		0.008952, -0.997109, -0.075453,
		34.205719, 33.185902, 40.618095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538788, 33.647884, 40.987576>,  <34.199451, 33.883877, 40.670914>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.538788, 33.647884, 40.987576> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.778568, 33.328007, 40.974045>,  <33.922436, 33.136082, 40.965927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.778568, 33.328007, 40.974045>,  <33.538788, 33.647884, 40.987576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778568, 33.328007, 40.974045> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139081, -0.145684, 0.979506,
		-0.788233, -0.582465, -0.198554,
		0.599454, -0.799694, -0.033823,
		33.958405, 33.088097, 40.963898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186436, 33.182190, 41.481346>,  <33.538788, 33.647884, 40.987576>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186436, 33.182190, 41.481346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.564491, 33.059441, 41.436562>,  <33.791325, 32.985790, 41.409691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.564491, 33.059441, 41.436562>,  <33.186436, 33.182190, 41.481346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564491, 33.059441, 41.436562> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098823, -0.058072, 0.993409,
		-0.311352, -0.949977, -0.024560,
		0.945143, -0.306873, -0.111960,
		33.848034, 32.967381, 41.402973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221970, 32.679790, 41.919743>,  <33.186436, 33.182190, 41.481346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221970, 32.679790, 41.919743> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.601631, 32.787724, 41.854881>,  <33.829430, 32.852482, 41.815964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.601631, 32.787724, 41.854881>,  <33.221970, 32.679790, 41.919743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601631, 32.787724, 41.854881> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170994, -0.009421, 0.985227,
		0.264316, -0.962862, -0.055081,
		0.949156, 0.269830, -0.162154,
		33.886379, 32.868671, 41.806236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618587, 32.174179, 42.282524>,  <33.221970, 32.679790, 41.919743>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618587, 32.174179, 42.282524> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.898781, 32.457302, 42.246033>,  <34.066898, 32.627178, 42.224140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.898781, 32.457302, 42.246033>,  <33.618587, 32.174179, 42.282524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898781, 32.457302, 42.246033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255510, -0.129382, 0.958110,
		0.666359, -0.694451, -0.271483,
		0.700486, 0.707812, -0.091225,
		34.108925, 32.669647, 42.218666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140656, 31.901339, 42.596706>,  <33.618587, 32.174179, 42.282524>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140656, 31.901339, 42.596706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.235672, 32.289730, 42.585556>,  <34.292683, 32.522766, 42.578865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.235672, 32.289730, 42.585556>,  <34.140656, 31.901339, 42.596706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235672, 32.289730, 42.585556> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417189, -0.076058, 0.905631,
		0.877227, -0.226756, -0.423148,
		0.237541, 0.970977, -0.027880,
		34.306934, 32.581024, 42.577190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646904, 31.943624, 43.041058>,  <34.140656, 31.901339, 42.596706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646904, 31.943624, 43.041058> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.572365, 32.334930, 43.004677>,  <34.527641, 32.569714, 42.982849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.572365, 32.334930, 43.004677>,  <34.646904, 31.943624, 43.041058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.572365, 32.334930, 43.004677> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408028, 0.161274, 0.898612,
		0.893749, 0.130339, -0.429213,
		-0.186345, 0.978265, -0.090956,
		34.516460, 32.628410, 42.977390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324902, 32.267975, 43.135101>,  <34.646904, 31.943624, 43.041058>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324902, 32.267975, 43.135101> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.007988, 32.497932, 43.216862>,  <34.817841, 32.635906, 43.265919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.007988, 32.497932, 43.216862>,  <35.324902, 32.267975, 43.135101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007988, 32.497932, 43.216862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373643, 0.192303, 0.907420,
		0.482359, 0.795312, -0.367163,
		-0.792288, 0.574890, 0.204404,
		34.770302, 32.670399, 43.278183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625187, 32.903885, 43.401508>,  <35.324902, 32.267975, 43.135101>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625187, 32.903885, 43.401508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.239254, 32.891655, 43.505947>,  <35.007694, 32.884315, 43.568611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.239254, 32.891655, 43.505947>,  <35.625187, 32.903885, 43.401508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239254, 32.891655, 43.505947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242701, 0.277985, 0.929419,
		-0.100998, 0.960099, -0.260787,
		-0.964829, -0.030576, 0.261093,
		34.949806, 32.882481, 43.584274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.385639, 33.095234, 44.543331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.491665, 32.709896, 44.526833>,  <30.555281, 32.478691, 44.516933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.491665, 32.709896, 44.526833>,  <30.385639, 33.095234, 44.543331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.491665, 32.709896, 44.526833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050443, 0.028866, -0.998310,
		0.962910, 0.266697, -0.040943,
		0.265064, -0.963348, -0.041248,
		30.571184, 32.420891, 44.514458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.952877, 33.103447, 44.061119>,  <30.385639, 33.095234, 44.543331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.952877, 33.103447, 44.061119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.844484, 32.718498, 44.052990>,  <30.779448, 32.487530, 44.048111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.844484, 32.718498, 44.052990>,  <30.952877, 33.103447, 44.061119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.844484, 32.718498, 44.052990> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051423, 0.035558, -0.998044,
		0.961210, -0.269407, -0.059123,
		-0.270983, -0.962370, -0.020325,
		30.763189, 32.429787, 44.046894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463104, 32.710670, 43.654312>,  <30.952877, 33.103447, 44.061119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463104, 32.710670, 43.654312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.132416, 32.485641, 43.651768>,  <30.934002, 32.350624, 43.650242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.132416, 32.485641, 43.651768>,  <31.463104, 32.710670, 43.654312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.132416, 32.485641, 43.651768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034508, 0.061987, -0.997480,
		0.561552, -0.824419, -0.070659,
		-0.826721, -0.562576, -0.006359,
		30.884399, 32.316868, 43.649860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463343, 32.345917, 43.028038>,  <31.463104, 32.710670, 43.654312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463343, 32.345917, 43.028038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.079050, 32.262287, 43.101009>,  <30.848475, 32.212109, 43.144794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.079050, 32.262287, 43.101009>,  <31.463343, 32.345917, 43.028038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079050, 32.262287, 43.101009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192730, 0.029820, -0.980799,
		0.199617, -0.977446, -0.068943,
		-0.960733, -0.209071, 0.182431,
		30.790831, 32.199566, 43.155739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216753, 31.879637, 42.534489>,  <31.463343, 32.345917, 43.028038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216753, 31.879637, 42.534489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.892109, 32.065193, 42.676525>,  <30.697323, 32.176529, 42.761749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.892109, 32.065193, 42.676525>,  <31.216753, 31.879637, 42.534489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.892109, 32.065193, 42.676525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273882, 0.234757, -0.932672,
		-0.516020, -0.854221, -0.063479,
		-0.811610, 0.463892, 0.355095,
		30.648626, 32.204361, 42.783054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.629637, 31.486158, 42.245647>,  <31.216753, 31.879637, 42.534489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.629637, 31.486158, 42.245647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.545931, 31.868504, 42.328140>,  <30.495707, 32.097912, 42.377636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.545931, 31.868504, 42.328140>,  <30.629637, 31.486158, 42.245647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.545931, 31.868504, 42.328140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246153, 0.152619, -0.957140,
		-0.946370, -0.251061, 0.203351,
		-0.209265, 0.955864, 0.206233,
		30.483150, 32.155262, 42.390011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.205040, 31.679649, 41.739021>,  <30.629637, 31.486158, 42.245647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.205040, 31.679649, 41.739021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.287615, 32.047672, 41.872215>,  <30.337160, 32.268486, 41.952133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.287615, 32.047672, 41.872215>,  <30.205040, 31.679649, 41.739021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.287615, 32.047672, 41.872215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197185, 0.372450, -0.906862,
		-0.958385, 0.121549, 0.258309,
		0.206436, 0.920058, 0.332983,
		30.349545, 32.323689, 41.972111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.806416, 32.089119, 41.369190>,  <30.205040, 31.679649, 41.739021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.806416, 32.089119, 41.369190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.076923, 32.349503, 41.507122>,  <30.239229, 32.505733, 41.589882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.076923, 32.349503, 41.507122>,  <29.806416, 32.089119, 41.369190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.076923, 32.349503, 41.507122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098796, 0.544022, -0.833234,
		-0.729997, 0.529425, 0.432219,
		0.676271, 0.650960, 0.344830,
		30.279804, 32.544792, 41.610573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.572824, 32.668930, 41.148216>,  <29.806416, 32.089119, 41.369190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.572824, 32.668930, 41.148216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.956942, 32.747223, 41.227737>,  <30.187412, 32.794197, 41.275452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.956942, 32.747223, 41.227737>,  <29.572824, 32.668930, 41.148216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.956942, 32.747223, 41.227737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021351, 0.658940, -0.751893,
		-0.278170, 0.726283, 0.628597,
		0.960295, 0.195732, 0.198804,
		30.245029, 32.805943, 41.287380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.600468, 33.382442, 41.240261>,  <29.572824, 32.668930, 41.148216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.600468, 33.382442, 41.240261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.964252, 33.235695, 41.161995>,  <30.182524, 33.147648, 41.115036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.964252, 33.235695, 41.161995>,  <29.600468, 33.382442, 41.240261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.964252, 33.235695, 41.161995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128417, 0.695430, -0.707026,
		0.395460, 0.617886, 0.679580,
		0.909462, -0.366870, -0.195668,
		30.237091, 33.125633, 41.103294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.096872, 33.857147, 41.297657>,  <29.600468, 33.382442, 41.240261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.096872, 33.857147, 41.297657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.267992, 33.589344, 41.054756>,  <30.370663, 33.428661, 40.909016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.267992, 33.589344, 41.054756>,  <30.096872, 33.857147, 41.297657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.267992, 33.589344, 41.054756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188619, 0.723165, -0.664421,
		0.883975, 0.169698, 0.435649,
		0.427797, -0.669503, -0.607252,
		30.396332, 33.388493, 40.872581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.484358, 34.257195, 40.914040>,  <30.096872, 33.857147, 41.297657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.484358, 34.257195, 40.914040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.496569, 33.922188, 40.695816>,  <30.503895, 33.721184, 40.564884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.496569, 33.922188, 40.695816>,  <30.484358, 34.257195, 40.914040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.496569, 33.922188, 40.695816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090854, 0.545876, -0.832925,
		0.995396, -0.024138, 0.092757,
		0.030529, -0.837518, -0.545556,
		30.505728, 33.670933, 40.532150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.992210, 34.400105, 40.456879>,  <30.484358, 34.257195, 40.914040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.992210, 34.400105, 40.456879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.786140, 34.099922, 40.291267>,  <30.662498, 33.919815, 40.191902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.786140, 34.099922, 40.291267>,  <30.992210, 34.400105, 40.456879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.786140, 34.099922, 40.291267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028440, 0.467827, -0.883362,
		0.856612, -0.466862, -0.219671,
		-0.515177, -0.750452, -0.414024,
		30.631588, 33.874786, 40.167061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.393726, 34.152313, 39.824055>,  <30.992210, 34.400105, 40.456879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.393726, 34.152313, 39.824055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.013773, 34.038128, 39.773090>,  <30.785801, 33.969616, 39.742512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.013773, 34.038128, 39.773090>,  <31.393726, 34.152313, 39.824055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.013773, 34.038128, 39.773090> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015560, 0.363897, -0.931309,
		0.312218, -0.886617, -0.341218,
		-0.949883, -0.285462, -0.127411,
		30.728809, 33.952488, 39.734867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.036522, 33.974293, 39.501385>,  <31.393726, 34.152313, 39.824055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.036522, 33.974293, 39.501385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.172642, 34.350193, 39.488323>,  <32.254314, 34.575733, 39.480488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.172642, 34.350193, 39.488323>,  <32.036522, 33.974293, 39.501385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172642, 34.350193, 39.488323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072387, 0.060802, 0.995522,
		0.937526, -0.336413, 0.088717,
		0.340300, 0.939749, -0.032651,
		32.274731, 34.632118, 39.478527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587723, 34.045872, 40.011284>,  <32.036522, 33.974293, 39.501385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587723, 34.045872, 40.011284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.491726, 34.428925, 39.947613>,  <32.434128, 34.658756, 39.909409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.491726, 34.428925, 39.947613>,  <32.587723, 34.045872, 40.011284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.491726, 34.428925, 39.947613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074107, 0.145418, 0.986591,
		0.967943, 0.248568, 0.036069,
		-0.239990, 0.957636, -0.159177,
		32.419727, 34.716217, 39.899860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094185, 34.452232, 40.300213>,  <32.587723, 34.045872, 40.011284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094185, 34.452232, 40.300213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.770161, 34.685822, 40.279167>,  <32.575745, 34.825977, 40.266541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.770161, 34.685822, 40.279167>,  <33.094185, 34.452232, 40.300213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770161, 34.685822, 40.279167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043527, 0.149383, 0.987821,
		0.584725, 0.797906, -0.146428,
		-0.810063, 0.583978, -0.052618,
		32.527142, 34.861015, 40.263382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244720, 35.156044, 40.616173>,  <33.094185, 34.452232, 40.300213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244720, 35.156044, 40.616173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.848839, 35.106613, 40.645042>,  <32.611309, 35.076954, 40.662365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.848839, 35.106613, 40.645042>,  <33.244720, 35.156044, 40.616173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848839, 35.106613, 40.645042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021339, 0.371259, 0.928284,
		-0.141507, 0.920270, -0.364800,
		-0.989707, -0.123574, 0.072174,
		32.551926, 35.069542, 40.666695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069603, 35.749866, 41.102036>,  <33.244720, 35.156044, 40.616173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069603, 35.749866, 41.102036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.771179, 35.485653, 41.068352>,  <32.592125, 35.327126, 41.048141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.771179, 35.485653, 41.068352>,  <33.069603, 35.749866, 41.102036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771179, 35.485653, 41.068352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211569, 0.115230, 0.970547,
		-0.631378, 0.741899, -0.225717,
		-0.746057, -0.660537, -0.084209,
		32.547363, 35.287491, 41.043091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.427647, 36.031574, 41.240635>,  <33.069603, 35.749866, 41.102036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.427647, 36.031574, 41.240635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.390141, 35.640888, 41.317822>,  <32.367638, 35.406475, 41.364132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.390141, 35.640888, 41.317822>,  <32.427647, 36.031574, 41.240635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390141, 35.640888, 41.317822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088326, 0.201217, 0.975556,
		-0.991669, 0.074425, -0.105135,
		-0.093761, -0.976715, 0.192967,
		32.362011, 35.347874, 41.375713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.002926, 36.008251, 41.851418>,  <32.427647, 36.031574, 41.240635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.002926, 36.008251, 41.851418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.139492, 35.632381, 41.843002>,  <32.221432, 35.406860, 41.837955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.139492, 35.632381, 41.843002>,  <32.002926, 36.008251, 41.851418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.139492, 35.632381, 41.843002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040466, -0.037055, 0.998493,
		-0.939042, -0.340047, -0.050676,
		0.341412, -0.939678, -0.021036,
		32.241917, 35.350479, 41.836693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.465164, 35.608765, 42.220219>,  <32.002926, 36.008251, 41.851418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.465164, 35.608765, 42.220219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.812920, 35.411674, 42.235111>,  <32.021572, 35.293423, 42.244049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.812920, 35.411674, 42.235111>,  <31.465164, 35.608765, 42.220219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.812920, 35.411674, 42.235111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090791, -0.085216, 0.992217,
		-0.485715, -0.866004, -0.118821,
		0.869389, -0.492723, 0.037235,
		32.073738, 35.263859, 42.246281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.358713, 35.034237, 42.762886>,  <31.465164, 35.608765, 42.220219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.358713, 35.034237, 42.762886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.753849, 35.074810, 42.715752>,  <31.990931, 35.099152, 42.687469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.753849, 35.074810, 42.715752>,  <31.358713, 35.034237, 42.762886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753849, 35.074810, 42.715752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133953, -0.170457, 0.976218,
		0.078933, -0.980131, -0.181971,
		0.987840, 0.101431, -0.117836,
		32.050201, 35.105240, 42.680401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644384, 34.493320, 43.166298>,  <31.358713, 35.034237, 42.762886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644384, 34.493320, 43.166298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.937519, 34.762005, 43.122936>,  <32.113400, 34.923218, 43.096920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.937519, 34.762005, 43.122936>,  <31.644384, 34.493320, 43.166298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.937519, 34.762005, 43.122936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178398, -0.035947, 0.983302,
		0.656602, -0.739936, -0.146176,
		0.732835, 0.671716, -0.108400,
		32.157372, 34.963520, 43.090416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283836, 34.172276, 43.440670>,  <31.644384, 34.493320, 43.166298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283836, 34.172276, 43.440670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.309959, 34.568508, 43.488804>,  <32.325634, 34.806248, 43.517685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.309959, 34.568508, 43.488804>,  <32.283836, 34.172276, 43.440670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309959, 34.568508, 43.488804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451245, -0.136872, 0.881841,
		0.890007, -0.003289, -0.455934,
		0.065305, 0.990583, 0.120333,
		32.329552, 34.865685, 43.524902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.972664, 34.477589, 43.382301>,  <32.283836, 34.172276, 43.440670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.972664, 34.477589, 43.382301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.741798, 34.719109, 43.602230>,  <32.603279, 34.864021, 43.734188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.741798, 34.719109, 43.602230>,  <32.972664, 34.477589, 43.382301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741798, 34.719109, 43.602230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439545, -0.337740, 0.832305,
		0.688243, 0.722050, -0.070465,
		-0.577167, 0.603801, 0.549821,
		32.568649, 34.900249, 43.767178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375248, 34.588493, 43.965965>,  <32.972664, 34.477589, 43.382301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375248, 34.588493, 43.965965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.025085, 34.725479, 44.102428>,  <32.814987, 34.807671, 44.184307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.025085, 34.725479, 44.102428>,  <33.375248, 34.588493, 43.965965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025085, 34.725479, 44.102428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197414, -0.390937, 0.898997,
		0.441247, 0.854333, 0.274620,
		-0.875402, 0.342466, 0.341157,
		32.762466, 34.828220, 44.204777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475109, 34.966354, 44.603184>,  <33.375248, 34.588493, 43.965965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475109, 34.966354, 44.603184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.098579, 34.831509, 44.596653>,  <32.872662, 34.750603, 44.592735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.098579, 34.831509, 44.596653>,  <33.475109, 34.966354, 44.603184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098579, 34.831509, 44.596653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119507, -0.378168, 0.917991,
		-0.315645, 0.862173, 0.396265,
		-0.941322, -0.337115, -0.016331,
		32.816181, 34.730373, 44.591755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.718231, 35.723312, 44.609463>,  <33.475109, 34.966354, 44.603184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.718231, 35.723312, 44.609463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.085926, 35.747063, 44.765141>,  <34.306545, 35.761311, 44.858547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.085926, 35.747063, 44.765141>,  <33.718231, 35.723312, 44.609463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085926, 35.747063, 44.765141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377586, 0.146970, -0.914237,
		-0.111481, 0.987357, 0.112682,
		0.919239, 0.059372, 0.389197,
		34.361698, 35.764874, 44.881901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925247, 36.358208, 44.310005>,  <33.718231, 35.723312, 44.609463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925247, 36.358208, 44.310005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.230949, 36.125828, 44.422016>,  <34.414371, 35.986401, 44.489223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.230949, 36.125828, 44.422016>,  <33.925247, 36.358208, 44.310005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230949, 36.125828, 44.422016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349894, 0.008765, -0.936748,
		0.541750, 0.813892, 0.209970,
		0.764252, -0.580951, 0.280027,
		34.460224, 35.951542, 44.506023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500240, 36.646000, 44.019913>,  <33.925247, 36.358208, 44.310005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500240, 36.646000, 44.019913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.604511, 36.268822, 44.102760>,  <34.667072, 36.042515, 44.152470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.604511, 36.268822, 44.102760>,  <34.500240, 36.646000, 44.019913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604511, 36.268822, 44.102760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518341, -0.044294, -0.854026,
		0.814476, 0.329983, 0.477222,
		0.260676, -0.942947, 0.207120,
		34.682713, 35.985939, 44.164898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144955, 36.670151, 43.945805>,  <34.500240, 36.646000, 44.019913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144955, 36.670151, 43.945805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.063259, 36.280067, 43.911743>,  <35.014240, 36.046017, 43.891308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.063259, 36.280067, 43.911743>,  <35.144955, 36.670151, 43.945805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063259, 36.280067, 43.911743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229299, 0.036906, -0.972656,
		0.951686, -0.218183, 0.216077,
		-0.204243, -0.975210, -0.085152,
		35.001987, 35.987503, 43.886196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743885, 36.365650, 43.606071>,  <35.144955, 36.670151, 43.945805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743885, 36.365650, 43.606071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.426594, 36.127209, 43.556355>,  <35.236217, 35.984146, 43.526524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.426594, 36.127209, 43.556355>,  <35.743885, 36.365650, 43.606071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426594, 36.127209, 43.556355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247309, -0.128864, -0.960329,
		0.556436, -0.792501, 0.249640,
		-0.793232, -0.596100, -0.124288,
		35.188625, 35.948380, 43.519070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980827, 35.862305, 43.262917>,  <35.743885, 36.365650, 43.606071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980827, 35.862305, 43.262917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.594219, 35.806664, 43.176670>,  <35.362255, 35.773277, 43.124924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.594219, 35.806664, 43.176670>,  <35.980827, 35.862305, 43.262917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594219, 35.806664, 43.176670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234954, -0.142069, -0.961568,
		0.103126, -0.980034, 0.169996,
		-0.966520, -0.139104, -0.215612,
		35.304264, 35.764931, 43.111988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929714, 35.212475, 43.011944>,  <35.980827, 35.862305, 43.262917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929714, 35.212475, 43.011944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.628174, 35.444298, 42.888119>,  <35.447250, 35.583389, 42.813824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.628174, 35.444298, 42.888119>,  <35.929714, 35.212475, 43.011944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628174, 35.444298, 42.888119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284555, -0.136693, -0.948864,
		-0.592235, -0.803386, -0.061870,
		-0.753848, 0.579556, -0.309562,
		35.402020, 35.618164, 42.795250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717377, 34.810726, 42.507763>,  <35.929714, 35.212475, 43.011944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717377, 34.810726, 42.507763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.532314, 35.153397, 42.416496>,  <35.421276, 35.358997, 42.361736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.532314, 35.153397, 42.416496>,  <35.717377, 34.810726, 42.507763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532314, 35.153397, 42.416496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052597, -0.230394, -0.971675,
		-0.884979, -0.461548, 0.061533,
		-0.462651, 0.856675, -0.228170,
		35.393520, 35.410400, 42.348045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929272, 34.734421, 42.313202>,  <35.717377, 34.810726, 42.507763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929272, 34.734421, 42.313202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.085808, 35.055546, 42.133270>,  <35.179729, 35.248222, 42.025311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.085808, 35.055546, 42.133270>,  <34.929272, 34.734421, 42.313202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.085808, 35.055546, 42.133270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163843, -0.420223, -0.892507,
		-0.905545, 0.422973, -0.032914,
		0.391337, 0.802812, -0.449832,
		35.203209, 35.296391, 41.998322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525082, 34.823490, 41.778221>,  <34.929272, 34.734421, 42.313202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525082, 34.823490, 41.778221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.803619, 35.085667, 41.661255>,  <34.970741, 35.242973, 41.591076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.803619, 35.085667, 41.661255>,  <34.525082, 34.823490, 41.778221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803619, 35.085667, 41.661255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147749, -0.267789, -0.952081,
		-0.702335, 0.706181, -0.089633,
		0.696345, 0.655437, -0.292415,
		35.012524, 35.282299, 41.573532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136139, 35.315796, 41.303497>,  <34.525082, 34.823490, 41.778221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136139, 35.315796, 41.303497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.531139, 35.310059, 41.240715>,  <34.768139, 35.306618, 41.203045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.531139, 35.310059, 41.240715>,  <34.136139, 35.315796, 41.303497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531139, 35.310059, 41.240715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157498, -0.052920, -0.986100,
		0.005834, 0.998496, -0.054517,
		0.987502, -0.014339, -0.156952,
		34.827389, 35.305756, 41.193630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176041, 35.545078, 40.605389>,  <34.136139, 35.315796, 41.303497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176041, 35.545078, 40.605389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.559433, 35.446507, 40.662785>,  <34.789467, 35.387363, 40.697220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.559433, 35.446507, 40.662785>,  <34.176041, 35.545078, 40.605389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559433, 35.446507, 40.662785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138559, -0.037315, -0.989651,
		0.249229, 0.968443, -0.001622,
		0.958481, -0.246425, 0.143487,
		34.846977, 35.372578, 40.705830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565937, 35.987984, 40.143890>,  <34.176041, 35.545078, 40.605389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565937, 35.987984, 40.143890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.793461, 35.664070, 40.201447>,  <34.929977, 35.469723, 40.235981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.793461, 35.664070, 40.201447>,  <34.565937, 35.987984, 40.143890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793461, 35.664070, 40.201447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324504, 0.060209, -0.943966,
		0.755745, 0.583631, 0.297025,
		0.568812, -0.809783, 0.143888,
		34.964104, 35.421135, 40.244614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306324, 36.145283, 39.944809>,  <34.565937, 35.987984, 40.143890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306324, 36.145283, 39.944809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.223923, 35.756496, 39.899464>,  <35.174484, 35.523224, 39.872257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.223923, 35.756496, 39.899464>,  <35.306324, 36.145283, 39.944809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223923, 35.756496, 39.899464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284391, 0.051382, -0.957331,
		0.936315, -0.229449, 0.265833,
		-0.206000, -0.971964, -0.113363,
		35.162125, 35.464909, 39.865456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.953825, 28.419495, 27.692595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.722343, 28.178745, 27.912722>,  <26.583454, 28.034296, 28.044798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.722343, 28.178745, 27.912722>,  <26.953825, 28.419495, 27.692595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.722343, 28.178745, 27.912722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325802, 0.789224, 0.520557,
		-0.747633, 0.121954, -0.652819,
		-0.578704, -0.601875, 0.550316,
		26.548733, 27.998182, 28.077816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.387932, 28.818380, 27.883915>,  <26.953825, 28.419495, 27.692595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.387932, 28.818380, 27.883915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.376833, 28.517086, 28.146782>,  <26.370174, 28.336309, 28.304502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.376833, 28.517086, 28.146782>,  <26.387932, 28.818380, 27.883915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.376833, 28.517086, 28.146782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428672, 0.602866, 0.672899,
		-0.903034, -0.263039, -0.339618,
		-0.027745, -0.753235, 0.657166,
		26.368509, 28.291115, 28.343931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.706978, 28.865911, 28.154373>,  <26.387932, 28.818380, 27.883915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.706978, 28.865911, 28.154373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.918016, 28.651642, 28.418098>,  <26.044640, 28.523079, 28.576334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.918016, 28.651642, 28.418098>,  <25.706978, 28.865911, 28.154373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.918016, 28.651642, 28.418098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359041, 0.562779, 0.744560,
		-0.769890, -0.629548, 0.104591,
		0.527598, -0.535676, 0.659312,
		26.076296, 28.490938, 28.615892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.263391, 28.518076, 28.645014>,  <25.706978, 28.865911, 28.154373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.263391, 28.518076, 28.645014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.616722, 28.572111, 28.824562>,  <25.828720, 28.604532, 28.932291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.616722, 28.572111, 28.824562>,  <25.263391, 28.518076, 28.645014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.616722, 28.572111, 28.824562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458213, 0.450786, 0.766050,
		-0.098858, -0.882351, 0.460092,
		0.883327, 0.135090, 0.448869,
		25.881720, 28.612638, 28.959223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.070520, 28.514990, 29.310146>,  <25.263391, 28.518076, 28.645014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.070520, 28.514990, 29.310146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.446877, 28.648849, 29.331074>,  <25.672689, 28.729166, 29.343630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.446877, 28.648849, 29.331074>,  <25.070520, 28.514990, 29.310146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.446877, 28.648849, 29.331074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250472, 0.583427, 0.772578,
		0.228019, -0.740015, 0.632760,
		0.940889, 0.334651, 0.052321,
		25.729143, 28.749245, 29.346769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.219555, 28.491879, 30.025007>,  <25.070520, 28.514990, 29.310146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.219555, 28.491879, 30.025007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.496836, 28.733681, 29.868011>,  <25.663204, 28.878761, 29.773815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.496836, 28.733681, 29.868011>,  <25.219555, 28.491879, 30.025007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.496836, 28.733681, 29.868011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116270, 0.631219, 0.766840,
		0.711304, -0.485940, 0.507847,
		0.693201, 0.604504, -0.392488,
		25.704796, 28.915031, 29.750265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.669239, 28.638729, 30.558113>,  <25.219555, 28.491879, 30.025007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.669239, 28.638729, 30.558113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.692102, 28.949270, 30.307032>,  <25.705820, 29.135595, 30.156384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.692102, 28.949270, 30.307032>,  <25.669239, 28.638729, 30.558113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.692102, 28.949270, 30.307032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272453, 0.616995, 0.738300,
		0.960470, 0.128819, 0.246786,
		0.057159, 0.776353, -0.627702,
		25.709249, 29.182177, 30.118721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.059408, 29.169479, 30.892786>,  <25.669239, 28.638729, 30.558113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.059408, 29.169479, 30.892786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.894556, 29.376282, 30.592691>,  <25.795645, 29.500362, 30.412634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.894556, 29.376282, 30.592691>,  <26.059408, 29.169479, 30.892786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.894556, 29.376282, 30.592691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140521, 0.777499, 0.612984,
		0.900223, 0.358053, -0.247782,
		-0.412131, 0.517004, -0.750237,
		25.770916, 29.531384, 30.367620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.368301, 29.745672, 30.746056>,  <26.059408, 29.169479, 30.892786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.368301, 29.745672, 30.746056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.029497, 29.883205, 30.583893>,  <25.826216, 29.965725, 30.486595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.029497, 29.883205, 30.583893>,  <26.368301, 29.745672, 30.746056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.029497, 29.883205, 30.583893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067077, 0.687424, 0.723152,
		0.527330, 0.639710, -0.559191,
		-0.847009, 0.343831, -0.405409,
		25.775394, 29.986355, 30.462271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.504498, 30.460485, 30.565445>,  <26.368301, 29.745672, 30.746056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.504498, 30.460485, 30.565445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.109816, 30.410759, 30.607325>,  <25.873007, 30.380922, 30.632452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.109816, 30.410759, 30.607325>,  <26.504498, 30.460485, 30.565445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.109816, 30.410759, 30.607325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047550, 0.836787, 0.545460,
		-0.155422, 0.533229, -0.831571,
		-0.986703, -0.124318, 0.104701,
		25.813805, 30.373465, 30.638735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.186466, 31.167940, 30.526030>,  <26.504498, 30.460485, 30.565445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.186466, 31.167940, 30.526030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.895342, 30.938152, 30.675842>,  <25.720667, 30.800280, 30.765730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.895342, 30.938152, 30.675842>,  <26.186466, 31.167940, 30.526030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.895342, 30.938152, 30.675842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237109, 0.723261, 0.648593,
		-0.643481, 0.383249, -0.662610,
		-0.727812, -0.574468, 0.374533,
		25.676998, 30.765812, 30.788202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.483028, 31.572611, 30.423542>,  <26.186466, 31.167940, 30.526030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.483028, 31.572611, 30.423542> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.432384, 31.298101, 30.710037>,  <25.401999, 31.133396, 30.881935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.432384, 31.298101, 30.710037>,  <25.483028, 31.572611, 30.423542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.432384, 31.298101, 30.710037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426510, 0.689559, 0.585318,
		-0.895577, -0.231375, -0.380008,
		-0.126610, -0.686275, 0.716237,
		25.394402, 31.092218, 30.924908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.719227, 31.548441, 30.728970>,  <25.483028, 31.572611, 30.423542>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.719227, 31.548441, 30.728970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.983465, 31.412979, 30.996977>,  <25.142008, 31.331701, 31.157782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.983465, 31.412979, 30.996977>,  <24.719227, 31.548441, 30.728970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.983465, 31.412979, 30.996977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342096, 0.658646, 0.670191,
		-0.668270, -0.671936, 0.319246,
		0.660595, -0.338655, 0.670020,
		25.181644, 31.311382, 31.197983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.268732, 31.652409, 31.367453>,  <24.719227, 31.548441, 30.728970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.268732, 31.652409, 31.367453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.632179, 31.569639, 31.512558>,  <24.850248, 31.519978, 31.599621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.632179, 31.569639, 31.512558>,  <24.268732, 31.652409, 31.367453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.632179, 31.569639, 31.512558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172323, 0.605473, 0.776986,
		-0.380421, -0.768495, 0.514486,
		0.908617, -0.206924, 0.362764,
		24.904764, 31.507563, 31.621387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.226566, 31.504614, 32.119225>,  <24.268732, 31.652409, 31.367453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.226566, 31.504614, 32.119225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.606155, 31.622353, 32.073944>,  <24.833908, 31.692997, 32.046776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.606155, 31.622353, 32.073944>,  <24.226566, 31.504614, 32.119225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.606155, 31.622353, 32.073944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114394, 0.655783, 0.746233,
		0.293884, -0.695204, 0.655990,
		0.948971, 0.294347, -0.113197,
		24.890846, 31.710657, 32.039986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.595493, 31.506859, 32.787720>,  <24.226566, 31.504614, 32.119225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.595493, 31.506859, 32.787720> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.810654, 31.748205, 32.552223>,  <24.939751, 31.893013, 32.410927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.810654, 31.748205, 32.552223>,  <24.595493, 31.506859, 32.787720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.810654, 31.748205, 32.552223> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149272, 0.619171, 0.770938,
		0.829687, -0.502570, 0.242987,
		0.537901, 0.603366, -0.588738,
		24.972025, 31.929214, 32.375603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.202688, 31.705784, 33.216599>,  <24.595493, 31.506859, 32.787720>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.202688, 31.705784, 33.216599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.215406, 31.983669, 32.929165>,  <25.223038, 32.150402, 32.756706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.215406, 31.983669, 32.929165>,  <25.202688, 31.705784, 33.216599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.215406, 31.983669, 32.929165> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062949, 0.716128, 0.695124,
		0.997510, -0.067335, -0.020962,
		0.031795, 0.694713, -0.718584,
		25.224945, 32.192081, 32.713589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.767334, 32.117359, 33.410587>,  <25.202688, 31.705784, 33.216599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.767334, 32.117359, 33.410587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.589943, 32.352871, 33.140278>,  <25.483509, 32.494179, 32.978092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.589943, 32.352871, 33.140278>,  <25.767334, 32.117359, 33.410587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.589943, 32.352871, 33.140278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189487, 0.798520, 0.571367,
		0.876027, 0.125338, -0.465691,
		-0.443477, 0.588775, -0.675775,
		25.456900, 32.529503, 32.937546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.187286, 32.678703, 33.170170>,  <25.767334, 32.117359, 33.410587>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.187286, 32.678703, 33.170170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.806896, 32.790611, 33.117451>,  <25.578663, 32.857758, 33.085819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.806896, 32.790611, 33.117451>,  <26.187286, 32.678703, 33.170170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.806896, 32.790611, 33.117451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139655, 0.768729, 0.624141,
		0.275938, 0.575137, -0.770115,
		-0.950976, 0.279774, -0.131800,
		25.521603, 32.874542, 33.077911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.857317, 32.705830, 33.497360>,  <26.187286, 32.678703, 33.170170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.857317, 32.705830, 33.497360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.254595, 32.745480, 33.472900>,  <27.492962, 32.769272, 33.458225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.254595, 32.745480, 33.472900>,  <26.857317, 32.705830, 33.497360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.254595, 32.745480, 33.472900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019301, -0.377697, -0.925728,
		-0.114862, 0.920608, -0.373213,
		0.993194, 0.099128, -0.061152,
		27.552553, 32.775219, 33.454556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.025343, 33.111012, 32.876987>,  <26.857317, 32.705830, 33.497360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.025343, 33.111012, 32.876987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.342945, 32.881435, 32.957134>,  <27.533506, 32.743690, 33.005222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.342945, 32.881435, 32.957134>,  <27.025343, 33.111012, 32.876987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.342945, 32.881435, 32.957134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018856, -0.352690, -0.935550,
		0.607620, 0.739053, -0.290860,
		0.794004, -0.573943, 0.200366,
		27.581146, 32.709251, 33.017242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.407391, 33.191071, 32.274879>,  <27.025343, 33.111012, 32.876987>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.407391, 33.191071, 32.274879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.537838, 32.856968, 32.451969>,  <27.616106, 32.656506, 32.558224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.537838, 32.856968, 32.451969>,  <27.407391, 33.191071, 32.274879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.537838, 32.856968, 32.451969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281629, -0.361215, -0.888937,
		0.902403, 0.414581, 0.117433,
		0.326117, -0.835252, 0.442719,
		27.635674, 32.606392, 32.584785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.100126, 33.179771, 32.092705>,  <27.407391, 33.191071, 32.274879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.100126, 33.179771, 32.092705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.989426, 32.810867, 32.200661>,  <27.923004, 32.589523, 32.265434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.989426, 32.810867, 32.200661>,  <28.100126, 33.179771, 32.092705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.989426, 32.810867, 32.200661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326575, -0.354411, -0.876209,
		0.903746, -0.154354, 0.399272,
		-0.276752, -0.922262, 0.269889,
		27.906401, 32.534187, 32.281628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.687687, 32.791336, 31.896109>,  <28.100126, 33.179771, 32.092705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.687687, 32.791336, 31.896109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.356339, 32.568153, 31.916044>,  <28.157530, 32.434242, 31.928005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.356339, 32.568153, 31.916044>,  <28.687687, 32.791336, 31.896109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.356339, 32.568153, 31.916044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277631, -0.486194, -0.828575,
		0.486542, -0.672530, 0.557655,
		-0.828370, -0.557959, 0.049839,
		28.107828, 32.400764, 31.930996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.902727, 32.094288, 31.927324>,  <28.687687, 32.791336, 31.896109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.902727, 32.094288, 31.927324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.533222, 32.134949, 31.779634>,  <28.311520, 32.159344, 31.691021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.533222, 32.134949, 31.779634>,  <28.902727, 32.094288, 31.927324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.533222, 32.134949, 31.779634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306248, -0.382804, -0.871593,
		-0.229937, -0.918220, 0.322491,
		-0.923765, 0.101649, -0.369224,
		28.256092, 32.165443, 31.668867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.837126, 31.492676, 31.417620>,  <28.902727, 32.094288, 31.927324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.837126, 31.492676, 31.417620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.487530, 31.675039, 31.350340>,  <28.277773, 31.784458, 31.309971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.487530, 31.675039, 31.350340>,  <28.837126, 31.492676, 31.417620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.487530, 31.675039, 31.350340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042559, -0.416612, -0.908088,
		-0.484082, -0.786498, 0.383517,
		-0.873987, 0.455911, -0.168202,
		28.225334, 31.811811, 31.299879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.361763, 31.027515, 31.341311>,  <28.837126, 31.492676, 31.417620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.361763, 31.027515, 31.341311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.205467, 31.330511, 31.132109>,  <28.111691, 31.512308, 31.006588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.205467, 31.330511, 31.132109>,  <28.361763, 31.027515, 31.341311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.205467, 31.330511, 31.132109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051186, -0.585175, -0.809290,
		-0.919078, -0.289449, 0.267423,
		-0.390738, 0.757489, -0.523005,
		28.088245, 31.557758, 30.975206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.765612, 30.735136, 30.937576>,  <28.361763, 31.027515, 31.341311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.765612, 30.735136, 30.937576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.889805, 31.064310, 30.747259>,  <27.964321, 31.261814, 30.633070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.889805, 31.064310, 30.747259>,  <27.765612, 30.735136, 30.937576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.889805, 31.064310, 30.747259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175472, -0.442308, -0.879530,
		-0.934242, 0.356569, 0.007072,
		0.310485, 0.822935, -0.475791,
		27.982950, 31.311190, 30.604523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.255018, 30.866777, 30.500690>,  <27.765612, 30.735136, 30.937576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.255018, 30.866777, 30.500690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.568035, 31.062536, 30.346746>,  <27.755844, 31.179993, 30.254379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.568035, 31.062536, 30.346746>,  <27.255018, 30.866777, 30.500690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.568035, 31.062536, 30.346746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208299, -0.376734, -0.902598,
		-0.586721, 0.786486, -0.192868,
		0.782540, 0.489399, -0.384862,
		27.802797, 31.209356, 30.231287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.024416, 31.123974, 29.868690>,  <27.255018, 30.866777, 30.500690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.024416, 31.123974, 29.868690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.421036, 31.145878, 29.821655>,  <27.659008, 31.159019, 29.793434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.421036, 31.145878, 29.821655>,  <27.024416, 31.123974, 29.868690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.421036, 31.145878, 29.821655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101013, -0.242729, -0.964821,
		-0.081374, 0.968547, -0.235147,
		0.991552, 0.054758, -0.117587,
		27.718502, 31.162306, 29.786379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.112671, 31.556181, 29.213097>,  <27.024416, 31.123974, 29.868690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.112671, 31.556181, 29.213097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.462877, 31.363445, 29.227503>,  <27.673002, 31.247803, 29.236147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.462877, 31.363445, 29.227503>,  <27.112671, 31.556181, 29.213097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.462877, 31.363445, 29.227503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054524, 0.024460, -0.998213,
		0.480099, 0.875917, 0.047687,
		0.875518, -0.481841, 0.036015,
		27.725533, 31.218893, 29.238308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.548512, 31.910389, 28.753788>,  <27.112671, 31.556181, 29.213097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.548512, 31.910389, 28.753788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.699982, 31.541458, 28.784559>,  <27.790863, 31.320099, 28.803022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.699982, 31.541458, 28.784559>,  <27.548512, 31.910389, 28.753788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.699982, 31.541458, 28.784559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089007, -0.119025, -0.988894,
		0.921241, 0.367620, -0.127165,
		0.378673, -0.922328, 0.076930,
		27.813583, 31.264759, 28.807638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.072634, 31.848427, 28.197996>,  <27.548512, 31.910389, 28.753788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.072634, 31.848427, 28.197996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.994673, 31.477032, 28.324438>,  <27.947897, 31.254194, 28.400303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.994673, 31.477032, 28.324438>,  <28.072634, 31.848427, 28.197996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.994673, 31.477032, 28.324438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104392, -0.300819, -0.947951,
		0.975251, -0.217757, -0.038297,
		-0.194903, -0.928488, 0.316106,
		27.936201, 31.198484, 28.419270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.368971, 31.485611, 27.661024>,  <28.072634, 31.848427, 28.197996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.368971, 31.485611, 27.661024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.100430, 31.247078, 27.837057>,  <27.939304, 31.103958, 27.942677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.100430, 31.247078, 27.837057>,  <28.368971, 31.485611, 27.661024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.100430, 31.247078, 27.837057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240015, -0.386858, -0.890356,
		0.701198, -0.703369, 0.116589,
		-0.671352, -0.596333, 0.440083,
		27.899023, 31.068178, 27.969082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.478964, 30.863150, 27.391928>,  <28.368971, 31.485611, 27.661024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.478964, 30.863150, 27.391928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.097696, 30.827511, 27.507532>,  <27.868935, 30.806128, 27.576895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.097696, 30.827511, 27.507532>,  <28.478964, 30.863150, 27.391928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.097696, 30.827511, 27.507532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258176, -0.258005, -0.931009,
		0.157519, -0.962026, 0.222919,
		-0.953170, -0.089099, 0.289013,
		27.811745, 30.800781, 27.594236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.252195, 30.413671, 26.855915>,  <28.478964, 30.863150, 27.391928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.252195, 30.413671, 26.855915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.910330, 30.510948, 27.039394>,  <27.705210, 30.569313, 27.149483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.910330, 30.510948, 27.039394>,  <28.252195, 30.413671, 26.855915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.910330, 30.510948, 27.039394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507185, -0.202268, -0.837766,
		-0.110955, -0.948655, 0.296213,
		-0.854665, 0.243189, 0.458701,
		27.653931, 30.583904, 27.177004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.831394, 29.905098, 26.663416>,  <28.252195, 30.413671, 26.855915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.831394, 29.905098, 26.663416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.588470, 30.200785, 26.779856>,  <27.442717, 30.378197, 26.849720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.588470, 30.200785, 26.779856>,  <27.831394, 29.905098, 26.663416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.588470, 30.200785, 26.779856> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687495, -0.305356, -0.658869,
		-0.398156, -0.600267, 0.693651,
		-0.607308, 0.739214, 0.291101,
		27.406279, 30.422548, 26.867186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.081562, 29.714983, 26.585678>,  <27.831394, 29.905098, 26.663416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.081562, 29.714983, 26.585678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.084549, 30.114878, 26.577042>,  <27.086342, 30.354815, 26.571859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.084549, 30.114878, 26.577042>,  <27.081562, 29.714983, 26.585678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.084549, 30.114878, 26.577042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507819, -0.014807, -0.861336,
		-0.861431, 0.017396, 0.507576,
		0.007468, 0.999739, -0.021589,
		27.086790, 30.414799, 26.570564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.361586, 29.906750, 26.412922>,  <27.081562, 29.714983, 26.585678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.361586, 29.906750, 26.412922> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.546457, 30.255394, 26.347580>,  <26.657379, 30.464581, 26.308374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.546457, 30.255394, 26.347580>,  <26.361586, 29.906750, 26.412922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.546457, 30.255394, 26.347580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458876, 0.077436, -0.885119,
		-0.758831, 0.484041, 0.435752,
		0.462177, 0.871612, -0.163354,
		26.685110, 30.516878, 26.298574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.771208, 30.471066, 26.181368>,  <26.361586, 29.906750, 26.412922>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.771208, 30.471066, 26.181368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.145668, 30.563751, 26.075588>,  <26.370344, 30.619364, 26.012119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.145668, 30.563751, 26.075588>,  <25.771208, 30.471066, 26.181368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.145668, 30.563751, 26.075588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303076, 0.150506, -0.941006,
		-0.178245, 0.961070, 0.211123,
		0.936148, 0.231716, -0.264451,
		26.426512, 30.633266, 25.996254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.706131, 31.148521, 26.023397>,  <25.771208, 30.471066, 26.181368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.706131, 31.148521, 26.023397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.017302, 31.002596, 25.818754>,  <26.204004, 30.915041, 25.695969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.017302, 31.002596, 25.818754>,  <25.706131, 31.148521, 26.023397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.017302, 31.002596, 25.818754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443240, 0.258529, -0.858313,
		0.445389, 0.894469, 0.039417,
		0.777925, -0.364812, -0.511610,
		26.250679, 30.893152, 25.665272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.928749, 31.604666, 25.567059>,  <25.706131, 31.148521, 26.023397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.928749, 31.604666, 25.567059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.049644, 31.257904, 25.408501>,  <26.122183, 31.049847, 25.313366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.049644, 31.257904, 25.408501>,  <25.928749, 31.604666, 25.567059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.049644, 31.257904, 25.408501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488975, 0.215967, -0.845140,
		0.818263, 0.449264, -0.358620,
		0.302241, -0.866902, -0.396397,
		26.140316, 30.997833, 25.289581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.538074, 33.547554, 43.850807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.243431, 33.296177, 43.950783>,  <35.066647, 33.145351, 44.010769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.243431, 33.296177, 43.950783>,  <35.538074, 33.547554, 43.850807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243431, 33.296177, 43.950783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267566, 0.068617, 0.961093,
		-0.621144, 0.774822, 0.117607,
		-0.736606, -0.628445, 0.249937,
		35.022449, 33.107643, 44.025764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238140, 33.861927, 44.384224>,  <35.538074, 33.547554, 43.850807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238140, 33.861927, 44.384224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.168087, 33.468582, 44.403542>,  <35.126057, 33.232574, 44.415134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.168087, 33.468582, 44.403542>,  <35.238140, 33.861927, 44.384224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168087, 33.468582, 44.403542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158576, 0.020241, 0.987139,
		-0.971691, 0.180537, 0.152392,
		-0.175130, -0.983360, 0.048297,
		35.115547, 33.173573, 44.418030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935318, 33.780331, 45.057102>,  <35.238140, 33.861927, 44.384224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935318, 33.780331, 45.057102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.004681, 33.394283, 44.978649>,  <35.046299, 33.162655, 44.931576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.004681, 33.394283, 44.978649>,  <34.935318, 33.780331, 45.057102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004681, 33.394283, 44.978649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414493, -0.109138, 0.903485,
		-0.893379, -0.237966, 0.381111,
		0.173405, -0.965122, -0.196137,
		35.056702, 33.104748, 44.919807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683460, 33.389904, 45.594933>,  <34.935318, 33.780331, 45.057102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683460, 33.389904, 45.594933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.946804, 33.142006, 45.424061>,  <35.104809, 32.993267, 45.321537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.946804, 33.142006, 45.424061>,  <34.683460, 33.389904, 45.594933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946804, 33.142006, 45.424061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396910, -0.196374, 0.896604,
		-0.639550, -0.759841, 0.116696,
		0.658361, -0.619741, -0.427180,
		35.144314, 32.956085, 45.295906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716457, 32.845673, 46.059566>,  <34.683460, 33.389904, 45.594933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716457, 32.845673, 46.059566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.061703, 32.839035, 45.857674>,  <35.268852, 32.835052, 45.736538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.061703, 32.839035, 45.857674>,  <34.716457, 32.845673, 46.059566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.061703, 32.839035, 45.857674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495128, -0.168896, 0.852246,
		-0.099389, -0.985494, -0.137561,
		0.863117, -0.016594, -0.504732,
		35.320637, 32.834057, 45.706253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958572, 32.228474, 46.184681>,  <34.716457, 32.845673, 46.059566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.958572, 32.228474, 46.184681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.260567, 32.466377, 46.074215>,  <35.441761, 32.609119, 46.007935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.260567, 32.466377, 46.074215>,  <34.958572, 32.228474, 46.184681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.260567, 32.466377, 46.074215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471790, -0.200172, 0.858688,
		0.455431, -0.778585, -0.431727,
		0.754981, 0.594758, -0.276164,
		35.487061, 32.644806, 45.991367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563236, 31.834517, 46.293282>,  <34.958572, 32.228474, 46.184681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563236, 31.834517, 46.293282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.675804, 32.218044, 46.277943>,  <35.743343, 32.448162, 46.268742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.675804, 32.218044, 46.277943>,  <35.563236, 31.834517, 46.293282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675804, 32.218044, 46.277943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615189, -0.149604, 0.774055,
		0.736442, -0.241422, -0.631956,
		0.281417, 0.958819, -0.038345,
		35.760231, 32.505692, 46.266438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293575, 31.860544, 46.515850>,  <35.563236, 31.834517, 46.293282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293575, 31.860544, 46.515850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.165024, 32.231537, 46.592266>,  <36.087894, 32.454132, 46.638115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.165024, 32.231537, 46.592266>,  <36.293575, 31.860544, 46.515850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165024, 32.231537, 46.592266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590817, 0.038734, 0.805875,
		0.740035, 0.371857, -0.560420,
		-0.321378, 0.927482, 0.191035,
		36.068611, 32.509781, 46.649578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854832, 32.115711, 46.827293>,  <36.293575, 31.860544, 46.515850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854832, 32.115711, 46.827293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.564705, 32.376278, 46.916359>,  <36.390629, 32.532616, 46.969799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.564705, 32.376278, 46.916359>,  <36.854832, 32.115711, 46.827293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564705, 32.376278, 46.916359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374455, 0.101915, 0.921627,
		0.577668, 0.751847, -0.317846,
		-0.725316, 0.651414, 0.222660,
		36.347111, 32.571701, 46.983158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209633, 32.580391, 47.169643>,  <36.854832, 32.115711, 46.827293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209633, 32.580391, 47.169643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.837479, 32.670486, 47.285336>,  <36.614185, 32.724545, 47.354752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.837479, 32.670486, 47.285336>,  <37.209633, 32.580391, 47.169643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.837479, 32.670486, 47.285336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291216, -0.025107, 0.956328,
		0.222664, 0.973980, -0.042234,
		-0.930384, 0.225239, 0.289229,
		36.558365, 32.738060, 47.372105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166008, 33.185116, 47.664978>,  <37.209633, 32.580391, 47.169643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166008, 33.185116, 47.664978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.831425, 32.985699, 47.756016>,  <36.630676, 32.866047, 47.810638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.831425, 32.985699, 47.756016>,  <37.166008, 33.185116, 47.664978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831425, 32.985699, 47.756016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244465, 0.032252, 0.969122,
		-0.490489, 0.866265, 0.094899,
		-0.836455, -0.498542, 0.227591,
		36.580486, 32.836136, 47.824291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929214, 33.531384, 48.276337>,  <37.166008, 33.185116, 47.664978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929214, 33.531384, 48.276337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.755322, 33.171162, 48.276962>,  <36.650986, 32.955029, 48.277336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.755322, 33.171162, 48.276962>,  <36.929214, 33.531384, 48.276337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755322, 33.171162, 48.276962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250485, -0.119251, 0.960748,
		-0.865023, 0.418059, 0.277418,
		-0.434732, -0.900559, 0.001563,
		36.624901, 32.900993, 48.277431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420380, 33.431541, 48.782772>,  <36.929214, 33.531384, 48.276337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420380, 33.431541, 48.782772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.563244, 33.067188, 48.700077>,  <36.648960, 32.848576, 48.650459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.563244, 33.067188, 48.700077>,  <36.420380, 33.431541, 48.782772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563244, 33.067188, 48.700077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143677, -0.165121, 0.975752,
		-0.922928, -0.378198, 0.071899,
		0.357156, -0.910879, -0.206733,
		36.670391, 32.793926, 48.638058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065346, 33.101280, 49.340347>,  <36.420380, 33.431541, 48.782772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065346, 33.101280, 49.340347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.421844, 32.965508, 49.220032>,  <36.635742, 32.884045, 49.147842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.421844, 32.965508, 49.220032>,  <36.065346, 33.101280, 49.340347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421844, 32.965508, 49.220032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281113, -0.107001, 0.953691,
		-0.355896, -0.934526, 0.000054,
		0.891243, -0.339430, -0.300788,
		36.689217, 32.863678, 49.129795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696388, 33.181580, 50.019665>,  <36.065346, 33.101280, 49.340347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696388, 33.181580, 50.019665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.462959, 33.490726, 50.119358>,  <35.322903, 33.676216, 50.179176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.462959, 33.490726, 50.119358>,  <35.696388, 33.181580, 50.019665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462959, 33.490726, 50.119358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236844, 0.131586, -0.962596,
		-0.776758, -0.620770, 0.106261,
		-0.583568, 0.772871, 0.249236,
		35.287888, 33.722588, 50.194130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211784, 33.291622, 49.369362>,  <35.696388, 33.181580, 50.019665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211784, 33.291622, 49.369362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.163681, 33.644142, 49.552158>,  <35.134819, 33.855656, 49.661839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.163681, 33.644142, 49.552158>,  <35.211784, 33.291622, 49.369362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163681, 33.644142, 49.552158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292346, 0.408484, -0.864682,
		-0.948721, -0.237583, 0.208523,
		-0.120256, 0.881303, 0.456994,
		35.127605, 33.908531, 49.689255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610981, 33.589901, 49.170734>,  <35.211784, 33.291622, 49.369362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610981, 33.589901, 49.170734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.868595, 33.874767, 49.282478>,  <35.023163, 34.045685, 49.349525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.868595, 33.874767, 49.282478>,  <34.610981, 33.589901, 49.170734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868595, 33.874767, 49.282478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220214, 0.522313, -0.823830,
		-0.732617, 0.469053, 0.493215,
		0.644033, 0.712164, 0.279364,
		35.061806, 34.088417, 49.366287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256897, 34.149105, 48.959846>,  <34.610981, 33.589901, 49.170734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256897, 34.149105, 48.959846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.604641, 34.320335, 49.058609>,  <34.813286, 34.423073, 49.117867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.604641, 34.320335, 49.058609>,  <34.256897, 34.149105, 48.959846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604641, 34.320335, 49.058609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040542, 0.559724, -0.827687,
		-0.492514, 0.709548, 0.503956,
		0.869360, 0.428079, 0.246905,
		34.865448, 34.448761, 49.132679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121662, 34.877701, 48.967838>,  <34.256897, 34.149105, 48.959846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121662, 34.877701, 48.967838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.520313, 34.867352, 48.936676>,  <34.759502, 34.861141, 48.917980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.520313, 34.867352, 48.936676>,  <34.121662, 34.877701, 48.967838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520313, 34.867352, 48.936676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041038, 0.664914, -0.745792,
		0.071096, 0.746472, 0.661608,
		0.996625, -0.025872, -0.077906,
		34.819302, 34.859589, 48.913303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276031, 35.554050, 48.827744>,  <34.121662, 34.877701, 48.967838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276031, 35.554050, 48.827744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.555176, 35.302380, 48.690842>,  <34.722660, 35.151379, 48.608700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.555176, 35.302380, 48.690842>,  <34.276031, 35.554050, 48.827744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555176, 35.302380, 48.690842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037573, 0.509352, -0.859738,
		0.715252, 0.587114, 0.379094,
		0.697856, -0.629173, -0.342255,
		34.764534, 35.113628, 48.588165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721466, 36.037716, 48.400742>,  <34.276031, 35.554050, 48.827744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721466, 36.037716, 48.400742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.772923, 35.658619, 48.283958>,  <34.803799, 35.431160, 48.213890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.772923, 35.658619, 48.283958>,  <34.721466, 36.037716, 48.400742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772923, 35.658619, 48.283958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061454, 0.286216, -0.956192,
		0.989785, 0.140951, -0.021422,
		0.128645, -0.947741, -0.291955,
		34.811516, 35.374298, 48.196373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352097, 35.997803, 48.043930>,  <34.721466, 36.037716, 48.400742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352097, 35.997803, 48.043930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.127590, 35.696564, 47.906628>,  <34.992886, 35.515820, 47.824245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.127590, 35.696564, 47.906628>,  <35.352097, 35.997803, 48.043930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127590, 35.696564, 47.906628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150338, 0.315078, -0.937083,
		0.813867, -0.577557, -0.063624,
		-0.561265, -0.753096, -0.343261,
		34.959209, 35.470634, 47.803650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690289, 35.743439, 47.451881>,  <35.352097, 35.997803, 48.043930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690289, 35.743439, 47.451881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.336586, 35.563210, 47.402771>,  <35.124363, 35.455074, 47.373302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.336586, 35.563210, 47.402771>,  <35.690289, 35.743439, 47.451881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336586, 35.563210, 47.402771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004664, 0.271417, -0.962450,
		0.466976, -0.850482, -0.242104,
		-0.884258, -0.450570, -0.122778,
		35.071308, 35.428040, 47.365936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724037, 35.700081, 46.721592>,  <35.690289, 35.743439, 47.451881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724037, 35.700081, 46.721592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.357258, 35.574848, 46.820530>,  <35.137188, 35.499706, 46.879894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.357258, 35.574848, 46.820530>,  <35.724037, 35.700081, 46.721592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357258, 35.574848, 46.820530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302465, 0.141129, -0.942654,
		0.260223, -0.939181, -0.224105,
		-0.916951, -0.313085, 0.247345,
		35.082172, 35.480923, 46.894733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561844, 35.045975, 46.394482>,  <35.724037, 35.700081, 46.721592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561844, 35.045975, 46.394482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.225105, 35.246639, 46.474121>,  <35.023064, 35.367039, 46.521904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.225105, 35.246639, 46.474121>,  <35.561844, 35.045975, 46.394482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225105, 35.246639, 46.474121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142310, 0.149527, -0.978463,
		-0.520624, -0.852046, -0.054488,
		-0.841842, 0.501657, 0.199102,
		34.972553, 35.397137, 46.533852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999969, 34.686588, 45.977760>,  <35.561844, 35.045975, 46.394482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999969, 34.686588, 45.977760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.891060, 35.059994, 46.071079>,  <34.825714, 35.284035, 46.127071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.891060, 35.059994, 46.071079>,  <34.999969, 34.686588, 45.977760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891060, 35.059994, 46.071079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236245, 0.170182, -0.956675,
		-0.932769, -0.315588, 0.174202,
		-0.272269, 0.933511, 0.233297,
		34.809380, 35.340046, 46.141068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.359440, 34.771717, 45.657658>,  <34.999969, 34.686588, 45.977760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.359440, 34.771717, 45.657658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.478661, 35.150536, 45.705448>,  <34.550194, 35.377827, 45.734123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.478661, 35.150536, 45.705448>,  <34.359440, 34.771717, 45.657658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478661, 35.150536, 45.705448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151674, 0.170558, -0.973604,
		-0.942421, 0.272067, 0.194478,
		0.298055, 0.947043, 0.119472,
		34.568077, 35.434647, 45.741291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895515, 35.159946, 45.156197>,  <34.359440, 34.771717, 45.657658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895515, 35.159946, 45.156197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.197067, 35.400723, 45.261524>,  <34.377998, 35.545189, 45.324718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.197067, 35.400723, 45.261524>,  <33.895515, 35.159946, 45.156197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197067, 35.400723, 45.261524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260572, 0.093984, -0.960869,
		-0.603135, 0.792990, -0.085997,
		0.753877, 0.601942, 0.263316,
		34.423229, 35.581306, 45.340519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116543, 35.316074, 45.255764>,  <33.895515, 35.159946, 45.156197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116543, 35.316074, 45.255764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.878719, 35.007717, 45.164360>,  <32.736027, 34.822701, 45.109516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.878719, 35.007717, 45.164360>,  <33.116543, 35.316074, 45.255764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878719, 35.007717, 45.164360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195231, -0.414107, 0.889044,
		-0.779991, 0.483975, 0.396713,
		-0.594558, -0.770898, -0.228513,
		32.700352, 34.776447, 45.095806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851334, 35.121002, 45.942112>,  <33.116543, 35.316074, 45.255764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851334, 35.121002, 45.942112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.764175, 34.808475, 45.708164>,  <32.711880, 34.620960, 45.567795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.764175, 34.808475, 45.708164>,  <32.851334, 35.121002, 45.942112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764175, 34.808475, 45.708164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000458, -0.599185, 0.800610,
		-0.975972, 0.174717, 0.130202,
		-0.217895, -0.781314, -0.584868,
		32.698807, 34.574081, 45.532703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.286888, 34.858196, 46.272823>,  <32.851334, 35.121002, 45.942112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.286888, 34.858196, 46.272823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.478836, 34.564552, 46.080654>,  <32.594006, 34.388367, 45.965351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.478836, 34.564552, 46.080654>,  <32.286888, 34.858196, 46.272823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478836, 34.564552, 46.080654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061422, -0.574356, 0.816298,
		-0.875190, -0.362205, -0.320704,
		0.479865, -0.734114, -0.480423,
		32.622795, 34.344318, 45.936527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945925, 34.230320, 46.493004>,  <32.286888, 34.858196, 46.272823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945925, 34.230320, 46.493004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.292313, 34.092400, 46.348110>,  <32.500145, 34.009647, 46.261173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.292313, 34.092400, 46.348110>,  <31.945925, 34.230320, 46.493004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292313, 34.092400, 46.348110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066752, -0.638144, 0.767018,
		-0.495623, -0.688393, -0.529597,
		0.865968, -0.344800, -0.362231,
		32.552105, 33.988960, 46.239441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.936617, 33.477154, 46.474636>,  <31.945925, 34.230320, 46.493004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.936617, 33.477154, 46.474636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.328503, 33.557045, 46.468063>,  <32.563633, 33.604980, 46.464119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.328503, 33.557045, 46.468063>,  <31.936617, 33.477154, 46.474636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328503, 33.557045, 46.468063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134173, -0.592829, 0.794072,
		0.148853, -0.780169, -0.607601,
		0.979715, 0.199724, -0.016433,
		32.622417, 33.616962, 46.463135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.216625, 32.856602, 46.592178>,  <31.936617, 33.477154, 46.474636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.216625, 32.856602, 46.592178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.524906, 33.103729, 46.654549>,  <32.709873, 33.252007, 46.691971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.524906, 33.103729, 46.654549>,  <32.216625, 32.856602, 46.592178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524906, 33.103729, 46.654549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331847, -0.598078, 0.729507,
		0.543963, -0.510489, -0.665962,
		0.770702, 0.617822, 0.155928,
		32.756119, 33.289078, 46.701328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730598, 32.370689, 46.637821>,  <32.216625, 32.856602, 46.592178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730598, 32.370689, 46.637821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.846565, 32.700310, 46.832508>,  <32.916145, 32.898083, 46.949322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.846565, 32.700310, 46.832508>,  <32.730598, 32.370689, 46.637821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846565, 32.700310, 46.832508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245458, -0.555570, 0.794414,
		0.925041, -0.110844, -0.363337,
		0.289915, 0.824049, 0.486717,
		32.933540, 32.947525, 46.978523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.828236, 31.657684, 46.442131>,  <32.730598, 32.370689, 46.637821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.828236, 31.657684, 46.442131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.578682, 31.367222, 46.557693>,  <32.428951, 31.192945, 46.627033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.578682, 31.367222, 46.557693>,  <32.828236, 31.657684, 46.442131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.578682, 31.367222, 46.557693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608053, 0.218787, -0.763154,
		0.490959, -0.651791, -0.578039,
		-0.623884, -0.726155, 0.288908,
		32.391518, 31.149376, 46.644367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742828, 31.326488, 45.763832>,  <32.828236, 31.657684, 46.442131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742828, 31.326488, 45.763832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.439930, 31.248569, 46.013191>,  <32.258190, 31.201818, 46.162807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.439930, 31.248569, 46.013191>,  <32.742828, 31.326488, 45.763832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439930, 31.248569, 46.013191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652994, 0.206450, -0.728682,
		0.013243, -0.958871, -0.283534,
		-0.757248, -0.194796, 0.623403,
		32.212757, 31.190130, 46.200211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349518, 31.012072, 45.351017>,  <32.742828, 31.326488, 45.763832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349518, 31.012072, 45.351017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.102631, 31.106888, 45.651112>,  <31.954496, 31.163778, 45.831169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.102631, 31.106888, 45.651112>,  <32.349518, 31.012072, 45.351017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.102631, 31.106888, 45.651112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723623, 0.203315, -0.659570,
		-0.308879, -0.949986, 0.046039,
		-0.617222, 0.237042, 0.750232,
		31.917463, 31.177999, 45.876183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.796635, 30.615747, 45.173599>,  <32.349518, 31.012072, 45.351017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.796635, 30.615747, 45.173599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.682758, 30.913177, 45.415604>,  <31.614431, 31.091637, 45.560806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.682758, 30.913177, 45.415604>,  <31.796635, 30.615747, 45.173599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.682758, 30.913177, 45.415604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741131, 0.229571, -0.630890,
		-0.608009, -0.628006, 0.485730,
		-0.284693, 0.743577, 0.605016,
		31.597351, 31.136250, 45.597107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.112146, 30.529053, 45.459492>,  <31.796635, 30.615747, 45.173599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.112146, 30.529053, 45.459492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.171827, 30.924202, 45.442310>,  <31.207636, 31.161291, 45.431999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.171827, 30.924202, 45.442310>,  <31.112146, 30.529053, 45.459492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.171827, 30.924202, 45.442310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885529, 0.114161, -0.450340,
		-0.439975, 0.105229, 0.891823,
		0.149200, 0.987874, -0.042955,
		31.216587, 31.220564, 45.429424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.472765, 30.916866, 45.660324>,  <31.112146, 30.529053, 45.459492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.472765, 30.916866, 45.660324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.679241, 31.197361, 45.463627>,  <30.803127, 31.365658, 45.345608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.679241, 31.197361, 45.463627>,  <30.472765, 30.916866, 45.660324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.679241, 31.197361, 45.463627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846547, 0.330564, -0.417235,
		-0.130028, 0.631658, 0.764265,
		0.516189, 0.701238, -0.491746,
		30.834097, 31.407732, 45.316105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.111223, 31.574295, 45.746338>,  <30.472765, 30.916866, 45.660324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.111223, 31.574295, 45.746338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.323408, 31.559370, 45.407581>,  <30.450718, 31.550415, 45.204327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.323408, 31.559370, 45.407581>,  <30.111223, 31.574295, 45.746338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.323408, 31.559370, 45.407581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812703, 0.261744, -0.520581,
		0.241093, 0.964416, 0.108519,
		0.530461, -0.037314, -0.846888,
		30.482546, 31.548176, 45.153515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.863625, 29.573830, 48.096935> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.737728, 29.944519, 48.014843>,  <36.662189, 30.166933, 47.965588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.737728, 29.944519, 48.014843>,  <36.863625, 29.573830, 48.096935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737728, 29.944519, 48.014843> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191041, -0.273646, -0.942667,
		-0.929755, -0.257485, 0.263169,
		-0.314737, 0.926725, -0.205233,
		36.643307, 30.222536, 47.953274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322140, 29.503403, 47.730587>,  <36.863625, 29.573830, 48.096935>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322140, 29.503403, 47.730587> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.425514, 29.878345, 47.637142>,  <36.487541, 30.103312, 47.581078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.425514, 29.878345, 47.637142>,  <36.322140, 29.503403, 47.730587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425514, 29.878345, 47.637142> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289159, -0.155675, -0.944538,
		-0.921736, 0.311655, 0.230813,
		0.258438, 0.937356, -0.233610,
		36.503044, 30.159552, 47.567059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812328, 29.759378, 47.199211>,  <36.322140, 29.503403, 47.730587>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812328, 29.759378, 47.199211> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.118038, 30.013573, 47.155308>,  <36.301464, 30.166088, 47.128967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.118038, 30.013573, 47.155308>,  <35.812328, 29.759378, 47.199211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118038, 30.013573, 47.155308> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113814, -0.034609, -0.992899,
		-0.634771, 0.771337, 0.045877,
		0.764272, 0.635485, -0.109758,
		36.347321, 30.204218, 47.122379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569748, 30.251234, 46.673561>,  <35.812328, 29.759378, 47.199211>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569748, 30.251234, 46.673561> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.967529, 30.293276, 46.671761>,  <36.206196, 30.318501, 46.670681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.967529, 30.293276, 46.671761>,  <35.569748, 30.251234, 46.673561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967529, 30.293276, 46.671761> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006596, -0.104995, -0.994451,
		-0.104995, 0.988903, -0.105105,
		0.994451, 0.105105, -0.004501,
		36.265865, 30.324808, 46.670410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776638, 30.814528, 46.173019>,  <35.569748, 30.251234, 46.673561>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776638, 30.814528, 46.173019> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.090599, 30.571465, 46.221489>,  <36.278976, 30.425627, 46.250568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.090599, 30.571465, 46.221489>,  <35.776638, 30.814528, 46.173019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090599, 30.571465, 46.221489> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004178, -0.190363, -0.981705,
		0.619609, 0.771046, -0.146877,
		0.784900, -0.607659, 0.121172,
		36.326069, 30.389166, 46.257839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.116688, 31.003901, 45.640171>,  <35.776638, 30.814528, 46.173019>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.116688, 31.003901, 45.640171> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.254505, 30.648325, 45.760887>,  <36.337196, 30.434980, 45.833317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.254505, 30.648325, 45.760887>,  <36.116688, 31.003901, 45.640171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254505, 30.648325, 45.760887> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141659, -0.367028, -0.919360,
		0.928020, 0.274010, -0.252384,
		0.344546, -0.888937, 0.301793,
		36.357868, 30.381643, 45.851425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678658, 30.780197, 45.190651>,  <36.116688, 31.003901, 45.640171>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678658, 30.780197, 45.190651> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.528011, 30.447355, 45.353508>,  <36.437626, 30.247650, 45.451221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.528011, 30.447355, 45.353508>,  <36.678658, 30.780197, 45.190651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528011, 30.447355, 45.353508> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053829, -0.419104, -0.906341,
		0.924805, -0.363257, 0.113049,
		-0.376613, -0.832103, 0.407144,
		36.415028, 30.197723, 45.475651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991676, 30.212626, 44.802715>,  <36.678658, 30.780197, 45.190651>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991676, 30.212626, 44.802715> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.683880, 30.009537, 44.957684>,  <36.499203, 29.887684, 45.050667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.683880, 30.009537, 44.957684>,  <36.991676, 30.212626, 44.802715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683880, 30.009537, 44.957684> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276973, -0.281309, -0.918777,
		0.575471, -0.814298, 0.075840,
		-0.769493, -0.507724, 0.387424,
		36.453033, 29.857220, 45.073910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968662, 29.670187, 44.511253>,  <36.991676, 30.212626, 44.802715>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968662, 29.670187, 44.511253> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.587708, 29.678879, 44.632896>,  <36.359135, 29.684093, 44.705883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.587708, 29.678879, 44.632896>,  <36.968662, 29.670187, 44.511253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587708, 29.678879, 44.632896> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297638, -0.282424, -0.911947,
		0.066074, -0.959043, 0.275444,
		-0.952390, 0.021726, 0.304108,
		36.301991, 29.685396, 44.724129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681419, 28.931606, 44.347340>,  <36.968662, 29.670187, 44.511253>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681419, 28.931606, 44.347340> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.358658, 29.165993, 44.377167>,  <36.165001, 29.306623, 44.395061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.358658, 29.165993, 44.377167>,  <36.681419, 28.931606, 44.347340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358658, 29.165993, 44.377167> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225893, -0.189472, -0.955548,
		-0.545790, -0.787874, 0.285250,
		-0.806899, 0.585965, 0.074563,
		36.116589, 29.341782, 44.399536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117363, 28.624002, 43.994484>,  <36.681419, 28.931606, 44.347340>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117363, 28.624002, 43.994484> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.020256, 29.011425, 44.016254>,  <35.961994, 29.243879, 44.029316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.020256, 29.011425, 44.016254>,  <36.117363, 28.624002, 43.994484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020256, 29.011425, 44.016254> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453251, -0.063643, -0.889108,
		-0.857688, -0.240512, 0.454450,
		-0.242763, 0.968558, 0.054426,
		35.947426, 29.301992, 44.032581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448433, 28.671316, 43.767200>,  <36.117363, 28.624002, 43.994484>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448433, 28.671316, 43.767200> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.601891, 29.034557, 43.700073>,  <35.693966, 29.252502, 43.659798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.601891, 29.034557, 43.700073>,  <35.448433, 28.671316, 43.767200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601891, 29.034557, 43.700073> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549394, 0.078375, -0.831880,
		-0.742281, 0.411345, 0.528975,
		0.383648, 0.908104, -0.167814,
		35.716984, 29.306988, 43.649731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651009, 28.814625, 43.918327>,  <35.448433, 28.671316, 43.767200>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651009, 28.814625, 43.918327> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.281754, 28.666599, 43.960045>,  <34.060200, 28.577784, 43.985077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.281754, 28.666599, 43.960045>,  <34.651009, 28.814625, 43.918327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281754, 28.666599, 43.960045> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175359, -0.163839, 0.970776,
		-0.342159, 0.914446, 0.216140,
		-0.923134, -0.370062, 0.104297,
		34.004814, 28.555580, 43.991333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480835, 29.092999, 44.595078>,  <34.651009, 28.814625, 43.918327>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480835, 29.092999, 44.595078> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.238121, 28.783981, 44.520252>,  <34.092495, 28.598572, 44.475357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.238121, 28.783981, 44.520252>,  <34.480835, 29.092999, 44.595078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238121, 28.783981, 44.520252> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212695, -0.384562, 0.898261,
		-0.765883, 0.505261, 0.397661,
		-0.606782, -0.772543, -0.187063,
		34.056087, 28.552217, 44.464134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068226, 28.966064, 45.202553>,  <34.480835, 29.092999, 44.595078>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068226, 28.966064, 45.202553> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.059280, 28.626209, 44.991795>,  <34.053913, 28.422297, 44.865341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.059280, 28.626209, 44.991795>,  <34.068226, 28.966064, 45.202553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059280, 28.626209, 44.991795> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024817, -0.527335, 0.849295,
		-0.999442, 0.005917, 0.032879,
		-0.022364, -0.849637, -0.526894,
		34.052570, 28.371319, 44.833725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523674, 28.507517, 45.470867>,  <34.068226, 28.966064, 45.202553>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523674, 28.507517, 45.470867> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.755432, 28.247484, 45.274216>,  <33.894485, 28.091465, 45.156227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.755432, 28.247484, 45.274216>,  <33.523674, 28.507517, 45.470867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755432, 28.247484, 45.274216> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168452, -0.494653, 0.852609,
		-0.797449, -0.576812, -0.177092,
		0.579395, -0.650081, -0.491626,
		33.929253, 28.052460, 45.126728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285484, 27.861801, 45.605789>,  <33.523674, 28.507517, 45.470867>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285484, 27.861801, 45.605789> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.667076, 27.815662, 45.495075>,  <33.896030, 27.787979, 45.428646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.667076, 27.815662, 45.495075>,  <33.285484, 27.861801, 45.605789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667076, 27.815662, 45.495075> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205942, -0.418888, 0.884376,
		-0.217951, -0.900682, -0.375858,
		0.953984, -0.115346, -0.276785,
		33.953270, 27.781059, 45.412041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459385, 27.200727, 45.830517>,  <33.285484, 27.861801, 45.605789>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459385, 27.200727, 45.830517> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.794353, 27.406549, 45.756805>,  <33.995335, 27.530043, 45.712578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.794353, 27.406549, 45.756805>,  <33.459385, 27.200727, 45.830517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.794353, 27.406549, 45.756805> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331518, -0.210143, 0.919748,
		0.434537, -0.831308, -0.346563,
		0.837421, 0.514556, -0.184278,
		34.045578, 27.560917, 45.701523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993126, 26.725760, 45.980145>,  <33.459385, 27.200727, 45.830517>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993126, 26.725760, 45.980145> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.122276, 27.102837, 46.013817>,  <34.199768, 27.329082, 46.034019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.122276, 27.102837, 46.013817>,  <33.993126, 26.725760, 45.980145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122276, 27.102837, 46.013817> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423471, -0.223435, 0.877923,
		0.846418, -0.247812, -0.471344,
		0.322875, 0.942691, 0.084179,
		34.219139, 27.385643, 46.039070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641716, 26.650135, 46.385471>,  <33.993126, 26.725760, 45.980145>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641716, 26.650135, 46.385471> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.561073, 27.039612, 46.427948>,  <34.512688, 27.273298, 46.453434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.561073, 27.039612, 46.427948>,  <34.641716, 26.650135, 46.385471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561073, 27.039612, 46.427948> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240773, -0.055827, 0.968975,
		0.949411, 0.220925, -0.223183,
		-0.201611, 0.973692, 0.106195,
		34.500591, 27.331718, 46.459808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188484, 26.822500, 46.795509>,  <34.641716, 26.650135, 46.385471>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188484, 26.822500, 46.795509> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.925106, 27.123535, 46.792374>,  <34.767078, 27.304155, 46.790493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.925106, 27.123535, 46.792374>,  <35.188484, 26.822500, 46.795509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.925106, 27.123535, 46.792374> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222863, 0.204916, 0.953070,
		0.718873, 0.625799, -0.302650,
		-0.658448, 0.752585, -0.007841,
		34.727573, 27.349310, 46.790020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539974, 27.339441, 47.095303>,  <35.188484, 26.822500, 46.795509>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539974, 27.339441, 47.095303> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.171532, 27.490322, 47.133846>,  <34.950466, 27.580851, 47.156971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.171532, 27.490322, 47.133846>,  <35.539974, 27.339441, 47.095303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171532, 27.490322, 47.133846> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230886, 0.329983, 0.915316,
		0.313462, 0.865349, -0.391040,
		-0.921104, 0.377202, 0.096360,
		34.895199, 27.603483, 47.162754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635204, 27.994274, 47.349808>,  <35.539974, 27.339441, 47.095303>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635204, 27.994274, 47.349808> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.265137, 27.889433, 47.459618>,  <35.043095, 27.826529, 47.525505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.265137, 27.889433, 47.459618>,  <35.635204, 27.994274, 47.349808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265137, 27.889433, 47.459618> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129158, 0.462718, 0.877046,
		-0.356904, 0.846873, -0.394240,
		-0.925169, -0.262102, 0.274526,
		34.987587, 27.810802, 47.541977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326023, 28.634901, 47.632111>,  <35.635204, 27.994274, 47.349808>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326023, 28.634901, 47.632111> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.103043, 28.332106, 47.768475>,  <34.969254, 28.150429, 47.850292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.103043, 28.332106, 47.768475>,  <35.326023, 28.634901, 47.632111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103043, 28.332106, 47.768475> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004674, 0.413486, 0.910498,
		-0.830197, 0.505964, -0.234037,
		-0.557450, -0.756987, 0.340910,
		34.935806, 28.105009, 47.870747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819691, 28.961058, 47.968712>,  <35.326023, 28.634901, 47.632111>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819691, 28.961058, 47.968712> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.836098, 28.593470, 48.125587>,  <34.845940, 28.372917, 48.219711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.836098, 28.593470, 48.125587>,  <34.819691, 28.961058, 47.968712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836098, 28.593470, 48.125587> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116556, 0.394236, 0.911588,
		-0.992337, 0.008323, 0.123281,
		0.041015, -0.918972, 0.392185,
		34.848404, 28.317778, 48.243244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474625, 28.961809, 48.554741>,  <34.819691, 28.961058, 47.968712>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474625, 28.961809, 48.554741> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.716820, 28.648825, 48.612904>,  <34.862137, 28.461035, 48.647800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.716820, 28.648825, 48.612904>,  <34.474625, 28.961809, 48.554741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716820, 28.648825, 48.612904> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117086, 0.268298, 0.956194,
		-0.787197, -0.561935, 0.254066,
		0.605485, -0.782460, 0.145409,
		34.898464, 28.414087, 48.656525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828144, 29.234842, 48.332050>,  <34.474625, 28.961809, 48.554741>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828144, 29.234842, 48.332050> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.555714, 29.309437, 48.615276>,  <33.392254, 29.354193, 48.785213>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.555714, 29.309437, 48.615276>,  <33.828144, 29.234842, 48.332050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555714, 29.309437, 48.615276> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441616, 0.666724, -0.600379,
		-0.584047, -0.721597, -0.371735,
		-0.681076, 0.186486, 0.708067,
		33.351391, 29.365383, 48.827698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928379, 29.066885, 48.211971>,  <33.828144, 29.234842, 48.332050>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928379, 29.066885, 48.211971> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.074505, 29.391315, 48.394703>,  <33.162182, 29.585974, 48.504341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.074505, 29.391315, 48.394703>,  <32.928379, 29.066885, 48.211971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074505, 29.391315, 48.394703> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340585, 0.573184, -0.745294,
		-0.866340, 0.116679, 0.485635,
		0.365318, 0.811077, 0.456832,
		33.184101, 29.634638, 48.531754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.341148, 29.593399, 48.382244>,  <32.928379, 29.066885, 48.211971>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.341148, 29.593399, 48.382244> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.696327, 29.774149, 48.347912>,  <32.909435, 29.882599, 48.327312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.696327, 29.774149, 48.347912>,  <32.341148, 29.593399, 48.382244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696327, 29.774149, 48.347912> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318337, 0.469060, -0.823799,
		-0.331991, 0.758811, 0.560347,
		0.887943, 0.451873, -0.085834,
		32.962711, 29.909710, 48.322163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.218773, 30.313566, 48.219048>,  <32.341148, 29.593399, 48.382244>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.218773, 30.313566, 48.219048> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.598484, 30.290485, 48.095402>,  <32.826309, 30.276636, 48.021214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.598484, 30.290485, 48.095402>,  <32.218773, 30.313566, 48.219048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598484, 30.290485, 48.095402> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258587, 0.416078, -0.871787,
		0.178918, 0.907496, 0.380051,
		0.949274, -0.057702, -0.309110,
		32.883266, 30.273174, 48.002670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532646, 31.002308, 48.313496>,  <32.218773, 30.313566, 48.219048>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532646, 31.002308, 48.313496> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.709564, 30.779497, 48.032330>,  <32.815716, 30.645811, 47.863628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.709564, 30.779497, 48.032330>,  <32.532646, 31.002308, 48.313496>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709564, 30.779497, 48.032330> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231443, 0.686311, -0.689501,
		0.866490, 0.467651, 0.174635,
		0.442299, -0.557028, -0.702916,
		32.842255, 30.612389, 47.821453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841190, 31.475183, 47.932312>,  <32.532646, 31.002308, 48.313496>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841190, 31.475183, 47.932312> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.826534, 31.148058, 47.702587>,  <32.817741, 30.951782, 47.564751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.826534, 31.148058, 47.702587>,  <32.841190, 31.475183, 47.932312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826534, 31.148058, 47.702587> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299305, 0.557301, -0.774488,
		0.953454, 0.143520, -0.265194,
		-0.036639, -0.817813, -0.574317,
		32.815544, 30.902714, 47.530293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880253, 31.675154, 47.233227>,  <32.841190, 31.475183, 47.932312>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880253, 31.675154, 47.233227> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.747601, 31.313574, 47.125233>,  <32.668007, 31.096626, 47.060436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.747601, 31.313574, 47.125233>,  <32.880253, 31.675154, 47.233227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747601, 31.313574, 47.125233> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465386, 0.405693, -0.786657,
		0.820632, -0.135232, -0.555226,
		-0.331633, -0.903950, -0.269990,
		32.648109, 31.042389, 47.044235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494061, 32.154442, 47.070248>,  <32.880253, 31.675154, 47.233227>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494061, 32.154442, 47.070248> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.312828, 32.485077, 47.203796>,  <33.204090, 32.683456, 47.283924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.312828, 32.485077, 47.203796>,  <33.494061, 32.154442, 47.070248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312828, 32.485077, 47.203796> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047241, -0.351725, 0.934911,
		0.890217, 0.439363, 0.120311,
		-0.453081, 0.826589, 0.333868,
		33.176903, 32.733055, 47.303955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931797, 32.479069, 47.549572>,  <33.494061, 32.154442, 47.070248>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931797, 32.479069, 47.549572> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.563545, 32.602726, 47.644958>,  <33.342594, 32.676918, 47.702190>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.563545, 32.602726, 47.644958>,  <33.931797, 32.479069, 47.549572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.563545, 32.602726, 47.644958> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124237, -0.347083, 0.929569,
		0.370134, 0.885419, 0.281130,
		-0.920633, 0.309139, 0.238469,
		33.287354, 32.695469, 47.716499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066326, 32.858791, 48.094013>,  <33.931797, 32.479069, 47.549572>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066326, 32.858791, 48.094013> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.669312, 32.822392, 48.126507>,  <33.431103, 32.800552, 48.146004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.669312, 32.822392, 48.126507>,  <34.066326, 32.858791, 48.094013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669312, 32.822392, 48.126507> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112457, -0.424613, 0.898364,
		-0.047253, 0.900791, 0.431675,
		-0.992532, -0.090996, 0.081236,
		33.371552, 32.795094, 48.150879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908394, 33.247757, 48.659046>,  <34.066326, 32.858791, 48.094013>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908394, 33.247757, 48.659046> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.578754, 33.026562, 48.609947>,  <33.380970, 32.893845, 48.580490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.578754, 33.026562, 48.609947>,  <33.908394, 33.247757, 48.659046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578754, 33.026562, 48.609947> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016992, -0.240725, 0.970445,
		-0.566195, 0.797654, 0.207777,
		-0.824096, -0.552991, -0.122744,
		33.331524, 32.860664, 48.573124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332428, 33.559311, 48.980263>,  <33.908394, 33.247757, 48.659046>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332428, 33.559311, 48.980263> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.265705, 33.165279, 48.963280>,  <33.225670, 32.928860, 48.953091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.265705, 33.165279, 48.963280>,  <33.332428, 33.559311, 48.980263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265705, 33.165279, 48.963280> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160764, -0.015313, 0.986874,
		-0.972795, 0.171442, -0.155810,
		-0.166806, -0.985075, -0.042458,
		33.215664, 32.869759, 48.950542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017883, 33.446133, 49.574192>,  <33.332428, 33.559311, 48.980263>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.017883, 33.446133, 49.574192> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.081421, 33.066170, 49.466534>,  <33.119541, 32.838192, 49.401939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.081421, 33.066170, 49.466534>,  <33.017883, 33.446133, 49.574192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081421, 33.066170, 49.466534> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030646, -0.267734, 0.963005,
		-0.986828, -0.161213, -0.013416,
		0.158840, -0.949910, -0.269148,
		33.129074, 32.781197, 49.385788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.722889, 33.094986, 50.129944>,  <33.017883, 33.446133, 49.574192>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.722889, 33.094986, 50.129944> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.972313, 32.829700, 49.964386>,  <33.121967, 32.670528, 49.865051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.972313, 32.829700, 49.964386>,  <32.722889, 33.094986, 50.129944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972313, 32.829700, 49.964386> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208881, -0.368846, 0.905716,
		-0.753350, -0.651228, -0.091466,
		0.623564, -0.663216, -0.413899,
		33.159382, 32.630737, 49.840218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.542759, 32.478058, 50.514084>,  <32.722889, 33.094986, 50.129944>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.542759, 32.478058, 50.514084> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.909691, 32.460598, 50.355793>,  <33.129852, 32.450123, 50.260818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.909691, 32.460598, 50.355793>,  <32.542759, 32.478058, 50.514084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909691, 32.460598, 50.355793> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374459, -0.242993, 0.894838,
		-0.135217, -0.969045, -0.206561,
		0.917331, -0.043649, -0.395724,
		33.184891, 32.447502, 50.237076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.892506, 31.989420, 51.005203>,  <32.542759, 32.478058, 50.514084>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.892506, 31.989420, 51.005203> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.194618, 32.155685, 50.802509>,  <33.375885, 32.255444, 50.680893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.194618, 32.155685, 50.802509>,  <32.892506, 31.989420, 51.005203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194618, 32.155685, 50.802509> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535252, 0.055001, 0.842900,
		0.378232, -0.907854, -0.180943,
		0.755279, 0.415662, -0.506734,
		33.421204, 32.280384, 50.650490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<32.644131, 34.121387, 34.666161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033958, 34.156658, 34.748562>,  <33.267857, 34.177822, 34.798000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033958, 34.156658, 34.748562>,  <32.644131, 34.121387, 34.666161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033958, 34.156658, 34.748562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185152, -0.200933, 0.961948,
		0.126214, -0.975628, -0.179498,
		0.974571, 0.088177, 0.206000,
		33.326328, 34.183109, 34.810360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.893055, 33.448765, 34.948135>,  <32.644131, 34.121387, 34.666161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.893055, 33.448765, 34.948135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147408, 33.735271, 35.063110>,  <33.300018, 33.907173, 35.132095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147408, 33.735271, 35.063110>,  <32.893055, 33.448765, 34.948135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147408, 33.735271, 35.063110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175919, -0.228113, 0.957610,
		0.751468, -0.659494, -0.019049,
		0.635883, 0.716262, 0.287437,
		33.338173, 33.950150, 35.149342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264244, 33.164356, 35.560291>,  <32.893055, 33.448765, 34.948135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264244, 33.164356, 35.560291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275101, 33.564205, 35.562065>,  <33.281616, 33.804115, 35.563129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275101, 33.564205, 35.562065>,  <33.264244, 33.164356, 35.560291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275101, 33.564205, 35.562065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212309, 0.001431, 0.977202,
		0.976826, -0.027466, 0.212267,
		0.027144, 0.999622, 0.004433,
		33.283245, 33.864090, 35.563396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594006, 33.359844, 36.211975>,  <33.264244, 33.164356, 35.560291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594006, 33.359844, 36.211975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394657, 33.690769, 36.108295>,  <33.275047, 33.889324, 36.046085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394657, 33.690769, 36.108295>,  <33.594006, 33.359844, 36.211975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394657, 33.690769, 36.108295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278597, 0.130292, 0.951529,
		0.820980, 0.546429, 0.165552,
		-0.498373, 0.827308, -0.259201,
		33.245144, 33.938961, 36.030537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789082, 33.771084, 36.654716>,  <33.594006, 33.359844, 36.211975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789082, 33.771084, 36.654716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464043, 33.962811, 36.522091>,  <33.269020, 34.077847, 36.442516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464043, 33.962811, 36.522091>,  <33.789082, 33.771084, 36.654716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464043, 33.962811, 36.522091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247833, 0.230714, 0.940930,
		0.527501, 0.846773, -0.068687,
		-0.812601, 0.479319, -0.331560,
		33.220261, 34.106606, 36.422623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808372, 34.470196, 36.973198>,  <33.789082, 33.771084, 36.654716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808372, 34.470196, 36.973198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432663, 34.395756, 36.857868>,  <33.207237, 34.351093, 36.788670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432663, 34.395756, 36.857868>,  <33.808372, 34.470196, 36.973198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432663, 34.395756, 36.857868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329670, 0.255977, 0.908732,
		-0.095309, 0.948600, -0.301783,
		-0.939273, -0.186099, -0.288329,
		33.150883, 34.339928, 36.771370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475559, 35.049461, 37.185753>,  <33.808372, 34.470196, 36.973198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475559, 35.049461, 37.185753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195335, 34.768944, 37.132984>,  <33.027199, 34.600636, 37.101322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195335, 34.768944, 37.132984>,  <33.475559, 35.049461, 37.185753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195335, 34.768944, 37.132984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516634, 0.370936, 0.771683,
		-0.492239, 0.608769, -0.622175,
		-0.700564, -0.701289, -0.131922,
		32.985165, 34.558556, 37.093407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.914280, 35.393631, 37.214348>,  <33.475559, 35.049461, 37.185753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.914280, 35.393631, 37.214348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809727, 35.018070, 37.303921>,  <32.746994, 34.792732, 37.357666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809727, 35.018070, 37.303921>,  <32.914280, 35.393631, 37.214348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809727, 35.018070, 37.303921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516078, 0.331990, 0.789586,
		-0.815686, 0.090815, -0.571322,
		-0.261380, -0.938901, 0.223932,
		32.731312, 34.736401, 37.371101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.221073, 35.489594, 37.533493>,  <32.914280, 35.393631, 37.214348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.221073, 35.489594, 37.533493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.367706, 35.138412, 37.656658>,  <32.455688, 34.927704, 37.730556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.367706, 35.138412, 37.656658>,  <32.221073, 35.489594, 37.533493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367706, 35.138412, 37.656658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354357, 0.174259, 0.918730,
		-0.860260, -0.445905, -0.247229,
		0.366585, -0.877954, 0.307917,
		32.477680, 34.875027, 37.749035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.664217, 35.198048, 38.001251>,  <32.221073, 35.489594, 37.533493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.664217, 35.198048, 38.001251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989109, 35.003788, 38.130508>,  <32.184044, 34.887230, 38.208065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989109, 35.003788, 38.130508>,  <31.664217, 35.198048, 38.001251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989109, 35.003788, 38.130508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368144, 0.002945, 0.929764,
		-0.452494, -0.874147, -0.176398,
		0.812231, -0.485652, 0.323145,
		32.232777, 34.858093, 38.227451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356855, 34.773857, 38.547375>,  <31.664217, 35.198048, 38.001251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356855, 34.773857, 38.547375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752718, 34.787964, 38.602997>,  <31.990236, 34.796429, 38.636372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752718, 34.787964, 38.602997>,  <31.356855, 34.773857, 38.547375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752718, 34.787964, 38.602997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140636, 0.047254, 0.988933,
		0.028300, -0.998260, 0.051724,
		0.989657, 0.035261, 0.139054,
		32.049614, 34.798546, 38.644714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431416, 34.414722, 39.065559>,  <31.356855, 34.773857, 38.547375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431416, 34.414722, 39.065559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.764244, 34.636581, 39.067524>,  <31.963942, 34.769695, 39.068703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.764244, 34.636581, 39.067524>,  <31.431416, 34.414722, 39.065559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.764244, 34.636581, 39.067524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107838, 0.153075, 0.982313,
		0.544082, -0.817886, 0.187181,
		0.832073, 0.554645, 0.004914,
		32.013866, 34.802975, 39.068996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.399214, 33.747795, 39.039078>,  <31.431416, 34.414722, 39.065559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.399214, 33.747795, 39.039078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.022951, 33.825279, 39.150532>,  <30.797194, 33.871769, 39.217403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.022951, 33.825279, 39.150532>,  <31.399214, 33.747795, 39.039078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.022951, 33.825279, 39.150532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253646, 0.144135, -0.956498,
		-0.225444, -0.970413, -0.086449,
		-0.940659, 0.193710, 0.278635,
		30.740753, 33.883392, 39.234123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.988380, 33.346226, 38.604031>,  <31.399214, 33.747795, 39.039078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.988380, 33.346226, 38.604031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.726810, 33.612545, 38.747749>,  <30.569868, 33.772335, 38.833981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.726810, 33.612545, 38.747749>,  <30.988380, 33.346226, 38.604031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.726810, 33.612545, 38.747749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550832, -0.093440, -0.829369,
		-0.518619, -0.740259, 0.427845,
		-0.653925, 0.665797, 0.359299,
		30.530632, 33.812283, 38.855537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.317295, 33.035938, 38.505924>,  <30.988380, 33.346226, 38.604031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.317295, 33.035938, 38.505924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.279448, 33.434006, 38.516399>,  <30.256739, 33.672848, 38.522686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.279448, 33.434006, 38.516399>,  <30.317295, 33.035938, 38.505924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.279448, 33.434006, 38.516399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627491, -0.039197, -0.777636,
		-0.772853, -0.090010, 0.628169,
		-0.094617, 0.995169, 0.026187,
		30.251062, 33.732555, 38.524254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.704510, 33.130154, 38.267273>,  <30.317295, 33.035938, 38.505924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.704510, 33.130154, 38.267273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.843689, 33.502174, 38.220062>,  <29.927197, 33.725388, 38.191734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.843689, 33.502174, 38.220062>,  <29.704510, 33.130154, 38.267273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.843689, 33.502174, 38.220062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685140, 0.166324, -0.709168,
		-0.639933, 0.327623, 0.695089,
		0.347950, 0.930054, -0.118031,
		29.948074, 33.781189, 38.184654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.096199, 33.564251, 38.161961>,  <29.704510, 33.130154, 38.267273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.096199, 33.564251, 38.161961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.412516, 33.764431, 38.020992>,  <29.602306, 33.884537, 37.936413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.412516, 33.764431, 38.020992>,  <29.096199, 33.564251, 38.161961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.412516, 33.764431, 38.020992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438475, 0.061439, -0.896641,
		-0.427070, 0.863584, 0.268019,
		0.790791, 0.500448, -0.352421,
		29.649754, 33.914566, 37.915264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.720127, 34.025318, 37.779320>,  <29.096199, 33.564251, 38.161961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.720127, 34.025318, 37.779320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.098057, 34.021790, 37.648338>,  <29.324816, 34.019672, 37.569748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.098057, 34.021790, 37.648338>,  <28.720127, 34.025318, 37.779320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.098057, 34.021790, 37.648338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324573, -0.160198, -0.932196,
		-0.044230, 0.987045, -0.154224,
		0.944826, -0.008826, -0.327454,
		29.381504, 34.019142, 37.550102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.720850, 34.615982, 37.241337>,  <28.720127, 34.025318, 37.779320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.720850, 34.615982, 37.241337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.023699, 34.358227, 37.198372>,  <29.205408, 34.203575, 37.172592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.023699, 34.358227, 37.198372>,  <28.720850, 34.615982, 37.241337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.023699, 34.358227, 37.198372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276854, -0.167571, -0.946188,
		0.591710, 0.746115, -0.305272,
		0.757120, -0.644385, -0.107412,
		29.250835, 34.164909, 37.166149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.183407, 34.877964, 36.739754>,  <28.720850, 34.615982, 37.241337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.183407, 34.877964, 36.739754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.223957, 34.480286, 36.754166>,  <29.248287, 34.241680, 36.762814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.223957, 34.480286, 36.754166>,  <29.183407, 34.877964, 36.739754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.223957, 34.480286, 36.754166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090813, -0.045317, -0.994837,
		0.990695, 0.097579, -0.094880,
		0.101375, -0.994196, 0.036034,
		29.254370, 34.182026, 36.764977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.685163, 34.663559, 36.126068>,  <29.183407, 34.877964, 36.739754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.685163, 34.663559, 36.126068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.503857, 34.322361, 36.229568>,  <29.395073, 34.117641, 36.291668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.503857, 34.322361, 36.229568>,  <29.685163, 34.663559, 36.126068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.503857, 34.322361, 36.229568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037916, -0.308466, -0.950480,
		0.890567, -0.421012, 0.172160,
		-0.453269, -0.852993, 0.258747,
		29.367876, 34.066463, 36.307194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.130499, 34.279839, 35.761421>,  <29.685163, 34.663559, 36.126068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.130499, 34.279839, 35.761421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.802551, 34.065742, 35.842751>,  <29.605783, 33.937286, 35.891548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.802551, 34.065742, 35.842751>,  <30.130499, 34.279839, 35.761421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.802551, 34.065742, 35.842751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165209, -0.561164, -0.811049,
		0.548201, -0.631361, 0.548506,
		-0.819867, -0.535236, 0.203324,
		29.556591, 33.905170, 35.903748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.306299, 33.549381, 35.767670>,  <30.130499, 34.279839, 35.761421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.306299, 33.549381, 35.767670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.912319, 33.556881, 35.698940>,  <29.675932, 33.561378, 35.657703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.912319, 33.556881, 35.698940>,  <30.306299, 33.549381, 35.767670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.912319, 33.556881, 35.698940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131376, -0.564799, -0.814704,
		-0.112320, -0.825016, 0.553836,
		-0.984949, 0.018747, -0.171825,
		29.616835, 33.562504, 35.647392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.209583, 32.857933, 35.544010>,  <30.306299, 33.549381, 35.767670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.209583, 32.857933, 35.544010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.885023, 33.070778, 35.447273>,  <29.690287, 33.198483, 35.389233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.885023, 33.070778, 35.447273>,  <30.209583, 32.857933, 35.544010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.885023, 33.070778, 35.447273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037204, -0.365908, -0.929907,
		-0.583305, -0.763525, 0.277101,
		-0.811400, 0.532110, -0.241842,
		29.641603, 33.230412, 35.374722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.814737, 32.432331, 35.285492>,  <30.209583, 32.857933, 35.544010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.814737, 32.432331, 35.285492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651123, 32.769009, 35.144497>,  <29.552954, 32.971016, 35.059898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651123, 32.769009, 35.144497>,  <29.814737, 32.432331, 35.285492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.651123, 32.769009, 35.144497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028151, -0.374456, -0.926817,
		-0.912084, -0.389025, 0.129472,
		-0.409036, 0.841690, -0.352487,
		29.528412, 33.021515, 35.038750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.569065, 32.107616, 34.732277>,  <29.814737, 32.432331, 35.285492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.569065, 32.107616, 34.732277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.540133, 32.496170, 34.641785>,  <29.522774, 32.729301, 34.587490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.540133, 32.496170, 34.641785>,  <29.569065, 32.107616, 34.732277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.540133, 32.496170, 34.641785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099409, -0.218676, -0.970721,
		-0.992414, -0.092703, -0.080748,
		-0.072331, 0.971384, -0.226233,
		29.518433, 32.787586, 34.573914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.265484, 31.509588, 34.460213>,  <29.569065, 32.107616, 34.732277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.265484, 31.509588, 34.460213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.362919, 31.180445, 34.254856>,  <29.421379, 30.982958, 34.131641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.362919, 31.180445, 34.254856>,  <29.265484, 31.509588, 34.460213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.362919, 31.180445, 34.254856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297070, -0.440590, 0.847130,
		-0.923263, -0.358862, 0.137125,
		0.243587, -0.822860, -0.513388,
		29.435995, 30.933586, 34.100842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.173372, 31.073477, 34.983349>,  <29.265484, 31.509588, 34.460213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.173372, 31.073477, 34.983349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.366917, 30.862425, 34.704067>,  <29.483044, 30.735794, 34.536499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.366917, 30.862425, 34.704067>,  <29.173372, 31.073477, 34.983349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.366917, 30.862425, 34.704067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410005, -0.568165, 0.713501,
		-0.773158, -0.631502, -0.058583,
		0.483862, -0.527630, -0.698201,
		29.512075, 30.704136, 34.494606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.993279, 30.382370, 35.103519>,  <29.173372, 31.073477, 34.983349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.993279, 30.382370, 35.103519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.351391, 30.412331, 34.927856>,  <29.566257, 30.430307, 34.822456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.351391, 30.412331, 34.927856>,  <28.993279, 30.382370, 35.103519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.351391, 30.412331, 34.927856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393443, -0.595354, 0.700540,
		-0.208986, -0.799965, -0.562478,
		0.895281, 0.074900, -0.439162,
		29.619974, 30.434801, 34.796108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.333031, 29.606470, 35.139812>,  <28.993279, 30.382370, 35.103519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.333031, 29.606470, 35.139812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.617840, 29.883049, 35.090946>,  <29.788725, 30.048996, 35.061626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.617840, 29.883049, 35.090946>,  <29.333031, 29.606470, 35.139812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.617840, 29.883049, 35.090946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479612, -0.351853, 0.803848,
		0.512832, -0.630951, -0.582154,
		0.712022, 0.691447, -0.122170,
		29.831446, 30.090483, 35.054295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.067518, 29.314854, 35.067005>,  <29.333031, 29.606470, 35.139812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.067518, 29.314854, 35.067005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.116272, 29.683907, 35.213371>,  <30.145525, 29.905338, 35.301189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.116272, 29.683907, 35.213371>,  <30.067518, 29.314854, 35.067005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.116272, 29.683907, 35.213371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558712, -0.368482, 0.743009,
		0.820357, 0.113879, -0.560398,
		0.121884, 0.922634, 0.365912,
		30.152838, 29.960697, 35.323143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.767477, 29.480415, 35.120327>,  <30.067518, 29.314854, 35.067005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.767477, 29.480415, 35.120327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.564112, 29.685608, 35.396984>,  <30.442093, 29.808723, 35.562977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.564112, 29.685608, 35.396984>,  <30.767477, 29.480415, 35.120327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.564112, 29.685608, 35.396984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542742, -0.432680, 0.719875,
		0.668542, 0.741375, -0.058438,
		-0.508412, 0.512983, 0.691640,
		30.411589, 29.839502, 35.604477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340988, 29.603123, 35.633152>,  <30.767477, 29.480415, 35.120327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340988, 29.603123, 35.633152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.997288, 29.706182, 35.809925>,  <30.791067, 29.768019, 35.915989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.997288, 29.706182, 35.809925>,  <31.340988, 29.603123, 35.633152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.997288, 29.706182, 35.809925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375708, -0.268447, 0.887006,
		0.347172, 0.928198, 0.133862,
		-0.859252, 0.257651, 0.441929,
		30.739511, 29.783478, 35.942505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.528257, 29.808420, 36.271885>,  <31.340988, 29.603123, 35.633152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.528257, 29.808420, 36.271885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.140388, 29.763180, 36.358555>,  <30.907667, 29.736036, 36.410557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.140388, 29.763180, 36.358555>,  <31.528257, 29.808420, 36.271885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.140388, 29.763180, 36.358555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236492, -0.210281, 0.948606,
		-0.061725, 0.971077, 0.230651,
		-0.969671, -0.113100, 0.216673,
		30.849487, 29.729250, 36.423557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.427687, 30.195261, 36.857410>,  <31.528257, 29.808420, 36.271885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.427687, 30.195261, 36.857410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.127771, 29.931177, 36.839802>,  <30.947823, 29.772726, 36.829239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.127771, 29.931177, 36.839802>,  <31.427687, 30.195261, 36.857410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.127771, 29.931177, 36.839802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145482, -0.229389, 0.962401,
		-0.645485, 0.715194, 0.268042,
		-0.749789, -0.660211, -0.044019,
		30.902834, 29.733114, 36.826595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.927061, 30.291557, 37.498489>,  <31.427687, 30.195261, 36.857410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.927061, 30.291557, 37.498489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.842136, 29.923323, 37.367374>,  <30.791182, 29.702381, 37.288704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.842136, 29.923323, 37.367374>,  <30.927061, 30.291557, 37.498489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.842136, 29.923323, 37.367374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172592, -0.294834, 0.939832,
		-0.961839, 0.256112, -0.096289,
		-0.212313, -0.920587, -0.327786,
		30.778442, 29.647146, 37.269039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.292212, 29.967392, 37.830627>,  <30.927061, 30.291557, 37.498489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.292212, 29.967392, 37.830627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.544462, 29.676229, 37.722950>,  <30.695812, 29.501532, 37.658344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.544462, 29.676229, 37.722950>,  <30.292212, 29.967392, 37.830627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.544462, 29.676229, 37.722950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071264, -0.291082, 0.954040,
		-0.772809, -0.620826, -0.131691,
		0.630625, -0.727906, -0.269193,
		30.733650, 29.457857, 37.642193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.199320, 29.433033, 38.417908>,  <30.292212, 29.967392, 37.830627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.199320, 29.433033, 38.417908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.502712, 29.253740, 38.228680>,  <30.684748, 29.146164, 38.115143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.502712, 29.253740, 38.228680>,  <30.199320, 29.433033, 38.417908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.502712, 29.253740, 38.228680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334607, -0.355065, 0.872907,
		-0.559237, -0.820375, -0.119327,
		0.758480, -0.448234, -0.473068,
		30.730257, 29.119270, 38.086758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.144121, 28.755373, 38.674900>,  <30.199320, 29.433033, 38.417908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.144121, 28.755373, 38.674900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.523733, 28.808220, 38.560436>,  <30.751501, 28.839928, 38.491756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.523733, 28.808220, 38.560436>,  <30.144121, 28.755373, 38.674900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.523733, 28.808220, 38.560436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315051, -0.371083, 0.873522,
		0.009221, -0.919153, -0.393793,
		0.949030, 0.132120, -0.286159,
		30.808441, 28.847857, 38.474590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.505981, 28.205366, 38.947029>,  <30.144121, 28.755373, 38.674900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.505981, 28.205366, 38.947029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.796886, 28.466436, 38.862076>,  <30.971430, 28.623077, 38.811104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.796886, 28.466436, 38.862076>,  <30.505981, 28.205366, 38.947029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.796886, 28.466436, 38.862076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434823, -0.198713, 0.878317,
		0.531053, -0.731115, -0.428314,
		0.727263, 0.652674, -0.212379,
		31.015066, 28.662239, 38.798363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.084269, 27.868864, 39.086395>,  <30.505981, 28.205366, 38.947029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.084269, 27.868864, 39.086395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.173044, 28.258787, 39.095287>,  <31.226309, 28.492741, 39.100620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.173044, 28.258787, 39.095287>,  <31.084269, 27.868864, 39.086395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.173044, 28.258787, 39.095287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477023, -0.128431, 0.869456,
		0.850407, -0.182361, -0.493509,
		0.221937, 0.974808, 0.022228,
		31.239626, 28.551229, 39.101955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.702803, 27.821764, 39.321335>,  <31.084269, 27.868864, 39.086395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.702803, 27.821764, 39.321335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.616207, 28.204817, 39.397305>,  <31.564249, 28.434649, 39.442886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.616207, 28.204817, 39.397305>,  <31.702803, 27.821764, 39.321335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.616207, 28.204817, 39.397305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538418, -0.045163, 0.841467,
		0.814395, 0.284425, -0.505830,
		-0.216489, 0.957634, 0.189920,
		31.551260, 28.492107, 39.454281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309441, 28.161694, 39.459015>,  <31.702803, 27.821764, 39.321335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309441, 28.161694, 39.459015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.048630, 28.414490, 39.626560>,  <31.892143, 28.566168, 39.727089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.048630, 28.414490, 39.626560>,  <32.309441, 28.161694, 39.459015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048630, 28.414490, 39.626560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590760, 0.077185, 0.803147,
		0.475253, 0.771121, -0.423683,
		-0.652025, 0.631993, 0.418865,
		31.853022, 28.604088, 39.752220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682991, 28.698532, 39.691265>,  <32.309441, 28.161694, 39.459015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682991, 28.698532, 39.691265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.346825, 28.744978, 39.903011>,  <32.145126, 28.772846, 40.030060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.346825, 28.744978, 39.903011>,  <32.682991, 28.698532, 39.691265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.346825, 28.744978, 39.903011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541030, 0.236558, 0.807048,
		-0.031514, 0.964654, -0.261628,
		-0.840413, 0.116116, 0.529362,
		32.094700, 28.779812, 40.061821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.709660, 29.261086, 40.106560>,  <32.682991, 28.698532, 39.691265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.709660, 29.261086, 40.106560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433590, 29.088572, 40.338989>,  <32.267948, 28.985064, 40.478447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433590, 29.088572, 40.338989>,  <32.709660, 29.261086, 40.106560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433590, 29.088572, 40.338989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460264, 0.358002, 0.812398,
		-0.558401, 0.828148, -0.048581,
		-0.690178, -0.431284, 0.581075,
		32.226536, 28.959187, 40.513313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529312, 29.773840, 40.569675>,  <32.709660, 29.261086, 40.106560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529312, 29.773840, 40.569675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419922, 29.429768, 40.741863>,  <32.354286, 29.223324, 40.845177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419922, 29.429768, 40.741863>,  <32.529312, 29.773840, 40.569675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419922, 29.429768, 40.741863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280540, 0.356744, 0.891085,
		-0.920060, 0.364452, 0.143754,
		-0.273474, -0.860179, 0.430469,
		32.337879, 29.171713, 40.871002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205479, 29.982742, 41.264801>,  <32.529312, 29.773840, 40.569675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205479, 29.982742, 41.264801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300049, 29.594921, 41.290306>,  <32.356792, 29.362228, 41.305607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300049, 29.594921, 41.290306>,  <32.205479, 29.982742, 41.264801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300049, 29.594921, 41.290306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279150, 0.130632, 0.951320,
		-0.930687, -0.207119, 0.301536,
		0.236426, -0.969555, 0.063760,
		32.370975, 29.304054, 41.309433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.976007, 29.771626, 42.052425>,  <32.205479, 29.982742, 41.264801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.976007, 29.771626, 42.052425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224487, 29.486790, 41.921558>,  <32.373577, 29.315887, 41.843037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224487, 29.486790, 41.921558>,  <31.976007, 29.771626, 42.052425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224487, 29.486790, 41.921558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517560, 0.059321, 0.853588,
		-0.588423, -0.699578, 0.405400,
		0.621200, -0.712090, -0.327168,
		32.410847, 29.273163, 41.823406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882029, 29.247816, 42.475510>,  <31.976007, 29.771626, 42.052425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882029, 29.247816, 42.475510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.236019, 29.154619, 42.314251>,  <32.448414, 29.098701, 42.217495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.236019, 29.154619, 42.314251>,  <31.882029, 29.247816, 42.475510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236019, 29.154619, 42.314251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380389, -0.137590, 0.914535,
		-0.268550, -0.962696, -0.033136,
		0.884978, -0.232994, -0.403148,
		32.501511, 29.084721, 42.193306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.069866, 28.587837, 42.721481>,  <31.882029, 29.247816, 42.475510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.069866, 28.587837, 42.721481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.396076, 28.803535, 42.637447>,  <32.591801, 28.932955, 42.587029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.396076, 28.803535, 42.637447>,  <32.069866, 28.587837, 42.721481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.396076, 28.803535, 42.637447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426629, -0.314904, 0.847834,
		0.391037, -0.781055, -0.486870,
		0.815523, 0.539248, -0.210082,
		32.640732, 28.965309, 42.574421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.647488, 28.046831, 42.602047>,  <32.069866, 28.587837, 42.721481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.647488, 28.046831, 42.602047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816822, 28.402861, 42.669643>,  <32.918423, 28.616478, 42.710201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816822, 28.402861, 42.669643>,  <32.647488, 28.046831, 42.602047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816822, 28.402861, 42.669643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556480, -0.402657, 0.726772,
		0.714924, -0.213630, -0.665767,
		0.423336, 0.890073, 0.168989,
		32.943825, 28.669882, 42.720341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350266, 27.919014, 42.573574>,  <32.647488, 28.046831, 42.602047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350266, 27.919014, 42.573574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303555, 28.277334, 42.745113>,  <33.275528, 28.492327, 42.848038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303555, 28.277334, 42.745113>,  <33.350266, 27.919014, 42.573574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303555, 28.277334, 42.745113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603209, -0.279060, 0.747171,
		0.788988, 0.345934, -0.507767,
		-0.116774, 0.895799, 0.428845,
		33.268524, 28.546074, 42.873768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020832, 28.024172, 42.857170>,  <33.350266, 27.919014, 42.573574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020832, 28.024172, 42.857170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770496, 28.272831, 43.045582>,  <33.620293, 28.422028, 43.158630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770496, 28.272831, 43.045582>,  <34.020832, 28.024172, 42.857170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770496, 28.272831, 43.045582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453801, -0.200946, 0.868150,
		0.634338, 0.757081, -0.156345,
		-0.625843, 0.621650, 0.471032,
		33.582745, 28.459326, 43.186890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440910, 28.464821, 43.283974>,  <34.020832, 28.024172, 42.857170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440910, 28.464821, 43.283974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080711, 28.496740, 43.454967>,  <33.864594, 28.515892, 43.557564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080711, 28.496740, 43.454967>,  <34.440910, 28.464821, 43.283974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080711, 28.496740, 43.454967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431565, 0.043087, 0.901052,
		0.053484, 0.995879, -0.073238,
		-0.900495, 0.079799, 0.427482,
		33.810562, 28.520679, 43.583214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910320, 29.064938, 43.127758>,  <34.440910, 28.464821, 43.283974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910320, 29.064938, 43.127758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222790, 29.310705, 43.172047>,  <35.410271, 29.458166, 43.198620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222790, 29.310705, 43.172047>,  <34.910320, 29.064938, 43.127758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222790, 29.310705, 43.172047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192119, 0.405321, -0.893759,
		-0.594023, 0.676906, 0.434667,
		0.781171, 0.614421, 0.110724,
		35.457142, 29.495031, 43.205265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616051, 29.736311, 43.024872>,  <34.910320, 29.064938, 43.127758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616051, 29.736311, 43.024872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008698, 29.742260, 42.948769>,  <35.244286, 29.745829, 42.903107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008698, 29.742260, 42.948769>,  <34.616051, 29.736311, 43.024872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008698, 29.742260, 42.948769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184416, 0.330451, -0.925631,
		0.049106, 0.943706, 0.327121,
		0.981621, 0.014872, -0.190262,
		35.303185, 29.746721, 42.891689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748680, 30.424183, 42.684334>,  <34.616051, 29.736311, 43.024872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748680, 30.424183, 42.684334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.042446, 30.170696, 42.587139>,  <35.218704, 30.018604, 42.528824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.042446, 30.170696, 42.587139>,  <34.748680, 30.424183, 42.684334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042446, 30.170696, 42.587139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088607, 0.265422, -0.960052,
		0.672896, 0.726603, 0.138776,
		0.734411, -0.633719, -0.242984,
		35.262768, 29.980581, 42.514244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291924, 30.747301, 42.329720>,  <34.748680, 30.424183, 42.684334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291924, 30.747301, 42.329720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356670, 30.370041, 42.213608>,  <35.395519, 30.143684, 42.143940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356670, 30.370041, 42.213608>,  <35.291924, 30.747301, 42.329720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356670, 30.370041, 42.213608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011111, 0.295882, -0.955160,
		0.986750, 0.151383, 0.058372,
		0.161866, -0.943153, -0.290280,
		35.405231, 30.087095, 42.126522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717575, 30.832708, 41.760593>,  <35.291924, 30.747301, 42.329720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717575, 30.832708, 41.760593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577915, 30.460665, 41.715008>,  <35.494118, 30.237438, 41.687656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577915, 30.460665, 41.715008>,  <35.717575, 30.832708, 41.760593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577915, 30.460665, 41.715008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124358, 0.074551, -0.989433,
		0.928779, -0.359632, 0.089638,
		-0.349149, -0.930111, -0.113965,
		35.473171, 30.181631, 41.680817>
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
