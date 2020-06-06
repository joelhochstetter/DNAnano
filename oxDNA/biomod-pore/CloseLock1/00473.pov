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
	<24.876238, 34.978874, 35.119267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.576130, 35.042072, 34.862476>,  <24.396065, 35.079990, 34.708401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.576130, 35.042072, 34.862476>,  <24.876238, 34.978874, 35.119267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.576130, 35.042072, 34.862476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622947, -0.156288, -0.766493,
		-0.221432, -0.974994, 0.018838,
		-0.750270, 0.157991, -0.641977,
		24.351049, 35.089470, 34.669884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.863815, 34.342316, 34.764286>,  <24.876238, 34.978874, 35.119267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.863815, 34.342316, 34.764286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.735874, 34.682529, 34.597301>,  <24.659109, 34.886658, 34.497108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.735874, 34.682529, 34.597301>,  <24.863815, 34.342316, 34.764286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.735874, 34.682529, 34.597301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681858, -0.099289, -0.724715,
		-0.657848, -0.516454, -0.548189,
		-0.319853, 0.850539, -0.417465,
		24.639917, 34.937691, 34.472061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.025694, 34.187546, 34.135731>,  <24.863815, 34.342316, 34.764286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.025694, 34.187546, 34.135731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.996368, 34.586304, 34.147190>,  <24.978773, 34.825558, 34.154064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.996368, 34.586304, 34.147190>,  <25.025694, 34.187546, 34.135731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.996368, 34.586304, 34.147190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703401, 0.072050, -0.707131,
		-0.707001, -0.031694, -0.706501,
		-0.073315, 0.996897, 0.028646,
		24.974375, 34.885372, 34.155785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.757408, 34.733326, 33.576126>,  <25.025694, 34.187546, 34.135731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.757408, 34.733326, 33.576126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.062962, 34.813812, 33.821400>,  <25.246294, 34.862103, 33.968563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.062962, 34.813812, 33.821400>,  <24.757408, 34.733326, 33.576126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.062962, 34.813812, 33.821400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630380, -0.436137, -0.642188,
		0.138215, 0.877096, -0.459999,
		0.763883, 0.201215, 0.613185,
		25.292126, 34.874176, 34.005356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.422176, 35.121246, 33.312119>,  <24.757408, 34.733326, 33.576126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.422176, 35.121246, 33.312119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.579315, 34.918694, 33.619167>,  <25.673599, 34.797161, 33.803398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.579315, 34.918694, 33.619167>,  <25.422176, 35.121246, 33.312119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.579315, 34.918694, 33.619167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830054, -0.164041, -0.533011,
		0.395830, 0.846561, 0.355883,
		0.392848, -0.506384, 0.767624,
		25.697170, 34.766777, 33.849453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.084728, 35.302727, 33.326153>,  <25.422176, 35.121246, 33.312119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.084728, 35.302727, 33.326153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.068550, 34.970364, 33.548130>,  <26.058844, 34.770947, 33.681316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.068550, 34.970364, 33.548130>,  <26.084728, 35.302727, 33.326153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.068550, 34.970364, 33.548130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895216, -0.276818, -0.349227,
		0.443793, 0.482671, 0.755034,
		-0.040445, -0.830903, 0.554945,
		26.056416, 34.721092, 33.714615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.764666, 35.153545, 33.343384>,  <26.084728, 35.302727, 33.326153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.764666, 35.153545, 33.343384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.631479, 34.824112, 33.527058>,  <26.551567, 34.626453, 33.637260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.631479, 34.824112, 33.527058>,  <26.764666, 35.153545, 33.343384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.631479, 34.824112, 33.527058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891370, -0.433748, -0.131610,
		0.307561, 0.365480, 0.878539,
		-0.332964, -0.823582, 0.459182,
		26.531590, 34.577038, 33.664814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.407755, 35.588551, 33.343231>,  <26.764666, 35.153545, 33.343384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.407755, 35.588551, 33.343231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.662720, 35.656738, 33.042660>,  <27.815699, 35.697651, 32.862316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.662720, 35.656738, 33.042660>,  <27.407755, 35.588551, 33.343231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.662720, 35.656738, 33.042660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357346, 0.929403, -0.092276,
		0.682650, 0.327338, 0.653329,
		0.637411, 0.170473, -0.751430,
		27.853943, 35.707878, 32.817230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.819815, 36.163036, 33.546833>,  <27.407755, 35.588551, 33.343231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.819815, 36.163036, 33.546833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.853521, 36.144135, 33.148705>,  <27.873745, 36.132793, 32.909828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.853521, 36.144135, 33.148705>,  <27.819815, 36.163036, 33.546833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.853521, 36.144135, 33.148705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199076, 0.977939, -0.063282,
		0.976355, 0.203477, 0.072999,
		0.084265, -0.047253, -0.995322,
		27.878801, 36.129959, 32.850109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.115736, 36.846035, 33.289028>,  <27.819815, 36.163036, 33.546833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.115736, 36.846035, 33.289028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.933119, 36.698349, 32.965240>,  <27.823549, 36.609737, 32.770966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.933119, 36.698349, 32.965240>,  <28.115736, 36.846035, 33.289028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.933119, 36.698349, 32.965240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167879, 0.929231, -0.329160,
		0.873718, -0.014383, -0.486219,
		-0.456545, -0.369219, -0.809472,
		27.796156, 36.587582, 32.722397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.327600, 37.335400, 32.704540>,  <28.115736, 36.846035, 33.289028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.327600, 37.335400, 32.704540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.011072, 37.140720, 32.556519>,  <27.821156, 37.023914, 32.467705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.011072, 37.140720, 32.556519>,  <28.327600, 37.335400, 32.704540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.011072, 37.140720, 32.556519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252790, 0.811544, -0.526776,
		0.556697, -0.323301, -0.765222,
		-0.791319, -0.486695, -0.370057,
		27.773676, 36.994713, 32.445503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.264555, 37.569344, 32.031597>,  <28.327600, 37.335400, 32.704540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.264555, 37.569344, 32.031597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.903690, 37.405266, 32.085033>,  <27.687172, 37.306820, 32.117096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.903690, 37.405266, 32.085033>,  <28.264555, 37.569344, 32.031597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.903690, 37.405266, 32.085033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425380, 0.794304, -0.433743,
		0.071803, -0.448135, -0.891078,
		-0.902162, -0.410191, 0.133594,
		27.633041, 37.282207, 32.125111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.963654, 37.623413, 31.417845>,  <28.264555, 37.569344, 32.031597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.963654, 37.623413, 31.417845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.671911, 37.589798, 31.689425>,  <27.496866, 37.569630, 31.852373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.671911, 37.589798, 31.689425>,  <27.963654, 37.623413, 31.417845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.671911, 37.589798, 31.689425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452545, 0.803545, -0.386677,
		-0.513070, -0.589282, -0.624104,
		-0.729358, -0.084042, 0.678951,
		27.453104, 37.564587, 31.893110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.444069, 37.604042, 31.023117>,  <27.963654, 37.623413, 31.417845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.444069, 37.604042, 31.023117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.318022, 37.718212, 31.385162>,  <27.242393, 37.786713, 31.602390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.318022, 37.718212, 31.385162>,  <27.444069, 37.604042, 31.023117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.318022, 37.718212, 31.385162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510207, 0.753218, -0.415153,
		-0.800243, -0.592619, -0.091729,
		-0.315119, 0.285422, 0.905115,
		27.223486, 37.803841, 31.656696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.762712, 37.901127, 30.872719>,  <27.444069, 37.604042, 31.023117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.762712, 37.901127, 30.872719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.873127, 38.064308, 31.220829>,  <26.939375, 38.162216, 31.429695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.873127, 38.064308, 31.220829>,  <26.762712, 37.901127, 30.872719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.873127, 38.064308, 31.220829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498709, 0.834823, -0.233150,
		-0.821641, -0.369658, 0.433889,
		0.276035, 0.407950, 0.870277,
		26.955938, 38.186691, 31.481913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.220514, 38.084431, 31.194704>,  <26.762712, 37.901127, 30.872719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.220514, 38.084431, 31.194704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.490280, 38.306793, 31.389078>,  <26.652140, 38.440208, 31.505703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.490280, 38.306793, 31.389078>,  <26.220514, 38.084431, 31.194704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.490280, 38.306793, 31.389078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535939, 0.821262, -0.195697,
		-0.507870, -0.128450, 0.851803,
		0.674417, 0.555903, 0.485936,
		26.692606, 38.473564, 31.534859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.839926, 38.600220, 31.701328>,  <26.220514, 38.084431, 31.194704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.839926, 38.600220, 31.701328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.198723, 38.753281, 31.612801>,  <26.414001, 38.845116, 31.559683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.198723, 38.753281, 31.612801>,  <25.839926, 38.600220, 31.701328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.198723, 38.753281, 31.612801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413042, 0.903890, -0.111263,
		0.157475, 0.191217, 0.968834,
		0.896994, 0.382648, -0.221321,
		26.467821, 38.868076, 31.546404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.741800, 39.329937, 31.930054>,  <25.839926, 38.600220, 31.701328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.741800, 39.329937, 31.930054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.098074, 39.363029, 31.751242>,  <26.311838, 39.382885, 31.643955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.098074, 39.363029, 31.751242>,  <25.741800, 39.329937, 31.930054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.098074, 39.363029, 31.751242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149669, 0.981849, -0.116500,
		0.429278, 0.170671, 0.886900,
		0.890685, 0.082730, -0.447031,
		26.365280, 39.387848, 31.617132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.220322, 39.837742, 32.338905>,  <25.741800, 39.329937, 31.930054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.220322, 39.837742, 32.338905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.302557, 39.811954, 31.948299>,  <26.351898, 39.796482, 31.713936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.302557, 39.811954, 31.948299>,  <26.220322, 39.837742, 32.338905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.302557, 39.811954, 31.948299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314111, 0.940686, -0.128235,
		0.926859, 0.333097, 0.173145,
		0.205590, -0.064469, -0.976512,
		26.364233, 39.792614, 31.655346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.594315, 40.501404, 32.144878>,  <26.220322, 39.837742, 32.338905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.594315, 40.501404, 32.144878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.443081, 40.361694, 31.801935>,  <26.352341, 40.277870, 31.596170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.443081, 40.361694, 31.801935>,  <26.594315, 40.501404, 32.144878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.443081, 40.361694, 31.801935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101415, 0.936153, -0.336650,
		0.920199, -0.040335, -0.389369,
		-0.378087, -0.349272, -0.857356,
		26.329655, 40.256912, 31.544727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.771896, 40.992477, 31.701309>,  <26.594315, 40.501404, 32.144878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.771896, 40.992477, 31.701309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.517288, 40.771214, 31.486328>,  <26.364523, 40.638454, 31.357340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.517288, 40.771214, 31.486328>,  <26.771896, 40.992477, 31.701309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.517288, 40.771214, 31.486328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364636, 0.829887, -0.422288,
		0.679619, -0.072820, -0.729942,
		-0.636521, -0.553158, -0.537454,
		26.326332, 40.605267, 31.325092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.708048, 41.282722, 31.104248>,  <26.771896, 40.992477, 31.701309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.708048, 41.282722, 31.104248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.373251, 41.064590, 31.086071>,  <26.172373, 40.933712, 31.075165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.373251, 41.064590, 31.086071>,  <26.708048, 41.282722, 31.104248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.373251, 41.064590, 31.086071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467918, 0.756282, -0.457263,
		0.283724, -0.361463, -0.888170,
		-0.836991, -0.545327, -0.045440,
		26.122154, 40.900993, 31.072439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.520296, 41.187912, 30.359091>,  <26.708048, 41.282722, 31.104248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.520296, 41.187912, 30.359091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.196262, 41.150135, 30.590553>,  <26.001842, 41.127468, 30.729431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.196262, 41.150135, 30.590553>,  <26.520296, 41.187912, 30.359091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.196262, 41.150135, 30.590553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380607, 0.835432, -0.396474,
		-0.445982, -0.541418, -0.712718,
		-0.810085, -0.094445, 0.578655,
		25.953238, 41.121803, 30.764151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.908068, 41.384060, 29.936449>,  <26.520296, 41.187912, 30.359091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.908068, 41.384060, 29.936449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.774376, 41.402782, 30.312981>,  <25.694160, 41.414017, 30.538900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.774376, 41.402782, 30.312981>,  <25.908068, 41.384060, 29.936449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.774376, 41.402782, 30.312981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431330, 0.880440, -0.196926,
		-0.838001, -0.471842, -0.274079,
		-0.334228, 0.046806, 0.941329,
		25.674107, 41.416824, 30.595379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.237059, 41.390724, 29.837923>,  <25.908068, 41.384060, 29.936449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.237059, 41.390724, 29.837923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.342833, 41.565586, 30.181776>,  <25.406298, 41.670502, 30.388088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.342833, 41.565586, 30.181776>,  <25.237059, 41.390724, 29.837923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.342833, 41.565586, 30.181776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349291, 0.874259, -0.337146,
		-0.898927, -0.211109, 0.383878,
		0.264435, 0.437155, 0.859634,
		25.422163, 41.696732, 30.439667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.750481, 41.791134, 30.135540>,  <25.237059, 41.390724, 29.837923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.750481, 41.791134, 30.135540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.081011, 41.982357, 30.254631>,  <25.279329, 42.097092, 30.326086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.081011, 41.982357, 30.254631>,  <24.750481, 41.791134, 30.135540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.081011, 41.982357, 30.254631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375684, 0.861735, -0.340989,
		-0.419577, 0.169916, 0.891675,
		0.826327, 0.478059, 0.297730,
		25.328909, 42.125774, 30.343950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.444174, 42.263924, 30.546349>,  <24.750481, 41.791134, 30.135540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.444174, 42.263924, 30.546349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.790466, 42.392597, 30.392969>,  <24.998241, 42.469799, 30.300941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.790466, 42.392597, 30.392969>,  <24.444174, 42.263924, 30.546349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.790466, 42.392597, 30.392969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436730, 0.859744, -0.264776,
		0.244493, 0.396688, 0.884795,
		0.865731, 0.321681, -0.383447,
		25.050186, 42.489101, 30.277935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.694584, 42.817223, 30.796618>,  <24.444174, 42.263924, 30.546349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.694584, 42.817223, 30.796618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.795994, 42.805614, 30.409861>,  <24.856840, 42.798649, 30.177807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.795994, 42.805614, 30.409861>,  <24.694584, 42.817223, 30.796618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.795994, 42.805614, 30.409861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536218, 0.827707, -0.165439,
		0.805106, 0.560409, 0.194284,
		0.253524, -0.029017, -0.966894,
		24.872051, 42.796909, 30.119793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.914761, 43.460426, 31.127155>,  <24.694584, 42.817223, 30.796618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.914761, 43.460426, 31.127155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.807043, 43.319672, 30.768568>,  <24.742413, 43.235218, 30.553415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.807043, 43.319672, 30.768568>,  <24.914761, 43.460426, 31.127155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.807043, 43.319672, 30.768568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847372, 0.355771, -0.394193,
		0.457648, -0.865797, 0.202370,
		-0.269293, -0.351884, -0.896470,
		24.726255, 43.214108, 30.499626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.420004, 43.247620, 30.776087>,  <24.914761, 43.460426, 31.127155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.420004, 43.247620, 30.776087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.261267, 43.375614, 30.431965>,  <25.166025, 43.452412, 30.225492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.261267, 43.375614, 30.431965>,  <25.420004, 43.247620, 30.776087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.261267, 43.375614, 30.431965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748513, 0.655301, -0.101537,
		0.531268, -0.684244, -0.499565,
		-0.396841, 0.319987, -0.860305,
		25.142214, 43.471611, 30.173874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.986748, 43.273689, 30.318710>,  <25.420004, 43.247620, 30.776087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.986748, 43.273689, 30.318710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.712025, 43.522114, 30.167675>,  <25.547192, 43.671169, 30.077055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.712025, 43.522114, 30.167675>,  <25.986748, 43.273689, 30.318710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.712025, 43.522114, 30.167675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725430, 0.618045, -0.302937,
		0.045222, -0.481973, -0.875018,
		-0.686808, 0.621065, -0.377587,
		25.505981, 43.708435, 30.054399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.144432, 43.252285, 29.588116>,  <25.986748, 43.273689, 30.318710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.144432, 43.252285, 29.588116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.011845, 43.584263, 29.767591>,  <25.932293, 43.783447, 29.875277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.011845, 43.584263, 29.767591>,  <26.144432, 43.252285, 29.588116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.011845, 43.584263, 29.767591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875266, 0.448036, -0.182134,
		-0.352190, 0.332353, -0.874930,
		-0.331468, 0.829943, 0.448692,
		25.912405, 43.833244, 29.902199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.625500, 43.847969, 29.252050>,  <26.144432, 43.252285, 29.588116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.625500, 43.847969, 29.252050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.510717, 44.044750, 29.580839>,  <26.441849, 44.162819, 29.778112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.510717, 44.044750, 29.580839>,  <26.625500, 43.847969, 29.252050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.510717, 44.044750, 29.580839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926136, 0.361751, 0.106809,
		-0.244804, 0.791908, -0.559421,
		-0.286954, 0.491953, 0.821973,
		26.424631, 44.192337, 29.827431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.205477, 44.008556, 29.072491>,  <26.625500, 43.847969, 29.252050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.205477, 44.008556, 29.072491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.474401, 44.201057, 29.297485>,  <27.635757, 44.316559, 29.432482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.474401, 44.201057, 29.297485>,  <27.205477, 44.008556, 29.072491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.474401, 44.201057, 29.297485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286173, -0.869736, 0.402075,
		0.682714, -0.109352, -0.722456,
		0.672314, 0.481250, 0.562487,
		27.676096, 44.345432, 29.466232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.871672, 43.866341, 28.893423>,  <27.205477, 44.008556, 29.072491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.871672, 43.866341, 28.893423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.855762, 43.947803, 29.284718>,  <27.846218, 43.996681, 29.519493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.855762, 43.947803, 29.284718>,  <27.871672, 43.866341, 28.893423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.855762, 43.947803, 29.284718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297739, -0.932121, 0.206162,
		0.953819, 0.299458, -0.023565,
		-0.039772, 0.203657, 0.978234,
		27.843832, 44.008900, 29.578188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.535971, 43.747749, 29.277262>,  <27.871672, 43.866341, 28.893423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.535971, 43.747749, 29.277262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.254192, 43.708202, 29.558397>,  <28.085125, 43.684475, 29.727077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.254192, 43.708202, 29.558397>,  <28.535971, 43.747749, 29.277262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.254192, 43.708202, 29.558397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521481, -0.743839, 0.418044,
		0.481468, 0.661006, 0.575551,
		-0.704447, -0.098864, 0.702837,
		28.042858, 43.678543, 29.769249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.822170, 43.837955, 30.005056>,  <28.535971, 43.747749, 29.277262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.822170, 43.837955, 30.005056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.499798, 43.604988, 30.047508>,  <28.306374, 43.465206, 30.072979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.499798, 43.604988, 30.047508>,  <28.822170, 43.837955, 30.005056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.499798, 43.604988, 30.047508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519057, -0.608955, 0.599795,
		-0.284703, 0.538481, 0.793084,
		-0.805930, -0.582419, 0.106131,
		28.258018, 43.430264, 30.079348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.764782, 43.663380, 30.771839>,  <28.822170, 43.837955, 30.005056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.764782, 43.663380, 30.771839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.556074, 43.392765, 30.563974>,  <28.430849, 43.230396, 30.439255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.556074, 43.392765, 30.563974>,  <28.764782, 43.663380, 30.771839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.556074, 43.392765, 30.563974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337316, -0.723129, 0.602745,
		-0.783564, 0.139205, 0.605516,
		-0.521772, -0.676540, -0.519662,
		28.399542, 43.189804, 30.408075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.612841, 43.133423, 31.325060>,  <28.764782, 43.663380, 30.771839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.612841, 43.133423, 31.325060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.526199, 42.964043, 30.973202>,  <28.474215, 42.862415, 30.762087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.526199, 42.964043, 30.973202>,  <28.612841, 43.133423, 31.325060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.526199, 42.964043, 30.973202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092525, -0.905883, 0.413297,
		-0.971865, 0.008132, 0.235397,
		-0.216603, -0.423449, -0.879644,
		28.461218, 42.837009, 30.709309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.338451, 42.623257, 31.606565>,  <28.612841, 43.133423, 31.325060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.338451, 42.623257, 31.606565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.444067, 42.523739, 31.233816>,  <28.507437, 42.464027, 31.010166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.444067, 42.523739, 31.233816>,  <28.338451, 42.623257, 31.606565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.444067, 42.523739, 31.233816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191448, -0.933416, 0.303450,
		-0.945321, -0.258528, -0.198826,
		0.264038, -0.248792, -0.931873,
		28.523279, 42.449100, 30.954254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.157993, 41.915981, 31.562704>,  <28.338451, 42.623257, 31.606565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.157993, 41.915981, 31.562704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.379662, 41.963875, 31.233206>,  <28.512663, 41.992611, 31.035507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.379662, 41.963875, 31.233206>,  <28.157993, 41.915981, 31.562704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.379662, 41.963875, 31.233206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154194, -0.987240, -0.039768,
		-0.817997, -0.104978, -0.565563,
		0.554171, 0.119736, -0.823746,
		28.545914, 41.999794, 30.986082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.896450, 41.481327, 31.123554>,  <28.157993, 41.915981, 31.562704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.896450, 41.481327, 31.123554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.263163, 41.558846, 30.983864>,  <28.483191, 41.605354, 30.900049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.263163, 41.558846, 30.983864>,  <27.896450, 41.481327, 31.123554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.263163, 41.558846, 30.983864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166869, -0.980274, -0.105910,
		-0.362863, 0.038821, -0.931034,
		0.916780, 0.193792, -0.349227,
		28.538197, 41.616982, 30.879095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.057144, 41.033451, 30.564484>,  <27.896450, 41.481327, 31.123554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.057144, 41.033451, 30.564484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.413399, 41.143459, 30.709332>,  <28.627151, 41.209465, 30.796240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.413399, 41.143459, 30.709332>,  <28.057144, 41.033451, 30.564484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.413399, 41.143459, 30.709332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268916, -0.960743, 0.068250,
		0.366672, 0.036593, -0.929630,
		0.890638, 0.275017, 0.362118,
		28.680590, 41.225964, 30.817966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.598696, 40.491043, 30.262089>,  <28.057144, 41.033451, 30.564484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.598696, 40.491043, 30.262089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.788698, 40.650284, 30.576002>,  <28.902699, 40.745831, 30.764351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.788698, 40.650284, 30.576002>,  <28.598696, 40.491043, 30.262089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.788698, 40.650284, 30.576002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481992, -0.863845, 0.146476,
		0.736243, 0.308683, -0.602213,
		0.475005, 0.398104, 0.784783,
		28.931200, 40.769714, 30.811438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.256777, 40.112247, 30.391134>,  <28.598696, 40.491043, 30.262089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.256777, 40.112247, 30.391134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.194414, 40.297546, 30.740097>,  <29.156996, 40.408726, 30.949474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.194414, 40.297546, 30.740097>,  <29.256777, 40.112247, 30.391134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.194414, 40.297546, 30.740097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369126, -0.791895, 0.486466,
		0.916209, 0.397871, -0.047537,
		-0.155906, 0.463251, 0.872406,
		29.147642, 40.436523, 31.001820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.913698, 40.194057, 30.759275>,  <29.256777, 40.112247, 30.391134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.913698, 40.194057, 30.759275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.650434, 40.231117, 31.058138>,  <29.492476, 40.253353, 31.237455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.650434, 40.231117, 31.058138>,  <29.913698, 40.194057, 30.759275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.650434, 40.231117, 31.058138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317938, -0.865363, 0.387380,
		0.682453, 0.492507, 0.540089,
		-0.658160, 0.092654, 0.747155,
		29.452986, 40.258915, 31.282284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.314837, 40.068180, 31.432919>,  <29.913698, 40.194057, 30.759275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.314837, 40.068180, 31.432919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.929464, 40.013474, 31.525091>,  <29.698240, 39.980648, 31.580395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.929464, 40.013474, 31.525091>,  <30.314837, 40.068180, 31.432919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.929464, 40.013474, 31.525091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238906, -0.827861, 0.507513,
		0.121353, 0.544005, 0.830260,
		-0.963430, -0.136765, 0.230430,
		29.640436, 39.972443, 31.594219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.297426, 40.126293, 32.117481>,  <30.314837, 40.068180, 31.432919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.297426, 40.126293, 32.117481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.983686, 39.915497, 31.986591>,  <29.795443, 39.789021, 31.908056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.983686, 39.915497, 31.986591>,  <30.297426, 40.126293, 32.117481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.983686, 39.915497, 31.986591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461578, -0.848240, 0.259684,
		-0.414418, 0.052642, 0.908563,
		-0.784349, -0.526990, -0.327227,
		29.748383, 39.757401, 31.888424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.308456, 39.622143, 32.580688>,  <30.297426, 40.126293, 32.117481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.308456, 39.622143, 32.580688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072924, 39.476509, 32.292046>,  <29.931604, 39.389130, 32.118858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072924, 39.476509, 32.292046>,  <30.308456, 39.622143, 32.580688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.072924, 39.476509, 32.292046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391698, -0.909495, 0.139256,
		-0.707001, -0.200655, 0.678149,
		-0.588831, -0.364084, -0.721610,
		29.896275, 39.367283, 32.075562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.044249, 38.825356, 32.783924>,  <30.308456, 39.622143, 32.580688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.044249, 38.825356, 32.783924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.964594, 38.837242, 32.392117>,  <29.916801, 38.844372, 32.157032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.964594, 38.837242, 32.392117>,  <30.044249, 38.825356, 32.783924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.964594, 38.837242, 32.392117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481961, -0.867332, -0.124294,
		-0.853263, -0.496843, 0.158396,
		-0.199136, 0.029715, -0.979521,
		29.904854, 38.846157, 32.098259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.739662, 38.195629, 32.688919>,  <30.044249, 38.825356, 32.783924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.739662, 38.195629, 32.688919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.867128, 38.308834, 32.327068>,  <29.943609, 38.376759, 32.109959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.867128, 38.308834, 32.327068>,  <29.739662, 38.195629, 32.688919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.867128, 38.308834, 32.327068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439084, -0.889886, -0.123728,
		-0.840034, -0.357780, -0.407844,
		0.318667, 0.283013, -0.904630,
		29.962729, 38.393738, 32.055679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.694778, 37.610252, 32.392174>,  <29.739662, 38.195629, 32.688919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.694778, 37.610252, 32.392174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.914989, 37.841782, 32.151546>,  <30.047115, 37.980698, 32.007172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.914989, 37.841782, 32.151546>,  <29.694778, 37.610252, 32.392174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.914989, 37.841782, 32.151546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498279, -0.805993, -0.319520,
		-0.669805, -0.123844, -0.732137,
		0.550527, 0.578824, -0.601567,
		30.080147, 38.015430, 31.971077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.775238, 37.211887, 31.749092>,  <29.694778, 37.610252, 32.392174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.775238, 37.211887, 31.749092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.086227, 37.462898, 31.765785>,  <30.272821, 37.613506, 31.775801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.086227, 37.462898, 31.765785>,  <29.775238, 37.211887, 31.749092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.086227, 37.462898, 31.765785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604754, -0.727738, -0.323527,
		-0.172651, 0.276773, -0.945298,
		0.777473, 0.627530, 0.041735,
		30.319469, 37.651157, 31.778305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.171387, 37.137024, 31.065508>,  <29.775238, 37.211887, 31.749092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.171387, 37.137024, 31.065508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.408823, 37.282032, 31.352903>,  <30.551285, 37.369038, 31.525341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.408823, 37.282032, 31.352903>,  <30.171387, 37.137024, 31.065508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.408823, 37.282032, 31.352903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714201, -0.648769, -0.262707,
		0.370897, 0.669086, -0.644018,
		0.593593, 0.362521, 0.718489,
		30.586901, 37.390789, 31.568451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.861336, 37.337982, 30.807167>,  <30.171387, 37.137024, 31.065508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.861336, 37.337982, 30.807167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.925552, 37.290001, 31.199053>,  <30.964083, 37.261211, 31.434183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.925552, 37.290001, 31.199053>,  <30.861336, 37.337982, 30.807167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.925552, 37.290001, 31.199053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854987, -0.479053, -0.198758,
		0.493176, 0.869551, 0.025649,
		0.160543, -0.119953, 0.979713,
		30.973715, 37.254017, 31.492968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.577448, 37.256641, 30.893255>,  <30.861336, 37.337982, 30.807167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.577448, 37.256641, 30.893255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446194, 37.147854, 31.255108>,  <31.367441, 37.082581, 31.472219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446194, 37.147854, 31.255108>,  <31.577448, 37.256641, 30.893255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.446194, 37.147854, 31.255108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779730, -0.618579, 0.096857,
		0.533244, 0.737151, 0.415042,
		-0.328135, -0.271972, 0.904632,
		31.347754, 37.066261, 31.526497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006306, 37.376892, 31.347668>,  <31.577448, 37.256641, 30.893255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.006306, 37.376892, 31.347668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810032, 37.092617, 31.549322>,  <31.692268, 36.922050, 31.670315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810032, 37.092617, 31.549322>,  <32.006306, 37.376892, 31.347668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810032, 37.092617, 31.549322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868253, -0.447453, 0.214297,
		0.073279, 0.542869, 0.836614,
		-0.490681, -0.710689, 0.504137,
		31.662828, 36.879410, 31.700563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373795, 37.283363, 32.029106>,  <32.006306, 37.376892, 31.347668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373795, 37.283363, 32.029106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208805, 36.946953, 31.889082>,  <32.109814, 36.745106, 31.805067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208805, 36.946953, 31.889082>,  <32.373795, 37.283363, 32.029106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208805, 36.946953, 31.889082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906266, -0.417838, -0.063981,
		-0.092460, -0.343641, 0.934539,
		-0.412472, -0.841025, -0.350063,
		32.085064, 36.694645, 31.784063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335289, 36.593689, 32.435532>,  <32.373795, 37.283363, 32.029106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335289, 36.593689, 32.435532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357994, 36.531754, 32.041008>,  <32.371616, 36.494591, 31.804295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357994, 36.531754, 32.041008>,  <32.335289, 36.593689, 32.435532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.357994, 36.531754, 32.041008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963168, -0.251590, 0.094926,
		-0.262843, -0.955368, 0.134857,
		0.056761, -0.154840, -0.986308,
		32.375023, 36.485302, 31.745115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765209, 36.015648, 32.359707>,  <32.335289, 36.593689, 32.435532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.765209, 36.015648, 32.359707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788132, 36.251980, 32.037804>,  <32.801884, 36.393780, 31.844662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788132, 36.251980, 32.037804>,  <32.765209, 36.015648, 32.359707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.788132, 36.251980, 32.037804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984588, -0.166861, -0.052391,
		-0.165237, -0.789356, -0.591281,
		0.057306, 0.590825, -0.804762,
		32.805325, 36.429226, 31.796375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404762, 35.841717, 32.026981>,  <32.765209, 36.015648, 32.359707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404762, 35.841717, 32.026981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309742, 36.197456, 31.870708>,  <33.252731, 36.410900, 31.776945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309742, 36.197456, 31.870708>,  <33.404762, 35.841717, 32.026981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309742, 36.197456, 31.870708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970763, 0.203084, -0.127967,
		-0.034466, -0.409657, -0.911588,
		-0.237551, 0.889347, -0.390681,
		33.238476, 36.464260, 31.753504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673500, 36.054558, 31.234850>,  <33.404762, 35.841717, 32.026981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673500, 36.054558, 31.234850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622219, 36.376492, 31.466644>,  <33.591450, 36.569653, 31.605721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622219, 36.376492, 31.466644>,  <33.673500, 36.054558, 31.234850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622219, 36.376492, 31.466644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934258, 0.294058, -0.201721,
		-0.332755, 0.515528, -0.789624,
		-0.128202, 0.804836, 0.579485,
		33.583759, 36.617943, 31.640490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790779, 36.758797, 30.863703>,  <33.673500, 36.054558, 31.234850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790779, 36.758797, 30.863703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887302, 36.709320, 31.248716>,  <33.945217, 36.679634, 31.479725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887302, 36.709320, 31.248716>,  <33.790779, 36.758797, 30.863703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887302, 36.709320, 31.248716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928410, 0.318187, -0.191864,
		-0.282534, 0.939924, 0.191616,
		0.241308, -0.123690, 0.962534,
		33.959694, 36.672215, 31.537476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034405, 37.465157, 31.257710>,  <33.790779, 36.758797, 30.863703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034405, 37.465157, 31.257710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180336, 37.134190, 31.428484>,  <34.267895, 36.935608, 31.530949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180336, 37.134190, 31.428484>,  <34.034405, 37.465157, 31.257710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180336, 37.134190, 31.428484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884883, 0.450764, 0.117443,
		-0.289623, 0.334944, 0.896622,
		0.364829, -0.827420, 0.426938,
		34.289783, 36.885963, 31.556564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292797, 37.608109, 31.983204>,  <34.034405, 37.465157, 31.257710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292797, 37.608109, 31.983204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491261, 37.286396, 31.852383>,  <34.610336, 37.093369, 31.773890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491261, 37.286396, 31.852383>,  <34.292797, 37.608109, 31.983204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491261, 37.286396, 31.852383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865557, 0.428631, 0.259010,
		-0.068132, -0.411593, 0.908817,
		0.496154, -0.804280, -0.327054,
		34.640106, 37.045113, 31.754267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612610, 37.262638, 32.554874>,  <34.292797, 37.608109, 31.983204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612610, 37.262638, 32.554874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.841278, 37.178097, 32.237759>,  <34.978481, 37.127373, 32.047489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.841278, 37.178097, 32.237759>,  <34.612610, 37.262638, 32.554874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841278, 37.178097, 32.237759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799956, 0.358350, 0.481306,
		0.182368, -0.909348, 0.373936,
		0.571674, -0.211358, -0.792790,
		35.012779, 37.114689, 31.999922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108101, 36.911293, 32.830677>,  <34.612610, 37.262638, 32.554874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108101, 36.911293, 32.830677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.251137, 37.032097, 32.477200>,  <35.336960, 37.104580, 32.265114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.251137, 37.032097, 32.477200>,  <35.108101, 36.911293, 32.830677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251137, 37.032097, 32.477200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768590, 0.442330, 0.462184,
		0.530470, -0.844472, -0.073951,
		0.357590, 0.302013, -0.883695,
		35.358414, 37.122700, 32.212090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817043, 36.685230, 32.890259>,  <35.108101, 36.911293, 32.830677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817043, 36.685230, 32.890259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784489, 36.968376, 32.609600>,  <35.764954, 37.138264, 32.441204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784489, 36.968376, 32.609600>,  <35.817043, 36.685230, 32.890259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784489, 36.968376, 32.609600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649464, 0.571667, 0.501392,
		0.756024, -0.414886, -0.506258,
		-0.081390, 0.707860, -0.701648,
		35.760071, 37.180733, 32.399105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314991, 36.503464, 32.332542>,  <35.817043, 36.685230, 32.890259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314991, 36.503464, 32.332542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298660, 36.897038, 32.263023>,  <36.288860, 37.133183, 32.221313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298660, 36.897038, 32.263023>,  <36.314991, 36.503464, 32.332542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298660, 36.897038, 32.263023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697051, 0.152667, 0.700580,
		0.715858, -0.092542, -0.692086,
		-0.040826, 0.983935, -0.173794,
		36.286411, 37.192219, 32.210884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001736, 36.796734, 32.467850>,  <36.314991, 36.503464, 32.332542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001736, 36.796734, 32.467850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.761436, 37.112926, 32.515575>,  <36.617256, 37.302643, 32.544212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.761436, 37.112926, 32.515575>,  <37.001736, 36.796734, 32.467850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761436, 37.112926, 32.515575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452959, 0.213588, 0.865568,
		0.658731, 0.574036, -0.486370,
		-0.600750, 0.790483, 0.119318,
		36.581211, 37.350071, 32.551373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461636, 37.218185, 32.782360>,  <37.001736, 36.796734, 32.467850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461636, 37.218185, 32.782360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.097466, 37.353725, 32.877281>,  <36.878963, 37.435051, 32.934235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.097466, 37.353725, 32.877281>,  <37.461636, 37.218185, 32.782360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097466, 37.353725, 32.877281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310921, 0.182101, 0.932827,
		0.272875, 0.923049, -0.271144,
		-0.910421, 0.338850, 0.237305,
		36.824341, 37.455379, 32.948471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494755, 37.916767, 32.998005>,  <37.461636, 37.218185, 32.782360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494755, 37.916767, 32.998005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.159508, 37.769024, 33.158573>,  <36.958359, 37.680378, 33.254913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.159508, 37.769024, 33.158573>,  <37.494755, 37.916767, 32.998005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159508, 37.769024, 33.158573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244601, 0.403287, 0.881777,
		-0.487579, 0.837218, -0.247655,
		-0.838115, -0.369359, 0.401418,
		36.908073, 37.658215, 33.278999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281490, 38.444958, 33.516808>,  <37.494755, 37.916767, 32.998005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.281490, 38.444958, 33.516808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080769, 38.113216, 33.615086>,  <36.960335, 37.914169, 33.674053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080769, 38.113216, 33.615086>,  <37.281490, 38.444958, 33.516808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080769, 38.113216, 33.615086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099573, 0.226767, 0.968846,
		-0.859233, 0.510632, -0.031210,
		-0.501801, -0.829356, 0.245691,
		36.930229, 37.864410, 33.688793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812607, 38.599091, 34.059307>,  <37.281490, 38.444958, 33.516808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812607, 38.599091, 34.059307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.874962, 38.207272, 34.110210>,  <36.912376, 37.972179, 34.140751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.874962, 38.207272, 34.110210>,  <36.812607, 38.599091, 34.059307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874962, 38.207272, 34.110210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038718, 0.134793, 0.990117,
		-0.987015, -0.149421, 0.058939,
		0.155889, -0.979543, 0.127257,
		36.921730, 37.913410, 34.148388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507469, 38.537868, 34.580894>,  <36.812607, 38.599091, 34.059307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507469, 38.537868, 34.580894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.723999, 38.201641, 34.588913>,  <36.853916, 37.999905, 34.593723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.723999, 38.201641, 34.588913>,  <36.507469, 38.537868, 34.580894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723999, 38.201641, 34.588913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065987, 0.066236, 0.995620,
		-0.838218, -0.537634, 0.091322,
		0.541328, -0.840573, 0.020044,
		36.886398, 37.949471, 34.594925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205273, 38.047623, 35.100117>,  <36.507469, 38.537868, 34.580894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205273, 38.047623, 35.100117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.571781, 37.901951, 35.033394>,  <36.791687, 37.814548, 34.993359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.571781, 37.901951, 35.033394>,  <36.205273, 38.047623, 35.100117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571781, 37.901951, 35.033394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130416, -0.122521, 0.983860,
		-0.378741, -0.923234, -0.064767,
		0.916268, -0.364181, -0.166808,
		36.846661, 37.792698, 34.983353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283726, 37.391983, 35.497364>,  <36.205273, 38.047623, 35.100117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283726, 37.391983, 35.497364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665417, 37.497070, 35.440178>,  <36.894432, 37.560123, 35.405869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665417, 37.497070, 35.440178>,  <36.283726, 37.391983, 35.497364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665417, 37.497070, 35.440178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195666, -0.186802, 0.962715,
		0.226216, -0.946618, -0.229656,
		0.954223, 0.262717, -0.142963,
		36.951683, 37.575886, 35.397289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608551, 36.828358, 35.757961>,  <36.283726, 37.391983, 35.497364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608551, 36.828358, 35.757961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.806644, 37.174641, 35.787067>,  <36.925499, 37.382412, 35.804531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.806644, 37.174641, 35.787067>,  <36.608551, 36.828358, 35.757961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806644, 37.174641, 35.787067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210268, -0.200709, 0.956819,
		0.842932, -0.458545, -0.281428,
		0.495230, 0.865709, 0.072767,
		36.955212, 37.434353, 35.808899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124516, 36.769756, 36.261497>,  <36.608551, 36.828358, 35.757961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124516, 36.769756, 36.261497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.147633, 37.169003, 36.253342>,  <37.161503, 37.408550, 36.248447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.147633, 37.169003, 36.253342>,  <37.124516, 36.769756, 36.261497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147633, 37.169003, 36.253342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144600, 0.011837, 0.989419,
		0.987801, -0.060131, -0.143644,
		0.057795, 0.998120, -0.020388,
		37.164970, 37.468437, 36.247227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688412, 36.972664, 36.705303>,  <37.124516, 36.769756, 36.261497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688412, 36.972664, 36.705303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482582, 37.314934, 36.683266>,  <37.359085, 37.520294, 36.670044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482582, 37.314934, 36.683266>,  <37.688412, 36.972664, 36.705303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482582, 37.314934, 36.683266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258671, 0.216172, 0.941466,
		0.817495, 0.470208, -0.332575,
		-0.514579, 0.855671, -0.055090,
		37.328209, 37.571636, 36.666740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006264, 37.313183, 37.175739>,  <37.688412, 36.972664, 36.705303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006264, 37.313183, 37.175739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679462, 37.535240, 37.113361>,  <37.483379, 37.668476, 37.075935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679462, 37.535240, 37.113361>,  <38.006264, 37.313183, 37.175739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679462, 37.535240, 37.113361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051464, 0.339556, 0.939177,
		0.574327, 0.759288, -0.305989,
		-0.817006, 0.555142, -0.155941,
		37.434361, 37.701782, 37.066578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179081, 37.959290, 37.535309>,  <38.006264, 37.313183, 37.175739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179081, 37.959290, 37.535309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.780270, 37.956692, 37.504620>,  <37.540981, 37.955135, 37.486206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.780270, 37.956692, 37.504620>,  <38.179081, 37.959290, 37.535309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780270, 37.956692, 37.504620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076927, 0.040804, 0.996201,
		-0.003335, 0.999146, -0.041183,
		-0.997031, -0.006491, -0.076725,
		37.481159, 37.954746, 37.481602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814274, 38.600842, 37.870323>,  <38.179081, 37.959290, 37.535309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814274, 38.600842, 37.870323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.563557, 38.289169, 37.868729>,  <37.413128, 38.102165, 37.867771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.563557, 38.289169, 37.868729>,  <37.814274, 38.600842, 37.870323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.563557, 38.289169, 37.868729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046229, 0.032076, 0.998416,
		-0.777814, 0.625983, -0.056126,
		-0.626792, -0.779177, -0.003990,
		37.375519, 38.055416, 37.867531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399399, 38.744667, 38.462440>,  <37.814274, 38.600842, 37.870323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399399, 38.744667, 38.462440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.302273, 38.367306, 38.372078>,  <37.243996, 38.140888, 38.317860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.302273, 38.367306, 38.372078>,  <37.399399, 38.744667, 38.462440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302273, 38.367306, 38.372078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210405, -0.176110, 0.961621,
		-0.946980, 0.281028, -0.155734,
		-0.242816, -0.943403, -0.225902,
		37.229427, 38.084286, 38.304306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729149, 38.612282, 38.790024>,  <37.399399, 38.744667, 38.462440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729149, 38.612282, 38.790024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.911118, 38.258984, 38.744549>,  <37.020298, 38.047005, 38.717262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.911118, 38.258984, 38.744549>,  <36.729149, 38.612282, 38.790024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911118, 38.258984, 38.744549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101209, -0.178113, 0.978791,
		-0.884763, -0.433765, -0.170419,
		0.454919, -0.883246, -0.113687,
		37.047592, 37.994011, 38.710442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314610, 38.232307, 39.144928>,  <36.729149, 38.612282, 38.790024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314610, 38.232307, 39.144928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.666988, 38.046127, 39.110756>,  <36.878414, 37.934422, 39.090252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.666988, 38.046127, 39.110756>,  <36.314610, 38.232307, 39.144928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666988, 38.046127, 39.110756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090979, -0.343737, 0.934649,
		-0.464395, -0.815600, -0.345159,
		0.880943, -0.465448, -0.085427,
		36.931271, 37.906494, 39.085129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187744, 37.491295, 39.340088>,  <36.314610, 38.232307, 39.144928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187744, 37.491295, 39.340088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.578835, 37.560329, 39.387871>,  <36.813488, 37.601749, 39.416542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.578835, 37.560329, 39.387871>,  <36.187744, 37.491295, 39.340088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578835, 37.560329, 39.387871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081272, -0.213442, 0.973570,
		0.193524, -0.961590, -0.194661,
		0.977723, 0.172589, 0.119457,
		36.872150, 37.612106, 39.423706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349022, 36.968208, 39.728817>,  <36.187744, 37.491295, 39.340088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.349022, 36.968208, 39.728817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.654419, 37.225121, 39.755840>,  <36.837658, 37.379269, 39.772057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.654419, 37.225121, 39.755840>,  <36.349022, 36.968208, 39.728817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654419, 37.225121, 39.755840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097459, -0.217999, 0.971071,
		0.638425, -0.734817, -0.229035,
		0.763489, 0.642277, 0.067562,
		36.883465, 37.417805, 39.776108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964146, 36.578270, 40.029831>,  <36.349022, 36.968208, 39.728817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964146, 36.578270, 40.029831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.029263, 36.967644, 40.094227>,  <37.068333, 37.201267, 40.132862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.029263, 36.967644, 40.094227>,  <36.964146, 36.578270, 40.029831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.029263, 36.967644, 40.094227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187907, -0.190765, 0.963483,
		0.968602, -0.126595, -0.213971,
		0.162791, 0.973438, 0.160988,
		37.078098, 37.259674, 40.142525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508053, 36.644440, 40.455296>,  <36.964146, 36.578270, 40.029831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508053, 36.644440, 40.455296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314415, 36.989952, 40.511215>,  <37.198235, 37.197258, 40.544769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314415, 36.989952, 40.511215>,  <37.508053, 36.644440, 40.455296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314415, 36.989952, 40.511215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243969, -0.020196, 0.969573,
		0.840318, 0.503471, -0.200958,
		-0.484093, 0.863776, 0.139802,
		37.169186, 37.249084, 40.553154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973145, 37.046967, 40.799709>,  <37.508053, 36.644440, 40.455296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973145, 37.046967, 40.799709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.615910, 37.199825, 40.894676>,  <37.401569, 37.291538, 40.951656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.615910, 37.199825, 40.894676>,  <37.973145, 37.046967, 40.799709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615910, 37.199825, 40.894676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313926, 0.151336, 0.937309,
		0.322258, 0.911627, -0.255121,
		-0.893085, 0.382145, 0.237414,
		37.347984, 37.314468, 40.965900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160187, 37.656761, 41.132374>,  <37.973145, 37.046967, 40.799709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160187, 37.656761, 41.132374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.780518, 37.592327, 41.240543>,  <37.552715, 37.553669, 41.305447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.780518, 37.592327, 41.240543>,  <38.160187, 37.656761, 41.132374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780518, 37.592327, 41.240543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198656, 0.359844, 0.911618,
		-0.244155, 0.919002, -0.309554,
		-0.949170, -0.161081, 0.270423,
		37.495766, 37.544003, 41.321671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930534, 38.254593, 41.460426>,  <38.160187, 37.656761, 41.132374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930534, 38.254593, 41.460426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.665123, 37.982018, 41.583958>,  <37.505875, 37.818474, 41.658077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.665123, 37.982018, 41.583958>,  <37.930534, 38.254593, 41.460426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665123, 37.982018, 41.583958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118881, 0.311514, 0.942776,
		-0.738645, 0.662273, -0.125689,
		-0.663529, -0.681435, 0.308830,
		37.466064, 37.777588, 41.676605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748875, 38.588768, 42.027271>,  <37.930534, 38.254593, 41.460426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.748875, 38.588768, 42.027271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.612816, 38.215786, 42.075981>,  <37.531181, 37.991997, 42.105209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.612816, 38.215786, 42.075981>,  <37.748875, 38.588768, 42.027271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612816, 38.215786, 42.075981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140705, 0.077575, 0.987008,
		-0.929787, 0.352861, 0.104815,
		-0.340145, -0.932454, 0.121777,
		37.510773, 37.936050, 42.112514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264015, 38.610416, 42.563183>,  <37.748875, 38.588768, 42.027271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264015, 38.610416, 42.563183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375893, 38.226402, 42.559174>,  <37.443020, 37.995995, 42.556767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375893, 38.226402, 42.559174>,  <37.264015, 38.610416, 42.563183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375893, 38.226402, 42.559174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039861, -0.022043, 0.998962,
		-0.959263, -0.278999, -0.044433,
		0.279689, -0.960038, -0.010023,
		37.459801, 37.938393, 42.556168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838566, 38.311169, 43.057728>,  <37.264015, 38.610416, 42.563183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838566, 38.311169, 43.057728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133484, 38.043606, 43.019871>,  <37.310436, 37.883068, 42.997158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133484, 38.043606, 43.019871>,  <36.838566, 38.311169, 43.057728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133484, 38.043606, 43.019871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005439, -0.134204, 0.990939,
		-0.675550, -0.731128, -0.095310,
		0.737294, -0.668910, -0.094638,
		37.354671, 37.842934, 42.991478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607559, 37.688576, 43.494961>,  <36.838566, 38.311169, 43.057728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607559, 37.688576, 43.494961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002972, 37.685390, 43.434628>,  <37.240219, 37.683479, 43.398426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002972, 37.685390, 43.434628>,  <36.607559, 37.688576, 43.494961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002972, 37.685390, 43.434628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146784, -0.184959, 0.971722,
		-0.035631, -0.982714, -0.181669,
		0.988527, -0.007957, -0.150837,
		37.299530, 37.683002, 43.389378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882706, 37.143902, 43.863251>,  <36.607559, 37.688576, 43.494961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882706, 37.143902, 43.863251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234894, 37.317646, 43.787247>,  <37.446205, 37.421894, 43.741646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234894, 37.317646, 43.787247>,  <36.882706, 37.143902, 43.863251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234894, 37.317646, 43.787247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394193, -0.448036, 0.802419,
		0.263411, -0.781404, -0.565705,
		0.880470, 0.434363, -0.190006,
		37.499035, 37.447956, 43.730244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325546, 36.615765, 43.855507>,  <36.882706, 37.143902, 43.863251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325546, 36.615765, 43.855507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.509373, 36.959969, 43.943432>,  <37.619671, 37.166492, 43.996185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.509373, 36.959969, 43.943432>,  <37.325546, 36.615765, 43.855507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509373, 36.959969, 43.943432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353235, -0.404175, 0.843723,
		0.814874, -0.310105, -0.489709,
		0.459570, 0.860510, 0.219812,
		37.647243, 37.218121, 44.009377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997456, 36.417740, 44.010117>,  <37.325546, 36.615765, 43.855507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997456, 36.417740, 44.010117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.936722, 36.772182, 44.185284>,  <37.900284, 36.984848, 44.290382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.936722, 36.772182, 44.185284>,  <37.997456, 36.417740, 44.010117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936722, 36.772182, 44.185284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297005, -0.381674, 0.875279,
		0.942728, 0.262956, -0.205227,
		-0.151830, 0.886103, 0.437914,
		37.891174, 37.038013, 44.316658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613838, 36.564438, 44.444492>,  <37.997456, 36.417740, 44.010117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613838, 36.564438, 44.444492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.304806, 36.780251, 44.578373>,  <38.119385, 36.909737, 44.658703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.304806, 36.780251, 44.578373>,  <38.613838, 36.564438, 44.444492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304806, 36.780251, 44.578373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243478, -0.235096, 0.940983,
		0.586373, 0.808480, 0.050268,
		-0.772583, 0.539528, 0.334700,
		38.073032, 36.942108, 44.678783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914577, 36.908913, 45.051495>,  <38.613838, 36.564438, 44.444492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914577, 36.908913, 45.051495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.515938, 36.936302, 45.069836>,  <38.276752, 36.952736, 45.080841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.515938, 36.936302, 45.069836>,  <38.914577, 36.908913, 45.051495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515938, 36.936302, 45.069836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039538, -0.090953, 0.995070,
		0.072311, 0.993498, 0.087936,
		-0.996598, 0.068478, 0.045857,
		38.216957, 36.956844, 45.083591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853752, 37.175381, 45.655777>,  <38.914577, 36.908913, 45.051495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853752, 37.175381, 45.655777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489147, 37.026112, 45.586624>,  <38.270386, 36.936550, 45.545132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489147, 37.026112, 45.586624>,  <38.853752, 37.175381, 45.655777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489147, 37.026112, 45.586624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054717, -0.306579, 0.950271,
		-0.407619, 0.875642, 0.259032,
		-0.911511, -0.373175, -0.172880,
		38.215694, 36.914158, 45.534760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288139, 37.440025, 46.121403>,  <38.853752, 37.175381, 45.655777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288139, 37.440025, 46.121403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.140823, 37.089600, 45.996910>,  <38.052433, 36.879345, 45.922215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.140823, 37.089600, 45.996910>,  <38.288139, 37.440025, 46.121403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140823, 37.089600, 45.996910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070008, -0.307678, 0.948912,
		-0.927070, 0.371266, 0.051984,
		-0.368293, -0.876069, -0.311230,
		38.030334, 36.826778, 45.903542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628513, 37.220165, 46.569447>,  <38.288139, 37.440025, 46.121403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628513, 37.220165, 46.569447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759949, 36.888752, 46.388088>,  <37.838810, 36.689903, 46.279274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759949, 36.888752, 46.388088>,  <37.628513, 37.220165, 46.569447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759949, 36.888752, 46.388088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313004, -0.548450, 0.775391,
		-0.891099, -0.112871, -0.439548,
		0.328589, -0.828531, -0.453394,
		37.858524, 36.640194, 46.252071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100662, 36.776249, 46.388454>,  <37.628513, 37.220165, 46.569447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100662, 36.776249, 46.388454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.432854, 36.570351, 46.473629>,  <37.632168, 36.446812, 46.524734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.432854, 36.570351, 46.473629>,  <37.100662, 36.776249, 46.388454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432854, 36.570351, 46.473629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454130, -0.404250, 0.793944,
		-0.322603, -0.756053, -0.569484,
		0.830478, -0.514749, 0.212934,
		37.681995, 36.415928, 46.537510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881435, 36.095703, 46.595505>,  <37.100662, 36.776249, 46.388454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881435, 36.095703, 46.595505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.226120, 36.199081, 46.770164>,  <37.432930, 36.261108, 46.874962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.226120, 36.199081, 46.770164>,  <36.881435, 36.095703, 46.595505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226120, 36.199081, 46.770164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322135, -0.386238, 0.864320,
		0.392033, -0.885452, -0.249569,
		0.861707, 0.258447, 0.436653,
		37.484631, 36.276615, 46.901161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981869, 35.521107, 47.034477>,  <36.881435, 36.095703, 46.595505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981869, 35.521107, 47.034477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.160667, 35.859295, 47.151352>,  <37.267948, 36.062206, 47.221478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.160667, 35.859295, 47.151352>,  <36.981869, 35.521107, 47.034477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160667, 35.859295, 47.151352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294231, -0.169495, 0.940585,
		0.844761, -0.506409, 0.173000,
		0.446997, 0.845472, 0.292184,
		37.294765, 36.112938, 47.239006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556065, 35.346443, 47.595905>,  <36.981869, 35.521107, 47.034477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556065, 35.346443, 47.595905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384651, 35.707386, 47.614265>,  <37.281803, 35.923954, 47.625282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384651, 35.707386, 47.614265>,  <37.556065, 35.346443, 47.595905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384651, 35.707386, 47.614265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280223, -0.181029, 0.942711,
		0.858975, 0.391117, 0.330439,
		-0.428529, 0.902361, 0.045899,
		37.256092, 35.978096, 47.628036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554470, 35.410522, 48.189598>,  <37.556065, 35.346443, 47.595905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554470, 35.410522, 48.189598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361160, 35.742188, 48.077221>,  <37.245174, 35.941189, 48.009792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361160, 35.742188, 48.077221>,  <37.554470, 35.410522, 48.189598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361160, 35.742188, 48.077221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332030, 0.123344, 0.935170,
		0.810064, 0.545225, 0.215700,
		-0.483273, 0.829166, -0.280948,
		37.216179, 35.990936, 47.992935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219250, 35.030506, 48.352303>,  <37.554470, 35.410522, 48.189598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219250, 35.030506, 48.352303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534794, 34.795437, 48.424236>,  <38.724121, 34.654396, 48.467396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534794, 34.795437, 48.424236>,  <38.219250, 35.030506, 48.352303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534794, 34.795437, 48.424236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174516, -0.494772, -0.851320,
		0.589276, 0.640187, -0.492864,
		0.788859, -0.587675, 0.179834,
		38.771450, 34.619133, 48.478188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719849, 35.034073, 47.685535>,  <38.219250, 35.030506, 48.352303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719849, 35.034073, 47.685535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.743328, 34.713757, 47.923958>,  <38.757416, 34.521564, 48.067013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.743328, 34.713757, 47.923958>,  <38.719849, 35.034073, 47.685535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743328, 34.713757, 47.923958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119022, -0.598440, -0.792277,
		0.991155, -0.024434, -0.130443,
		0.058703, -0.800795, 0.596055,
		38.760941, 34.473518, 48.102776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290817, 34.421585, 47.523617>,  <38.719849, 35.034073, 47.685535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290817, 34.421585, 47.523617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.966312, 34.284286, 47.712948>,  <38.771610, 34.201908, 47.826546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.966312, 34.284286, 47.712948>,  <39.290817, 34.421585, 47.523617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966312, 34.284286, 47.712948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189629, -0.611317, -0.768331,
		0.553076, -0.713075, 0.430850,
		-0.811263, -0.343244, 0.473324,
		38.722935, 34.181313, 47.854946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240604, 33.647831, 47.471386>,  <39.290817, 34.421585, 47.523617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240604, 33.647831, 47.471386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.874496, 33.799797, 47.524952>,  <38.654831, 33.890976, 47.557091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.874496, 33.799797, 47.524952>,  <39.240604, 33.647831, 47.471386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874496, 33.799797, 47.524952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358919, -0.618187, -0.699301,
		-0.182893, -0.688118, 0.702171,
		-0.915275, 0.379919, 0.133917,
		38.599915, 33.913773, 47.565128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667606, 33.069183, 47.477966>,  <39.240604, 33.647831, 47.471386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667606, 33.069183, 47.477966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.485638, 33.410877, 47.377308>,  <38.376457, 33.615894, 47.316914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.485638, 33.410877, 47.377308>,  <38.667606, 33.069183, 47.477966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485638, 33.410877, 47.377308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354127, -0.432804, -0.829020,
		-0.817093, -0.288024, 0.499400,
		-0.454920, 0.854238, -0.251644,
		38.349163, 33.667149, 47.301815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458313, 32.886528, 46.822506>,  <38.667606, 33.069183, 47.477966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458313, 32.886528, 46.822506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.307819, 33.256050, 46.850872>,  <38.217522, 33.477764, 46.867893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.307819, 33.256050, 46.850872>,  <38.458313, 32.886528, 46.822506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.307819, 33.256050, 46.850872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433292, -0.107777, -0.894786,
		-0.818966, -0.367377, 0.440827,
		-0.376234, 0.923806, 0.070916,
		38.194950, 33.533192, 46.872147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771286, 32.779419, 46.744102>,  <38.458313, 32.886528, 46.822506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771286, 32.779419, 46.744102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.862400, 33.154846, 46.640408>,  <37.917068, 33.380104, 46.578190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.862400, 33.154846, 46.640408>,  <37.771286, 32.779419, 46.744102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862400, 33.154846, 46.640408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515756, -0.109523, -0.849706,
		-0.825899, 0.327256, 0.459124,
		0.227786, 0.938567, -0.259239,
		37.930737, 33.436417, 46.562637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180508, 33.051121, 46.439270>,  <37.771286, 32.779419, 46.744102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180508, 33.051121, 46.439270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447441, 33.312145, 46.295700>,  <37.607601, 33.468761, 46.209557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447441, 33.312145, 46.295700>,  <37.180508, 33.051121, 46.439270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447441, 33.312145, 46.295700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456534, -0.022338, -0.889426,
		-0.588421, 0.757408, 0.283009,
		0.667336, 0.652560, -0.358926,
		37.647640, 33.507912, 46.188023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779354, 33.320210, 45.998684>,  <37.180508, 33.051121, 46.439270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779354, 33.320210, 45.998684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.129902, 33.436943, 45.845417>,  <37.340229, 33.506985, 45.753456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.129902, 33.436943, 45.845417>,  <36.779354, 33.320210, 45.998684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129902, 33.436943, 45.845417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410437, 0.036201, -0.911170,
		-0.252042, 0.955783, 0.151506,
		0.876366, 0.291836, -0.383164,
		37.392811, 33.524494, 45.730469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682774, 33.897572, 45.590042>,  <36.779354, 33.320210, 45.998684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682774, 33.897572, 45.590042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.043770, 33.800762, 45.447533>,  <37.260368, 33.742676, 45.362026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.043770, 33.800762, 45.447533>,  <36.682774, 33.897572, 45.590042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043770, 33.800762, 45.447533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303276, 0.230268, -0.924662,
		0.305830, 0.942550, 0.134415,
		0.902492, -0.242024, -0.356276,
		37.314518, 33.728153, 45.340649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007347, 34.556625, 45.242592>,  <36.682774, 33.897572, 45.590042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007347, 34.556625, 45.242592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199394, 34.234219, 45.104126>,  <37.314625, 34.040775, 45.021046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199394, 34.234219, 45.104126>,  <37.007347, 34.556625, 45.242592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199394, 34.234219, 45.104126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250920, 0.251939, -0.934647,
		0.840549, 0.535603, -0.081283,
		0.480122, -0.806012, -0.346161,
		37.343430, 33.992416, 45.000278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511982, 34.850086, 44.842590>,  <37.007347, 34.556625, 45.242592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511982, 34.850086, 44.842590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.453175, 34.474327, 44.718712>,  <37.417892, 34.248871, 44.644386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.453175, 34.474327, 44.718712>,  <37.511982, 34.850086, 44.842590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453175, 34.474327, 44.718712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129591, 0.328694, -0.935503,
		0.980608, -0.097400, -0.170061,
		-0.147016, -0.939400, -0.309698,
		37.409069, 34.192509, 44.625801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019592, 34.645081, 44.290176>,  <37.511982, 34.850086, 44.842590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019592, 34.645081, 44.290176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.726017, 34.373737, 44.276543>,  <37.549870, 34.210930, 44.268364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.726017, 34.373737, 44.276543>,  <38.019592, 34.645081, 44.290176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726017, 34.373737, 44.276543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039564, 0.092788, -0.994900,
		0.678060, -0.728849, -0.094940,
		-0.733941, -0.678358, -0.034080,
		37.505836, 34.170231, 44.266319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182709, 34.260529, 43.691299>,  <38.019592, 34.645081, 44.290176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182709, 34.260529, 43.691299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.806759, 34.143803, 43.762260>,  <37.581188, 34.073765, 43.804836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.806759, 34.143803, 43.762260>,  <38.182709, 34.260529, 43.691299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806759, 34.143803, 43.762260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177731, -0.025608, -0.983746,
		0.291617, -0.956131, -0.027797,
		-0.939878, -0.291818, 0.177401,
		37.524796, 34.056259, 43.815479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071426, 33.652168, 43.294464>,  <38.182709, 34.260529, 43.691299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071426, 33.652168, 43.294464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.722115, 33.829990, 43.374218>,  <37.512527, 33.936684, 43.422070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.722115, 33.829990, 43.374218>,  <38.071426, 33.652168, 43.294464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722115, 33.829990, 43.374218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237339, -0.030753, -0.970940,
		-0.425501, -0.895225, 0.132366,
		-0.873281, 0.444551, 0.199386,
		37.460129, 33.963356, 43.434032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699619, 33.323727, 42.843487>,  <38.071426, 33.652168, 43.294464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.699619, 33.323727, 42.843487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493641, 33.649193, 42.951397>,  <37.370052, 33.844471, 43.016144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493641, 33.649193, 42.951397>,  <37.699619, 33.323727, 42.843487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493641, 33.649193, 42.951397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139129, 0.231210, -0.962904,
		-0.845858, -0.533377, -0.005856,
		-0.514945, 0.813665, 0.269779,
		37.339157, 33.893291, 43.032330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296211, 33.346741, 42.328865>,  <37.699619, 33.323727, 42.843487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296211, 33.346741, 42.328865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.236443, 33.712173, 42.480148>,  <37.200581, 33.931435, 42.570919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.236443, 33.712173, 42.480148>,  <37.296211, 33.346741, 42.328865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236443, 33.712173, 42.480148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216804, 0.342922, -0.914003,
		-0.964712, -0.218569, 0.146828,
		-0.149422, 0.913582, 0.378208,
		37.191616, 33.986248, 42.593609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669224, 33.584873, 42.036629>,  <37.296211, 33.346741, 42.328865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669224, 33.584873, 42.036629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.910370, 33.880932, 42.155785>,  <37.055058, 34.058567, 42.227280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.910370, 33.880932, 42.155785>,  <36.669224, 33.584873, 42.036629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910370, 33.880932, 42.155785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124179, 0.455867, -0.881343,
		-0.788120, 0.494339, 0.366737,
		0.602865, 0.740145, 0.297892,
		37.091228, 34.102974, 42.245152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471169, 34.142159, 41.683075>,  <36.669224, 33.584873, 42.036629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471169, 34.142159, 41.683075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830147, 34.281109, 41.791832>,  <37.045532, 34.364479, 41.857086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830147, 34.281109, 41.791832>,  <36.471169, 34.142159, 41.683075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830147, 34.281109, 41.791832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046391, 0.538614, -0.841275,
		-0.438685, 0.767609, 0.467260,
		0.897442, 0.347378, 0.271892,
		37.099380, 34.385323, 41.873398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513081, 34.869995, 41.735611>,  <36.471169, 34.142159, 41.683075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513081, 34.869995, 41.735611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880848, 34.741238, 41.645226>,  <37.101509, 34.663982, 41.590992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880848, 34.741238, 41.645226>,  <36.513081, 34.869995, 41.735611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880848, 34.741238, 41.645226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045241, 0.484173, -0.873802,
		0.390680, 0.813608, 0.430593,
		0.919414, -0.321897, -0.225965,
		37.156673, 34.644669, 41.577435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955822, 35.344997, 41.462021>,  <36.513081, 34.869995, 41.735611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955822, 35.344997, 41.462021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120647, 35.016171, 41.304844>,  <37.219543, 34.818874, 41.210537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120647, 35.016171, 41.304844>,  <36.955822, 35.344997, 41.462021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120647, 35.016171, 41.304844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067752, 0.457713, -0.886515,
		0.908633, 0.338678, 0.244304,
		0.412064, -0.822068, -0.392946,
		37.244267, 34.769550, 41.186958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569050, 35.641624, 41.057652>,  <36.955822, 35.344997, 41.462021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.569050, 35.641624, 41.057652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.487633, 35.274738, 40.920666>,  <37.438782, 35.054607, 40.838474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.487633, 35.274738, 40.920666>,  <37.569050, 35.641624, 41.057652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487633, 35.274738, 40.920666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092235, 0.330267, -0.939370,
		0.974712, -0.222787, 0.017377,
		-0.203541, -0.917218, -0.342465,
		37.426571, 34.999573, 40.817924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962910, 35.573792, 40.465027>,  <37.569050, 35.641624, 41.057652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962910, 35.573792, 40.465027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.708733, 35.271698, 40.400734>,  <37.556225, 35.090443, 40.362160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.708733, 35.271698, 40.400734>,  <37.962910, 35.573792, 40.465027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708733, 35.271698, 40.400734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045981, 0.244801, -0.968482,
		0.770778, -0.608024, -0.190283,
		-0.635442, -0.755234, -0.160730,
		37.518101, 35.045128, 40.352516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076385, 35.360428, 39.780148>,  <37.962910, 35.573792, 40.465027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076385, 35.360428, 39.780148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724266, 35.192322, 39.868187>,  <37.512993, 35.091457, 39.921013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724266, 35.192322, 39.868187>,  <38.076385, 35.360428, 39.780148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724266, 35.192322, 39.868187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227318, -0.033557, -0.973242,
		0.416411, -0.906778, -0.065994,
		-0.880300, -0.420270, 0.220101,
		37.460175, 35.066242, 39.934216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930576, 34.955658, 39.203125>,  <38.076385, 35.360428, 39.780148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930576, 34.955658, 39.203125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574848, 34.957958, 39.386021>,  <37.361412, 34.959339, 39.495758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574848, 34.957958, 39.386021>,  <37.930576, 34.955658, 39.203125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574848, 34.957958, 39.386021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446718, -0.224549, -0.866038,
		0.097696, -0.974446, 0.202264,
		-0.889325, 0.005746, 0.457240,
		37.308052, 34.959682, 39.523193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680988, 34.381187, 39.045586>,  <37.930576, 34.955658, 39.203125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680988, 34.381187, 39.045586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373943, 34.617966, 39.143867>,  <37.189716, 34.760033, 39.202835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373943, 34.617966, 39.143867>,  <37.680988, 34.381187, 39.045586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373943, 34.617966, 39.143867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499903, -0.313085, -0.807511,
		-0.401078, -0.742684, 0.536244,
		-0.767615, 0.591945, 0.245699,
		37.143658, 34.795547, 39.217579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049980, 33.988735, 38.892509>,  <37.680988, 34.381187, 39.045586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049980, 33.988735, 38.892509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.924923, 34.368511, 38.903957>,  <36.849888, 34.596375, 38.910824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.924923, 34.368511, 38.903957>,  <37.049980, 33.988735, 38.892509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924923, 34.368511, 38.903957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365223, -0.092348, -0.926328,
		-0.876849, -0.300065, 0.375629,
		-0.312647, 0.949438, 0.028615,
		36.831127, 34.653343, 38.912540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315617, 33.909111, 38.731171>,  <37.049980, 33.988735, 38.892509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315617, 33.909111, 38.731171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470894, 34.268555, 38.649391>,  <36.564060, 34.484222, 38.600323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470894, 34.268555, 38.649391>,  <36.315617, 33.909111, 38.731171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470894, 34.268555, 38.649391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417610, -0.026234, -0.908247,
		-0.821527, 0.437956, 0.365086,
		0.388195, 0.898614, -0.204447,
		36.587353, 34.538139, 38.588058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772568, 34.290585, 38.462879>,  <36.315617, 33.909111, 38.731171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772568, 34.290585, 38.462879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.099545, 34.496529, 38.359570>,  <36.295731, 34.620094, 38.297585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.099545, 34.496529, 38.359570>,  <35.772568, 34.290585, 38.462879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099545, 34.496529, 38.359570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308320, 0.012364, -0.951202,
		-0.486547, 0.857183, 0.168850,
		0.817442, 0.514864, -0.258271,
		36.344776, 34.650990, 38.282089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597198, 34.926651, 38.182304>,  <35.772568, 34.290585, 38.462879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597198, 34.926651, 38.182304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.964581, 34.871723, 38.033939>,  <36.185009, 34.838768, 37.944920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.964581, 34.871723, 38.033939>,  <35.597198, 34.926651, 38.182304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.964581, 34.871723, 38.033939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369005, 0.040061, -0.928564,
		0.142365, 0.989717, -0.013875,
		0.918459, -0.137315, -0.370914,
		36.240120, 34.830528, 37.922665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579105, 35.283627, 37.566437>,  <35.597198, 34.926651, 38.182304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579105, 35.283627, 37.566437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910267, 35.069607, 37.499153>,  <36.108963, 34.941196, 37.458782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910267, 35.069607, 37.499153>,  <35.579105, 35.283627, 37.566437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910267, 35.069607, 37.499153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304656, -0.177204, -0.935833,
		0.470910, 0.826027, -0.309714,
		0.827906, -0.535049, -0.168208,
		36.158638, 34.909092, 37.448692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013393, 35.527145, 36.947685>,  <35.579105, 35.283627, 37.566437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013393, 35.527145, 36.947685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089638, 35.140739, 37.017525>,  <36.135384, 34.908897, 37.059429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089638, 35.140739, 37.017525>,  <36.013393, 35.527145, 36.947685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089638, 35.140739, 37.017525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169178, -0.207522, -0.963490,
		0.966977, 0.154116, -0.202985,
		0.190613, -0.966014, 0.174596,
		36.146820, 34.850937, 37.069904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491508, 35.341923, 36.487385>,  <36.013393, 35.527145, 36.947685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491508, 35.341923, 36.487385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308571, 34.996162, 36.570957>,  <36.198807, 34.788708, 36.621101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308571, 34.996162, 36.570957>,  <36.491508, 35.341923, 36.487385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308571, 34.996162, 36.570957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237601, -0.107622, -0.965383,
		0.856960, -0.491155, -0.156161,
		-0.457346, -0.864398, 0.208926,
		36.171368, 34.736843, 36.633636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690109, 34.912956, 36.004650>,  <36.491508, 35.341923, 36.487385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690109, 34.912956, 36.004650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380508, 34.689808, 36.124451>,  <36.194748, 34.555920, 36.196331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380508, 34.689808, 36.124451>,  <36.690109, 34.912956, 36.004650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380508, 34.689808, 36.124451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147781, -0.300780, -0.942174,
		0.615695, -0.773506, 0.150362,
		-0.774003, -0.557871, 0.299498,
		36.148308, 34.522446, 36.214302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835842, 34.243046, 35.725521>,  <36.690109, 34.912956, 36.004650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835842, 34.243046, 35.725521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.442677, 34.259403, 35.797318>,  <36.206779, 34.269218, 35.840393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.442677, 34.259403, 35.797318>,  <36.835842, 34.243046, 35.725521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.442677, 34.259403, 35.797318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183579, -0.290158, -0.939206,
		0.013676, -0.956105, 0.292706,
		-0.982910, 0.040890, 0.179488,
		36.147804, 34.271671, 35.851166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614029, 33.700802, 35.394051>,  <36.835842, 34.243046, 35.725521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614029, 33.700802, 35.394051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.279873, 33.910538, 35.460003>,  <36.079380, 34.036381, 35.499577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.279873, 33.910538, 35.460003>,  <36.614029, 33.700802, 35.394051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279873, 33.910538, 35.460003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275423, -0.139722, -0.951115,
		-0.475671, -0.839967, 0.261139,
		-0.835392, 0.524341, 0.164884,
		36.029255, 34.067841, 35.509468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955391, 33.278011, 35.220398>,  <36.614029, 33.700802, 35.394051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955391, 33.278011, 35.220398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878231, 33.669498, 35.192390>,  <35.831936, 33.904392, 35.175587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878231, 33.669498, 35.192390>,  <35.955391, 33.278011, 35.220398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878231, 33.669498, 35.192390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355101, -0.136150, -0.924860,
		-0.914710, -0.153540, 0.373807,
		-0.192896, 0.978718, -0.070016,
		35.820362, 33.963116, 35.171387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301842, 33.296471, 34.968628>,  <35.955391, 33.278011, 35.220398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301842, 33.296471, 34.968628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488739, 33.641659, 34.891716>,  <35.600876, 33.848770, 34.845570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488739, 33.641659, 34.891716>,  <35.301842, 33.296471, 34.968628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488739, 33.641659, 34.891716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348793, -0.019924, -0.936988,
		-0.812422, 0.504865, 0.291688,
		0.467241, 0.862968, -0.192280,
		35.628910, 33.900551, 34.834030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864540, 33.554482, 34.601719>,  <35.301842, 33.296471, 34.968628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864540, 33.554482, 34.601719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162003, 33.801746, 34.499866>,  <35.340481, 33.950108, 34.438755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162003, 33.801746, 34.499866>,  <34.864540, 33.554482, 34.601719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162003, 33.801746, 34.499866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349588, 0.034897, -0.936254,
		-0.569875, 0.785272, 0.242055,
		0.743661, 0.618166, -0.254635,
		35.385101, 33.987198, 34.423477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537014, 33.882359, 34.113636>,  <34.864540, 33.554482, 34.601719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537014, 33.882359, 34.113636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916805, 33.969810, 34.023582>,  <35.144680, 34.022282, 33.969551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916805, 33.969810, 34.023582>,  <34.537014, 33.882359, 34.113636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916805, 33.969810, 34.023582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251828, 0.102744, -0.962303,
		-0.187261, 0.970383, 0.152612,
		0.949482, 0.218634, -0.225130,
		35.201649, 34.035400, 33.956043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553066, 34.472828, 33.647644>,  <34.537014, 33.882359, 34.113636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553066, 34.472828, 33.647644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922913, 34.333115, 33.586880>,  <35.144821, 34.249287, 33.550419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922913, 34.333115, 33.586880>,  <34.553066, 34.472828, 33.647644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922913, 34.333115, 33.586880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050129, 0.283775, -0.957580,
		0.377577, 0.893013, 0.244875,
		0.924620, -0.349285, -0.151913,
		35.200298, 34.228329, 33.541306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879177, 34.957684, 33.237682>,  <34.553066, 34.472828, 33.647644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879177, 34.957684, 33.237682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037533, 34.593605, 33.189011>,  <35.132545, 34.375156, 33.159809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037533, 34.593605, 33.189011>,  <34.879177, 34.957684, 33.237682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037533, 34.593605, 33.189011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132902, 0.074316, -0.988339,
		0.908628, 0.407448, -0.091546,
		0.395893, -0.910200, -0.121676,
		35.156300, 34.320545, 33.152508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320999, 35.090954, 32.612137>,  <34.879177, 34.957684, 33.237682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320999, 35.090954, 32.612137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.348846, 34.693497, 32.647545>,  <35.365555, 34.455025, 32.668789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.348846, 34.693497, 32.647545>,  <35.320999, 35.090954, 32.612137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348846, 34.693497, 32.647545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154763, -0.076899, -0.984954,
		0.985496, 0.082271, 0.148425,
		0.069620, -0.993639, 0.088516,
		35.369732, 34.395405, 32.674099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964134, 34.828472, 32.282104>,  <35.320999, 35.090954, 32.612137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964134, 34.828472, 32.282104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694294, 34.533379, 32.271786>,  <35.532391, 34.356323, 32.265594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694294, 34.533379, 32.271786>,  <35.964134, 34.828472, 32.282104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694294, 34.533379, 32.271786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257200, -0.202141, -0.944980,
		0.691927, -0.644120, 0.326109,
		-0.674600, -0.737732, -0.025800,
		35.491913, 34.312057, 32.264046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360596, 34.216038, 32.007481>,  <35.964134, 34.828472, 32.282104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360596, 34.216038, 32.007481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963940, 34.188034, 31.964123>,  <35.725945, 34.171230, 31.938108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963940, 34.188034, 31.964123>,  <36.360596, 34.216038, 32.007481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963940, 34.188034, 31.964123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124030, -0.285352, -0.950364,
		0.035602, -0.955863, 0.291649,
		-0.991640, -0.070008, -0.108397,
		35.666447, 34.167030, 31.931604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716705, 34.908234, 31.703476>,  <36.360596, 34.216038, 32.007481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716705, 34.908234, 31.703476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116398, 34.906712, 31.687838>,  <37.356213, 34.905800, 31.678455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116398, 34.906712, 31.687838>,  <36.716705, 34.908234, 31.703476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116398, 34.906712, 31.687838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037740, -0.183020, 0.982385,
		-0.010892, -0.983102, -0.182735,
		0.999228, -0.003804, -0.039095,
		37.416168, 34.905571, 31.676109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089405, 34.253609, 31.896370>,  <36.716705, 34.908234, 31.703476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089405, 34.253609, 31.896370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.331055, 34.560272, 31.983339>,  <37.476044, 34.744270, 32.035522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.331055, 34.560272, 31.983339>,  <37.089405, 34.253609, 31.896370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331055, 34.560272, 31.983339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148855, -0.159474, 0.975915,
		0.782868, -0.621934, 0.017780,
		0.604119, 0.766659, 0.217425,
		37.512291, 34.790272, 32.048569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581882, 33.964928, 32.322628>,  <37.089405, 34.253609, 31.896370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581882, 33.964928, 32.322628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628353, 34.357964, 32.380630>,  <37.656235, 34.593784, 32.415432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628353, 34.357964, 32.380630>,  <37.581882, 33.964928, 32.322628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628353, 34.357964, 32.380630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370637, -0.178335, 0.911496,
		0.921484, -0.052149, -0.384901,
		0.116175, 0.982587, 0.145004,
		37.663204, 34.652740, 32.424133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.173893, 33.842445, 32.682106>,  <37.581882, 33.964928, 32.322628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.173893, 33.842445, 32.682106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.099850, 34.232765, 32.728664>,  <38.055424, 34.466957, 32.756599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.099850, 34.232765, 32.728664>,  <38.173893, 33.842445, 32.682106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099850, 34.232765, 32.728664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380436, -0.038052, 0.924024,
		0.906092, 0.215328, -0.364186,
		-0.185110, 0.975800, 0.116397,
		38.044315, 34.525505, 32.763584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789246, 34.179615, 32.861423>,  <38.173893, 33.842445, 32.682106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789246, 34.179615, 32.861423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.480476, 34.398445, 32.990940>,  <38.295216, 34.529743, 33.068649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.480476, 34.398445, 32.990940>,  <38.789246, 34.179615, 32.861423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480476, 34.398445, 32.990940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387218, 0.000680, 0.921988,
		0.504176, 0.837083, -0.212362,
		-0.771925, 0.547075, 0.323791,
		38.248898, 34.562569, 33.088078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047661, 34.586159, 33.358135>,  <38.789246, 34.179615, 32.861423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047661, 34.586159, 33.358135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.668697, 34.644245, 33.472202>,  <38.441319, 34.679096, 33.540642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.668697, 34.644245, 33.472202>,  <39.047661, 34.586159, 33.358135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668697, 34.644245, 33.472202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255816, -0.191718, 0.947524,
		0.192267, 0.970648, 0.144488,
		-0.947413, 0.145215, 0.285169,
		38.384472, 34.687809, 33.557755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063042, 35.064468, 33.940914>,  <39.047661, 34.586159, 33.358135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063042, 35.064468, 33.940914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.719887, 34.859406, 33.954807>,  <38.513992, 34.736366, 33.963142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.719887, 34.859406, 33.954807>,  <39.063042, 35.064468, 33.940914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719887, 34.859406, 33.954807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135637, -0.160733, 0.977634,
		-0.495608, 0.843414, 0.207427,
		-0.857890, -0.512658, 0.034737,
		38.462521, 34.705608, 33.965229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745064, 35.350311, 34.409725>,  <39.063042, 35.064468, 33.940914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745064, 35.350311, 34.409725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568050, 34.993507, 34.372894>,  <38.461842, 34.779423, 34.350796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568050, 34.993507, 34.372894>,  <38.745064, 35.350311, 34.409725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568050, 34.993507, 34.372894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039658, -0.122043, 0.991732,
		-0.895877, 0.435219, 0.089383,
		-0.442530, -0.892014, -0.092075,
		38.435291, 34.725903, 34.345272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253174, 35.214855, 35.027840>,  <38.745064, 35.350311, 34.409725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253174, 35.214855, 35.027840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328651, 34.846165, 34.892300>,  <38.373940, 34.624950, 34.810978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328651, 34.846165, 34.892300>,  <38.253174, 35.214855, 35.027840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328651, 34.846165, 34.892300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336281, -0.263538, 0.904136,
		-0.922664, -0.284557, 0.260229,
		0.188698, -0.921724, -0.338848,
		38.385262, 34.569649, 34.790646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979435, 34.828487, 35.462097>,  <38.253174, 35.214855, 35.027840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979435, 34.828487, 35.462097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237854, 34.581345, 35.282818>,  <38.392906, 34.433060, 35.175251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237854, 34.581345, 35.282818>,  <37.979435, 34.828487, 35.462097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237854, 34.581345, 35.282818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326629, -0.306926, 0.893929,
		-0.689882, -0.723913, 0.003521,
		0.646047, -0.617856, -0.448194,
		38.431667, 34.395988, 35.148361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776020, 34.232952, 35.732952>,  <37.979435, 34.828487, 35.462097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.776020, 34.232952, 35.732952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.137432, 34.164516, 35.575798>,  <38.354279, 34.123455, 35.481506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.137432, 34.164516, 35.575798>,  <37.776020, 34.232952, 35.732952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137432, 34.164516, 35.575798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244423, -0.547315, 0.800440,
		-0.351978, -0.819253, -0.452698,
		0.903531, -0.171088, -0.392887,
		38.408493, 34.113190, 35.457932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856319, 33.542889, 35.708389>,  <37.776020, 34.232952, 35.732952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.856319, 33.542889, 35.708389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.213203, 33.723167, 35.719929>,  <38.427334, 33.831333, 35.726852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.213203, 33.723167, 35.719929>,  <37.856319, 33.542889, 35.708389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213203, 33.723167, 35.719929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226497, -0.501820, 0.834791,
		0.390714, -0.738275, -0.549811,
		0.892212, 0.450695, 0.028851,
		38.480865, 33.858376, 35.728584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234180, 32.980320, 35.898258>,  <37.856319, 33.542889, 35.708389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234180, 32.980320, 35.898258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457420, 33.305546, 35.964531>,  <38.591366, 33.500683, 36.004295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457420, 33.305546, 35.964531>,  <38.234180, 32.980320, 35.898258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457420, 33.305546, 35.964531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184053, -0.315997, 0.930736,
		0.809104, -0.488949, -0.326005,
		0.558100, 0.813065, 0.165682,
		38.624851, 33.549465, 36.014236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813484, 32.765949, 36.270443>,  <38.234180, 32.980320, 35.898258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813484, 32.765949, 36.270443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784439, 33.156635, 36.351204>,  <38.767014, 33.391045, 36.399658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784439, 33.156635, 36.351204>,  <38.813484, 32.765949, 36.270443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784439, 33.156635, 36.351204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295403, -0.172290, 0.939709,
		0.952609, 0.127874, -0.276014,
		-0.072610, 0.976711, 0.201900,
		38.762657, 33.449650, 36.411774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380795, 32.841423, 36.710682>,  <38.813484, 32.765949, 36.270443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380795, 32.841423, 36.710682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.176525, 33.180984, 36.765202>,  <39.053963, 33.384720, 36.797913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.176525, 33.180984, 36.765202>,  <39.380795, 32.841423, 36.710682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176525, 33.180984, 36.765202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418308, 0.106813, 0.902003,
		0.751155, 0.517642, -0.409649,
		-0.510671, 0.848904, 0.136300,
		39.023323, 33.435658, 36.806091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786652, 33.394833, 37.003658>,  <39.380795, 32.841423, 36.710682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786652, 33.394833, 37.003658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.434372, 33.541206, 37.123966>,  <39.223003, 33.629028, 37.196152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.434372, 33.541206, 37.123966>,  <39.786652, 33.394833, 37.003658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.434372, 33.541206, 37.123966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344007, 0.057618, 0.937197,
		0.325620, 0.928856, -0.176627,
		-0.880699, 0.365931, 0.300772,
		39.170162, 33.650986, 37.214199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947922, 34.064335, 37.363037>,  <39.786652, 33.394833, 37.003658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.947922, 34.064335, 37.363037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.588818, 33.944809, 37.492489>,  <39.373356, 33.873093, 37.570160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.588818, 33.944809, 37.492489>,  <39.947922, 34.064335, 37.363037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.588818, 33.944809, 37.492489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292360, 0.145323, 0.945202,
		-0.329474, 0.943180, -0.043102,
		-0.897760, -0.298818, 0.323628,
		39.319489, 33.855164, 37.589577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739578, 34.530300, 37.874165>,  <39.947922, 34.064335, 37.363037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739578, 34.530300, 37.874165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.486706, 34.230892, 37.954231>,  <39.334984, 34.051247, 38.002274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.486706, 34.230892, 37.954231>,  <39.739578, 34.530300, 37.874165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486706, 34.230892, 37.954231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145501, 0.139063, 0.979536,
		-0.761040, 0.648365, 0.020998,
		-0.632177, -0.748521, 0.200170,
		39.297054, 34.006336, 38.014282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557457, 34.745872, 38.497047>,  <39.739578, 34.530300, 37.874165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.557457, 34.745872, 38.497047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389034, 34.383060, 38.496033>,  <39.287979, 34.165375, 38.495426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389034, 34.383060, 38.496033>,  <39.557457, 34.745872, 38.497047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389034, 34.383060, 38.496033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136966, 0.060821, 0.988707,
		-0.896634, 0.416648, -0.149842,
		-0.421056, -0.907031, -0.002532,
		39.262718, 34.110950, 38.495274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009117, 34.803787, 39.028091>,  <39.557457, 34.745872, 38.497047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009117, 34.803787, 39.028091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.091274, 34.416378, 38.971848>,  <39.140568, 34.183933, 38.938103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.091274, 34.416378, 38.971848>,  <39.009117, 34.803787, 39.028091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091274, 34.416378, 38.971848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085635, -0.160906, 0.983248,
		-0.974925, -0.189915, -0.115990,
		0.205397, -0.968525, -0.140608,
		39.152893, 34.125820, 38.929665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506641, 34.367294, 39.383465>,  <39.009117, 34.803787, 39.028091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.506641, 34.367294, 39.383465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.813263, 34.113377, 39.344624>,  <38.997238, 33.961025, 39.321320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.813263, 34.113377, 39.344624>,  <38.506641, 34.367294, 39.383465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813263, 34.113377, 39.344624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093125, -0.259491, 0.961245,
		-0.635389, -0.727806, -0.258030,
		0.766556, -0.634793, -0.097100,
		39.043228, 33.922939, 39.315495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306290, 33.740822, 39.769085>,  <38.506641, 34.367294, 39.383465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306290, 33.740822, 39.769085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.703362, 33.780651, 39.741749>,  <38.941605, 33.804550, 39.725349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.703362, 33.780651, 39.741749>,  <38.306290, 33.740822, 39.769085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703362, 33.780651, 39.741749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076457, -0.080148, 0.993846,
		0.093484, -0.991797, -0.087174,
		0.992681, 0.099574, -0.068337,
		39.001167, 33.810524, 39.721249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542660, 33.219772, 40.229439>,  <38.306290, 33.740822, 39.769085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542660, 33.219772, 40.229439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.844845, 33.473049, 40.162106>,  <39.026157, 33.625015, 40.121708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.844845, 33.473049, 40.162106>,  <38.542660, 33.219772, 40.229439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844845, 33.473049, 40.162106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199902, 0.021905, 0.979571,
		0.623946, -0.773683, -0.110029,
		0.755467, 0.633195, -0.168329,
		39.071484, 33.663006, 40.111607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075108, 32.930435, 40.758324>,  <38.542660, 33.219772, 40.229439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.075108, 32.930435, 40.758324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.152092, 33.310352, 40.659645>,  <39.198280, 33.538303, 40.600437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.152092, 33.310352, 40.659645>,  <39.075108, 32.930435, 40.758324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.152092, 33.310352, 40.659645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296696, 0.183310, 0.937213,
		0.935378, -0.253566, -0.246520,
		0.192456, 0.949790, -0.246696,
		39.209827, 33.595291, 40.585636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677765, 32.985264, 40.925873>,  <39.075108, 32.930435, 40.758324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677765, 32.985264, 40.925873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548847, 33.363457, 40.907131>,  <39.471497, 33.590374, 40.895885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548847, 33.363457, 40.907131>,  <39.677765, 32.985264, 40.925873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548847, 33.363457, 40.907131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512253, 0.215806, 0.831279,
		0.796069, 0.243913, -0.553878,
		-0.322290, 0.945481, -0.046852,
		39.452160, 33.647102, 40.893074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274200, 33.351486, 41.262707>,  <39.677765, 32.985264, 40.925873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.274200, 33.351486, 41.262707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.980358, 33.622738, 41.271648>,  <39.804054, 33.785488, 41.277016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.980358, 33.622738, 41.271648>,  <40.274200, 33.351486, 41.262707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.980358, 33.622738, 41.271648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363065, 0.365035, 0.857283,
		0.573188, 0.637879, -0.514360,
		-0.734602, 0.678130, 0.022358,
		39.759979, 33.826176, 41.278355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.589222, 34.026054, 41.369671>,  <40.274200, 33.351486, 41.262707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.589222, 34.026054, 41.369671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.212055, 34.028706, 41.502857>,  <39.985756, 34.030296, 41.582771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.212055, 34.028706, 41.502857>,  <40.589222, 34.026054, 41.369671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.212055, 34.028706, 41.502857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320615, 0.288545, 0.902190,
		-0.090098, 0.957443, -0.274198,
		-0.942915, 0.006626, 0.332968,
		39.929180, 34.030693, 41.602749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.463551, 34.716358, 41.632545>,  <40.589222, 34.026054, 41.369671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.463551, 34.716358, 41.632545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.189552, 34.480385, 41.803551>,  <40.025154, 34.338802, 41.906155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.189552, 34.480385, 41.803551>,  <40.463551, 34.716358, 41.632545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189552, 34.480385, 41.803551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297749, 0.308876, 0.903294,
		-0.664929, 0.746042, -0.035926,
		-0.684992, -0.589930, 0.427514,
		39.984055, 34.303406, 41.931805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.247009, 35.181747, 42.121208>,  <40.463551, 34.716358, 41.632545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.247009, 35.181747, 42.121208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095497, 34.833679, 42.247272>,  <40.004589, 34.624840, 42.322910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095497, 34.833679, 42.247272>,  <40.247009, 35.181747, 42.121208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095497, 34.833679, 42.247272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230897, 0.240919, 0.942680,
		-0.896223, 0.429836, 0.109665,
		-0.378777, -0.870172, 0.315165,
		39.981865, 34.572628, 42.341824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886978, 35.355076, 42.663094>,  <40.247009, 35.181747, 42.121208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.886978, 35.355076, 42.663094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.938412, 34.964310, 42.731319>,  <39.969273, 34.729851, 42.772255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.938412, 34.964310, 42.731319>,  <39.886978, 35.355076, 42.663094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.938412, 34.964310, 42.731319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062330, 0.163696, 0.984540,
		-0.989738, -0.137227, -0.039843,
		0.128584, -0.976920, 0.170569,
		39.976986, 34.671234, 42.782490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227448, 35.046093, 43.124592>,  <39.886978, 35.355076, 42.663094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227448, 35.046093, 43.124592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.530560, 34.790997, 43.179798>,  <39.712429, 34.637939, 43.212921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.530560, 34.790997, 43.179798>,  <39.227448, 35.046093, 43.124592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.530560, 34.790997, 43.179798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070453, 0.130312, 0.988967,
		-0.648693, -0.759145, 0.053817,
		0.757782, -0.637744, 0.138016,
		39.757893, 34.599674, 43.221203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977734, 34.670208, 43.685143>,  <39.227448, 35.046093, 43.124592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977734, 34.670208, 43.685143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.368763, 34.587284, 43.699940>,  <39.603382, 34.537529, 43.708817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.368763, 34.587284, 43.699940>,  <38.977734, 34.670208, 43.685143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368763, 34.587284, 43.699940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002789, 0.162887, 0.986641,
		-0.210570, -0.964618, 0.158656,
		0.977575, -0.207314, 0.036990,
		39.662037, 34.525089, 43.711037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068909, 34.204521, 44.309170>,  <38.977734, 34.670208, 43.685143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068909, 34.204521, 44.309170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.421291, 34.370865, 44.218857>,  <39.632721, 34.470669, 44.164669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.421291, 34.370865, 44.218857>,  <39.068909, 34.204521, 44.309170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.421291, 34.370865, 44.218857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124221, 0.257173, 0.958348,
		0.456602, -0.872310, 0.174900,
		0.880957, 0.415857, -0.225784,
		39.685577, 34.495621, 44.151123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507095, 34.101612, 44.812756>,  <39.068909, 34.204521, 44.309170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507095, 34.101612, 44.812756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.708298, 34.406601, 44.649971>,  <39.829018, 34.589596, 44.552299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.708298, 34.406601, 44.649971>,  <39.507095, 34.101612, 44.812756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.708298, 34.406601, 44.649971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113277, 0.408647, 0.905636,
		0.856827, -0.501641, 0.119182,
		0.503007, 0.762473, -0.406964,
		39.859200, 34.635342, 44.527882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.143288, 34.207668, 45.326084>,  <39.507095, 34.101612, 44.812756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.143288, 34.207668, 45.326084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.135597, 34.541252, 45.105488>,  <40.130981, 34.741402, 44.973129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.135597, 34.541252, 45.105488>,  <40.143288, 34.207668, 45.326084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135597, 34.541252, 45.105488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219645, 0.541640, 0.811408,
		0.975390, -0.105531, -0.193590,
		-0.019227, 0.833960, -0.551489,
		40.129829, 34.791439, 44.940041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725975, 34.615532, 45.575794>,  <40.143288, 34.207668, 45.326084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725975, 34.615532, 45.575794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.442101, 34.849243, 45.418335>,  <40.271774, 34.989471, 45.323860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.442101, 34.849243, 45.418335>,  <40.725975, 34.615532, 45.575794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.442101, 34.849243, 45.418335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126504, 0.655357, 0.744650,
		0.693066, 0.478670, -0.539012,
		-0.709687, 0.584279, -0.393653,
		40.229195, 35.024529, 45.300240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953880, 35.359188, 45.635983>,  <40.725975, 34.615532, 45.575794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.953880, 35.359188, 45.635983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.556965, 35.374271, 45.588753>,  <40.318817, 35.383320, 45.560413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.556965, 35.374271, 45.588753>,  <40.953880, 35.359188, 45.635983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.556965, 35.374271, 45.588753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053669, 0.727976, 0.683499,
		0.111731, 0.684565, -0.720338,
		-0.992288, 0.037708, -0.118078,
		40.259277, 35.385586, 45.553329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.866558, 36.042480, 45.583103>,  <40.953880, 35.359188, 45.635983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.866558, 36.042480, 45.583103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.520275, 35.872189, 45.688408>,  <40.312508, 35.770012, 45.751591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.520275, 35.872189, 45.688408>,  <40.866558, 36.042480, 45.583103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.520275, 35.872189, 45.688408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108205, 0.672671, 0.731987,
		-0.488720, 0.605198, -0.628401,
		-0.865704, -0.425733, 0.263262,
		40.260563, 35.744469, 45.767387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.439770, 36.540356, 45.508358>,  <40.866558, 36.042480, 45.583103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.439770, 36.540356, 45.508358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.270817, 36.283302, 45.764050>,  <40.169445, 36.129070, 45.917465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.270817, 36.283302, 45.764050>,  <40.439770, 36.540356, 45.508358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.270817, 36.283302, 45.764050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116055, 0.737763, 0.665009,
		-0.898956, 0.206704, -0.386201,
		-0.422385, -0.642634, 0.639228,
		40.144100, 36.090511, 45.955818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710888, 37.327065, 45.351742>,  <40.439770, 36.540356, 45.508358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710888, 37.327065, 45.351742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838650, 37.704639, 45.318352>,  <40.915306, 37.931183, 45.298317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838650, 37.704639, 45.318352>,  <40.710888, 37.327065, 45.351742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838650, 37.704639, 45.318352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024043, -0.079991, -0.996506,
		-0.947313, 0.320298, -0.002855,
		0.319407, 0.943933, -0.083478,
		40.934471, 37.987820, 45.293308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.220722, 37.805454, 44.996632>,  <40.710888, 37.327065, 45.351742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.220722, 37.805454, 44.996632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.598278, 37.932144, 44.959183>,  <40.824810, 38.008160, 44.936714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.598278, 37.932144, 44.959183>,  <40.220722, 37.805454, 44.996632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.598278, 37.932144, 44.959183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053909, -0.131912, -0.989794,
		-0.325845, 0.939299, -0.107436,
		0.943885, 0.316728, -0.093620,
		40.881443, 38.027161, 44.931095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205326, 38.270775, 44.397675>,  <40.220722, 37.805454, 44.996632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205326, 38.270775, 44.397675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.565708, 38.105816, 44.451641>,  <40.781937, 38.006840, 44.484020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.565708, 38.105816, 44.451641>,  <40.205326, 38.270775, 44.397675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.565708, 38.105816, 44.451641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091120, -0.124177, -0.988067,
		0.424229, 0.902502, -0.074301,
		0.900959, -0.412397, 0.134915,
		40.835995, 37.982098, 44.492115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505718, 38.608372, 43.889698>,  <40.205326, 38.270775, 44.397675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.505718, 38.608372, 43.889698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.733429, 38.290157, 43.972683>,  <40.870056, 38.099228, 44.022476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.733429, 38.290157, 43.972683>,  <40.505718, 38.608372, 43.889698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.733429, 38.290157, 43.972683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144153, -0.151852, -0.977835,
		0.809412, 0.586563, 0.028234,
		0.569274, -0.795541, 0.207466,
		40.904213, 38.051495, 44.034924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.078709, 38.630318, 43.489445>,  <40.505718, 38.608372, 43.889698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.078709, 38.630318, 43.489445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.050968, 38.244751, 43.592243>,  <41.034325, 38.013409, 43.653923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.050968, 38.244751, 43.592243>,  <41.078709, 38.630318, 43.489445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.050968, 38.244751, 43.592243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065386, -0.261455, -0.962999,
		0.995447, -0.049985, 0.081160,
		-0.069355, -0.963921, 0.256996,
		41.030163, 37.955574, 43.669342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.700878, 38.302032, 43.150566>,  <41.078709, 38.630318, 43.489445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.700878, 38.302032, 43.150566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.419075, 38.029457, 43.229877>,  <41.249992, 37.865913, 43.277466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.419075, 38.029457, 43.229877>,  <41.700878, 38.302032, 43.150566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.419075, 38.029457, 43.229877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044064, -0.320848, -0.946105,
		0.708326, -0.657802, 0.256067,
		-0.704509, -0.681434, 0.198280,
		41.207722, 37.825027, 43.289360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.952824, 37.697559, 42.821049>,  <41.700878, 38.302032, 43.150566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.952824, 37.697559, 42.821049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.561752, 37.630905, 42.872234>,  <41.327110, 37.590912, 42.902946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.561752, 37.630905, 42.872234>,  <41.952824, 37.697559, 42.821049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.561752, 37.630905, 42.872234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032336, -0.482463, -0.875319,
		0.207599, -0.859920, 0.466305,
		-0.977679, -0.166637, 0.127965,
		41.268448, 37.580914, 42.910625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.787663, 36.962418, 42.649258>,  <41.952824, 37.697559, 42.821049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.787663, 36.962418, 42.649258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.435020, 37.148472, 42.617222>,  <41.223434, 37.260105, 42.598000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.435020, 37.148472, 42.617222>,  <41.787663, 36.962418, 42.649258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.435020, 37.148472, 42.617222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167147, -0.466378, -0.868650,
		-0.441400, -0.752419, 0.488908,
		-0.881605, 0.465141, -0.080095,
		41.170540, 37.288013, 42.593193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309189, 36.518848, 42.387447>,  <41.787663, 36.962418, 42.649258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.309189, 36.518848, 42.387447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.085114, 36.845287, 42.330631>,  <40.950668, 37.041149, 42.296539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.085114, 36.845287, 42.330631>,  <41.309189, 36.518848, 42.387447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.085114, 36.845287, 42.330631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318434, -0.370453, -0.872562,
		-0.764714, -0.443569, 0.467396,
		-0.560190, 0.816095, -0.142043,
		40.917057, 37.090115, 42.288017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619572, 36.276260, 42.124203>,  <41.309189, 36.518848, 42.387447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619572, 36.276260, 42.124203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.651573, 36.662395, 42.024822>,  <40.670773, 36.894077, 41.965195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.651573, 36.662395, 42.024822>,  <40.619572, 36.276260, 42.124203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.651573, 36.662395, 42.024822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214667, -0.226718, -0.950009,
		-0.973405, 0.129338, 0.189087,
		0.080003, 0.965335, -0.248453,
		40.675575, 36.951996, 41.950287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022816, 36.377514, 41.720291>,  <40.619572, 36.276260, 42.124203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022816, 36.377514, 41.720291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275887, 36.668716, 41.614670>,  <40.427727, 36.843437, 41.551296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275887, 36.668716, 41.614670>,  <40.022816, 36.377514, 41.720291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275887, 36.668716, 41.614670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243156, -0.136980, -0.960266,
		-0.735253, 0.671742, 0.090356,
		0.632675, 0.728010, -0.264054,
		40.465691, 36.887119, 41.535454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609386, 36.838959, 41.373611>,  <40.022816, 36.377514, 41.720291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609386, 36.838959, 41.373611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.990891, 36.883083, 41.261776>,  <40.219791, 36.909557, 41.194675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.990891, 36.883083, 41.261776>,  <39.609386, 36.838959, 41.373611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.990891, 36.883083, 41.261776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277308, -0.035845, -0.960112,
		-0.115931, 0.993251, -0.003597,
		0.953761, 0.110309, -0.279592,
		40.277020, 36.916176, 41.177898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499065, 37.228935, 40.872631>,  <39.609386, 36.838959, 41.373611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.499065, 37.228935, 40.872631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.862175, 37.069244, 40.821140>,  <40.080040, 36.973431, 40.790245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.862175, 37.069244, 40.821140>,  <39.499065, 37.228935, 40.872631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862175, 37.069244, 40.821140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240337, -0.243503, -0.939651,
		0.343785, 0.883927, -0.316994,
		0.907772, -0.399223, -0.128727,
		40.134506, 36.949478, 40.782520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696644, 37.496128, 40.321316>,  <39.499065, 37.228935, 40.872631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.696644, 37.496128, 40.321316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915215, 37.162666, 40.353401>,  <40.046356, 36.962589, 40.372654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915215, 37.162666, 40.353401>,  <39.696644, 37.496128, 40.321316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915215, 37.162666, 40.353401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132792, -0.180810, -0.974512,
		0.826915, 0.521844, -0.209502,
		0.546424, -0.833658, 0.080218,
		40.079144, 36.912567, 40.377468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065964, 37.536694, 39.781616>,  <39.696644, 37.496128, 40.321316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065964, 37.536694, 39.781616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.093536, 37.152061, 39.887909>,  <40.110081, 36.921284, 39.951687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.093536, 37.152061, 39.887909>,  <40.065964, 37.536694, 39.781616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.093536, 37.152061, 39.887909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201890, -0.274303, -0.940212,
		0.976979, 0.011165, -0.213042,
		0.068936, -0.961579, 0.265734,
		40.114216, 36.863586, 39.967628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.515923, 37.228001, 39.333420>,  <40.065964, 37.536694, 39.781616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.515923, 37.228001, 39.333420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.321629, 36.912964, 39.485081>,  <40.205051, 36.723942, 39.576077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.321629, 36.912964, 39.485081>,  <40.515923, 37.228001, 39.333420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.321629, 36.912964, 39.485081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046641, -0.409792, -0.910986,
		0.872861, -0.460181, 0.162316,
		-0.485734, -0.787594, 0.379155,
		40.175907, 36.676685, 39.598827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863338, 36.579304, 39.270451>,  <40.515923, 37.228001, 39.333420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863338, 36.579304, 39.270451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.477711, 36.473614, 39.281368>,  <40.246334, 36.410198, 39.287918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.477711, 36.473614, 39.281368>,  <40.863338, 36.579304, 39.270451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.477711, 36.473614, 39.281368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021722, -0.023994, -0.999476,
		0.264745, -0.964162, 0.017392,
		-0.964074, -0.264229, 0.027296,
		40.188488, 36.394344, 39.289558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.813122, 35.985699, 38.954357>,  <40.863338, 36.579304, 39.270451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.813122, 35.985699, 38.954357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.423641, 36.076324, 38.944801>,  <40.189953, 36.130699, 38.939068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.423641, 36.076324, 38.944801>,  <40.813122, 35.985699, 38.954357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.423641, 36.076324, 38.944801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024264, -0.207400, -0.977955,
		-0.226541, -0.951654, 0.207443,
		-0.973699, 0.226580, -0.023894,
		40.131531, 36.144295, 38.937634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495167, 35.421303, 38.567539>,  <40.813122, 35.985699, 38.954357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495167, 35.421303, 38.567539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.229778, 35.720501, 38.560467>,  <40.070545, 35.900021, 38.556225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.229778, 35.720501, 38.560467>,  <40.495167, 35.421303, 38.567539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.229778, 35.720501, 38.560467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280173, -0.270286, -0.921113,
		-0.693764, -0.606179, 0.388894,
		-0.663472, 0.747993, -0.017680,
		40.030735, 35.944901, 38.555164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084457, 35.155254, 38.138969>,  <40.495167, 35.421303, 38.567539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084457, 35.155254, 38.138969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.993259, 35.543449, 38.170395>,  <39.938541, 35.776367, 38.189251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.993259, 35.543449, 38.170395>,  <40.084457, 35.155254, 38.138969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993259, 35.543449, 38.170395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229608, 0.024820, -0.972967,
		-0.946202, -0.239870, 0.217173,
		-0.227995, 0.970488, 0.078561,
		39.924862, 35.834595, 38.193962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333794, 35.314869, 37.978462>,  <40.084457, 35.155254, 38.138969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333794, 35.314869, 37.978462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.543243, 35.645794, 37.897102>,  <39.668915, 35.844349, 37.848286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.543243, 35.645794, 37.897102>,  <39.333794, 35.314869, 37.978462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543243, 35.645794, 37.897102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242796, -0.083937, -0.966439,
		-0.816617, 0.555441, 0.156915,
		0.523629, 0.827309, -0.203403,
		39.700333, 35.893986, 37.836082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948841, 35.664871, 37.439781>,  <39.333794, 35.314869, 37.978462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948841, 35.664871, 37.439781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322796, 35.806263, 37.426956>,  <39.547169, 35.891098, 37.419262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322796, 35.806263, 37.426956>,  <38.948841, 35.664871, 37.439781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322796, 35.806263, 37.426956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058160, 0.063445, -0.996289,
		-0.350136, 0.933287, 0.079873,
		0.934892, 0.353482, -0.032066,
		39.603264, 35.912308, 37.417336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918510, 36.272629, 36.986526>,  <38.948841, 35.664871, 37.439781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918510, 36.272629, 36.986526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305428, 36.171700, 36.976128>,  <39.537579, 36.111141, 36.969891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305428, 36.171700, 36.976128>,  <38.918510, 36.272629, 36.986526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305428, 36.171700, 36.976128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004938, 0.083725, -0.996477,
		0.253611, 0.964014, 0.079741,
		0.967294, -0.252323, -0.025993,
		39.595615, 36.096001, 36.968330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192467, 36.614494, 36.361744>,  <38.918510, 36.272629, 36.986526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192467, 36.614494, 36.361744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.489532, 36.361328, 36.449261>,  <39.667770, 36.209427, 36.501770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.489532, 36.361328, 36.449261>,  <39.192467, 36.614494, 36.361744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489532, 36.361328, 36.449261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327767, 0.058636, -0.942937,
		0.583969, 0.771998, 0.250995,
		0.742663, -0.632914, 0.218794,
		39.712330, 36.171455, 36.514900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833496, 36.905170, 36.072910>,  <39.192467, 36.614494, 36.361744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833496, 36.905170, 36.072910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.867306, 36.507168, 36.094173>,  <39.887592, 36.268368, 36.106934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.867306, 36.507168, 36.094173>,  <39.833496, 36.905170, 36.072910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.867306, 36.507168, 36.094173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343817, -0.020951, -0.938803,
		0.935225, 0.097631, 0.340328,
		0.084526, -0.995002, 0.053161,
		39.892662, 36.208668, 36.110123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.652245, 36.649750, 35.902454>,  <39.833496, 36.905170, 36.072910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.652245, 36.649750, 35.902454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412628, 36.334885, 35.843773>,  <40.268856, 36.145966, 35.808563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412628, 36.334885, 35.843773>,  <40.652245, 36.649750, 35.902454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.412628, 36.334885, 35.843773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449689, -0.179143, -0.875036,
		0.662516, -0.590153, 0.461293,
		-0.599043, -0.787164, -0.146700,
		40.232914, 36.098736, 35.799763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.083580, 36.136673, 35.703514>,  <40.652245, 36.649750, 35.902454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.083580, 36.136673, 35.703514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.716106, 36.058334, 35.566303>,  <40.495621, 36.011330, 35.483978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.716106, 36.058334, 35.566303>,  <41.083580, 36.136673, 35.703514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.716106, 36.058334, 35.566303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375694, -0.165100, -0.911919,
		0.121962, -0.966637, 0.225252,
		-0.918683, -0.195846, -0.343024,
		40.440502, 35.999580, 35.463394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.220688, 35.642529, 35.321846>,  <41.083580, 36.136673, 35.703514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.220688, 35.642529, 35.321846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.849068, 35.748257, 35.218307>,  <40.626095, 35.811695, 35.156185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.849068, 35.748257, 35.218307>,  <41.220688, 35.642529, 35.321846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.849068, 35.748257, 35.218307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253865, -0.053476, -0.965760,
		-0.269112, -0.962951, -0.017420,
		-0.929049, 0.264320, -0.258850,
		40.570354, 35.827553, 35.140652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.135525, 35.333923, 34.711674>,  <41.220688, 35.642529, 35.321846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.135525, 35.333923, 34.711674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.822826, 35.583309, 34.706367>,  <40.635208, 35.732941, 34.703182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.822826, 35.583309, 34.706367>,  <41.135525, 35.333923, 34.711674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.822826, 35.583309, 34.706367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064542, 0.059730, -0.996126,
		-0.620254, -0.779569, -0.086933,
		-0.781741, 0.623461, -0.013267,
		40.588303, 35.770348, 34.702389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.666092, 35.043701, 34.203915>,  <41.135525, 35.333923, 34.711674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.666092, 35.043701, 34.203915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.604141, 35.435707, 34.253838>,  <40.566971, 35.670910, 34.283791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.604141, 35.435707, 34.253838>,  <40.666092, 35.043701, 34.203915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.604141, 35.435707, 34.253838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074548, 0.137567, -0.987683,
		-0.985117, -0.143668, -0.094365,
		-0.154880, 0.980018, 0.124809,
		40.557678, 35.729713, 34.291279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396515, 35.141914, 33.561691>,  <40.666092, 35.043701, 34.203915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.396515, 35.141914, 33.561691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.509354, 35.494926, 33.712193>,  <40.577057, 35.706734, 33.802494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.509354, 35.494926, 33.712193>,  <40.396515, 35.141914, 33.561691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.509354, 35.494926, 33.712193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174626, 0.338397, -0.924658,
		-0.943358, 0.326551, -0.058650,
		0.282102, 0.882526, 0.376254,
		40.593983, 35.759686, 33.825069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139816, 35.623199, 33.054707>,  <40.396515, 35.141914, 33.561691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.139816, 35.623199, 33.054707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431583, 35.799549, 33.263927>,  <40.606644, 35.905357, 33.389458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431583, 35.799549, 33.263927>,  <40.139816, 35.623199, 33.054707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431583, 35.799549, 33.263927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409543, 0.331002, -0.850125,
		-0.547927, 0.834308, 0.060883,
		0.729418, 0.440871, 0.523050,
		40.650410, 35.931812, 33.420841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180119, 36.279644, 32.752659>,  <40.139816, 35.623199, 33.054707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180119, 36.279644, 32.752659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.523853, 36.223503, 32.949371>,  <40.730095, 36.189819, 33.067398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.523853, 36.223503, 32.949371>,  <40.180119, 36.279644, 32.752659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.523853, 36.223503, 32.949371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510799, 0.188380, -0.838807,
		0.025087, 0.972015, 0.233573,
		0.859334, -0.140353, 0.491779,
		40.781654, 36.181396, 33.096905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.562405, 36.791950, 32.478111>,  <40.180119, 36.279644, 32.752659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.562405, 36.791950, 32.478111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.842449, 36.556610, 32.639946>,  <41.010475, 36.415405, 32.737045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.842449, 36.556610, 32.639946>,  <40.562405, 36.791950, 32.478111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.842449, 36.556610, 32.639946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566068, 0.111965, -0.816719,
		0.435217, 0.800817, 0.411434,
		0.700109, -0.588350, 0.404588,
		41.052483, 36.380104, 32.761322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.149265, 37.181492, 32.485931>,  <40.562405, 36.791950, 32.478111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.149265, 37.181492, 32.485931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.258995, 36.796860, 32.481663>,  <41.324833, 36.566082, 32.479099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.258995, 36.796860, 32.481663>,  <41.149265, 37.181492, 32.485931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.258995, 36.796860, 32.481663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654383, 0.194796, -0.730642,
		0.704649, 0.193445, 0.682678,
		0.274322, -0.961579, -0.010676,
		41.341293, 36.508385, 32.478458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.835781, 37.235344, 32.392456>,  <41.149265, 37.181492, 32.485931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.835781, 37.235344, 32.392456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.747314, 36.855232, 32.304775>,  <41.694233, 36.627163, 32.252167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.747314, 36.855232, 32.304775>,  <41.835781, 37.235344, 32.392456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.747314, 36.855232, 32.304775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626145, 0.033957, -0.778966,
		0.747681, -0.309533, 0.587505,
		-0.221166, -0.950282, -0.219202,
		41.680965, 36.570148, 32.239014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.514114, 36.968987, 32.257656>,  <41.835781, 37.235344, 32.392456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.514114, 36.968987, 32.257656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.248055, 36.718479, 32.095001>,  <42.088417, 36.568172, 31.997408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.248055, 36.718479, 32.095001>,  <42.514114, 36.968987, 32.257656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.248055, 36.718479, 32.095001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499606, 0.031467, -0.865681,
		0.554949, -0.778969, 0.291959,
		-0.665151, -0.626273, -0.406640,
		42.048508, 36.530598, 31.973009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.903122, 36.413097, 31.853838>,  <42.514114, 36.968987, 32.257656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.903122, 36.413097, 31.853838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.529694, 36.459244, 31.718111>,  <42.305637, 36.486931, 31.636675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.529694, 36.459244, 31.718111>,  <42.903122, 36.413097, 31.853838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.529694, 36.459244, 31.718111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347163, 0.055963, -0.936134,
		-0.089010, -0.991745, -0.092297,
		-0.933571, 0.115367, -0.339316,
		42.249622, 36.493855, 31.616316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.596260, 36.172527, 31.706017>,  <42.903122, 36.413097, 31.853838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.596260, 36.172527, 31.706017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.970440, 36.042580, 31.650311>,  <44.194946, 35.964611, 31.616886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.970440, 36.042580, 31.650311>,  <43.596260, 36.172527, 31.706017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.970440, 36.042580, 31.650311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331341, 0.668790, 0.665533,
		-0.123069, -0.668717, 0.733261,
		0.935450, -0.324865, -0.139266,
		44.251076, 35.945122, 31.608530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.830112, 35.722996, 32.317383>,  <43.596260, 36.172527, 31.706017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.830112, 35.722996, 32.317383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.084068, 35.956684, 32.115154>,  <44.236443, 36.096897, 31.993818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.084068, 35.956684, 32.115154>,  <43.830112, 35.722996, 32.317383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.084068, 35.956684, 32.115154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155916, 0.544022, 0.824458,
		0.756708, -0.602265, 0.254303,
		0.634888, 0.584224, -0.505568,
		44.274536, 36.131950, 31.963484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.364719, 35.804478, 32.859570>,  <43.830112, 35.722996, 32.317383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.364719, 35.804478, 32.859570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.364040, 36.104290, 32.594784>,  <44.363632, 36.284180, 32.435913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.364040, 36.104290, 32.594784>,  <44.364719, 35.804478, 32.859570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.364040, 36.104290, 32.594784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057839, 0.660785, 0.748344,
		0.998324, 0.039559, 0.042230,
		-0.001699, 0.749532, -0.661966,
		44.363529, 36.329151, 32.396194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.026810, 36.294624, 32.921558>,  <44.364719, 35.804478, 32.859570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.026810, 36.294624, 32.921558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.677208, 36.468704, 32.835106>,  <44.467445, 36.573151, 32.783234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.677208, 36.468704, 32.835106>,  <45.026810, 36.294624, 32.921558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.677208, 36.468704, 32.835106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205734, 0.734389, 0.646797,
		0.440210, 0.520840, -0.731397,
		-0.874007, 0.435199, -0.216131,
		44.415005, 36.599262, 32.770267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.164890, 37.005146, 32.741394>,  <45.026810, 36.294624, 32.921558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.164890, 37.005146, 32.741394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.804459, 36.993816, 32.914486>,  <44.588200, 36.987019, 33.018341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.804459, 36.993816, 32.914486>,  <45.164890, 37.005146, 32.741394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.804459, 36.993816, 32.914486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352430, 0.533602, 0.768805,
		-0.252683, 0.845261, -0.470835,
		-0.901080, -0.028328, 0.432727,
		44.534134, 36.985317, 33.044304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.622311, 37.131340, 32.137497>,  <45.164890, 37.005146, 32.741394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.622311, 37.131340, 32.137497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.744720, 37.484875, 31.995977>,  <44.818165, 37.696995, 31.911064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.744720, 37.484875, 31.995977>,  <44.622311, 37.131340, 32.137497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.744720, 37.484875, 31.995977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456007, -0.462308, -0.760479,
		-0.835709, 0.071385, -0.544513,
		0.306020, 0.883841, -0.353803,
		44.836525, 37.750027, 31.889837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.311718, 37.237938, 31.426464>,  <44.622311, 37.131340, 32.137497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.311718, 37.237938, 31.426464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.672421, 37.400700, 31.484789>,  <44.888844, 37.498356, 31.519783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.672421, 37.400700, 31.484789>,  <44.311718, 37.237938, 31.426464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.672421, 37.400700, 31.484789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309413, -0.372117, -0.875096,
		-0.301822, 0.834240, -0.461461,
		0.901758, 0.406905, 0.145811,
		44.942947, 37.522770, 31.528532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.555695, 37.770802, 30.922014>,  <44.311718, 37.237938, 31.426464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.555695, 37.770802, 30.922014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.865910, 37.563248, 31.065851>,  <45.052040, 37.438717, 31.152153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.865910, 37.563248, 31.065851>,  <44.555695, 37.770802, 30.922014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.865910, 37.563248, 31.065851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054219, -0.512753, -0.856822,
		0.628971, 0.683994, -0.369525,
		0.775536, -0.518881, 0.359592,
		45.098572, 37.407585, 31.173729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.131447, 37.894379, 30.454065>,  <44.555695, 37.770802, 30.922014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.131447, 37.894379, 30.454065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.120953, 37.535553, 30.630510>,  <45.114655, 37.320255, 30.736378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.120953, 37.535553, 30.630510>,  <45.131447, 37.894379, 30.454065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.120953, 37.535553, 30.630510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100865, -0.436639, -0.893965,
		0.994554, -0.067946, -0.079027,
		-0.026235, -0.897067, 0.441114,
		45.113083, 37.266434, 30.762844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.406532, 37.467899, 29.974037>,  <45.131447, 37.894379, 30.454065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.406532, 37.467899, 29.974037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.237362, 37.205990, 30.224604>,  <45.135860, 37.048843, 30.374943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.237362, 37.205990, 30.224604>,  <45.406532, 37.467899, 29.974037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.237362, 37.205990, 30.224604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263711, -0.572426, -0.776392,
		0.866941, -0.493552, 0.069424,
		-0.422930, -0.654778, 0.626415,
		45.110481, 37.009556, 30.412529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.668102, 36.882256, 29.763485>,  <45.406532, 37.467899, 29.974037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.668102, 36.882256, 29.763485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.347397, 36.768967, 29.973993>,  <45.154972, 36.700993, 30.100298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.347397, 36.768967, 29.973993>,  <45.668102, 36.882256, 29.763485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.347397, 36.768967, 29.973993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209759, -0.691202, -0.691550,
		0.559623, -0.664849, 0.494771,
		-0.801763, -0.283224, 0.526270,
		45.106869, 36.683998, 30.131874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.692657, 36.130699, 29.965317>,  <45.668102, 36.882256, 29.763485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.692657, 36.130699, 29.965317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.309364, 36.243019, 29.987032>,  <45.079388, 36.310410, 30.000061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.309364, 36.243019, 29.987032>,  <45.692657, 36.130699, 29.965317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.309364, 36.243019, 29.987032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225076, -0.623280, -0.748907,
		-0.176457, -0.729844, 0.660447,
		-0.958229, 0.280801, 0.054288,
		45.021896, 36.327259, 30.003319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.314129, 35.496742, 30.024944>,  <45.692657, 36.130699, 29.965317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.314129, 35.496742, 30.024944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.082764, 35.792057, 29.886162>,  <44.943947, 35.969246, 29.802893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.082764, 35.792057, 29.886162>,  <45.314129, 35.496742, 30.024944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.082764, 35.792057, 29.886162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452408, -0.644241, -0.616669,
		-0.678801, -0.199721, 0.706641,
		-0.578408, 0.738285, -0.346956,
		44.909241, 36.013542, 29.782076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.666874, 35.129581, 29.956141>,  <45.314129, 35.496742, 30.024944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.666874, 35.129581, 29.956141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.583385, 35.458660, 29.744629>,  <44.533291, 35.656109, 29.617722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.583385, 35.458660, 29.744629>,  <44.666874, 35.129581, 29.956141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.583385, 35.458660, 29.744629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569283, -0.541848, -0.618318,
		-0.795205, 0.171966, 0.581444,
		-0.208724, 0.822696, -0.528777,
		44.520767, 35.705467, 29.585995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.904144, 35.177402, 29.892551>,  <44.666874, 35.129581, 29.956141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.904144, 35.177402, 29.892551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.043091, 35.408646, 29.597219>,  <44.126461, 35.547390, 29.420021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.043091, 35.408646, 29.597219>,  <43.904144, 35.177402, 29.892551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.043091, 35.408646, 29.597219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494527, -0.556032, -0.668035,
		-0.796729, 0.597178, 0.092741,
		0.347369, 0.578106, -0.738328,
		44.147301, 35.582077, 29.375721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.262154, 35.465988, 29.472357>,  <43.904144, 35.177402, 29.892551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.262154, 35.465988, 29.472357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.573647, 35.478615, 29.221731>,  <43.760540, 35.486191, 29.071356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.573647, 35.478615, 29.221731>,  <43.262154, 35.465988, 29.472357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.573647, 35.478615, 29.221731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443557, -0.678597, -0.585461,
		-0.443665, 0.733833, -0.514443,
		0.778729, 0.031564, -0.626566,
		43.807266, 35.488083, 29.033762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.005566, 35.389236, 28.828671>,  <43.262154, 35.465988, 29.472357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.005566, 35.389236, 28.828671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.392776, 35.291420, 28.806282>,  <43.625103, 35.232731, 28.792849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.392776, 35.291420, 28.806282>,  <43.005566, 35.389236, 28.828671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.392776, 35.291420, 28.806282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230868, -0.781134, -0.580112,
		0.098140, 0.574483, -0.812612,
		0.968023, -0.244538, -0.055969,
		43.683182, 35.218060, 28.789492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.109619, 35.255165, 28.089159>,  <43.005566, 35.389236, 28.828671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.109619, 35.255165, 28.089159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.422260, 35.077763, 28.264612>,  <43.609844, 34.971321, 28.369884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.422260, 35.077763, 28.264612>,  <43.109619, 35.255165, 28.089159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.422260, 35.077763, 28.264612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097970, -0.607184, -0.788498,
		0.616033, 0.659266, -0.431127,
		0.781604, -0.443504, 0.438634,
		43.656742, 34.944710, 28.396202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.632938, 35.079773, 27.558569>,  <43.109619, 35.255165, 28.089159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.632938, 35.079773, 27.558569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.716797, 34.828960, 27.858671>,  <43.767113, 34.678474, 28.038733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.716797, 34.828960, 27.858671>,  <43.632938, 35.079773, 27.558569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.716797, 34.828960, 27.858671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047216, -0.772903, -0.632766,
		0.976637, 0.097233, -0.191642,
		0.209647, -0.627030, 0.750254,
		43.779690, 34.640850, 28.083748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.952705, 34.541950, 27.218443>,  <43.632938, 35.079773, 27.558569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.952705, 34.541950, 27.218443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.878353, 34.359413, 27.566513>,  <43.833740, 34.249893, 27.775354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.878353, 34.359413, 27.566513>,  <43.952705, 34.541950, 27.218443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.878353, 34.359413, 27.566513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090312, -0.889794, -0.447336,
		0.978413, -0.004564, 0.206608,
		-0.185880, -0.456339, 0.870174,
		43.822590, 34.222511, 27.827566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.382004, 33.932705, 27.288366>,  <43.952705, 34.541950, 27.218443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.382004, 33.932705, 27.288366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.086739, 33.844872, 27.543518>,  <43.909580, 33.792171, 27.696609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.086739, 33.844872, 27.543518>,  <44.382004, 33.932705, 27.288366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.086739, 33.844872, 27.543518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101045, -0.898890, -0.426364,
		0.667007, -0.379183, 0.641343,
		-0.738168, -0.219583, 0.637881,
		43.865288, 33.778996, 27.734882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.681244, 33.339668, 27.641710>,  <44.382004, 33.932705, 27.288366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.681244, 33.339668, 27.641710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.285812, 33.343288, 27.701874>,  <44.048553, 33.345459, 27.737972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.285812, 33.343288, 27.701874>,  <44.681244, 33.339668, 27.641710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.285812, 33.343288, 27.701874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061844, -0.934608, -0.350262,
		0.137406, -0.355565, 0.924496,
		-0.988582, 0.009046, 0.150411,
		43.989239, 33.346001, 27.746998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.526768, 32.691887, 27.984371>,  <44.681244, 33.339668, 27.641710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.526768, 32.691887, 27.984371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.187202, 32.812901, 27.811016>,  <43.983463, 32.885509, 27.707003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.187202, 32.812901, 27.811016>,  <44.526768, 32.691887, 27.984371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.187202, 32.812901, 27.811016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145909, -0.922253, -0.357994,
		-0.507998, -0.240670, 0.827053,
		-0.848910, 0.302534, -0.433387,
		43.932529, 32.903660, 27.681000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.158604, 32.089096, 27.979805>,  <44.526768, 32.691887, 27.984371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.158604, 32.089096, 27.979805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.955853, 32.310379, 27.715372>,  <43.834202, 32.443150, 27.556713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.955853, 32.310379, 27.715372>,  <44.158604, 32.089096, 27.979805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.955853, 32.310379, 27.715372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163684, -0.814720, -0.556272,
		-0.846334, -0.173754, 0.503516,
		-0.506879, 0.553209, -0.661085,
		43.803787, 32.476341, 27.517048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.567455, 31.675867, 27.824314>,  <44.158604, 32.089096, 27.979805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.567455, 31.675867, 27.824314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.600838, 31.925619, 27.513653>,  <43.620865, 32.075470, 27.327257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.600838, 31.925619, 27.513653>,  <43.567455, 31.675867, 27.824314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.600838, 31.925619, 27.513653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189367, -0.755232, -0.627506,
		-0.978354, 0.199439, 0.055210,
		0.083453, 0.624378, -0.776651,
		43.625874, 32.112934, 27.280657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.897598, 31.704275, 27.403740>,  <43.567455, 31.675867, 27.824314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.897598, 31.704275, 27.403740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.224770, 31.785906, 27.188578>,  <43.421074, 31.834885, 27.059481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.224770, 31.785906, 27.188578>,  <42.897598, 31.704275, 27.403740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.224770, 31.785906, 27.188578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183357, -0.793750, -0.579949,
		-0.545317, 0.572987, -0.611814,
		0.817930, 0.204076, -0.537906,
		43.470150, 31.847128, 27.027206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.665577, 31.606268, 26.691271>,  <42.897598, 31.704275, 27.403740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.665577, 31.606268, 26.691271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.065201, 31.596544, 26.676907>,  <43.304974, 31.590710, 26.668289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.065201, 31.596544, 26.676907>,  <42.665577, 31.606268, 26.691271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.065201, 31.596544, 26.676907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042729, -0.693015, -0.719655,
		-0.007392, 0.720513, -0.693402,
		0.999059, -0.024308, -0.035909,
		43.364918, 31.589252, 26.666134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.809490, 31.455538, 26.014536>,  <42.665577, 31.606268, 26.691271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.809490, 31.455538, 26.014536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.172642, 31.382629, 26.165546>,  <43.390533, 31.338884, 26.256153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.172642, 31.382629, 26.165546>,  <42.809490, 31.455538, 26.014536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.172642, 31.382629, 26.165546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162605, -0.676929, -0.717862,
		0.386406, 0.713122, -0.584934,
		0.907882, -0.182273, 0.377527,
		43.445007, 31.327948, 26.278805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.247528, 31.368881, 25.380745>,  <42.809490, 31.455538, 26.014536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.247528, 31.368881, 25.380745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.462658, 31.206028, 25.676039>,  <43.591736, 31.108316, 25.853214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.462658, 31.206028, 25.676039>,  <43.247528, 31.368881, 25.380745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.462658, 31.206028, 25.676039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261362, -0.752000, -0.605134,
		0.801522, 0.518401, -0.298033,
		0.537823, -0.407133, 0.738234,
		43.624004, 31.083887, 25.897509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.773872, 31.157721, 25.048256>,  <43.247528, 31.368881, 25.380745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.773872, 31.157721, 25.048256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.771408, 30.921312, 25.370909>,  <43.769928, 30.779467, 25.564501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.771408, 30.921312, 25.370909>,  <43.773872, 31.157721, 25.048256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.771408, 30.921312, 25.370909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613203, -0.639419, -0.463817,
		0.789901, 0.491771, 0.366357,
		-0.006164, -0.591021, 0.806633,
		43.769558, 30.744007, 25.612898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.499115, 31.062805, 25.349615>,  <43.773872, 31.157721, 25.048256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.499115, 31.062805, 25.349615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.283611, 30.756641, 25.490406>,  <44.154308, 30.572943, 25.574881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.283611, 30.756641, 25.490406>,  <44.499115, 31.062805, 25.349615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.283611, 30.756641, 25.490406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750063, -0.626034, -0.213276,
		0.383594, 0.149102, 0.911386,
		-0.538759, -0.765409, 0.351979,
		44.121983, 30.527020, 25.595999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.686935, 30.781162, 26.039059>,  <44.499115, 31.062805, 25.349615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.686935, 30.781162, 26.039059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.572041, 30.549360, 25.733990>,  <44.503105, 30.410280, 25.550947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.572041, 30.549360, 25.733990>,  <44.686935, 30.781162, 26.039059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.572041, 30.549360, 25.733990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931521, -0.354435, -0.081511,
		-0.223082, -0.733860, 0.641626,
		-0.287233, -0.579504, -0.762675,
		44.485870, 30.375509, 25.505188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.096325, 30.065060, 25.991804>,  <44.686935, 30.781162, 26.039059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.096325, 30.065060, 25.991804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.989006, 30.181288, 25.624416>,  <44.924614, 30.251024, 25.403984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.989006, 30.181288, 25.624416>,  <45.096325, 30.065060, 25.991804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.989006, 30.181288, 25.624416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895698, -0.275711, -0.348867,
		-0.354603, -0.916271, -0.186292,
		-0.268294, 0.290571, -0.918470,
		44.908520, 30.268459, 25.348875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.264332, 29.815157, 25.359180>,  <45.096325, 30.065060, 25.991804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.264332, 29.815157, 25.359180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.113403, 29.469282, 25.226549>,  <45.022846, 29.261757, 25.146971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.113403, 29.469282, 25.226549>,  <45.264332, 29.815157, 25.359180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.113403, 29.469282, 25.226549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300515, 0.452994, -0.839338,
		0.875966, -0.217059, -0.430777,
		-0.377325, -0.864686, -0.331578,
		45.000206, 29.209877, 25.127075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.622669, 29.676950, 24.780968>,  <45.264332, 29.815157, 25.359180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.622669, 29.676950, 24.780968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.245213, 29.545258, 24.794559>,  <45.018738, 29.466242, 24.802715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.245213, 29.545258, 24.794559>,  <45.622669, 29.676950, 24.780968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.245213, 29.545258, 24.794559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223125, 0.556953, -0.800011,
		0.244463, -0.762503, -0.599022,
		-0.943638, -0.329230, 0.033980,
		44.962120, 29.446489, 24.804752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.151409, 29.547588, 25.255100>,  <45.622669, 29.676950, 24.780968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.151409, 29.547588, 25.255100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.371864, 29.324837, 25.503660>,  <46.504135, 29.191185, 25.652796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.371864, 29.324837, 25.503660>,  <46.151409, 29.547588, 25.255100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.371864, 29.324837, 25.503660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537180, 0.333068, 0.774921,
		-0.638505, -0.760889, -0.115579,
		0.551134, -0.556879, 0.621400,
		46.537205, 29.157774, 25.690081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.769230, 29.369925, 25.895258>,  <46.151409, 29.547588, 25.255100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.769230, 29.369925, 25.895258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.138981, 29.288248, 26.024149>,  <46.360832, 29.239243, 26.101482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.138981, 29.288248, 26.024149>,  <45.769230, 29.369925, 25.895258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.138981, 29.288248, 26.024149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196349, 0.469529, 0.860808,
		-0.327064, -0.858981, 0.393930,
		0.924379, -0.204191, 0.322226,
		46.416294, 29.226992, 26.120817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.773064, 29.136915, 26.624176>,  <45.769230, 29.369925, 25.895258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.773064, 29.136915, 26.624176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.124920, 29.300732, 26.527422>,  <46.336033, 29.399021, 26.469370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.124920, 29.300732, 26.527422>,  <45.773064, 29.136915, 26.624176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.124920, 29.300732, 26.527422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101485, 0.658442, 0.745758,
		0.464686, -0.631452, 0.620754,
		0.879641, 0.409540, -0.241886,
		46.388813, 29.423594, 26.454857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.110832, 29.286585, 27.251886>,  <45.773064, 29.136915, 26.624176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.110832, 29.286585, 27.251886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.241879, 29.526033, 26.959497>,  <46.320507, 29.669703, 26.784063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.241879, 29.526033, 26.959497>,  <46.110832, 29.286585, 27.251886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.241879, 29.526033, 26.959497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152907, 0.729878, 0.666257,
		0.932356, -0.330046, 0.147585,
		0.327614, 0.598622, -0.730972,
		46.340164, 29.705620, 26.740206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.863670, 29.607328, 27.334473>,  <46.110832, 29.286585, 27.251886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.863670, 29.607328, 27.334473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.557018, 29.808601, 27.174931>,  <46.373028, 29.929365, 27.079205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.557018, 29.808601, 27.174931>,  <46.863670, 29.607328, 27.334473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.557018, 29.808601, 27.174931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131749, 0.731242, 0.669274,
		0.628427, 0.460536, -0.626886,
		-0.766630, 0.503181, -0.398857,
		46.327030, 29.959557, 27.055273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.146336, 30.255909, 27.085495>,  <46.863670, 29.607328, 27.334473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.146336, 30.255909, 27.085495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.752487, 30.299124, 27.140413>,  <46.516178, 30.325052, 27.173365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.752487, 30.299124, 27.140413>,  <47.146336, 30.255909, 27.085495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.752487, 30.299124, 27.140413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166439, 0.818962, 0.549181,
		-0.053106, 0.563586, -0.824349,
		-0.984621, 0.108039, 0.137295,
		46.457100, 30.331535, 27.181602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.014927, 31.020504, 26.988062>,  <47.146336, 30.255909, 27.085495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.014927, 31.020504, 26.988062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.682140, 30.897530, 27.172806>,  <46.482468, 30.823746, 27.283653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.682140, 30.897530, 27.172806>,  <47.014927, 31.020504, 26.988062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.682140, 30.897530, 27.172806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052737, 0.784855, 0.617431,
		-0.552314, 0.538039, -0.636760,
		-0.831967, -0.307435, 0.461861,
		46.432549, 30.805300, 27.311363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.529499, 31.646601, 26.894058>,  <47.014927, 31.020504, 26.988062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.529499, 31.646601, 26.894058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.372524, 31.415947, 27.180689>,  <46.278339, 31.277555, 27.352667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.372524, 31.415947, 27.180689>,  <46.529499, 31.646601, 26.894058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.372524, 31.415947, 27.180689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135238, 0.734435, 0.665068,
		-0.909782, 0.357907, -0.210237,
		-0.392438, -0.576635, 0.716578,
		46.254791, 31.242956, 27.395662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.978313, 32.074108, 27.281164>,  <46.529499, 31.646601, 26.894058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.978313, 32.074108, 27.281164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.089382, 31.781422, 27.530157>,  <46.156025, 31.605808, 27.679552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.089382, 31.781422, 27.530157>,  <45.978313, 32.074108, 27.281164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.089382, 31.781422, 27.530157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139048, 0.671753, 0.727609,
		-0.950559, -0.115484, 0.288274,
		0.277676, -0.731719, 0.622482,
		46.172684, 31.561907, 27.716902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.568409, 32.177898, 27.907162>,  <45.978313, 32.074108, 27.281164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.568409, 32.177898, 27.907162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.867718, 31.932837, 28.008938>,  <46.047302, 31.785799, 28.070004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.867718, 31.932837, 28.008938>,  <45.568409, 32.177898, 27.907162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.867718, 31.932837, 28.008938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261208, 0.624662, 0.735913,
		-0.609802, -0.484201, 0.627448,
		0.748273, -0.612655, 0.254443,
		46.092201, 31.749041, 28.085270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.517044, 32.059662, 28.583752>,  <45.568409, 32.177898, 27.907162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.517044, 32.059662, 28.583752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.900295, 31.947660, 28.559757>,  <46.130245, 31.880461, 28.545361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.900295, 31.947660, 28.559757>,  <45.517044, 32.059662, 28.583752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.900295, 31.947660, 28.559757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159369, 0.347371, 0.924086,
		-0.237909, -0.894948, 0.377448,
		0.958124, -0.280002, -0.059984,
		46.187733, 31.863661, 28.541761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.682369, 31.775211, 29.180769>,  <45.517044, 32.059662, 28.583752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.682369, 31.775211, 29.180769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.035030, 31.902946, 29.041792>,  <46.246628, 31.979588, 28.958405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.035030, 31.902946, 29.041792>,  <45.682369, 31.775211, 29.180769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.035030, 31.902946, 29.041792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178121, 0.456604, 0.871657,
		0.436990, -0.830386, 0.345687,
		0.881654, 0.319331, -0.347441,
		46.299526, 31.998747, 28.937559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.138218, 31.710182, 29.755224>,  <45.682369, 31.775211, 29.180769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.138218, 31.710182, 29.755224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.336212, 31.950594, 29.504227>,  <46.455009, 32.094841, 29.353628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.336212, 31.950594, 29.504227>,  <46.138218, 31.710182, 29.755224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.336212, 31.950594, 29.504227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480102, 0.412734, 0.774049,
		0.724217, -0.684405, -0.084258,
		0.494987, 0.601032, -0.627493,
		46.484707, 32.130905, 29.315979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.802155, 31.828432, 30.068951>,  <46.138218, 31.710182, 29.755224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.802155, 31.828432, 30.068951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.793396, 32.126389, 29.802219>,  <46.788139, 32.305161, 29.642181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.793396, 32.126389, 29.802219>,  <46.802155, 31.828432, 30.068951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.793396, 32.126389, 29.802219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143346, 0.662434, 0.735277,
		0.989430, -0.079488, -0.121281,
		-0.021895, 0.744891, -0.666827,
		46.786827, 32.349857, 29.602171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.356438, 32.266613, 30.144480>,  <46.802155, 31.828432, 30.068951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.356438, 32.266613, 30.144480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.092232, 32.517262, 29.979040>,  <46.933708, 32.667652, 29.879776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.092232, 32.517262, 29.979040>,  <47.356438, 32.266613, 30.144480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.092232, 32.517262, 29.979040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156778, 0.653833, 0.740218,
		0.734264, 0.424080, -0.530106,
		-0.660513, 0.626625, -0.413600,
		46.894077, 32.705250, 29.854959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.724377, 32.960594, 30.080486>,  <47.356438, 32.266613, 30.144480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.724377, 32.960594, 30.080486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.338318, 33.063587, 30.061729>,  <47.106682, 33.125385, 30.050476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.338318, 33.063587, 30.061729>,  <47.724377, 32.960594, 30.080486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.338318, 33.063587, 30.061729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212670, 0.875998, 0.432895,
		0.152539, 0.407834, -0.900224,
		-0.965144, 0.257484, -0.046890,
		47.048775, 33.140831, 30.047663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.642773, 33.689682, 29.937687>,  <47.724377, 32.960594, 30.080486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.642773, 33.689682, 29.937687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.292915, 33.606903, 30.113035>,  <47.083000, 33.557236, 30.218245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.292915, 33.606903, 30.113035>,  <47.642773, 33.689682, 29.937687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.292915, 33.606903, 30.113035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077027, 0.833476, 0.547161,
		-0.478608, 0.512337, -0.713053,
		-0.874643, -0.206952, 0.438372,
		47.030521, 33.544819, 30.244547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.181885, 34.292282, 29.858200>,  <47.642773, 33.689682, 29.937687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.181885, 34.292282, 29.858200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.009331, 34.101688, 30.164631>,  <46.905800, 33.987331, 30.348490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.009331, 34.101688, 30.164631>,  <47.181885, 34.292282, 29.858200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.009331, 34.101688, 30.164631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078960, 0.865831, 0.494067,
		-0.898708, 0.152642, -0.411126,
		-0.431381, -0.476485, 0.766076,
		46.879917, 33.958744, 30.394453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.786819, 34.775890, 30.165031>,  <47.181885, 34.292282, 29.858200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.786819, 34.775890, 30.165031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.781620, 34.514206, 30.467512>,  <46.778500, 34.357197, 30.649000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.781620, 34.514206, 30.467512>,  <46.786819, 34.775890, 30.165031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.781620, 34.514206, 30.467512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102654, 0.753144, 0.649797,
		-0.994632, -0.069178, -0.076949,
		-0.013002, -0.654208, 0.756203,
		46.777718, 34.317944, 30.694372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.193947, 34.902168, 30.502951>,  <46.786819, 34.775890, 30.165031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.193947, 34.902168, 30.502951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.444942, 34.728573, 30.761538>,  <46.595539, 34.624416, 30.916689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.444942, 34.728573, 30.761538>,  <46.193947, 34.902168, 30.502951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.444942, 34.728573, 30.761538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258219, 0.667291, 0.698603,
		-0.734565, -0.605292, 0.306651,
		0.627485, -0.433986, 0.646467,
		46.633186, 34.598377, 30.955477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.732895, 34.732059, 31.123119>,  <46.193947, 34.902168, 30.502951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.732895, 34.732059, 31.123119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.120655, 34.770069, 31.213661>,  <46.353310, 34.792873, 31.267986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.120655, 34.770069, 31.213661>,  <45.732895, 34.732059, 31.123119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.120655, 34.770069, 31.213661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236209, 0.612164, 0.754626,
		-0.066862, -0.785001, 0.615876,
		0.969399, 0.095020, 0.226354,
		46.411476, 34.798576, 31.281567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.730343, 34.871758, 31.888084>,  <45.732895, 34.732059, 31.123119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.730343, 34.871758, 31.888084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.085285, 34.993248, 31.749319>,  <46.298252, 35.066143, 31.666059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.085285, 34.993248, 31.749319>,  <45.730343, 34.871758, 31.888084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.085285, 34.993248, 31.749319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049310, 0.810586, 0.583540,
		0.458437, -0.500703, 0.734256,
		0.887357, 0.303723, -0.346913,
		46.351494, 35.084366, 31.645245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.907806, 35.144741, 32.441227>,  <45.730343, 34.871758, 31.888084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.907806, 35.144741, 32.441227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.153240, 35.269260, 32.150955>,  <46.300499, 35.343971, 31.976793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.153240, 35.269260, 32.150955>,  <45.907806, 35.144741, 32.441227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.153240, 35.269260, 32.150955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078357, 0.938477, 0.336335,
		0.785733, -0.149508, 0.600226,
		0.613583, 0.311301, -0.725677,
		46.337315, 35.362652, 31.933252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.363140, 35.555965, 32.769169>,  <45.907806, 35.144741, 32.441227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.363140, 35.555965, 32.769169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.376007, 35.654636, 32.381744>,  <46.383728, 35.713837, 32.149288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.376007, 35.654636, 32.381744>,  <46.363140, 35.555965, 32.769169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.376007, 35.654636, 32.381744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186598, 0.953510, 0.236643,
		0.981910, 0.173119, 0.076704,
		0.032171, 0.246675, -0.968564,
		46.385658, 35.728638, 32.091175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.863190, 36.069889, 32.790207>,  <46.363140, 35.555965, 32.769169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.863190, 36.069889, 32.790207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.625484, 36.091621, 32.469234>,  <46.482861, 36.104660, 32.276649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.625484, 36.091621, 32.469234>,  <46.863190, 36.069889, 32.790207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.625484, 36.091621, 32.469234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242641, 0.939118, 0.243276,
		0.766796, 0.339273, -0.544901,
		-0.594263, 0.054328, -0.802434,
		46.447205, 36.107922, 32.228504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.961113, 35.833519, 33.513508>,  <46.863190, 36.069889, 32.790207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.961113, 35.833519, 33.513508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.323620, 35.699787, 33.616974>,  <47.541122, 35.619549, 33.679054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.323620, 35.699787, 33.616974>,  <46.961113, 35.833519, 33.513508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.323620, 35.699787, 33.616974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267090, 0.021406, 0.963434,
		-0.327642, -0.942213, -0.069896,
		0.906264, -0.334330, 0.258669,
		47.595497, 35.599487, 33.694576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.980534, 35.230774, 33.897400>,  <46.961113, 35.833519, 33.513508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.980534, 35.230774, 33.897400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.329586, 35.390858, 34.009361>,  <47.539017, 35.486908, 34.076538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.329586, 35.390858, 34.009361>,  <46.980534, 35.230774, 33.897400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.329586, 35.390858, 34.009361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280346, -0.058799, 0.958097,
		0.399899, -0.914535, 0.060887,
		0.872632, 0.400211, 0.279900,
		47.591377, 35.510921, 34.093330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.274368, 34.878891, 34.495930>,  <46.980534, 35.230774, 33.897400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.274368, 34.878891, 34.495930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.445629, 35.239925, 34.513943>,  <47.548386, 35.456547, 34.524750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.445629, 35.239925, 34.513943>,  <47.274368, 34.878891, 34.495930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.445629, 35.239925, 34.513943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229552, 0.060421, 0.971419,
		0.874068, -0.426249, 0.233059,
		0.428148, 0.902585, 0.045034,
		47.574074, 35.510700, 34.527454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.806187, 34.566635, 34.990936>,  <47.274368, 34.878891, 34.495930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.806187, 34.566635, 34.990936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.686111, 34.948109, 34.998600>,  <47.614067, 35.176994, 35.003201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.686111, 34.948109, 34.998600>,  <47.806187, 34.566635, 34.990936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.686111, 34.948109, 34.998600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005002, -0.018514, 0.999816,
		0.953866, 0.300230, 0.000787,
		-0.300189, 0.953687, 0.019162,
		47.596054, 35.234215, 35.004349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.854275, 40.447208, 39.233677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.519085, 40.232040, 39.196949>,  <39.317970, 40.102940, 39.174911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.519085, 40.232040, 39.196949>,  <39.854275, 40.447208, 39.233677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.519085, 40.232040, 39.196949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174894, -0.105351, -0.978935,
		0.516917, -0.836386, 0.182361,
		-0.837979, -0.537922, -0.091821,
		39.267693, 40.070663, 39.169403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057392, 39.812244, 38.768883>,  <39.854275, 40.447208, 39.233677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.057392, 39.812244, 38.768883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.657715, 39.822281, 38.756302>,  <39.417908, 39.828300, 38.748753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.657715, 39.822281, 38.756302>,  <40.057392, 39.812244, 38.768883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657715, 39.822281, 38.756302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026661, -0.172478, -0.984653,
		-0.030128, -0.984694, 0.171669,
		-0.999191, 0.025089, -0.031449,
		39.357956, 39.829807, 38.746868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808414, 39.194843, 38.425190>,  <40.057392, 39.812244, 38.768883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.808414, 39.194843, 38.425190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.501511, 39.448273, 38.385391>,  <39.317368, 39.600330, 38.361511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.501511, 39.448273, 38.385391>,  <39.808414, 39.194843, 38.425190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501511, 39.448273, 38.385391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047435, -0.210779, -0.976382,
		-0.639578, -0.744420, 0.191775,
		-0.767261, 0.633570, -0.099498,
		39.271332, 39.638344, 38.355541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214783, 38.859711, 38.170120>,  <39.808414, 39.194843, 38.425190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214783, 38.859711, 38.170120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.172981, 39.245945, 38.074848>,  <39.147900, 39.477684, 38.017685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.172981, 39.245945, 38.074848>,  <39.214783, 38.859711, 38.170120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172981, 39.245945, 38.074848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240759, -0.256927, -0.935961,
		-0.964942, -0.040472, 0.259324,
		-0.104508, 0.965583, -0.238175,
		39.141628, 39.535622, 38.003395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656052, 38.873077, 37.746910>,  <39.214783, 38.859711, 38.170120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656052, 38.873077, 37.746910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.783981, 39.244545, 37.671776>,  <38.860741, 39.467426, 37.626694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.783981, 39.244545, 37.671776>,  <38.656052, 38.873077, 37.746910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783981, 39.244545, 37.671776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290983, -0.092398, -0.952256,
		-0.901687, 0.359215, 0.240676,
		0.319827, 0.928669, -0.187839,
		38.879929, 39.523148, 37.615425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144875, 39.248066, 37.394295>,  <38.656052, 38.873077, 37.746910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144875, 39.248066, 37.394295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.498962, 39.407436, 37.298256>,  <38.711414, 39.503059, 37.240635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.498962, 39.407436, 37.298256>,  <38.144875, 39.248066, 37.394295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498962, 39.407436, 37.298256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164006, -0.215675, -0.962594,
		-0.435307, 0.891481, -0.125574,
		0.885217, 0.398429, -0.240093,
		38.764526, 39.526966, 37.226227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921215, 39.642296, 36.861111>,  <38.144875, 39.248066, 37.394295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921215, 39.642296, 36.861111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.316578, 39.607197, 36.811546>,  <38.553795, 39.586136, 36.781807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.316578, 39.607197, 36.811546>,  <37.921215, 39.642296, 36.861111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316578, 39.607197, 36.811546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129701, -0.063654, -0.989508,
		0.078944, 0.994107, -0.074297,
		0.988406, -0.087752, -0.123911,
		38.613098, 39.580872, 36.774372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032516, 40.030922, 36.277111>,  <37.921215, 39.642296, 36.861111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032516, 40.030922, 36.277111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.380741, 39.834927, 36.295128>,  <38.589676, 39.717327, 36.305939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.380741, 39.834927, 36.295128>,  <38.032516, 40.030922, 36.277111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380741, 39.834927, 36.295128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009397, -0.074971, -0.997141,
		0.491968, 0.868497, -0.060662,
		0.870562, -0.489992, 0.045044,
		38.641911, 39.687927, 36.308640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638252, 40.393990, 36.045967>,  <38.032516, 40.030922, 36.277111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638252, 40.393990, 36.045967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.711590, 40.007919, 35.971317>,  <38.755592, 39.776279, 35.926529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.711590, 40.007919, 35.971317>,  <38.638252, 40.393990, 36.045967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711590, 40.007919, 35.971317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084161, 0.204555, -0.975230,
		0.979439, 0.163097, 0.118734,
		0.183345, -0.965172, -0.186623,
		38.766594, 39.718369, 35.915329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999756, 40.449547, 35.458565>,  <38.638252, 40.393990, 36.045967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.999756, 40.449547, 35.458565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.947994, 40.052910, 35.457863>,  <38.916939, 39.814930, 35.457443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.947994, 40.052910, 35.457863>,  <38.999756, 40.449547, 35.458565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947994, 40.052910, 35.457863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069483, -0.007302, -0.997557,
		0.989155, -0.129208, 0.069844,
		-0.129402, -0.991591, -0.001755,
		38.909172, 39.755432, 35.457336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535534, 40.066738, 35.049915>,  <38.999756, 40.449547, 35.458565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535534, 40.066738, 35.049915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.208729, 39.836151, 35.055210>,  <39.012646, 39.697800, 35.058388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.208729, 39.836151, 35.055210>,  <39.535534, 40.066738, 35.049915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208729, 39.836151, 35.055210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103642, -0.169393, -0.980084,
		0.567224, -0.799372, 0.198143,
		-0.817016, -0.576463, 0.013235,
		38.963623, 39.663212, 35.059181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718288, 39.444153, 34.664566>,  <39.535534, 40.066738, 35.049915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718288, 39.444153, 34.664566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.318596, 39.429974, 34.671364>,  <39.078781, 39.421467, 34.675442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.318596, 39.429974, 34.671364>,  <39.718288, 39.444153, 34.664566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318596, 39.429974, 34.671364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007512, -0.252246, -0.967634,
		0.038592, -0.967014, 0.251785,
		-0.999227, -0.035452, 0.016999,
		39.018829, 39.419338, 34.676464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562607, 38.912811, 34.215874>,  <39.718288, 39.444153, 34.664566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562607, 38.912811, 34.215874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.216080, 39.110958, 34.241493>,  <39.008163, 39.229847, 34.256863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.216080, 39.110958, 34.241493>,  <39.562607, 38.912811, 34.215874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216080, 39.110958, 34.241493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164675, -0.162201, -0.972920,
		-0.471565, -0.853406, 0.222092,
		-0.866319, 0.495368, 0.064047,
		38.956184, 39.259567, 34.260708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114601, 38.400787, 34.047653>,  <39.562607, 38.912811, 34.215874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114601, 38.400787, 34.047653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.921719, 38.741558, 33.965969>,  <38.805988, 38.946018, 33.916958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.921719, 38.741558, 33.965969>,  <39.114601, 38.400787, 34.047653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.921719, 38.741558, 33.965969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077927, -0.190464, -0.978596,
		-0.872583, -0.487802, 0.025456,
		-0.482210, 0.851923, -0.204209,
		38.777054, 38.997135, 33.904705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521805, 38.225441, 33.616562>,  <39.114601, 38.400787, 34.047653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521805, 38.225441, 33.616562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.584145, 38.618176, 33.573280>,  <38.621548, 38.853817, 33.547310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.584145, 38.618176, 33.573280>,  <38.521805, 38.225441, 33.616562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584145, 38.618176, 33.573280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097358, -0.093744, -0.990825,
		-0.982971, 0.164958, 0.080979,
		0.155853, 0.981835, -0.108208,
		38.630901, 38.912727, 33.540817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050159, 38.477463, 33.092739>,  <38.521805, 38.225441, 33.616562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.050159, 38.477463, 33.092739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.324051, 38.768772, 33.103813>,  <38.488384, 38.943558, 33.110458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.324051, 38.768772, 33.103813>,  <38.050159, 38.477463, 33.092739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324051, 38.768772, 33.103813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097186, 0.128892, -0.986885,
		-0.722290, 0.673057, 0.159033,
		0.684728, 0.728273, 0.027686,
		38.529469, 38.987255, 33.112118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823418, 38.936600, 32.580173>,  <38.050159, 38.477463, 33.092739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823418, 38.936600, 32.580173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.203701, 39.038887, 32.650318>,  <38.431873, 39.100262, 32.692406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.203701, 39.038887, 32.650318>,  <37.823418, 38.936600, 32.580173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203701, 39.038887, 32.650318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164853, 0.062130, -0.984359,
		-0.262618, 0.964752, 0.016911,
		0.950713, 0.255723, 0.175359,
		38.488914, 39.115604, 32.702927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978325, 39.308266, 32.092419>,  <37.823418, 38.936600, 32.580173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978325, 39.308266, 32.092419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.356236, 39.230404, 32.197880>,  <38.582981, 39.183685, 32.261154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.356236, 39.230404, 32.197880>,  <37.978325, 39.308266, 32.092419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356236, 39.230404, 32.197880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280386, 0.063618, -0.957777,
		0.169661, 0.978807, 0.114683,
		0.944774, -0.194653, 0.263651,
		38.639668, 39.172009, 32.276974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.405029, 39.704708, 31.720276>,  <37.978325, 39.308266, 32.092419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.405029, 39.704708, 31.720276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.632004, 39.393356, 31.827707>,  <38.768188, 39.206547, 31.892166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.632004, 39.393356, 31.827707>,  <38.405029, 39.704708, 31.720276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632004, 39.393356, 31.827707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334319, -0.080294, -0.939033,
		0.752491, 0.622637, 0.214665,
		0.567441, -0.778380, 0.268580,
		38.802235, 39.159843, 31.908281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961159, 39.818157, 31.294483>,  <38.405029, 39.704708, 31.720276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961159, 39.818157, 31.294483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.058056, 39.455303, 31.432131>,  <39.116192, 39.237591, 31.514719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.058056, 39.455303, 31.432131>,  <38.961159, 39.818157, 31.294483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058056, 39.455303, 31.432131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529533, -0.173582, -0.830340,
		0.812967, 0.383364, 0.438312,
		0.242239, -0.907139, 0.344120,
		39.130726, 39.183163, 31.535366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717369, 39.827892, 31.143154>,  <38.961159, 39.818157, 31.294483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717369, 39.827892, 31.143154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.610279, 39.448902, 31.213148>,  <39.546024, 39.221508, 31.255144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.610279, 39.448902, 31.213148>,  <39.717369, 39.827892, 31.143154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610279, 39.448902, 31.213148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680426, -0.314507, -0.661895,
		0.682163, -0.058138, 0.728886,
		-0.267721, -0.947473, 0.174986,
		39.529964, 39.164661, 31.265644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341869, 39.402370, 31.217905>,  <39.717369, 39.827892, 31.143154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341869, 39.402370, 31.217905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.059013, 39.166142, 31.062382>,  <39.889297, 39.024403, 30.969067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.059013, 39.166142, 31.062382>,  <40.341869, 39.402370, 31.217905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059013, 39.166142, 31.062382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616042, -0.244699, -0.748742,
		0.347045, -0.768991, 0.536855,
		-0.707143, -0.590572, -0.388809,
		39.846870, 38.988968, 30.945740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.909935, 39.330116, 31.713270>,  <40.341869, 39.402370, 31.217905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.909935, 39.330116, 31.713270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.229713, 39.098888, 31.647892>,  <41.421581, 38.960152, 31.608665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.229713, 39.098888, 31.647892>,  <40.909935, 39.330116, 31.713270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229713, 39.098888, 31.647892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254504, 0.079460, 0.963802,
		-0.544162, -0.812106, 0.210646,
		0.799447, -0.578074, -0.163445,
		41.469547, 38.925465, 31.598858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.854485, 38.737419, 32.203136>,  <40.909935, 39.330116, 31.713270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.854485, 38.737419, 32.203136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.236885, 38.787910, 32.097218>,  <41.466328, 38.818207, 32.033665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.236885, 38.787910, 32.097218>,  <40.854485, 38.737419, 32.203136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.236885, 38.787910, 32.097218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260727, 0.048079, 0.964215,
		0.134446, -0.990835, 0.013052,
		0.956005, 0.126232, -0.264802,
		41.523685, 38.825779, 32.017776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.252701, 38.181408, 32.547081>,  <40.854485, 38.737419, 32.203136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.252701, 38.181408, 32.547081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.499268, 38.483593, 32.458256>,  <41.647209, 38.664902, 32.404961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.499268, 38.483593, 32.458256>,  <41.252701, 38.181408, 32.547081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.499268, 38.483593, 32.458256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163951, 0.152697, 0.974579,
		0.770162, -0.637155, -0.029733,
		0.616417, 0.755458, -0.222064,
		41.684193, 38.710232, 32.391636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.685101, 38.147312, 33.086514>,  <41.252701, 38.181408, 32.547081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.685101, 38.147312, 33.086514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.787136, 38.499523, 32.926712>,  <41.848358, 38.710850, 32.830830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.787136, 38.499523, 32.926712>,  <41.685101, 38.147312, 33.086514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.787136, 38.499523, 32.926712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339245, 0.305405, 0.889742,
		0.905452, -0.362491, -0.220810,
		0.255086, 0.880527, -0.399503,
		41.863663, 38.763680, 32.806862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.373100, 38.305717, 33.375031>,  <41.685101, 38.147312, 33.086514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.373100, 38.305717, 33.375031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.207535, 38.651947, 33.262276>,  <42.108196, 38.859684, 33.194622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.207535, 38.651947, 33.262276>,  <42.373100, 38.305717, 33.375031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.207535, 38.651947, 33.262276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346535, 0.436159, 0.830469,
		0.841779, 0.246057, -0.480483,
		-0.413910, 0.865575, -0.281882,
		42.083363, 38.911621, 33.177711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.860287, 38.878380, 33.542446>,  <42.373100, 38.305717, 33.375031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.860287, 38.878380, 33.542446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.505348, 39.061333, 33.519058>,  <42.292385, 39.171104, 33.505024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.505348, 39.061333, 33.519058>,  <42.860287, 38.878380, 33.542446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.505348, 39.061333, 33.519058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215938, 0.524239, 0.823738,
		0.407415, 0.718315, -0.563948,
		-0.887347, 0.457381, -0.058472,
		42.239143, 39.198547, 33.501518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.074226, 39.491379, 33.702950>,  <42.860287, 38.878380, 33.542446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.074226, 39.491379, 33.702950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.679379, 39.480251, 33.765965>,  <42.442471, 39.473576, 33.803772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.679379, 39.480251, 33.765965>,  <43.074226, 39.491379, 33.702950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.679379, 39.480251, 33.765965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128473, 0.448886, 0.884305,
		-0.095318, 0.893156, -0.439530,
		-0.987122, -0.027823, 0.157534,
		42.383244, 39.471905, 33.813225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.813995, 40.163582, 34.062370>,  <43.074226, 39.491379, 33.702950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.813995, 40.163582, 34.062370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.526539, 39.893978, 34.130791>,  <42.354065, 39.732216, 34.171844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.526539, 39.893978, 34.130791>,  <42.813995, 40.163582, 34.062370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.526539, 39.893978, 34.130791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005771, 0.251756, 0.967774,
		-0.695355, 0.694497, -0.184812,
		-0.718643, -0.674013, 0.171052,
		42.310947, 39.691772, 34.182106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.550739, 40.485844, 34.581314>,  <42.813995, 40.163582, 34.062370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.550739, 40.485844, 34.581314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.392918, 40.118404, 34.590374>,  <42.298225, 39.897942, 34.595810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.392918, 40.118404, 34.590374>,  <42.550739, 40.485844, 34.581314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.392918, 40.118404, 34.590374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040197, 0.041876, 0.998314,
		-0.917994, 0.392977, -0.053447,
		-0.394552, -0.918595, 0.022645,
		42.274551, 39.842827, 34.597168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.924816, 40.503212, 34.942444>,  <42.550739, 40.485844, 34.581314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.924816, 40.503212, 34.942444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.062172, 40.128922, 34.974686>,  <42.144585, 39.904346, 34.994030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.062172, 40.128922, 34.974686>,  <41.924816, 40.503212, 34.942444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.062172, 40.128922, 34.974686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249560, -0.008173, 0.968325,
		-0.905429, -0.352631, -0.236327,
		0.343392, -0.935727, 0.080602,
		42.165192, 39.848202, 34.998867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.409672, 40.151768, 35.261581>,  <41.924816, 40.503212, 34.942444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.409672, 40.151768, 35.261581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.729763, 39.917526, 35.313282>,  <41.921818, 39.776981, 35.344303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.729763, 39.917526, 35.313282>,  <41.409672, 40.151768, 35.261581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.729763, 39.917526, 35.313282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214958, -0.078896, 0.973431,
		-0.559847, -0.806750, -0.189014,
		0.800228, -0.585603, 0.129248,
		41.969833, 39.741844, 35.352055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.191807, 39.580959, 35.720066>,  <41.409672, 40.151768, 35.261581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.191807, 39.580959, 35.720066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.590412, 39.599201, 35.748009>,  <41.829575, 39.610146, 35.764774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.590412, 39.599201, 35.748009>,  <41.191807, 39.580959, 35.720066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.590412, 39.599201, 35.748009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065875, -0.083666, 0.994314,
		0.051195, -0.995449, -0.080370,
		0.996514, 0.045610, 0.069859,
		41.889366, 39.612885, 35.768967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.339359, 39.121597, 36.210537>,  <41.191807, 39.580959, 35.720066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.339359, 39.121597, 36.210537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.656311, 39.365604, 36.211292>,  <41.846481, 39.512009, 36.211746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.656311, 39.365604, 36.211292>,  <41.339359, 39.121597, 36.210537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.656311, 39.365604, 36.211292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121297, -0.160593, 0.979539,
		0.597843, -0.775941, -0.201245,
		0.792383, 0.610021, 0.001890,
		41.894028, 39.548611, 36.211861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.894714, 38.808540, 36.649120>,  <41.339359, 39.121597, 36.210537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.894714, 38.808540, 36.649120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.003613, 39.191887, 36.614697>,  <42.068951, 39.421894, 36.594044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.003613, 39.191887, 36.614697>,  <41.894714, 38.808540, 36.649120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.003613, 39.191887, 36.614697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236482, 0.020055, 0.971429,
		0.932716, -0.284820, -0.221177,
		0.272247, 0.958371, -0.086061,
		42.085285, 39.479397, 36.588879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.582863, 38.780487, 36.869175>,  <41.894714, 38.808540, 36.649120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.582863, 38.780487, 36.869175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.454239, 39.158356, 36.895092>,  <42.377064, 39.385078, 36.910641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.454239, 39.158356, 36.895092>,  <42.582863, 38.780487, 36.869175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.454239, 39.158356, 36.895092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222188, 0.008759, 0.974964,
		0.920453, 0.327902, -0.212711,
		-0.321556, 0.944671, 0.064793,
		42.357773, 39.441757, 36.914532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.022915, 39.169998, 37.275383>,  <42.582863, 38.780487, 36.869175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.022915, 39.169998, 37.275383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.671806, 39.353851, 37.329433>,  <42.461143, 39.464165, 37.361866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.671806, 39.353851, 37.329433>,  <43.022915, 39.169998, 37.275383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.671806, 39.353851, 37.329433> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215845, 0.127600, 0.968054,
		0.427707, 0.878895, -0.211213,
		-0.877769, 0.459633, 0.135130,
		42.408474, 39.491741, 37.369972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.185116, 39.702362, 37.675507>,  <43.022915, 39.169998, 37.275383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.185116, 39.702362, 37.675507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.786942, 39.696232, 37.713177>,  <42.548035, 39.692554, 37.735779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.786942, 39.696232, 37.713177>,  <43.185116, 39.702362, 37.675507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.786942, 39.696232, 37.713177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090686, 0.154917, 0.983756,
		-0.029668, 0.987808, -0.152820,
		-0.995437, -0.015328, 0.094177,
		42.488312, 39.691635, 37.741428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.026577, 40.200119, 38.079266>,  <43.185116, 39.702362, 37.675507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.026577, 40.200119, 38.079266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.710510, 39.959023, 38.123692>,  <42.520870, 39.814365, 38.150345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.710510, 39.959023, 38.123692>,  <43.026577, 40.200119, 38.079266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.710510, 39.959023, 38.123692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075422, 0.084203, 0.993590,
		-0.608234, 0.793478, -0.021074,
		-0.790166, -0.602746, 0.111061,
		42.473461, 39.778198, 38.157009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<42.118008, 40.717632, 38.451035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.080776, 40.320850, 38.485344>,  <42.058437, 40.082779, 38.505928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.080776, 40.320850, 38.485344>,  <42.118008, 40.717632, 38.451035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.080776, 40.320850, 38.485344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416967, 0.117062, 0.901352,
		-0.904144, 0.048130, -0.424509,
		-0.093076, -0.991958, 0.085773,
		42.052853, 40.023262, 38.511074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.466843, 40.581795, 38.777645>,  <42.118008, 40.717632, 38.451035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.466843, 40.581795, 38.777645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.668064, 40.239990, 38.829399>,  <41.788799, 40.034908, 38.860451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.668064, 40.239990, 38.829399>,  <41.466843, 40.581795, 38.777645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.668064, 40.239990, 38.829399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553155, -0.203320, 0.807887,
		-0.664044, -0.477982, -0.574960,
		0.503056, -0.854514, 0.129384,
		41.818981, 39.983635, 38.868214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.006126, 40.125595, 38.976963>,  <41.466843, 40.581795, 38.777645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.006126, 40.125595, 38.976963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.337009, 39.929043, 39.085972>,  <41.535538, 39.811111, 39.151379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.337009, 39.929043, 39.085972>,  <41.006126, 40.125595, 38.976963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.337009, 39.929043, 39.085972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471730, -0.343806, 0.811954,
		-0.305278, -0.800217, -0.516197,
		0.827210, -0.491377, 0.272530,
		41.585171, 39.781628, 39.167728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.690079, 39.845154, 39.520340>,  <41.006126, 40.125595, 38.976963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.690079, 39.845154, 39.520340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.083462, 39.787731, 39.564545>,  <41.319492, 39.753277, 39.591068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.083462, 39.787731, 39.564545>,  <40.690079, 39.845154, 39.520340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.083462, 39.787731, 39.564545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139613, -0.211827, 0.967284,
		-0.115447, -0.966707, -0.228363,
		0.983453, -0.143552, 0.110510,
		41.378498, 39.744667, 39.597698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836239, 39.145947, 39.893116>,  <40.690079, 39.845154, 39.520340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.836239, 39.145947, 39.893116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.142067, 39.396851, 39.952419>,  <41.325562, 39.547394, 39.988003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.142067, 39.396851, 39.952419>,  <40.836239, 39.145947, 39.893116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.142067, 39.396851, 39.952419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274865, 0.109249, 0.955256,
		0.582996, -0.771110, 0.255940,
		0.764569, 0.627259, 0.148260,
		41.371437, 39.585030, 39.996899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.281799, 38.891399, 40.468189>,  <40.836239, 39.145947, 39.893116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.281799, 38.891399, 40.468189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.345776, 39.285858, 40.450569>,  <41.384163, 39.522533, 40.439995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.345776, 39.285858, 40.450569>,  <41.281799, 38.891399, 40.468189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.345776, 39.285858, 40.450569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098920, 0.060414, 0.993260,
		0.982157, -0.154506, 0.107212,
		0.159942, 0.986143, -0.044052,
		41.393757, 39.581699, 40.437355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.662727, 39.041355, 41.007156>,  <41.281799, 38.891399, 40.468189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.662727, 39.041355, 41.007156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.499050, 39.397976, 40.929501>,  <41.400845, 39.611950, 40.882908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.499050, 39.397976, 40.929501>,  <41.662727, 39.041355, 41.007156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.499050, 39.397976, 40.929501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254260, 0.092929, 0.962661,
		0.876307, 0.443276, 0.188661,
		-0.409192, 0.891555, -0.194142,
		41.376293, 39.665443, 40.871258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.952877, 39.478157, 41.501808>,  <41.662727, 39.041355, 41.007156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.952877, 39.478157, 41.501808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.648472, 39.705967, 41.377552>,  <41.465828, 39.842651, 41.302998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.648472, 39.705967, 41.377552>,  <41.952877, 39.478157, 41.501808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.648472, 39.705967, 41.377552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156091, 0.304023, 0.939790,
		0.629674, 0.763683, -0.142469,
		-0.761016, 0.569523, -0.310640,
		41.420166, 39.876823, 41.284359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.036293, 40.212322, 41.862099>,  <41.952877, 39.478157, 41.501808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.036293, 40.212322, 41.862099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.655548, 40.157593, 41.752380>,  <41.427101, 40.124756, 41.686550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.655548, 40.157593, 41.752380>,  <42.036293, 40.212322, 41.862099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.655548, 40.157593, 41.752380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298561, 0.211124, 0.930746,
		-0.069438, 0.967836, -0.241811,
		-0.951861, -0.136825, -0.274298,
		41.369991, 40.116547, 41.670090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.828308, 40.706547, 42.192696>,  <42.036293, 40.212322, 41.862099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.828308, 40.706547, 42.192696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.473694, 40.553467, 42.088699>,  <41.260925, 40.461620, 42.026302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.473694, 40.553467, 42.088699>,  <41.828308, 40.706547, 42.192696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.473694, 40.553467, 42.088699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369455, 0.247335, 0.895728,
		-0.278490, 0.890150, -0.360662,
		-0.886536, -0.382700, -0.259990,
		41.207733, 40.438656, 42.010704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.235992, 41.281750, 42.164665>,  <41.828308, 40.706547, 42.192696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.235992, 41.281750, 42.164665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.094013, 40.923031, 42.270325>,  <41.008827, 40.707802, 42.333721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.094013, 40.923031, 42.270325>,  <41.235992, 41.281750, 42.164665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.094013, 40.923031, 42.270325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200539, 0.349009, 0.915411,
		-0.913126, 0.271947, -0.303720,
		-0.354945, -0.896793, 0.264153,
		40.987530, 40.653992, 42.349571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.684471, 41.445042, 42.591862>,  <41.235992, 41.281750, 42.164665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.684471, 41.445042, 42.591862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.773315, 41.061142, 42.660618>,  <40.826622, 40.830803, 42.701874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.773315, 41.061142, 42.660618>,  <40.684471, 41.445042, 42.591862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.773315, 41.061142, 42.660618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162278, 0.137452, 0.977125,
		-0.961422, -0.244924, -0.125217,
		0.222110, -0.959750, 0.171895,
		40.839947, 40.773216, 42.712185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112492, 41.097843, 42.906002>,  <40.684471, 41.445042, 42.591862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112492, 41.097843, 42.906002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.445015, 40.909142, 43.023560>,  <40.644527, 40.795921, 43.094093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.445015, 40.909142, 43.023560>,  <40.112492, 41.097843, 42.906002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445015, 40.909142, 43.023560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332876, 0.000870, 0.942970,
		-0.445109, -0.881728, -0.156313,
		0.831307, -0.471758, 0.293894,
		40.694408, 40.767616, 43.111729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978901, 40.613941, 43.361332>,  <40.112492, 41.097843, 42.906002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.978901, 40.613941, 43.361332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.361866, 40.679535, 43.456383>,  <40.591644, 40.718891, 43.513412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.361866, 40.679535, 43.456383>,  <39.978901, 40.613941, 43.361332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361866, 40.679535, 43.456383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234123, -0.040634, 0.971357,
		0.168940, -0.985626, -0.000512,
		0.957416, 0.163981, 0.237622,
		40.649090, 40.728729, 43.527668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087883, 40.134579, 43.881199>,  <39.978901, 40.613941, 43.361332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.087883, 40.134579, 43.881199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.392838, 40.388466, 43.931637>,  <40.575809, 40.540798, 43.961899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.392838, 40.388466, 43.931637>,  <40.087883, 40.134579, 43.881199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392838, 40.388466, 43.931637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009347, -0.205641, 0.978583,
		0.647057, -0.744878, -0.162710,
		0.762384, 0.634720, 0.126099,
		40.621552, 40.578880, 43.969467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.449154, 39.816578, 44.320824>,  <40.087883, 40.134579, 43.881199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.449154, 39.816578, 44.320824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.624229, 40.173988, 44.360893>,  <40.729275, 40.388435, 44.384933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.624229, 40.173988, 44.360893>,  <40.449154, 39.816578, 44.320824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624229, 40.173988, 44.360893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283190, -0.242742, 0.927836,
		0.853363, -0.377738, -0.359284,
		0.437692, 0.893527, 0.100175,
		40.755539, 40.442047, 44.390945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.030128, 39.693169, 44.793953>,  <40.449154, 39.816578, 44.320824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.030128, 39.693169, 44.793953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.956211, 40.086136, 44.804638>,  <40.911861, 40.321915, 44.811050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.956211, 40.086136, 44.804638>,  <41.030128, 39.693169, 44.793953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956211, 40.086136, 44.804638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029170, -0.021688, 0.999339,
		0.982345, 0.185451, -0.024649,
		-0.184794, 0.982414, 0.026714,
		40.900772, 40.380859, 44.812653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.488308, 40.011612, 45.323185>,  <41.030128, 39.693169, 44.793953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.488308, 40.011612, 45.323185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.162724, 40.237389, 45.268238>,  <40.967373, 40.372856, 45.235271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.162724, 40.237389, 45.268238>,  <41.488308, 40.011612, 45.323185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.162724, 40.237389, 45.268238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256197, -0.136574, 0.956928,
		0.521373, 0.814094, 0.255775,
		-0.813961, 0.564446, -0.137363,
		40.918533, 40.406723, 45.227028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.472916, 40.188416, 45.930756>,  <41.488308, 40.011612, 45.323185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.472916, 40.188416, 45.930756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.123314, 40.303852, 45.774384>,  <40.913551, 40.373116, 45.680561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.123314, 40.303852, 45.774384>,  <41.472916, 40.188416, 45.930756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.123314, 40.303852, 45.774384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459782, -0.230861, 0.857498,
		0.157219, 0.929201, 0.334465,
		-0.874004, 0.288596, -0.390935,
		40.861115, 40.390430, 45.657104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.102890, 40.502701, 46.465969>,  <41.472916, 40.188416, 45.930756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.102890, 40.502701, 46.465969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.809624, 40.434235, 46.202705>,  <40.633663, 40.393154, 46.044746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.809624, 40.434235, 46.202705>,  <41.102890, 40.502701, 46.465969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809624, 40.434235, 46.202705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642014, -0.144942, 0.752868,
		-0.224259, 0.974523, -0.003624,
		-0.733162, -0.171164, -0.658162,
		40.589676, 40.382885, 46.005257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578289, 40.866287, 46.688103>,  <41.102890, 40.502701, 46.465969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.578289, 40.866287, 46.688103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.409122, 40.586849, 46.457245>,  <40.307621, 40.419186, 46.318729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.409122, 40.586849, 46.457245>,  <40.578289, 40.866287, 46.688103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.409122, 40.586849, 46.457245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594760, -0.266522, 0.758437,
		-0.683666, 0.664022, -0.302781,
		-0.422921, -0.698599, -0.577146,
		40.282246, 40.377270, 46.284100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851177, 40.958206, 46.827312>,  <40.578289, 40.866287, 46.688103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851177, 40.958206, 46.827312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.954552, 40.592686, 46.701977>,  <40.016575, 40.373375, 46.626774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.954552, 40.592686, 46.701977>,  <39.851177, 40.958206, 46.827312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954552, 40.592686, 46.701977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489371, -0.403502, 0.773112,
		-0.832903, -0.046458, -0.551465,
		0.258434, -0.913799, -0.313343,
		40.032082, 40.318546, 46.607975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273670, 40.465164, 46.906036>,  <39.851177, 40.958206, 46.827312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.273670, 40.465164, 46.906036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.580429, 40.208504, 46.910858>,  <39.764484, 40.054508, 46.913750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.580429, 40.208504, 46.910858>,  <39.273670, 40.465164, 46.906036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580429, 40.208504, 46.910858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258299, -0.291418, 0.921063,
		-0.587492, -0.709476, -0.389227,
		0.766900, -0.641654, 0.012051,
		39.810497, 40.016006, 46.914474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181110, 39.997093, 47.370552>,  <39.273670, 40.465164, 46.906036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.181110, 39.997093, 47.370552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.577297, 39.942513, 47.378048>,  <39.815010, 39.909763, 47.382545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.577297, 39.942513, 47.378048>,  <39.181110, 39.997093, 47.370552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.577297, 39.942513, 47.378048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065072, -0.343703, 0.936821,
		-0.121386, -0.929112, -0.349307,
		0.990470, -0.136447, 0.018738,
		39.874439, 39.901577, 47.383671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574757, 40.520370, 47.232334>,  <39.181110, 39.997093, 47.370552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574757, 40.520370, 47.232334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.192806, 40.449799, 47.136768>,  <37.963634, 40.407455, 47.079430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.192806, 40.449799, 47.136768>,  <38.574757, 40.520370, 47.232334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192806, 40.449799, 47.136768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296846, -0.592465, -0.748911,
		-0.009421, -0.786040, 0.618104,
		-0.954878, -0.176426, -0.238915,
		37.906342, 40.396870, 47.065094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568592, 39.797039, 46.920628>,  <38.574757, 40.520370, 47.232334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568592, 39.797039, 46.920628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.214260, 39.947113, 46.811413>,  <38.001663, 40.037155, 46.745884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.214260, 39.947113, 46.811413>,  <38.568592, 39.797039, 46.920628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214260, 39.947113, 46.811413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079407, -0.457172, -0.885826,
		-0.457172, -0.806369, 0.375183,
		0.885826, -0.375183, 0.273037,
		37.948513, 40.059669, 46.729500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295753, 39.440666, 46.433559>,  <38.568592, 39.797039, 46.920628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295753, 39.440666, 46.433559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.052032, 39.740822, 46.331059>,  <37.905800, 39.920914, 46.269558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.052032, 39.740822, 46.331059>,  <38.295753, 39.440666, 46.433559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052032, 39.740822, 46.331059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130769, -0.223656, -0.965856,
		-0.782082, -0.622006, 0.038145,
		-0.609300, 0.750391, -0.256257,
		37.869244, 39.965939, 46.254181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831245, 39.210114, 45.876102>,  <38.295753, 39.440666, 46.433559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831245, 39.210114, 45.876102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.820717, 39.605923, 45.819321>,  <37.814400, 39.843407, 45.785252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.820717, 39.605923, 45.819321>,  <37.831245, 39.210114, 45.876102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820717, 39.605923, 45.819321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117928, -0.137940, -0.983395,
		-0.992673, -0.042629, -0.113061,
		-0.026325, 0.989523, -0.141957,
		37.812820, 39.902779, 45.776733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348293, 39.340008, 45.419765>,  <37.831245, 39.210114, 45.876102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348293, 39.340008, 45.419765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.580307, 39.665577, 45.406551>,  <37.719517, 39.860916, 45.398624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.580307, 39.665577, 45.406551>,  <37.348293, 39.340008, 45.419765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580307, 39.665577, 45.406551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281211, -0.238131, -0.929631,
		-0.764512, 0.529930, -0.367008,
		0.580036, 0.813921, -0.033032,
		37.754318, 39.909752, 45.396641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009247, 39.872318, 44.875072>,  <37.348293, 39.340008, 45.419765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009247, 39.872318, 44.875072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.402866, 39.928005, 44.919361>,  <37.639038, 39.961418, 44.945934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.402866, 39.928005, 44.919361>,  <37.009247, 39.872318, 44.875072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402866, 39.928005, 44.919361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130179, -0.139419, -0.981639,
		-0.121225, 0.980398, -0.155319,
		0.984052, 0.139218, 0.110726,
		37.698082, 39.969772, 44.952579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134403, 40.040276, 44.214218>,  <37.009247, 39.872318, 44.875072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134403, 40.040276, 44.214218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.504494, 40.021793, 44.364857>,  <37.726547, 40.010704, 44.455238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.504494, 40.021793, 44.364857>,  <37.134403, 40.040276, 44.214218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504494, 40.021793, 44.364857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364660, -0.165863, -0.916249,
		0.104801, 0.985066, -0.136611,
		0.925224, -0.046207, 0.376596,
		37.782063, 40.007931, 44.477837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477943, 40.559994, 43.967094>,  <37.134403, 40.040276, 44.214218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477943, 40.559994, 43.967094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.785976, 40.332806, 44.083294>,  <37.970795, 40.196495, 44.153011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.785976, 40.332806, 44.083294>,  <37.477943, 40.559994, 43.967094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785976, 40.332806, 44.083294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273601, -0.117312, -0.954663,
		0.576297, 0.814647, 0.065057,
		0.770081, -0.567968, 0.290495,
		38.017002, 40.162415, 44.170441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178989, 40.845520, 43.650761>,  <37.477943, 40.559994, 43.967094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178989, 40.845520, 43.650761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.217937, 40.453632, 43.720818>,  <38.241306, 40.218502, 43.762852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.217937, 40.453632, 43.720818>,  <38.178989, 40.845520, 43.650761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217937, 40.453632, 43.720818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423323, -0.118494, -0.898196,
		0.900731, 0.161603, 0.403198,
		0.097374, -0.979716, 0.175142,
		38.247150, 40.159718, 43.773361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781456, 40.741764, 43.408791>,  <38.178989, 40.845520, 43.650761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781456, 40.741764, 43.408791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.650127, 40.364208, 43.423077>,  <38.571331, 40.137676, 43.431648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.650127, 40.364208, 43.423077>,  <38.781456, 40.741764, 43.408791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650127, 40.364208, 43.423077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445751, -0.188168, -0.875156,
		0.832773, -0.271411, 0.482519,
		-0.328322, -0.943890, 0.035719,
		38.551632, 40.081039, 43.433792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357594, 40.256447, 43.357258>,  <38.781456, 40.741764, 43.408791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357594, 40.256447, 43.357258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.046761, 40.040504, 43.227833>,  <38.860260, 39.910938, 43.150177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.046761, 40.040504, 43.227833>,  <39.357594, 40.256447, 43.357258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046761, 40.040504, 43.227833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511010, -0.241040, -0.825087,
		0.367437, -0.806507, 0.463181,
		-0.777083, -0.539858, -0.323566,
		38.813637, 39.878548, 43.130764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620098, 39.784832, 42.835102>,  <39.357594, 40.256447, 43.357258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620098, 39.784832, 42.835102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.233509, 39.756287, 42.736435>,  <39.001556, 39.739159, 42.677235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.233509, 39.756287, 42.736435>,  <39.620098, 39.784832, 42.835102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233509, 39.756287, 42.736435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255537, -0.172770, -0.951237,
		0.025266, -0.982374, 0.185212,
		-0.966469, -0.071363, -0.246668,
		38.943569, 39.734879, 42.662434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526642, 39.325920, 42.259373>,  <39.620098, 39.784832, 42.835102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526642, 39.325920, 42.259373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.178215, 39.522076, 42.248375>,  <38.969158, 39.639767, 42.241776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.178215, 39.522076, 42.248375>,  <39.526642, 39.325920, 42.259373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178215, 39.522076, 42.248375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049146, -0.142719, -0.988542,
		-0.488692, -0.859739, 0.148419,
		-0.871071, 0.490388, -0.027493,
		38.916893, 39.669193, 42.240128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977528, 38.901787, 41.987541>,  <39.526642, 39.325920, 42.259373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977528, 38.901787, 41.987541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.829071, 39.270592, 41.943436>,  <38.739998, 39.491875, 41.916973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.829071, 39.270592, 41.943436>,  <38.977528, 38.901787, 41.987541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829071, 39.270592, 41.943436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020693, -0.126928, -0.991696,
		-0.928347, -0.365774, 0.066187,
		-0.371137, 0.922008, -0.110265,
		38.717731, 39.547195, 41.910355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428032, 38.829353, 41.548065>,  <38.977528, 38.901787, 41.987541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428032, 38.829353, 41.548065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.547668, 39.210308, 41.524380>,  <38.619450, 39.438881, 41.510166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.547668, 39.210308, 41.524380>,  <38.428032, 38.829353, 41.548065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547668, 39.210308, 41.524380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077101, -0.037734, -0.996309,
		-0.951104, 0.302556, 0.062143,
		0.299095, 0.952384, -0.059217,
		38.637398, 39.496025, 41.506615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970272, 39.133709, 41.027901>,  <38.428032, 38.829353, 41.548065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.970272, 39.133709, 41.027901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.284710, 39.380779, 41.037205>,  <38.473373, 39.529022, 41.042786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.284710, 39.380779, 41.037205>,  <37.970272, 39.133709, 41.027901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284710, 39.380779, 41.037205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101436, 0.166031, -0.980890,
		-0.609731, 0.768709, 0.193169,
		0.786091, 0.617673, 0.023259,
		38.520538, 39.566082, 41.044182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833305, 39.656006, 40.550175>,  <37.970272, 39.133709, 41.027901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833305, 39.656006, 40.550175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.230225, 39.681042, 40.592945>,  <38.468376, 39.696064, 40.618607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.230225, 39.681042, 40.592945>,  <37.833305, 39.656006, 40.550175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230225, 39.681042, 40.592945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087429, 0.257724, -0.962255,
		-0.087781, 0.964189, 0.250267,
		0.992296, 0.062588, 0.106921,
		38.527912, 39.699818, 40.625023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095325, 40.319267, 40.260792>,  <37.833305, 39.656006, 40.550175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095325, 40.319267, 40.260792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.427010, 40.095901, 40.270500>,  <38.626019, 39.961884, 40.276325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.427010, 40.095901, 40.270500>,  <38.095325, 40.319267, 40.260792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427010, 40.095901, 40.270500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215215, 0.278910, -0.935891,
		0.515843, 0.781272, 0.351453,
		0.829210, -0.558410, 0.024268,
		38.675774, 39.928379, 40.277779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594151, 40.792801, 40.101685>,  <38.095325, 40.319267, 40.260792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594151, 40.792801, 40.101685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.700245, 40.413116, 40.033989>,  <38.763901, 40.185307, 39.993370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.700245, 40.413116, 40.033989>,  <38.594151, 40.792801, 40.101685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700245, 40.413116, 40.033989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112142, 0.204707, -0.972378,
		0.957639, 0.238934, 0.160743,
		0.265239, -0.949213, -0.169241,
		38.779816, 40.128353, 39.983215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090748, 40.876587, 39.629612>,  <38.594151, 40.792801, 40.101685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090748, 40.876587, 39.629612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.009075, 40.486744, 39.592842>,  <38.960072, 40.252838, 39.570782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.009075, 40.486744, 39.592842>,  <39.090748, 40.876587, 39.629612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009075, 40.486744, 39.592842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236037, 0.042115, -0.970831,
		0.950051, -0.219924, 0.221444,
		-0.204183, -0.974608, -0.091921,
		38.947819, 40.194363, 39.565266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.313137, 30.586634, 26.846045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.100140, 30.741465, 26.544947>,  <43.972343, 30.834364, 26.364288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.100140, 30.741465, 26.544947>,  <44.313137, 30.586634, 26.846045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.100140, 30.741465, 26.544947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086991, 0.859575, 0.503550,
		0.841955, 0.333617, -0.424042,
		-0.532489, 0.387079, -0.752745,
		43.940392, 30.857588, 26.319122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.525703, 31.166817, 26.929947>,  <44.313137, 30.586634, 26.846045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.525703, 31.166817, 26.929947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.211491, 31.219767, 26.688147>,  <44.022964, 31.251537, 26.543066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.211491, 31.219767, 26.688147>,  <44.525703, 31.166817, 26.929947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.211491, 31.219767, 26.688147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140554, 0.913156, 0.382610,
		0.602653, 0.385516, -0.698704,
		-0.785528, 0.132375, -0.604502,
		43.975834, 31.259480, 26.506796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.648911, 31.693722, 26.438547>,  <44.525703, 31.166817, 26.929947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.648911, 31.693722, 26.438547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.257877, 31.670393, 26.519463>,  <44.023254, 31.656397, 26.568012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.257877, 31.670393, 26.519463>,  <44.648911, 31.693722, 26.438547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.257877, 31.670393, 26.519463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011909, 0.944007, 0.329710,
		-0.210192, 0.324730, -0.922155,
		-0.977588, -0.058321, 0.202289,
		43.964600, 31.652897, 26.580149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.379749, 32.288689, 26.279650>,  <44.648911, 31.693722, 26.438547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.379749, 32.288689, 26.279650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.077938, 32.153820, 26.504862>,  <43.896851, 32.072899, 26.639990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.077938, 32.153820, 26.504862>,  <44.379749, 32.288689, 26.279650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.077938, 32.153820, 26.504862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100229, 0.907067, 0.408881,
		-0.648569, 0.252080, -0.718202,
		-0.754528, -0.337172, 0.563030,
		43.851582, 32.052670, 26.673771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.905312, 32.821114, 26.232010>,  <44.379749, 32.288689, 26.279650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.905312, 32.821114, 26.232010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.825409, 32.618511, 26.567522>,  <43.777466, 32.496952, 26.768829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.825409, 32.618511, 26.567522>,  <43.905312, 32.821114, 26.232010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.825409, 32.618511, 26.567522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035867, 0.851680, 0.522833,
		-0.979189, 0.134524, -0.151963,
		-0.199758, -0.506502, 0.838780,
		43.765480, 32.466560, 26.819157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.318199, 33.107262, 26.502264>,  <43.905312, 32.821114, 26.232010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.318199, 33.107262, 26.502264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.469265, 32.923405, 26.823784>,  <43.559906, 32.813091, 27.016697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.469265, 32.923405, 26.823784>,  <43.318199, 33.107262, 26.502264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.469265, 32.923405, 26.823784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169434, 0.819127, 0.548017,
		-0.910309, -0.343158, 0.231476,
		0.377664, -0.459645, 0.803801,
		43.582565, 32.785511, 27.064924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.861523, 33.375252, 27.036079>,  <43.318199, 33.107262, 26.502264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.861523, 33.375252, 27.036079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.165024, 33.225864, 27.249556>,  <43.347122, 33.136234, 27.377642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.165024, 33.225864, 27.249556>,  <42.861523, 33.375252, 27.036079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.165024, 33.225864, 27.249556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033913, 0.795557, 0.604929,
		-0.650499, -0.477088, 0.590963,
		0.758749, -0.373465, 0.533689,
		43.392647, 33.113827, 27.409662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.694096, 33.336750, 27.840487>,  <42.861523, 33.375252, 27.036079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.694096, 33.336750, 27.840487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.093716, 33.337234, 27.823084>,  <43.333488, 33.337524, 27.812643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.093716, 33.337234, 27.823084>,  <42.694096, 33.336750, 27.840487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.093716, 33.337234, 27.823084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024522, 0.810200, 0.585641,
		0.035955, -0.586153, 0.809402,
		0.999053, 0.001209, -0.043505,
		43.393433, 33.337597, 27.810032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.861092, 33.621853, 28.505541>,  <42.694096, 33.336750, 27.840487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.861092, 33.621853, 28.505541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.188366, 33.658321, 28.278471>,  <43.384731, 33.680202, 28.142229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.188366, 33.658321, 28.278471>,  <42.861092, 33.621853, 28.505541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.188366, 33.658321, 28.278471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279791, 0.799419, 0.531645,
		0.502280, -0.593817, 0.628567,
		0.818188, 0.091168, -0.567676,
		43.433823, 33.685673, 28.108168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.424179, 33.640060, 28.951197>,  <42.861092, 33.621853, 28.505541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.424179, 33.640060, 28.951197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.544849, 33.821095, 28.615540>,  <43.617252, 33.929714, 28.414146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.544849, 33.821095, 28.615540>,  <43.424179, 33.640060, 28.951197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.544849, 33.821095, 28.615540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288320, 0.795630, 0.532771,
		0.908772, -0.402663, 0.109528,
		0.301671, 0.452588, -0.839142,
		43.635349, 33.956871, 28.363796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.138256, 33.865105, 29.020800>,  <43.424179, 33.640060, 28.951197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.138256, 33.865105, 29.020800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.025219, 34.108475, 28.724161>,  <43.957397, 34.254498, 28.546179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.025219, 34.108475, 28.724161>,  <44.138256, 33.865105, 29.020800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.025219, 34.108475, 28.724161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469335, 0.761946, 0.446277,
		0.836580, -0.221942, -0.500874,
		-0.282591, 0.608424, -0.741594,
		43.940441, 34.291000, 28.501682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.662453, 34.310493, 28.924849>,  <44.138256, 33.865105, 29.020800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.662453, 34.310493, 28.924849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.360413, 34.504562, 28.748472>,  <44.179188, 34.621002, 28.642647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.360413, 34.504562, 28.748472>,  <44.662453, 34.310493, 28.924849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.360413, 34.504562, 28.748472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379254, 0.871867, 0.309863,
		0.534779, 0.066750, -0.842352,
		-0.755101, 0.485173, -0.440941,
		44.133881, 34.650116, 28.616190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.983761, 34.925541, 28.801008>,  <44.662453, 34.310493, 28.924849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.983761, 34.925541, 28.801008> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.595345, 35.018921, 28.780704>,  <44.362293, 35.074951, 28.768522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.595345, 35.018921, 28.780704>,  <44.983761, 34.925541, 28.801008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.595345, 35.018921, 28.780704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192143, 0.889395, 0.414798,
		0.141980, 0.393034, -0.908496,
		-0.971042, 0.233454, -0.050757,
		44.304031, 35.088959, 28.765478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.869862, 35.491516, 28.324457>,  <44.983761, 34.925541, 28.801008>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.869862, 35.491516, 28.324457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.559845, 35.477318, 28.576822>,  <44.373837, 35.468800, 28.728241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.559845, 35.477318, 28.576822>,  <44.869862, 35.491516, 28.324457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.559845, 35.477318, 28.576822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386695, 0.763008, 0.517963,
		-0.499776, 0.645414, -0.577638,
		-0.775043, -0.035496, 0.630911,
		44.327332, 35.466667, 28.766096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.632328, 36.163292, 28.342358>,  <44.869862, 35.491516, 28.324457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.632328, 36.163292, 28.342358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.488743, 35.983574, 28.669596>,  <44.402592, 35.875744, 28.865938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.488743, 35.983574, 28.669596>,  <44.632328, 36.163292, 28.342358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.488743, 35.983574, 28.669596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370770, 0.735743, 0.566755,
		-0.856547, 0.506771, -0.097523,
		-0.358967, -0.449293, 0.818094,
		44.381054, 35.848785, 28.915024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.268944, 36.693630, 28.794626>,  <44.632328, 36.163292, 28.342358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.268944, 36.693630, 28.794626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.344463, 36.389133, 29.042776>,  <44.389774, 36.206436, 29.191666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.344463, 36.389133, 29.042776>,  <44.268944, 36.693630, 28.794626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.344463, 36.389133, 29.042776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164657, 0.647332, 0.744211,
		-0.968112, -0.038361, 0.247562,
		0.188804, -0.761242, 0.620374,
		44.401104, 36.160759, 29.228888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.941521, 36.835438, 29.474117>,  <44.268944, 36.693630, 28.794626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.941521, 36.835438, 29.474117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.214252, 36.561344, 29.576538>,  <44.377892, 36.396889, 29.637991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.214252, 36.561344, 29.576538>,  <43.941521, 36.835438, 29.474117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.214252, 36.561344, 29.576538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325729, 0.597816, 0.732473,
		-0.654986, -0.416020, 0.630810,
		0.681831, -0.685233, 0.256051,
		44.418800, 36.355774, 29.653353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.788380, 36.829254, 30.192787>,  <43.941521, 36.835438, 29.474117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.788380, 36.829254, 30.192787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.146507, 36.668560, 30.115841>,  <44.361385, 36.572144, 30.069674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.146507, 36.668560, 30.115841>,  <43.788380, 36.829254, 30.192787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.146507, 36.668560, 30.115841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356273, 0.386698, 0.850608,
		-0.267332, -0.830104, 0.489347,
		0.895322, -0.401737, -0.192367,
		44.415104, 36.548038, 30.058130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.020363, 36.463673, 30.787003>,  <43.788380, 36.829254, 30.192787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.020363, 36.463673, 30.787003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.359756, 36.502514, 30.578909>,  <44.563393, 36.525818, 30.454052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.359756, 36.502514, 30.578909>,  <44.020363, 36.463673, 30.787003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.359756, 36.502514, 30.578909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453630, 0.372846, 0.809448,
		0.272563, -0.922799, 0.272308,
		0.848486, 0.097098, -0.520234,
		44.614304, 36.531643, 30.422838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.535736, 36.106285, 31.151215>,  <44.020363, 36.463673, 30.787003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.535736, 36.106285, 31.151215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.712070, 36.383083, 30.922548>,  <44.817871, 36.549164, 30.785349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.712070, 36.383083, 30.922548>,  <44.535736, 36.106285, 31.151215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.712070, 36.383083, 30.922548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552677, 0.292571, 0.780352,
		0.707256, -0.659954, -0.253476,
		0.440837, 0.691999, -0.571664,
		44.844322, 36.590683, 30.751049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.277596, 36.186222, 31.504852>,  <44.535736, 36.106285, 31.151215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.277596, 36.186222, 31.504852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.228550, 36.498051, 31.259176>,  <45.199123, 36.685150, 31.111771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.228550, 36.498051, 31.259176>,  <45.277596, 36.186222, 31.504852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.228550, 36.498051, 31.259176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428173, 0.599853, 0.675902,
		0.895341, -0.180107, -0.407341,
		-0.122610, 0.779575, -0.614190,
		45.191769, 36.731922, 31.074919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.941948, 36.267059, 31.144810>,  <45.277596, 36.186222, 31.504852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.941948, 36.267059, 31.144810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.199432, 36.274742, 31.450819>,  <46.353924, 36.279350, 31.634424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.199432, 36.274742, 31.450819>,  <45.941948, 36.267059, 31.144810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.199432, 36.274742, 31.450819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373160, -0.880656, -0.291884,
		0.668119, 0.473366, -0.574057,
		0.643715, 0.019202, 0.765024,
		46.392548, 36.280502, 31.680326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.579506, 36.274101, 30.916656>,  <45.941948, 36.267059, 31.144810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.579506, 36.274101, 30.916656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.510464, 36.089088, 31.264513>,  <46.469040, 35.978081, 31.473227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.510464, 36.089088, 31.264513>,  <46.579506, 36.274101, 30.916656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.510464, 36.089088, 31.264513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417614, -0.833975, -0.360672,
		0.892080, 0.300922, 0.337104,
		-0.172602, -0.462528, 0.869642,
		46.458683, 35.950329, 31.525406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.255356, 35.841351, 31.146347>,  <46.579506, 36.274101, 30.916656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.255356, 35.841351, 31.146347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.976120, 35.704094, 31.397717>,  <46.808578, 35.621738, 31.548538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.976120, 35.704094, 31.397717>,  <47.255356, 35.841351, 31.146347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.976120, 35.704094, 31.397717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386776, -0.919333, -0.072333,
		0.602553, 0.192565, 0.774499,
		-0.698093, -0.343142, 0.628426,
		46.766693, 35.601151, 31.586245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.602673, 35.309498, 31.487846>,  <47.255356, 35.841351, 31.146347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.602673, 35.309498, 31.487846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.208084, 35.244476, 31.496264>,  <46.971329, 35.205463, 31.501314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.208084, 35.244476, 31.496264>,  <47.602673, 35.309498, 31.487846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.208084, 35.244476, 31.496264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148353, -0.940042, -0.307104,
		0.069703, -0.299829, 0.951443,
		-0.986475, -0.162556, 0.021043,
		46.912140, 35.195709, 31.502577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.581520, 34.696171, 31.789783>,  <47.602673, 35.309498, 31.487846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.581520, 34.696171, 31.789783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.231976, 34.744209, 31.601341>,  <47.022247, 34.773033, 31.488276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.231976, 34.744209, 31.601341>,  <47.581520, 34.696171, 31.789783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.231976, 34.744209, 31.601341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127807, -0.878175, -0.460949,
		-0.469071, -0.463017, 0.752056,
		-0.873864, 0.120099, -0.471103,
		46.969818, 34.780239, 31.460011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.321827, 34.014641, 31.859219>,  <47.581520, 34.696171, 31.789783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.321827, 34.014641, 31.859219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.126003, 34.188778, 31.557011>,  <47.008507, 34.293259, 31.375687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.126003, 34.188778, 31.557011>,  <47.321827, 34.014641, 31.859219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.126003, 34.188778, 31.557011> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047132, -0.878397, -0.475602,
		-0.870685, -0.197235, 0.450561,
		-0.489577, 0.435335, -0.755512,
		46.979134, 34.319378, 31.330355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.713493, 33.551189, 31.694704>,  <47.321827, 34.014641, 31.859219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.713493, 33.551189, 31.694704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.727886, 33.794891, 31.377840>,  <46.736523, 33.941113, 31.187721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.727886, 33.794891, 31.377840>,  <46.713493, 33.551189, 31.694704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.727886, 33.794891, 31.377840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196005, -0.772977, -0.603398,
		-0.979943, 0.176977, 0.091605,
		0.035979, 0.609251, -0.792161,
		46.738682, 33.977665, 31.140192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.192146, 33.228817, 31.234541>,  <46.713493, 33.551189, 31.694704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.192146, 33.228817, 31.234541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.407608, 33.456432, 30.986010>,  <46.536884, 33.593002, 30.836891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.407608, 33.456432, 30.986010>,  <46.192146, 33.228817, 31.234541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.407608, 33.456432, 30.986010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112111, -0.682491, -0.722244,
		-0.835033, 0.458700, -0.303834,
		0.538657, 0.569034, -0.621328,
		46.569206, 33.627144, 30.799612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.796436, 33.375866, 30.609283>,  <46.192146, 33.228817, 31.234541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.796436, 33.375866, 30.609283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.185883, 33.394753, 30.519979>,  <46.419552, 33.406082, 30.466396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.185883, 33.394753, 30.519979>,  <45.796436, 33.375866, 30.609283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.185883, 33.394753, 30.519979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148942, -0.609753, -0.778471,
		-0.172888, 0.791183, -0.586633,
		0.973615, 0.047214, -0.223260,
		46.477966, 33.408916, 30.453001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.863781, 33.569733, 29.986156>,  <45.796436, 33.375866, 30.609283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.863781, 33.569733, 29.986156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.232502, 33.415070, 29.997253>,  <46.453735, 33.322269, 30.003912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.232502, 33.415070, 29.997253>,  <45.863781, 33.569733, 29.986156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.232502, 33.415070, 29.997253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134266, -0.385589, -0.912849,
		0.363661, 0.837743, -0.407353,
		0.921804, -0.386661, 0.027744,
		46.509045, 33.299072, 30.005577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.106781, 33.560600, 29.291853>,  <45.863781, 33.569733, 29.986156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.106781, 33.560600, 29.291853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.342827, 33.300293, 29.482960>,  <46.484455, 33.144108, 29.597624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.342827, 33.300293, 29.482960>,  <46.106781, 33.560600, 29.291853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.342827, 33.300293, 29.482960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032234, -0.610318, -0.791500,
		0.806672, 0.451679, -0.381138,
		0.590119, -0.650767, 0.477767,
		46.519863, 33.105064, 29.626289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.597080, 33.370579, 28.779350>,  <46.106781, 33.560600, 29.291853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.597080, 33.370579, 28.779350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.648319, 33.061073, 29.027506>,  <46.679062, 32.875370, 29.176399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.648319, 33.061073, 29.027506>,  <46.597080, 33.370579, 28.779350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.648319, 33.061073, 29.027506> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015972, -0.627071, -0.778798,
		0.991633, 0.089851, -0.092683,
		0.128095, -0.773762, 0.620390,
		46.686749, 32.828945, 29.213623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.115528, 32.921955, 28.415592>,  <46.597080, 33.370579, 28.779350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.115528, 32.921955, 28.415592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.920708, 32.690392, 28.677172>,  <46.803814, 32.551453, 28.834120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.920708, 32.690392, 28.677172>,  <47.115528, 32.921955, 28.415592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.920708, 32.690392, 28.677172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065713, -0.722347, -0.688401,
		0.870899, -0.378259, 0.313777,
		-0.487050, -0.578909, 0.653948,
		46.774593, 32.516720, 28.873356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.459259, 32.337521, 28.518646>,  <47.115528, 32.921955, 28.415592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.459259, 32.337521, 28.518646> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.088356, 32.234573, 28.627424>,  <46.865814, 32.172806, 28.692692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.088356, 32.234573, 28.627424>,  <47.459259, 32.337521, 28.518646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.088356, 32.234573, 28.627424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028972, -0.773443, -0.633203,
		0.373304, -0.579263, 0.724637,
		-0.927256, -0.257372, 0.271947,
		46.810181, 32.157360, 28.709009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.454643, 31.498501, 28.488714>,  <47.459259, 32.337521, 28.518646>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.454643, 31.498501, 28.488714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.069492, 31.606470, 28.488089>,  <46.838402, 31.671251, 28.487713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.069492, 31.606470, 28.488089>,  <47.454643, 31.498501, 28.488714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.069492, 31.606470, 28.488089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191457, -0.687030, -0.700952,
		-0.190279, -0.674634, 0.713207,
		-0.962880, 0.269925, -0.001564,
		46.780628, 31.687449, 28.487619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.038620, 30.908375, 28.613161>,  <47.454643, 31.498501, 28.488714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.038620, 30.908375, 28.613161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.786152, 31.160427, 28.432247>,  <46.634670, 31.311659, 28.323698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.786152, 31.160427, 28.432247>,  <47.038620, 30.908375, 28.613161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.786152, 31.160427, 28.432247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340507, -0.749015, -0.568358,
		-0.696905, -0.204726, 0.687321,
		-0.631172, 0.630129, -0.452282,
		46.596802, 31.349466, 28.296562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.501835, 30.522554, 28.501516>,  <47.038620, 30.908375, 28.613161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.501835, 30.522554, 28.501516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.411690, 30.840849, 28.276655>,  <46.357605, 31.031826, 28.141739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.411690, 30.840849, 28.276655>,  <46.501835, 30.522554, 28.501516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.411690, 30.840849, 28.276655> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600219, -0.567890, -0.563238,
		-0.767431, 0.210484, 0.605596,
		-0.225360, 0.795737, -0.562153,
		46.344082, 31.079571, 28.108009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.826130, 30.526577, 28.376242>,  <46.501835, 30.522554, 28.501516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.826130, 30.526577, 28.376242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.975956, 30.732870, 28.068027>,  <46.065849, 30.856646, 27.883099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.975956, 30.732870, 28.068027>,  <45.826130, 30.526577, 28.376242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.975956, 30.732870, 28.068027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427915, -0.641085, -0.637101,
		-0.822552, 0.568357, -0.019436,
		0.374561, 0.515732, -0.770535,
		46.088326, 30.887590, 27.836866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.344566, 30.405914, 27.895845>,  <45.826130, 30.526577, 28.376242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.344566, 30.405914, 27.895845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.673290, 30.531195, 27.705462>,  <45.870525, 30.606363, 27.591232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.673290, 30.531195, 27.705462>,  <45.344566, 30.405914, 27.895845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.673290, 30.531195, 27.705462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219865, -0.596333, -0.772040,
		-0.525633, 0.739116, -0.421210,
		0.821808, 0.313201, -0.475959,
		45.919834, 30.625154, 27.562674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.201771, 30.647467, 27.249271>,  <45.344566, 30.405914, 27.895845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.201771, 30.647467, 27.249271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.588249, 30.552788, 27.208389>,  <45.820137, 30.495981, 27.183861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.588249, 30.552788, 27.208389>,  <45.201771, 30.647467, 27.249271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.588249, 30.552788, 27.208389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214853, -0.520070, -0.826659,
		0.142514, 0.820671, -0.553343,
		0.966192, -0.236698, -0.102206,
		45.878105, 30.481779, 27.177727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.356014, 30.629320, 26.540968>,  <45.201771, 30.647467, 27.249271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.356014, 30.629320, 26.540968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.655560, 30.419151, 26.702528>,  <45.835285, 30.293051, 26.799465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.655560, 30.419151, 26.702528>,  <45.356014, 30.629320, 26.540968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.655560, 30.419151, 26.702528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043011, -0.569639, -0.820768,
		0.661327, 0.632016, -0.403984,
		0.748864, -0.525420, 0.403901,
		45.880219, 30.261526, 26.823698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<43.199657, 39.679436, 35.825214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.801636, 39.643978, 35.807293>,  <42.562824, 39.622704, 35.796539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.801636, 39.643978, 35.807293>,  <43.199657, 39.679436, 35.825214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.801636, 39.643978, 35.807293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077130, -0.405411, -0.910875,
		0.062582, -0.909826, 0.410244,
		-0.995055, -0.088646, -0.044804,
		42.503120, 39.617386, 35.793850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.003220, 38.969414, 35.559357>,  <43.199657, 39.679436, 35.825214>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.003220, 38.969414, 35.559357> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.680805, 39.197304, 35.495205>,  <42.487358, 39.334038, 35.456715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.680805, 39.197304, 35.495205>,  <43.003220, 38.969414, 35.559357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.680805, 39.197304, 35.495205> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055441, -0.342452, -0.937898,
		-0.589268, -0.747085, 0.307613,
		-0.806033, 0.569728, -0.160377,
		42.438995, 39.368221, 35.447090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.508484, 38.619621, 35.086777>,  <43.003220, 38.969414, 35.559357>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.508484, 38.619621, 35.086777> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.408638, 39.005295, 35.050926>,  <42.348728, 39.236698, 35.029415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.408638, 39.005295, 35.050926>,  <42.508484, 38.619621, 35.086777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.408638, 39.005295, 35.050926> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261082, -0.156138, -0.952605,
		-0.932484, -0.214390, 0.290707,
		-0.249619, 0.964188, -0.089623,
		42.333752, 39.294552, 35.024040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.038353, 38.536163, 34.603775>,  <42.508484, 38.619621, 35.086777>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.038353, 38.536163, 34.603775> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.086624, 38.933041, 34.616364>,  <42.115585, 39.171165, 34.623917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.086624, 38.933041, 34.616364>,  <42.038353, 38.536163, 34.603775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.086624, 38.933041, 34.616364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272539, 0.063601, -0.960040,
		-0.954547, 0.107278, 0.278086,
		0.120677, 0.992193, 0.031473,
		42.122826, 39.230698, 34.625805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.426884, 38.774879, 34.437447>,  <42.038353, 38.536163, 34.603775>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.426884, 38.774879, 34.437447> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.691681, 39.063087, 34.354870>,  <41.850559, 39.236012, 34.305325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.691681, 39.063087, 34.354870>,  <41.426884, 38.774879, 34.437447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.691681, 39.063087, 34.354870> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356747, 0.060664, -0.932229,
		-0.659165, 0.690776, 0.297202,
		0.661991, 0.720519, -0.206445,
		41.890278, 39.279243, 34.292938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.073620, 39.319611, 34.108662>,  <41.426884, 38.774879, 34.437447>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.073620, 39.319611, 34.108662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.453953, 39.379093, 33.999989>,  <41.682152, 39.414783, 33.934784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.453953, 39.379093, 33.999989>,  <41.073620, 39.319611, 34.108662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.453953, 39.379093, 33.999989> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276678, 0.013595, -0.960866,
		-0.139191, 0.988788, 0.054069,
		0.950829, 0.148703, -0.271684,
		41.739201, 39.423706, 33.918484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.012829, 39.695675, 33.438709>,  <41.073620, 39.319611, 34.108662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.012829, 39.695675, 33.438709> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.396095, 39.582478, 33.455856>,  <41.626053, 39.514561, 33.466145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.396095, 39.582478, 33.455856>,  <41.012829, 39.695675, 33.438709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.396095, 39.582478, 33.455856> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066705, 0.075130, -0.994940,
		0.278337, 0.956176, 0.090863,
		0.958164, -0.282990, 0.042870,
		41.683544, 39.497581, 33.468716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.476856, 40.050064, 32.928406>,  <41.012829, 39.695675, 33.438709>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.476856, 40.050064, 32.928406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.656933, 39.698277, 32.990189>,  <41.764977, 39.487202, 33.027256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.656933, 39.698277, 32.990189>,  <41.476856, 40.050064, 32.928406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.656933, 39.698277, 32.990189> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049146, -0.148307, -0.987719,
		0.891580, 0.452251, -0.023544,
		0.450189, -0.879474, 0.154454,
		41.791988, 39.434433, 33.036526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.187904, 39.985313, 32.459145>,  <41.476856, 40.050064, 32.928406>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.187904, 39.985313, 32.459145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.066433, 39.617729, 32.559776>,  <41.993549, 39.397179, 32.620155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.066433, 39.617729, 32.559776>,  <42.187904, 39.985313, 32.459145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.066433, 39.617729, 32.559776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120291, -0.298919, -0.946666,
		0.945151, -0.257217, 0.201318,
		-0.303676, -0.918960, 0.251583,
		41.975330, 39.342041, 32.635250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.670116, 39.502914, 32.117294>,  <42.187904, 39.985313, 32.459145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.670116, 39.502914, 32.117294> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.340656, 39.289555, 32.194321>,  <42.142979, 39.161537, 32.240536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.340656, 39.289555, 32.194321>,  <42.670116, 39.502914, 32.117294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.340656, 39.289555, 32.194321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068815, -0.431069, -0.899691,
		0.562907, -0.727779, 0.391756,
		-0.823650, -0.533401, 0.192570,
		42.093559, 39.129536, 32.252090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.772076, 38.858433, 31.707794>,  <42.670116, 39.502914, 32.117294>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.772076, 38.858433, 31.707794> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.385456, 38.868858, 31.809849>,  <42.153484, 38.875114, 31.871082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.385456, 38.868858, 31.809849>,  <42.772076, 38.858433, 31.707794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.385456, 38.868858, 31.809849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246413, -0.370180, -0.895682,
		0.071099, -0.928594, 0.364222,
		-0.966553, 0.026067, 0.255137,
		42.095490, 38.876678, 31.886391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.521526, 38.227417, 31.445906>,  <42.772076, 38.858433, 31.707794>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.521526, 38.227417, 31.445906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.212376, 38.476887, 31.492702>,  <42.026886, 38.626568, 31.520781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.212376, 38.476887, 31.492702>,  <42.521526, 38.227417, 31.445906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.212376, 38.476887, 31.492702> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229929, -0.103411, -0.967698,
		-0.591428, -0.774815, 0.223325,
		-0.772881, 0.623672, 0.116993,
		41.980511, 38.663990, 31.527800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.914726, 37.965233, 31.283344>,  <42.521526, 38.227417, 31.445906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.914726, 37.965233, 31.283344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.916367, 38.357189, 31.203556>,  <41.917351, 38.592365, 31.155684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.916367, 38.357189, 31.203556>,  <41.914726, 37.965233, 31.283344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.916367, 38.357189, 31.203556> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147328, -0.196704, -0.969331,
		-0.989079, 0.033361, 0.143560,
		0.004099, 0.979895, -0.199471,
		41.917595, 38.651157, 31.143715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.944496, 37.333767, 30.944433>,  <41.914726, 37.965233, 31.283344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.944496, 37.333767, 30.944433> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.942551, 36.966362, 30.786293>,  <41.941383, 36.745918, 30.691408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.942551, 36.966362, 30.786293>,  <41.944496, 37.333767, 30.944433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.942551, 36.966362, 30.786293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147448, -0.390376, 0.908771,
		-0.989058, 0.062713, -0.133535,
		-0.004863, -0.918517, -0.395351,
		41.941093, 36.690807, 30.667688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.343369, 37.077267, 30.966930>,  <41.944496, 37.333767, 30.944433>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.343369, 37.077267, 30.966930> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.631584, 36.801022, 30.991846>,  <41.804512, 36.635273, 31.006796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.631584, 36.801022, 30.991846>,  <41.343369, 37.077267, 30.966930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.631584, 36.801022, 30.991846> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452546, -0.400280, 0.796855,
		-0.525388, -0.602349, -0.600951,
		0.720534, -0.690617, 0.062289,
		41.847744, 36.593838, 31.010532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.983711, 36.442619, 31.073135>,  <41.343369, 37.077267, 30.966930>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.983711, 36.442619, 31.073135> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.358112, 36.448837, 31.213791>,  <41.582752, 36.452568, 31.298183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.358112, 36.448837, 31.213791>,  <40.983711, 36.442619, 31.073135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.358112, 36.448837, 31.213791> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312164, -0.424888, 0.849720,
		0.162620, -0.905113, -0.392844,
		0.936007, 0.015550, 0.351639,
		41.638916, 36.453503, 31.319283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.070606, 35.859112, 31.425911>,  <40.983711, 36.442619, 31.073135>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.070606, 35.859112, 31.425911> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.385536, 36.050262, 31.581732>,  <41.574493, 36.164951, 31.675224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.385536, 36.050262, 31.581732>,  <41.070606, 35.859112, 31.425911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.385536, 36.050262, 31.581732> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221819, -0.369970, 0.902174,
		0.575249, -0.796717, -0.185286,
		0.787328, 0.477875, 0.389551,
		41.621735, 36.193626, 31.698597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.376583, 35.345913, 31.903395>,  <41.070606, 35.859112, 31.425911>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.376583, 35.345913, 31.903395> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.465855, 35.721359, 32.008614>,  <41.519417, 35.946629, 32.071743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.465855, 35.721359, 32.008614>,  <41.376583, 35.345913, 31.903395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.465855, 35.721359, 32.008614> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358154, -0.172019, 0.917679,
		0.906596, -0.299019, 0.297778,
		0.223180, 0.938614, 0.263047,
		41.532810, 36.002945, 32.087528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.737659, 35.276455, 32.573433>,  <41.376583, 35.345913, 31.903395>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.737659, 35.276455, 32.573433> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.577564, 35.640034, 32.526741>,  <41.481506, 35.858181, 32.498726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.577564, 35.640034, 32.526741>,  <41.737659, 35.276455, 32.573433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.577564, 35.640034, 32.526741> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411114, -0.064252, 0.909317,
		0.819021, 0.411931, 0.399397,
		-0.400237, 0.908947, -0.116727,
		41.457493, 35.912720, 32.491722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.603825, 35.385166, 33.192722>,  <41.737659, 35.276455, 32.573433>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.603825, 35.385166, 33.192722> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.497894, 35.754654, 33.082008>,  <41.434338, 35.976345, 33.015579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.497894, 35.754654, 33.082008>,  <41.603825, 35.385166, 33.192722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.497894, 35.754654, 33.082008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389114, 0.160261, 0.907142,
		0.882303, 0.347933, 0.316991,
		-0.264823, 0.923720, -0.276784,
		41.418446, 36.031769, 32.998974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.883602, 35.915051, 33.687489>,  <41.603825, 35.385166, 33.192722>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.883602, 35.915051, 33.687489> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.533432, 36.013306, 33.520977>,  <41.323330, 36.072258, 33.421070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.533432, 36.013306, 33.520977>,  <41.883602, 35.915051, 33.687489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.533432, 36.013306, 33.520977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413667, 0.064725, 0.908125,
		0.250016, 0.967198, 0.044951,
		-0.875426, 0.245641, -0.416280,
		41.270805, 36.086998, 33.396091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.637009, 36.407242, 34.093178>,  <41.883602, 35.915051, 33.687489>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.637009, 36.407242, 34.093178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.321053, 36.283802, 33.881203>,  <41.131477, 36.209736, 33.754017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.321053, 36.283802, 33.881203>,  <41.637009, 36.407242, 34.093178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321053, 36.283802, 33.881203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559948, 0.010573, 0.828460,
		-0.250062, 0.951132, -0.181153,
		-0.789890, -0.308603, -0.529941,
		41.084084, 36.191219, 33.722221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.045837, 36.815166, 34.317158>,  <41.637009, 36.407242, 34.093178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.045837, 36.815166, 34.317158> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.890965, 36.488708, 34.145580>,  <40.798042, 36.292831, 34.042633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.890965, 36.488708, 34.145580>,  <41.045837, 36.815166, 34.317158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.890965, 36.488708, 34.145580> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638913, -0.097923, 0.763021,
		-0.664742, 0.569485, -0.483534,
		-0.387180, -0.816148, -0.428945,
		40.774811, 36.243866, 34.016895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304268, 37.002666, 34.358421>,  <41.045837, 36.815166, 34.317158>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.304268, 37.002666, 34.358421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.342857, 36.605103, 34.337109>,  <40.366013, 36.366566, 34.324322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.342857, 36.605103, 34.337109>,  <40.304268, 37.002666, 34.358421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.342857, 36.605103, 34.337109> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501542, -0.094786, 0.859925,
		-0.859737, -0.056237, -0.507631,
		0.096476, -0.993908, -0.053286,
		40.371799, 36.306931, 34.321121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.688717, 36.680622, 34.689503>,  <40.304268, 37.002666, 34.358421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.688717, 36.680622, 34.689503> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968628, 36.394932, 34.684010>,  <40.136574, 36.223518, 34.680714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968628, 36.394932, 34.684010>,  <39.688717, 36.680622, 34.689503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.968628, 36.394932, 34.684010> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251655, -0.264462, 0.930983,
		-0.668563, -0.648029, -0.364804,
		0.699781, -0.714225, -0.013730,
		40.178562, 36.180664, 34.679890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291134, 36.105583, 34.791183>,  <39.688717, 36.680622, 34.689503>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291134, 36.105583, 34.791183> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669533, 36.028259, 34.895283>,  <39.896572, 35.981865, 34.957745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669533, 36.028259, 34.895283>,  <39.291134, 36.105583, 34.791183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669533, 36.028259, 34.895283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301510, -0.229645, 0.925395,
		-0.119115, -0.953886, -0.275525,
		0.945993, -0.193302, 0.260252,
		39.953331, 35.970268, 34.973358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292297, 35.491299, 35.046837>,  <39.291134, 36.105583, 34.791183>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292297, 35.491299, 35.046837> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635738, 35.650417, 35.176182>,  <39.841805, 35.745888, 35.253788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635738, 35.650417, 35.176182>,  <39.292297, 35.491299, 35.046837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635738, 35.650417, 35.176182> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261367, -0.202957, 0.943661,
		0.441010, -0.894745, -0.070289,
		0.858602, 0.397793, 0.323363,
		39.893318, 35.769756, 35.273190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477451, 35.085754, 35.752262>,  <39.292297, 35.491299, 35.046837>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477451, 35.085754, 35.752262> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690998, 35.423790, 35.740849>,  <39.819126, 35.626610, 35.734001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690998, 35.423790, 35.740849>,  <39.477451, 35.085754, 35.752262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690998, 35.423790, 35.740849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153156, 0.129825, 0.979637,
		0.831585, -0.518622, 0.198739,
		0.533863, 0.845090, -0.028531,
		39.851158, 35.677319, 35.732288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705444, 34.287350, 35.705940>,  <39.477451, 35.085754, 35.752262>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.705444, 34.287350, 35.705940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340927, 34.123165, 35.692894>,  <39.122215, 34.024654, 35.685066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340927, 34.123165, 35.692894>,  <39.705444, 34.287350, 35.705940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340927, 34.123165, 35.692894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106481, 0.311444, -0.944280,
		0.397747, -0.857044, -0.327524,
		-0.911295, -0.410460, -0.032617,
		39.067539, 34.000027, 35.683109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670021, 33.882637, 35.065472>,  <39.705444, 34.287350, 35.705940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670021, 33.882637, 35.065472> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296036, 33.953632, 35.188328>,  <39.071644, 33.996227, 35.262043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296036, 33.953632, 35.188328>,  <39.670021, 33.882637, 35.065472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.296036, 33.953632, 35.188328> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267194, 0.217176, -0.938851,
		-0.233337, -0.959861, -0.155629,
		-0.934966, 0.177486, 0.307144,
		39.015545, 34.006878, 35.280472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244232, 33.544380, 34.645130>,  <39.670021, 33.882637, 35.065472>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244232, 33.544380, 34.645130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989220, 33.806175, 34.807705>,  <38.836212, 33.963253, 34.905251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989220, 33.806175, 34.807705>,  <39.244232, 33.544380, 34.645130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989220, 33.806175, 34.807705> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345727, 0.228413, -0.910110,
		-0.688494, -0.720743, 0.080654,
		-0.637533, 0.654490, 0.406441,
		38.797958, 34.002522, 34.929638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681053, 33.362648, 34.308281>,  <39.244232, 33.544380, 34.645130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681053, 33.362648, 34.308281> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579769, 33.723866, 34.447075>,  <38.518997, 33.940594, 34.530354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579769, 33.723866, 34.447075>,  <38.681053, 33.362648, 34.308281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579769, 33.723866, 34.447075> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415630, 0.222338, -0.881939,
		-0.873577, -0.367534, 0.319033,
		-0.253209, 0.903042, 0.346988,
		38.503807, 33.994778, 34.551170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020592, 33.497826, 34.040096>,  <38.681053, 33.362648, 34.308281>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020592, 33.497826, 34.040096> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124977, 33.867699, 34.150986>,  <38.187611, 34.089622, 34.217518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124977, 33.867699, 34.150986>,  <38.020592, 33.497826, 34.040096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124977, 33.867699, 34.150986> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417191, 0.367002, -0.831421,
		-0.870545, 0.101318, 0.481546,
		0.260966, 0.924686, 0.277223,
		38.203266, 34.145103, 34.234154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417049, 33.940964, 33.960815>,  <38.020592, 33.497826, 34.040096>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.417049, 33.940964, 33.960815> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708012, 34.214752, 33.980358>,  <37.882587, 34.379025, 33.992085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708012, 34.214752, 33.980358>,  <37.417049, 33.940964, 33.960815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708012, 34.214752, 33.980358> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327397, 0.408744, -0.851903,
		-0.603069, 0.603683, 0.521415,
		0.727405, 0.684467, 0.048857,
		37.926231, 34.420094, 33.995014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164299, 34.750175, 33.956974>,  <37.417049, 33.940964, 33.960815>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164299, 34.750175, 33.956974> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535084, 34.714729, 33.811157>,  <37.757553, 34.693462, 33.723667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535084, 34.714729, 33.811157>,  <37.164299, 34.750175, 33.956974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535084, 34.714729, 33.811157> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279924, 0.483551, -0.829350,
		0.249771, 0.870818, 0.423427,
		0.926961, -0.088620, -0.364540,
		37.813171, 34.688145, 33.701794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269306, 35.281437, 33.451164>,  <37.164299, 34.750175, 33.956974>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269306, 35.281437, 33.451164> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584011, 35.056656, 33.349010>,  <37.772835, 34.921787, 33.287720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584011, 35.056656, 33.349010>,  <37.269306, 35.281437, 33.451164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584011, 35.056656, 33.349010> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080102, 0.317288, -0.944940,
		0.612041, 0.763896, 0.204615,
		0.786758, -0.561953, -0.255383,
		37.820038, 34.888069, 33.272396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581043, 35.703915, 33.067940>,  <37.269306, 35.281437, 33.451164>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581043, 35.703915, 33.067940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771935, 35.373672, 32.947521>,  <37.886467, 35.175526, 32.875271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771935, 35.373672, 32.947521>,  <37.581043, 35.703915, 33.067940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771935, 35.373672, 32.947521> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031416, 0.326327, -0.944735,
		0.878219, 0.460309, 0.129794,
		0.477225, -0.825607, -0.301048,
		37.915104, 35.125992, 32.857208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975811, 35.863407, 32.581348>,  <37.581043, 35.703915, 33.067940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975811, 35.863407, 32.581348> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927616, 35.470089, 32.526775>,  <37.898701, 35.234097, 32.494034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927616, 35.470089, 32.526775>,  <37.975811, 35.863407, 32.581348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927616, 35.470089, 32.526775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109923, 0.123371, -0.986254,
		0.986610, -0.133828, 0.093222,
		-0.120488, -0.983295, -0.136430,
		37.891468, 35.175102, 32.485847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435692, 35.701759, 32.148872>,  <37.975811, 35.863407, 32.581348>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435692, 35.701759, 32.148872> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165634, 35.407352, 32.129055>,  <38.003597, 35.230709, 32.117165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165634, 35.407352, 32.129055>,  <38.435692, 35.701759, 32.148872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165634, 35.407352, 32.129055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067682, 0.005079, -0.997694,
		0.734573, -0.676943, 0.046386,
		-0.675146, -0.736019, -0.049548,
		37.963089, 35.186546, 32.114189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680508, 35.037197, 31.754955>,  <38.435692, 35.701759, 32.148872>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680508, 35.037197, 31.754955> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283695, 35.068443, 31.715405>,  <38.045609, 35.087193, 31.691675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283695, 35.068443, 31.715405>,  <38.680508, 35.037197, 31.754955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283695, 35.068443, 31.715405> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096729, -0.030806, -0.994834,
		-0.080762, -0.996468, 0.023004,
		-0.992029, 0.078120, -0.098875,
		37.986088, 35.091877, 31.685741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.961079, 33.054745, 39.305851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.685768, 33.344681, 39.294048>,  <39.520580, 33.518642, 39.286964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.685768, 33.344681, 39.294048>,  <39.961079, 33.054745, 39.305851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.685768, 33.344681, 39.294048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007747, -0.048019, -0.998816,
		-0.725403, -0.687237, 0.038666,
		-0.688280, 0.724844, -0.029509,
		39.479282, 33.562134, 39.285194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589527, 32.858532, 38.774464>,  <39.961079, 33.054745, 39.305851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.589527, 32.858532, 38.774464> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.446560, 33.230469, 38.809456>,  <39.360779, 33.453629, 38.830452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.446560, 33.230469, 38.809456>,  <39.589527, 32.858532, 38.774464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.446560, 33.230469, 38.809456> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162222, 0.030437, -0.986285,
		-0.919750, -0.366703, 0.139961,
		-0.357413, 0.929841, 0.087482,
		39.339336, 33.509422, 38.835701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060219, 32.794086, 38.427635>,  <39.589527, 32.858532, 38.774464>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060219, 32.794086, 38.427635> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.085541, 33.192959, 38.443756>,  <39.100735, 33.432281, 38.453426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.085541, 33.192959, 38.443756>,  <39.060219, 32.794086, 38.427635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085541, 33.192959, 38.443756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228124, 0.053769, -0.972146,
		-0.971572, 0.052346, 0.230885,
		0.063303, 0.997181, 0.040299,
		39.104530, 33.492111, 38.455845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490986, 33.032066, 38.082935>,  <39.060219, 32.794086, 38.427635>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.490986, 33.032066, 38.082935> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.727131, 33.354752, 38.093403>,  <38.868820, 33.548363, 38.099686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.727131, 33.354752, 38.093403>,  <38.490986, 33.032066, 38.082935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727131, 33.354752, 38.093403> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297081, 0.247331, -0.922264,
		-0.750473, 0.536699, 0.385674,
		0.590367, 0.806710, 0.026172,
		38.904240, 33.596764, 38.101254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065884, 33.644463, 37.990402>,  <38.490986, 33.032066, 38.082935>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065884, 33.644463, 37.990402> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.442711, 33.671425, 37.858967>,  <38.668808, 33.687603, 37.780106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.442711, 33.671425, 37.858967>,  <38.065884, 33.644463, 37.990402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442711, 33.671425, 37.858967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335283, 0.160390, -0.928364,
		-0.009876, 0.984749, 0.173698,
		0.942066, 0.067406, -0.328586,
		38.725330, 33.691647, 37.760391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003773, 34.104561, 37.473122>,  <38.065884, 33.644463, 37.990402>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003773, 34.104561, 37.473122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.354942, 33.925613, 37.404884>,  <38.565643, 33.818245, 37.363941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.354942, 33.925613, 37.404884>,  <38.003773, 34.104561, 37.473122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354942, 33.925613, 37.404884> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104437, 0.168797, -0.980102,
		0.467267, 0.878274, 0.101469,
		0.877926, -0.447372, -0.170597,
		38.618320, 33.791401, 37.353706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286003, 34.493515, 37.057514>,  <38.003773, 34.104561, 37.473122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286003, 34.493515, 37.057514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.490780, 34.158066, 36.983089>,  <38.613647, 33.956795, 36.938435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.490780, 34.158066, 36.983089>,  <38.286003, 34.493515, 37.057514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490780, 34.158066, 36.983089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007075, 0.220706, -0.975315,
		0.858989, 0.497991, 0.118923,
		0.511945, -0.838626, -0.186061,
		38.644363, 33.906479, 36.927273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665600, 34.707169, 36.560001>,  <38.286003, 34.493515, 37.057514>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665600, 34.707169, 36.560001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.711292, 34.312347, 36.514969>,  <38.738708, 34.075455, 36.487949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.711292, 34.312347, 36.514969>,  <38.665600, 34.707169, 36.560001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711292, 34.312347, 36.514969> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160849, 0.130201, -0.978354,
		0.980347, 0.093649, 0.173640,
		0.114230, -0.987055, -0.112579,
		38.745560, 34.016232, 36.481194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370735, 34.574425, 36.259590>,  <38.665600, 34.707169, 36.560001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.370735, 34.574425, 36.259590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.129997, 34.264893, 36.180637>,  <38.985554, 34.079174, 36.133266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.129997, 34.264893, 36.180637>,  <39.370735, 34.574425, 36.259590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129997, 34.264893, 36.180637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153154, 0.130730, -0.979517,
		0.783788, -0.619749, 0.039837,
		-0.601847, -0.773835, -0.197381,
		38.949444, 34.032742, 36.121422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041424, 34.932384, 36.193935>,  <39.370735, 34.574425, 36.259590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041424, 34.932384, 36.193935> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.981693, 35.326344, 36.158894>,  <39.945854, 35.562721, 36.137867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.981693, 35.326344, 36.158894>,  <40.041424, 34.932384, 36.193935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981693, 35.326344, 36.158894> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094820, 0.073926, 0.992746,
		0.984231, 0.156549, 0.082349,
		-0.149325, 0.984900, -0.087605,
		39.936897, 35.621815, 36.132610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499546, 35.183167, 36.669552>,  <40.041424, 34.932384, 36.193935>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499546, 35.183167, 36.669552> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.267586, 35.506268, 36.627121>,  <40.128410, 35.700130, 36.601662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.267586, 35.506268, 36.627121>,  <40.499546, 35.183167, 36.669552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267586, 35.506268, 36.627121> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095548, 0.196734, 0.975790,
		0.809068, 0.555723, -0.191265,
		-0.579897, 0.807755, -0.106073,
		40.093616, 35.748592, 36.595299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.870831, 35.629593, 37.072796>,  <40.499546, 35.183167, 36.669552>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.870831, 35.629593, 37.072796> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.499352, 35.770374, 37.026070>,  <40.276463, 35.854843, 36.998032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.499352, 35.770374, 37.026070>,  <40.870831, 35.629593, 37.072796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.499352, 35.770374, 37.026070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032200, 0.237293, 0.970904,
		0.369437, 0.905438, -0.209040,
		-0.928698, 0.351957, -0.116820,
		40.220741, 35.875961, 36.991024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845531, 36.237232, 37.413280>,  <40.870831, 35.629593, 37.072796>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.845531, 36.237232, 37.413280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.456558, 36.146851, 37.390247>,  <40.223175, 36.092621, 37.376427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.456558, 36.146851, 37.390247>,  <40.845531, 36.237232, 37.413280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.456558, 36.146851, 37.390247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111430, 0.233381, 0.965980,
		-0.204833, 0.945767, -0.252126,
		-0.972433, -0.225959, -0.057583,
		40.164829, 36.079063, 37.372971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.532970, 36.861042, 37.700333>,  <40.845531, 36.237232, 37.413280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.532970, 36.861042, 37.700333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.275311, 36.556362, 37.728302>,  <40.120716, 36.373554, 37.745083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.275311, 36.556362, 37.728302>,  <40.532970, 36.861042, 37.700333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275311, 36.556362, 37.728302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121390, 0.192055, 0.973848,
		-0.755204, 0.618817, -0.216175,
		-0.644151, -0.761696, 0.069922,
		40.082066, 36.327854, 37.749279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943985, 37.154774, 38.156990>,  <40.532970, 36.861042, 37.700333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.943985, 37.154774, 38.156990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.956589, 36.755013, 38.162758>,  <39.964153, 36.515156, 38.166218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.956589, 36.755013, 38.162758>,  <39.943985, 37.154774, 38.156990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.956589, 36.755013, 38.162758> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388662, 0.001039, 0.921380,
		-0.920842, -0.034640, -0.388395,
		0.031513, -0.999399, 0.014420,
		39.966042, 36.455193, 38.167084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248116, 36.924171, 38.449345>,  <39.943985, 37.154774, 38.156990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248116, 36.924171, 38.449345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.503983, 36.621750, 38.504784>,  <39.657501, 36.440296, 38.538048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.503983, 36.621750, 38.504784>,  <39.248116, 36.924171, 38.449345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503983, 36.621750, 38.504784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174267, 0.032971, 0.984146,
		-0.748638, -0.653677, -0.110666,
		0.639665, -0.756055, 0.138598,
		39.695881, 36.394932, 38.546364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950783, 36.622330, 38.979656>,  <39.248116, 36.924171, 38.449345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950783, 36.622330, 38.979656> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.307262, 36.443855, 38.946938>,  <39.521149, 36.336769, 38.927307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.307262, 36.443855, 38.946938>,  <38.950783, 36.622330, 38.979656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307262, 36.443855, 38.946938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113171, 0.044077, 0.992597,
		-0.439278, -0.893854, 0.089776,
		0.891194, -0.446186, -0.081796,
		39.574619, 36.310001, 38.922398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960968, 35.983662, 39.441563>,  <38.950783, 36.622330, 38.979656>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960968, 35.983662, 39.441563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.326839, 36.133774, 39.381531>,  <39.546364, 36.223843, 39.345512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.326839, 36.133774, 39.381531>,  <38.960968, 35.983662, 39.441563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326839, 36.133774, 39.381531> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219715, -0.150013, 0.963961,
		0.339241, -0.914692, -0.219668,
		0.914681, 0.375280, -0.150081,
		39.601242, 36.246357, 39.336506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352993, 35.720364, 39.988037>,  <38.960968, 35.983662, 39.441563>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352993, 35.720364, 39.988037> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.601265, 36.013050, 39.875366>,  <39.750229, 36.188663, 39.807766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.601265, 36.013050, 39.875366>,  <39.352993, 35.720364, 39.988037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.601265, 36.013050, 39.875366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267937, 0.139677, 0.953258,
		0.736862, -0.667140, -0.109360,
		0.620681, 0.731721, -0.281674,
		39.787468, 36.232567, 39.790863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014305, 35.582340, 40.473831>,  <39.352993, 35.720364, 39.988037>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014305, 35.582340, 40.473831> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.017120, 35.950191, 40.316742>,  <40.018810, 36.170902, 40.222488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.017120, 35.950191, 40.316742>,  <40.014305, 35.582340, 40.473831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.017120, 35.950191, 40.316742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494147, 0.338230, 0.800887,
		0.869350, -0.199701, -0.452051,
		0.007041, 0.919630, -0.392722,
		40.019234, 36.226082, 40.198925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748352, 35.830723, 40.545692>,  <40.014305, 35.582340, 40.473831>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.748352, 35.830723, 40.545692> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.521061, 36.157528, 40.506485>,  <40.384686, 36.353611, 40.482960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.521061, 36.157528, 40.506485>,  <40.748352, 35.830723, 40.545692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521061, 36.157528, 40.506485> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503797, 0.439600, 0.743599,
		0.650621, 0.373150, -0.661401,
		-0.568226, 0.817013, -0.098021,
		40.350594, 36.402634, 40.477077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.237770, 36.405907, 40.535080>,  <40.748352, 35.830723, 40.545692>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.237770, 36.405907, 40.535080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.883224, 36.567848, 40.624920>,  <40.670498, 36.665012, 40.678822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.883224, 36.567848, 40.624920>,  <41.237770, 36.405907, 40.535080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.883224, 36.567848, 40.624920> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402530, 0.434210, 0.805873,
		0.228741, 0.804706, -0.547837,
		-0.886367, 0.404857, 0.224597,
		40.617313, 36.689304, 40.692299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.467823, 37.164524, 40.784489>,  <41.237770, 36.405907, 40.535080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.467823, 37.164524, 40.784489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.095829, 37.082264, 40.906368>,  <40.872635, 37.032906, 40.979496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.095829, 37.082264, 40.906368>,  <41.467823, 37.164524, 40.784489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.095829, 37.082264, 40.906368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137977, 0.572996, 0.807860,
		-0.340729, 0.793336, -0.504501,
		-0.929982, -0.205652, 0.304699,
		40.816833, 37.020569, 40.997776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.202229, 37.870037, 41.193623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.547577, 37.679073, 41.128296>,  <36.754787, 37.564495, 41.089100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.547577, 37.679073, 41.128296>,  <36.202229, 37.870037, 41.193623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547577, 37.679073, 41.128296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115442, 0.128199, -0.985007,
		0.491189, 0.869279, 0.055570,
		0.863369, -0.477409, -0.163321,
		36.806587, 37.535851, 41.079300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669796, 38.366230, 40.781429>,  <36.202229, 37.870037, 41.193623>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669796, 38.366230, 40.781429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.844025, 38.015236, 40.701126>,  <36.948563, 37.804642, 40.652946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.844025, 38.015236, 40.701126>,  <36.669796, 38.366230, 40.781429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844025, 38.015236, 40.701126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099640, 0.268654, -0.958070,
		0.894622, 0.397306, 0.204451,
		0.435573, -0.877481, -0.200756,
		36.974697, 37.751991, 40.640900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235981, 38.541077, 40.327248>,  <36.669796, 38.366230, 40.781429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235981, 38.541077, 40.327248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.176628, 38.148106, 40.281948>,  <37.141018, 37.912323, 40.254768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.176628, 38.148106, 40.281948>,  <37.235981, 38.541077, 40.327248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176628, 38.148106, 40.281948> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023045, 0.111051, -0.993547,
		0.988662, -0.150031, 0.006163,
		-0.148378, -0.982425, -0.113250,
		37.132114, 37.853378, 40.247974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774742, 38.335922, 39.982121>,  <37.235981, 38.541077, 40.327248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774742, 38.335922, 39.982121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.524933, 38.027008, 39.935574>,  <37.375046, 37.841660, 39.907646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.524933, 38.027008, 39.935574>,  <37.774742, 38.335922, 39.982121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524933, 38.027008, 39.935574> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246602, -0.053620, -0.967632,
		0.741050, -0.633007, 0.223934,
		-0.624526, -0.772287, -0.116365,
		37.337574, 37.795322, 39.900665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131195, 37.836052, 39.529770>,  <37.774742, 38.335922, 39.982121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131195, 37.836052, 39.529770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.737228, 37.786465, 39.481503>,  <37.500847, 37.756710, 39.452541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.737228, 37.786465, 39.481503>,  <38.131195, 37.836052, 39.529770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737228, 37.786465, 39.481503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114829, 0.053255, -0.991957,
		0.129401, -0.990856, -0.038216,
		-0.984921, -0.123972, -0.120670,
		37.441753, 37.749275, 39.445301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948235, 37.165333, 39.150875>,  <38.131195, 37.836052, 39.529770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948235, 37.165333, 39.150875> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.629452, 37.403362, 39.109398>,  <37.438183, 37.546181, 39.084511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.629452, 37.403362, 39.109398>,  <37.948235, 37.165333, 39.150875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629452, 37.403362, 39.109398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100769, -0.038288, -0.994173,
		-0.595576, -0.802759, -0.029452,
		-0.796953, 0.595073, -0.103697,
		37.390366, 37.581882, 39.078289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591900, 36.828094, 38.602028>,  <37.948235, 37.165333, 39.150875>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591900, 36.828094, 38.602028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.407627, 37.181499, 38.635899>,  <37.297062, 37.393543, 38.656223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.407627, 37.181499, 38.635899>,  <37.591900, 36.828094, 38.602028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407627, 37.181499, 38.635899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072835, 0.057454, -0.995688,
		-0.884571, -0.464864, 0.037883,
		-0.460683, 0.883516, 0.084681,
		37.269421, 37.446556, 38.661304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965508, 36.820621, 38.155888>,  <37.591900, 36.828094, 38.602028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965508, 36.820621, 38.155888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.053066, 37.208336, 38.200733>,  <37.105602, 37.440964, 38.227642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.053066, 37.208336, 38.200733>,  <36.965508, 36.820621, 38.155888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053066, 37.208336, 38.200733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108561, 0.089997, -0.990008,
		-0.969690, 0.228880, -0.085527,
		0.218895, 0.969286, 0.112117,
		37.118736, 37.499123, 38.234367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452656, 37.157444, 37.716179>,  <36.965508, 36.820621, 38.155888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452656, 37.157444, 37.716179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.727360, 37.440880, 37.780994>,  <36.892181, 37.610943, 37.819885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.727360, 37.440880, 37.780994>,  <36.452656, 37.157444, 37.716179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727360, 37.440880, 37.780994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033527, 0.191812, -0.980859,
		-0.726112, 0.679046, 0.107971,
		0.686759, 0.708593, 0.162043,
		36.933388, 37.653458, 37.829609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175652, 37.772976, 37.507175>,  <36.452656, 37.157444, 37.716179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175652, 37.772976, 37.507175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.573200, 37.806068, 37.477863>,  <36.811729, 37.825924, 37.460278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.573200, 37.806068, 37.477863>,  <36.175652, 37.772976, 37.507175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573200, 37.806068, 37.477863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086081, 0.163611, -0.982762,
		-0.069313, 0.983050, 0.169730,
		0.993874, 0.082728, -0.073281,
		36.871361, 37.830887, 37.455879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351051, 38.395885, 37.121140>,  <36.175652, 37.772976, 37.507175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351051, 38.395885, 37.121140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.682869, 38.179504, 37.065662>,  <36.881958, 38.049675, 37.032375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.682869, 38.179504, 37.065662>,  <36.351051, 38.395885, 37.121140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682869, 38.179504, 37.065662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017620, 0.222870, -0.974689,
		0.558169, 0.810987, 0.175349,
		0.829540, -0.540951, -0.138689,
		36.931732, 38.017220, 37.024055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588413, 38.636929, 36.541004>,  <36.351051, 38.395885, 37.121140>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588413, 38.636929, 36.541004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.810410, 38.305618, 36.571846>,  <36.943607, 38.106831, 36.590351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.810410, 38.305618, 36.571846>,  <36.588413, 38.636929, 36.541004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810410, 38.305618, 36.571846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139677, 0.001417, -0.990196,
		0.820046, 0.560319, 0.116477,
		0.554991, -0.828275, 0.077102,
		36.976906, 38.057137, 36.594978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189579, 38.742420, 36.130791>,  <36.588413, 38.636929, 36.541004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189579, 38.742420, 36.130791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.192612, 38.344353, 36.169952>,  <37.194431, 38.105511, 36.193447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.192612, 38.344353, 36.169952>,  <37.189579, 38.742420, 36.130791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192612, 38.344353, 36.169952> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076759, -0.098194, -0.992203,
		0.997021, 0.000010, -0.077133,
		0.007584, -0.995167, 0.097901,
		37.194885, 38.045803, 36.199322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736179, 38.521248, 35.718998>,  <37.189579, 38.742420, 36.130791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736179, 38.521248, 35.718998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.492023, 38.206562, 35.755909>,  <37.345531, 38.017750, 35.778053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.492023, 38.206562, 35.755909>,  <37.736179, 38.521248, 35.718998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492023, 38.206562, 35.755909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038047, -0.087239, -0.995461,
		0.791189, -0.611126, 0.023318,
		-0.610386, -0.786711, 0.092274,
		37.308907, 37.970551, 35.783592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446278, 38.500698, 35.656448>,  <37.736179, 38.521248, 35.718998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446278, 38.500698, 35.656448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.584934, 38.865963, 35.570679>,  <38.668129, 39.085121, 35.519218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.584934, 38.865963, 35.570679>,  <38.446278, 38.500698, 35.656448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584934, 38.865963, 35.570679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183605, 0.158119, 0.970200,
		0.919853, -0.375680, -0.112850,
		0.346641, 0.913161, -0.214423,
		38.688927, 39.139912, 35.506351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097313, 38.548981, 35.864941>,  <38.446278, 38.500698, 35.656448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097313, 38.548981, 35.864941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.936310, 38.915146, 35.863949>,  <38.839706, 39.134846, 35.863354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.936310, 38.915146, 35.863949>,  <39.097313, 38.548981, 35.864941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936310, 38.915146, 35.863949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303270, 0.135899, 0.943164,
		0.863721, 0.378882, -0.332317,
		-0.402510, 0.915412, -0.002475,
		38.815556, 39.189770, 35.863205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651047, 38.938240, 36.164627>,  <39.097313, 38.548981, 35.864941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.651047, 38.938240, 36.164627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.322792, 39.164391, 36.197865>,  <39.125839, 39.300083, 36.217808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.322792, 39.164391, 36.197865>,  <39.651047, 38.938240, 36.164627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322792, 39.164391, 36.197865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289792, 0.286405, 0.913232,
		0.492524, 0.773510, -0.398876,
		-0.820634, 0.565380, 0.083096,
		39.076603, 39.334003, 36.222794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912834, 39.510502, 36.590172>,  <39.651047, 38.938240, 36.164627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.912834, 39.510502, 36.590172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.519104, 39.567905, 36.631157>,  <39.282864, 39.602348, 36.655746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.519104, 39.567905, 36.631157>,  <39.912834, 39.510502, 36.590172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.519104, 39.567905, 36.631157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146946, 0.346374, 0.926516,
		0.097475, 0.927054, -0.362035,
		-0.984330, 0.143511, 0.102464,
		39.223804, 39.610958, 36.661896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839771, 40.141552, 36.855503>,  <39.912834, 39.510502, 36.590172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839771, 40.141552, 36.855503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.514469, 39.941963, 36.975262>,  <39.319286, 39.822208, 37.047119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.514469, 39.941963, 36.975262>,  <39.839771, 40.141552, 36.855503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.514469, 39.941963, 36.975262> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000083, 0.514615, 0.857421,
		-0.581905, 0.697279, -0.418556,
		-0.813257, -0.498973, 0.299399,
		39.270493, 39.792271, 37.065083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530582, 40.634815, 37.317978>,  <39.839771, 40.141552, 36.855503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.530582, 40.634815, 37.317978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.323601, 40.306343, 37.414234>,  <39.199413, 40.109261, 37.471989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.323601, 40.306343, 37.414234>,  <39.530582, 40.634815, 37.317978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323601, 40.306343, 37.414234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064932, 0.318084, 0.945836,
		-0.853246, 0.473798, -0.217914,
		-0.517450, -0.821181, 0.240639,
		39.168365, 40.059990, 37.486427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931969, 40.811466, 37.792324>,  <39.530582, 40.634815, 37.317978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931969, 40.811466, 37.792324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.997650, 40.419514, 37.837688>,  <39.037060, 40.184341, 37.864906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.997650, 40.419514, 37.837688>,  <38.931969, 40.811466, 37.792324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997650, 40.419514, 37.837688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168484, 0.085420, 0.981996,
		-0.971932, -0.180353, -0.151069,
		0.164201, -0.979886, 0.113409,
		39.046909, 40.125549, 37.871712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359383, 40.564785, 38.206860>,  <38.931969, 40.811466, 37.792324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359383, 40.564785, 38.206860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.641785, 40.284229, 38.246059>,  <38.811226, 40.115894, 38.269581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.641785, 40.284229, 38.246059>,  <38.359383, 40.564785, 38.206860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641785, 40.284229, 38.246059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267846, -0.136340, 0.953766,
		-0.655602, -0.699615, -0.284122,
		0.706006, -0.701392, 0.098004,
		38.853588, 40.073811, 38.275459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096134, 39.991646, 38.588116>,  <38.359383, 40.564785, 38.206860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096134, 39.991646, 38.588116> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.487270, 39.938896, 38.653141>,  <38.721954, 39.907246, 38.692158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.487270, 39.938896, 38.653141>,  <38.096134, 39.991646, 38.588116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487270, 39.938896, 38.653141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189051, -0.222868, 0.956342,
		-0.089888, -0.965888, -0.242862,
		0.977845, -0.131876, 0.162568,
		38.780624, 39.899334, 38.701912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152504, 39.413582, 39.056194>,  <38.096134, 39.991646, 38.588116>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152504, 39.413582, 39.056194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.494602, 39.618492, 39.087502>,  <38.699860, 39.741440, 39.106285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.494602, 39.618492, 39.087502>,  <38.152504, 39.413582, 39.056194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494602, 39.618492, 39.087502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002645, -0.146723, 0.989174,
		0.518216, -0.846194, -0.124129,
		0.855246, 0.512278, 0.078272,
		38.751175, 39.772175, 39.110985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730724, 38.971973, 39.368927>,  <38.152504, 39.413582, 39.056194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730724, 38.971973, 39.368927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.794682, 39.361015, 39.436420>,  <38.833057, 39.594440, 39.476917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.794682, 39.361015, 39.436420>,  <38.730724, 38.971973, 39.368927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794682, 39.361015, 39.436420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144556, -0.192162, 0.970658,
		0.976492, -0.130811, -0.171322,
		0.159894, 0.972606, 0.168735,
		38.842651, 39.652798, 39.487041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305996, 38.949673, 39.796951>,  <38.730724, 38.971973, 39.368927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.305996, 38.949673, 39.796951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.171017, 39.322548, 39.849350>,  <39.090031, 39.546272, 39.880791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.171017, 39.322548, 39.849350>,  <39.305996, 38.949673, 39.796951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171017, 39.322548, 39.849350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016590, -0.145026, 0.989289,
		0.941198, 0.331659, 0.064403,
		-0.337447, 0.932185, 0.130996,
		39.069782, 39.602203, 39.888649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701851, 39.157871, 40.330070>,  <39.305996, 38.949673, 39.796951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701851, 39.157871, 40.330070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.393288, 39.411472, 40.308281>,  <39.208149, 39.563633, 40.295208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.393288, 39.411472, 40.308281>,  <39.701851, 39.157871, 40.330070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393288, 39.411472, 40.308281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062371, 0.160522, 0.985060,
		0.633274, 0.756488, -0.163372,
		-0.771410, 0.634002, -0.054472,
		39.161865, 39.601673, 40.291939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829571, 39.803955, 40.789803>,  <39.701851, 39.157871, 40.330070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829571, 39.803955, 40.789803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.431484, 39.781128, 40.758080>,  <39.192631, 39.767429, 40.739044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.431484, 39.781128, 40.758080>,  <39.829571, 39.803955, 40.789803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431484, 39.781128, 40.758080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086833, 0.144391, 0.985703,
		-0.044802, 0.987873, -0.148656,
		-0.995215, -0.057070, -0.079311,
		39.132919, 39.764008, 40.734287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298725, 40.419788, 40.849930>,  <39.829571, 39.803955, 40.789803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.298725, 40.419788, 40.849930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.658009, 40.296448, 40.975239>,  <40.873581, 40.222443, 41.050423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.658009, 40.296448, 40.975239>,  <40.298725, 40.419788, 40.849930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.658009, 40.296448, 40.975239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301671, -0.085930, -0.949532,
		0.319708, 0.947384, 0.015837,
		0.898210, -0.308350, 0.313271,
		40.927471, 40.203941, 41.069221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.795959, 40.808311, 40.472401>,  <40.298725, 40.419788, 40.849930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.795959, 40.808311, 40.472401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.981560, 40.479115, 40.603481>,  <41.092922, 40.281597, 40.682129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.981560, 40.479115, 40.603481>,  <40.795959, 40.808311, 40.472401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.981560, 40.479115, 40.603481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495574, -0.065462, -0.866095,
		0.734239, 0.564273, 0.377477,
		0.464004, -0.822989, 0.327704,
		41.120762, 40.232220, 40.701794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.571579, 40.855701, 40.309296>,  <40.795959, 40.808311, 40.472401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.571579, 40.855701, 40.309296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.534859, 40.460709, 40.360603>,  <41.512829, 40.223713, 40.391388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.534859, 40.460709, 40.360603>,  <41.571579, 40.855701, 40.309296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.534859, 40.460709, 40.360603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510013, -0.157258, -0.845670,
		0.855254, -0.012213, 0.518065,
		-0.091798, -0.987482, 0.128267,
		41.507320, 40.164463, 40.399082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.232445, 40.579006, 40.076164>,  <41.571579, 40.855701, 40.309296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.232445, 40.579006, 40.076164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.976624, 40.272675, 40.049408>,  <41.823132, 40.088875, 40.033356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.976624, 40.272675, 40.049408>,  <42.232445, 40.579006, 40.076164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.976624, 40.272675, 40.049408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394379, -0.252168, -0.883672,
		0.659877, -0.591535, 0.463302,
		-0.639553, -0.765831, -0.066889,
		41.784756, 40.042927, 40.029343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.588409, 39.910263, 39.927124>,  <42.232445, 40.579006, 40.076164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.588409, 39.910263, 39.927124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.208393, 39.863953, 39.811180>,  <41.980385, 39.836166, 39.741611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.208393, 39.863953, 39.811180>,  <42.588409, 39.910263, 39.927124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.208393, 39.863953, 39.811180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310084, -0.243920, -0.918886,
		0.035684, -0.962860, 0.267635,
		-0.950039, -0.115779, -0.289864,
		41.923382, 39.829220, 39.724220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.695232, 39.363598, 39.567665>,  <42.588409, 39.910263, 39.927124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.695232, 39.363598, 39.567665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.334999, 39.494091, 39.452759>,  <42.118858, 39.572388, 39.383816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.334999, 39.494091, 39.452759>,  <42.695232, 39.363598, 39.567665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.334999, 39.494091, 39.452759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157482, -0.371101, -0.915142,
		-0.405155, -0.869400, 0.282831,
		-0.900582, 0.326233, -0.287268,
		42.064823, 39.591961, 39.366577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.440773, 38.877560, 39.086121>,  <42.695232, 39.363598, 39.567665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.440773, 38.877560, 39.086121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.244446, 39.220123, 39.022053>,  <42.126648, 39.425663, 38.983612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.244446, 39.220123, 39.022053>,  <42.440773, 38.877560, 39.086121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.244446, 39.220123, 39.022053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189138, -0.074721, -0.979103,
		-0.850486, -0.510854, -0.125306,
		-0.490816, 0.856414, -0.160172,
		42.097202, 39.477047, 38.974003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.964260, 38.734558, 38.588665>,  <42.440773, 38.877560, 39.086121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.964260, 38.734558, 38.588665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.989613, 39.133636, 38.579048>,  <42.004822, 39.373085, 38.573277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.989613, 39.133636, 38.579048>,  <41.964260, 38.734558, 38.588665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.989613, 39.133636, 38.579048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135481, -0.032472, -0.990248,
		-0.988751, 0.059502, -0.137228,
		0.063378, 0.997700, -0.024046,
		42.008625, 39.432945, 38.571835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.390652, 39.036572, 38.156410>,  <41.964260, 38.734558, 38.588665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.390652, 39.036572, 38.156410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.697258, 39.293457, 38.154922>,  <41.881222, 39.447586, 38.154030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.697258, 39.293457, 38.154922>,  <41.390652, 39.036572, 38.156410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.697258, 39.293457, 38.154922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021555, 0.019939, -0.999569,
		-0.641859, 0.766269, 0.029127,
		0.766520, 0.642210, -0.003719,
		41.927216, 39.486118, 38.153809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.219265, 39.623245, 37.762474>,  <41.390652, 39.036572, 38.156410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.219265, 39.623245, 37.762474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.618923, 39.638390, 37.755959>,  <41.858719, 39.647476, 37.752048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.618923, 39.638390, 37.755959>,  <41.219265, 39.623245, 37.762474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.618923, 39.638390, 37.755959> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022586, 0.172269, -0.984791,
		-0.034482, 0.984322, 0.172978,
		0.999150, 0.037865, -0.016292,
		41.918667, 39.649750, 37.751072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.417686, 40.317936, 37.448254>,  <41.219265, 39.623245, 37.762474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.417686, 40.317936, 37.448254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.730759, 40.071819, 37.410683>,  <41.918602, 39.924149, 37.388138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.730759, 40.071819, 37.410683>,  <41.417686, 40.317936, 37.448254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.730759, 40.071819, 37.410683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027827, 0.185352, -0.982278,
		0.621797, 0.766200, 0.162194,
		0.782684, -0.615291, -0.093930,
		41.965565, 39.887234, 37.382504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.852142, 40.616196, 36.955044>,  <41.417686, 40.317936, 37.448254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.852142, 40.616196, 36.955044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.016052, 40.251328, 36.957058>,  <42.114399, 40.032406, 36.958267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.016052, 40.251328, 36.957058>,  <41.852142, 40.616196, 36.955044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.016052, 40.251328, 36.957058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228520, 0.097311, -0.968664,
		0.883098, 0.398085, 0.248325,
		0.409775, -0.912173, 0.005035,
		42.138985, 39.977676, 36.958569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.326550, 40.724018, 36.581120>,  <41.852142, 40.616196, 36.955044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.326550, 40.724018, 36.581120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.290352, 40.325661, 36.579571>,  <42.268635, 40.086647, 36.578640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.290352, 40.325661, 36.579571>,  <42.326550, 40.724018, 36.581120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.290352, 40.325661, 36.579571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274346, -0.021188, -0.961398,
		0.957364, -0.088064, 0.275136,
		-0.090494, -0.995890, -0.003875,
		42.263203, 40.026894, 36.578407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.902733, 40.377422, 36.118286>,  <42.326550, 40.724018, 36.581120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.902733, 40.377422, 36.118286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.586880, 40.133266, 36.143303>,  <42.397369, 39.986774, 36.158314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.586880, 40.133266, 36.143303>,  <42.902733, 40.377422, 36.118286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.586880, 40.133266, 36.143303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122621, -0.256846, -0.958642,
		0.601207, -0.749303, 0.277659,
		-0.789629, -0.610389, 0.062537,
		42.349991, 39.950150, 36.162064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<25.562937, 42.020462, 31.682661> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.489914, 41.935642, 31.298639>,  <25.446100, 41.884750, 31.068226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.489914, 41.935642, 31.298639>,  <25.562937, 42.020462, 31.682661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.489914, 41.935642, 31.298639> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216324, -0.961199, 0.171172,
		-0.959102, -0.176434, 0.221346,
		-0.182557, -0.212054, -0.960055,
		25.435146, 41.872025, 31.010622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.121691, 41.456379, 31.744854>,  <25.562937, 42.020462, 31.682661>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.121691, 41.456379, 31.744854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.281525, 41.439465, 31.378567>,  <25.377424, 41.429317, 31.158794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.281525, 41.439465, 31.378567>,  <25.121691, 41.456379, 31.744854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.281525, 41.439465, 31.378567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147770, -0.982900, 0.109868,
		-0.904707, -0.179218, -0.386505,
		0.399586, -0.042285, -0.915720,
		25.401400, 41.426781, 31.103851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.897676, 40.881481, 31.485722>,  <25.121691, 41.456379, 31.744854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.897676, 40.881481, 31.485722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.208353, 40.940411, 31.240759>,  <25.394760, 40.975769, 31.093781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.208353, 40.940411, 31.240759>,  <24.897676, 40.881481, 31.485722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.208353, 40.940411, 31.240759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230837, -0.971195, 0.059124,
		-0.586056, -0.187287, -0.788329,
		0.776693, 0.147325, -0.612407,
		25.441360, 40.984608, 31.057037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.006550, 40.252155, 31.140617>,  <24.897676, 40.881481, 31.485722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.006550, 40.252155, 31.140617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.351770, 40.441212, 31.069340>,  <25.558903, 40.554646, 31.026573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.351770, 40.441212, 31.069340>,  <25.006550, 40.252155, 31.140617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.351770, 40.441212, 31.069340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486164, -0.872990, 0.039153,
		-0.137058, -0.120423, -0.983216,
		0.863052, 0.472638, -0.178196,
		25.610685, 40.583004, 31.015881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.381500, 39.855183, 30.735104>,  <25.006550, 40.252155, 31.140617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.381500, 39.855183, 30.735104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.636839, 40.087063, 30.937670>,  <25.790041, 40.226192, 31.059210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.636839, 40.087063, 30.937670>,  <25.381500, 39.855183, 30.735104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.636839, 40.087063, 30.937670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620135, -0.777051, 0.107815,
		0.456012, 0.245224, -0.855522,
		0.638346, 0.579705, 0.506416,
		25.828342, 40.260975, 31.089594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.983353, 39.686001, 30.435745>,  <25.381500, 39.855183, 30.735104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.983353, 39.686001, 30.435745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.095345, 39.863987, 30.776009>,  <26.162540, 39.970779, 30.980165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.095345, 39.863987, 30.776009>,  <25.983353, 39.686001, 30.435745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.095345, 39.863987, 30.776009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653305, -0.737579, 0.170790,
		0.703422, 0.507921, -0.497206,
		0.279981, 0.444964, 0.850657,
		26.179338, 39.997475, 31.031206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.733276, 39.659279, 30.439236>,  <25.983353, 39.686001, 30.435745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.733276, 39.659279, 30.439236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.608625, 39.733112, 30.812077>,  <26.533834, 39.777412, 31.035782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.608625, 39.733112, 30.812077>,  <26.733276, 39.659279, 30.439236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.608625, 39.733112, 30.812077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631265, -0.692970, 0.348277,
		0.710207, 0.696937, 0.099426,
		-0.311626, 0.184585, 0.932104,
		26.515139, 39.788486, 31.091707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.343670, 39.637310, 30.821369>,  <26.733276, 39.659279, 30.439236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.343670, 39.637310, 30.821369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.040325, 39.546604, 31.065817>,  <26.858318, 39.492180, 31.212486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.040325, 39.546604, 31.065817>,  <27.343670, 39.637310, 30.821369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.040325, 39.546604, 31.065817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546268, -0.732613, 0.406042,
		0.355638, 0.641761, 0.679459,
		-0.758362, -0.226762, 0.611119,
		26.812817, 39.478577, 31.249153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.653242, 39.415695, 31.466869>,  <27.343670, 39.637310, 30.821369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.653242, 39.415695, 31.466869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.290918, 39.247269, 31.485695>,  <27.073524, 39.146214, 31.496990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.290918, 39.247269, 31.485695>,  <27.653242, 39.415695, 31.466869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.290918, 39.247269, 31.485695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408330, -0.837947, 0.362093,
		-0.113029, 0.347204, 0.930953,
		-0.905810, -0.421063, 0.047062,
		27.019175, 39.120949, 31.499813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.547701, 39.133614, 32.209126>,  <27.653242, 39.415695, 31.466869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.547701, 39.133614, 32.209126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.281345, 38.938671, 31.983181>,  <27.121532, 38.821705, 31.847614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.281345, 38.938671, 31.983181>,  <27.547701, 39.133614, 32.209126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.281345, 38.938671, 31.983181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302990, -0.868550, 0.392196,
		-0.681753, 0.090011, 0.726024,
		-0.665891, -0.487358, -0.564864,
		27.081577, 38.792465, 31.813723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.305090, 38.685020, 32.641068>,  <27.547701, 39.133614, 32.209126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.305090, 38.685020, 32.641068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.182413, 38.536263, 32.290607>,  <27.108807, 38.447010, 32.080330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.182413, 38.536263, 32.290607>,  <27.305090, 38.685020, 32.641068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.182413, 38.536263, 32.290607> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085586, -0.927556, 0.363753,
		-0.947953, 0.036575, 0.316304,
		-0.306693, -0.371891, -0.876149,
		27.090405, 38.424694, 32.027763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.770472, 38.213573, 32.800968>,  <27.305090, 38.685020, 32.641068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.770472, 38.213573, 32.800968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.900318, 38.078194, 32.447681>,  <26.978226, 37.996964, 32.235710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.900318, 38.078194, 32.447681>,  <26.770472, 38.213573, 32.800968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.900318, 38.078194, 32.447681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152350, -0.902883, 0.401984,
		-0.933495, -0.265049, -0.241527,
		0.324616, -0.338454, -0.883217,
		26.997704, 37.976658, 32.182716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.488979, 37.512039, 32.762295>,  <26.770472, 38.213573, 32.800968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.488979, 37.512039, 32.762295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.804218, 37.528034, 32.516594>,  <26.993361, 37.537632, 32.369175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.804218, 37.528034, 32.516594>,  <26.488979, 37.512039, 32.762295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.804218, 37.528034, 32.516594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304101, -0.892900, 0.332042,
		-0.535190, -0.448476, -0.715850,
		0.788095, 0.039985, -0.614253,
		27.040648, 37.540031, 32.332317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.412178, 36.874031, 32.376179>,  <26.488979, 37.512039, 32.762295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.412178, 36.874031, 32.376179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.787851, 36.991123, 32.304356>,  <27.013256, 37.061378, 32.261261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.787851, 36.991123, 32.304356>,  <26.412178, 36.874031, 32.376179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.787851, 36.991123, 32.304356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320061, -0.935651, 0.148723,
		-0.124469, -0.197148, -0.972440,
		0.939185, 0.292729, -0.179559,
		27.069607, 37.078941, 32.250488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.743793, 36.404530, 31.874773>,  <26.412178, 36.874031, 32.376179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.743793, 36.404530, 31.874773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.046122, 36.588718, 32.060978>,  <27.227518, 36.699230, 32.172699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.046122, 36.588718, 32.060978>,  <26.743793, 36.404530, 31.874773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.046122, 36.588718, 32.060978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431867, -0.884959, 0.174179,
		0.492162, 0.069391, -0.867734,
		0.755822, 0.460470, 0.465511,
		27.272869, 36.726860, 32.200630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.434620, 36.256298, 31.536297>,  <26.743793, 36.404530, 31.874773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.434620, 36.256298, 31.536297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.501450, 36.331169, 31.923502>,  <27.541548, 36.376091, 32.155827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.501450, 36.331169, 31.923502>,  <27.434620, 36.256298, 31.536297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.501450, 36.331169, 31.923502> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491691, -0.866829, 0.082749,
		0.854592, 0.462139, -0.236856,
		0.167072, 0.187176, 0.968014,
		27.551571, 36.387321, 32.213905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.127115, 36.027950, 31.585127>,  <27.434620, 36.256298, 31.536297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.127115, 36.027950, 31.585127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.028248, 36.061356, 31.971273>,  <27.968927, 36.081398, 32.202961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.028248, 36.061356, 31.971273>,  <28.127115, 36.027950, 31.585127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.028248, 36.061356, 31.971273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666038, -0.708967, 0.231861,
		0.703775, 0.700280, 0.119615,
		-0.247171, 0.083510, 0.965367,
		27.954096, 36.086411, 32.260883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.743423, 36.066093, 31.903032>,  <28.127115, 36.027950, 31.585127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.743423, 36.066093, 31.903032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.484430, 35.945736, 32.183098>,  <28.329035, 35.873524, 32.351135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.484430, 35.945736, 32.183098>,  <28.743423, 36.066093, 31.903032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.484430, 35.945736, 32.183098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731451, -0.503219, 0.460163,
		0.213876, 0.810084, 0.545913,
		-0.647484, -0.300891, 0.700163,
		28.290186, 35.855469, 32.393147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.484056, 36.121937, 31.661356>,  <28.743423, 36.066093, 31.903032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.484056, 36.121937, 31.661356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.582150, 35.745842, 31.566856>,  <29.641006, 35.520184, 31.510157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.582150, 35.745842, 31.566856>,  <29.484056, 36.121937, 31.661356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.582150, 35.745842, 31.566856> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897839, 0.312197, -0.310512,
		0.365712, -0.135967, 0.920743,
		0.245233, -0.940237, -0.236251,
		29.655720, 35.463772, 31.495981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.181698, 35.952755, 31.815950>,  <29.484056, 36.121937, 31.661356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.181698, 35.952755, 31.815950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.108398, 35.682678, 31.530142>,  <30.064419, 35.520634, 31.358658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.108398, 35.682678, 31.530142>,  <30.181698, 35.952755, 31.815950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.108398, 35.682678, 31.530142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850856, 0.255128, -0.459297,
		0.492407, -0.692119, 0.527738,
		-0.183247, -0.675190, -0.714520,
		30.053425, 35.480122, 31.315786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.779955, 36.173615, 32.256779>,  <30.181698, 35.952755, 31.815950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.779955, 36.173615, 32.256779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.091356, 36.381802, 32.116467>,  <31.278196, 36.506714, 32.032280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.091356, 36.381802, 32.116467>,  <30.779955, 36.173615, 32.256779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.091356, 36.381802, 32.116467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482306, 0.853724, 0.196304,
		0.401639, 0.016360, 0.915652,
		0.778503, 0.520468, -0.350780,
		31.324907, 36.537941, 32.011234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.939054, 36.719456, 32.718945>,  <30.779955, 36.173615, 32.256779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.939054, 36.719456, 32.718945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.067181, 36.834496, 32.357906>,  <31.144056, 36.903519, 32.141281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.067181, 36.834496, 32.357906>,  <30.939054, 36.719456, 32.718945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.067181, 36.834496, 32.357906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575872, 0.815652, 0.055529,
		0.752177, 0.501995, 0.426886,
		0.320315, 0.287599, -0.902599,
		31.163275, 36.920776, 32.087128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.159325, 37.388493, 32.807270>,  <30.939054, 36.719456, 32.718945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.159325, 37.388493, 32.807270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.081974, 37.334278, 32.418583>,  <31.035564, 37.301750, 32.185371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.081974, 37.334278, 32.418583>,  <31.159325, 37.388493, 32.807270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.081974, 37.334278, 32.418583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622432, 0.782536, 0.014718,
		0.758409, 0.607674, -0.235684,
		-0.193375, -0.135535, -0.971718,
		31.023962, 37.293617, 32.127068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.260239, 38.058167, 32.542545>,  <31.159325, 37.388493, 32.807270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.260239, 38.058167, 32.542545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.083317, 37.855881, 32.246269>,  <30.977163, 37.734509, 32.068504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.083317, 37.855881, 32.246269>,  <31.260239, 38.058167, 32.542545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.083317, 37.855881, 32.246269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536230, 0.811108, -0.233584,
		0.718904, 0.293863, -0.629938,
		-0.442306, -0.505716, -0.740687,
		30.950624, 37.704166, 32.024063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.301672, 38.455261, 31.845919>,  <31.260239, 38.058167, 32.542545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.301672, 38.455261, 31.845919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.979296, 38.218582, 31.853472>,  <30.785870, 38.076576, 31.858004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.979296, 38.218582, 31.853472>,  <31.301672, 38.455261, 31.845919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.979296, 38.218582, 31.853472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587815, 0.796053, -0.144127,
		0.070247, -0.127258, -0.989379,
		-0.805940, -0.591696, 0.018884,
		30.737514, 38.041073, 31.859137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998018, 38.603912, 31.186405>,  <31.301672, 38.455261, 31.845919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998018, 38.603912, 31.186405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.737240, 38.446625, 31.445742>,  <30.580772, 38.352253, 31.601343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.737240, 38.446625, 31.445742>,  <30.998018, 38.603912, 31.186405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.737240, 38.446625, 31.445742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651451, 0.728023, -0.213526,
		-0.388046, -0.561570, -0.730794,
		-0.651945, -0.393218, 0.648342,
		30.541656, 38.328659, 31.640244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.392399, 38.829041, 30.910398>,  <30.998018, 38.603912, 31.186405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.392399, 38.829041, 30.910398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.272476, 38.698521, 31.268984>,  <30.200523, 38.620209, 31.484135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.272476, 38.698521, 31.268984>,  <30.392399, 38.829041, 30.910398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.272476, 38.698521, 31.268984> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731446, 0.681890, 0.003581,
		-0.612457, -0.654641, -0.443105,
		-0.299805, -0.326301, 0.896463,
		30.182535, 38.600632, 31.537922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.687559, 38.776005, 30.834332>,  <30.392399, 38.829041, 30.910398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.687559, 38.776005, 30.834332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.774799, 38.823513, 31.221800>,  <29.827143, 38.852016, 31.454281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.774799, 38.823513, 31.221800>,  <29.687559, 38.776005, 30.834332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.774799, 38.823513, 31.221800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640400, 0.766397, 0.050221,
		-0.736424, -0.631292, 0.243209,
		0.218099, 0.118768, 0.968673,
		29.840229, 38.859142, 31.512402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.030235, 38.862976, 31.187834>,  <29.687559, 38.776005, 30.834332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.030235, 38.862976, 31.187834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.272528, 39.012997, 31.468525>,  <29.417904, 39.103008, 31.636940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.272528, 39.012997, 31.468525>,  <29.030235, 38.862976, 31.187834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.272528, 39.012997, 31.468525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529988, 0.847994, 0.004261,
		-0.593464, -0.374489, 0.712431,
		0.605733, 0.375052, 0.701729,
		29.454248, 39.125511, 31.679043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.601984, 39.340130, 31.482174>,  <29.030235, 38.862976, 31.187834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.601984, 39.340130, 31.482174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.958012, 39.445396, 31.631046>,  <29.171627, 39.508556, 31.720371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.958012, 39.445396, 31.631046>,  <28.601984, 39.340130, 31.482174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.958012, 39.445396, 31.631046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262727, 0.963418, -0.052925,
		-0.372496, -0.050676, 0.926649,
		0.890068, 0.263170, 0.372183,
		29.225033, 39.524349, 31.742701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.371315, 39.760586, 31.882391>,  <28.601984, 39.340130, 31.482174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.371315, 39.760586, 31.882391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.755404, 39.824383, 31.790705>,  <28.985857, 39.862659, 31.735693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.755404, 39.824383, 31.790705>,  <28.371315, 39.760586, 31.882391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.755404, 39.824383, 31.790705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208813, 0.955102, -0.210184,
		0.185401, 0.249686, 0.950412,
		0.960221, 0.159490, -0.229215,
		29.043470, 39.872231, 31.721941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.460047, 40.456173, 32.114346>,  <28.371315, 39.760586, 31.882391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.460047, 40.456173, 32.114346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.766386, 40.375771, 31.870028>,  <28.950190, 40.327530, 31.723436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.766386, 40.375771, 31.870028>,  <28.460047, 40.456173, 32.114346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.766386, 40.375771, 31.870028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050590, 0.928104, -0.368867,
		0.641027, 0.313397, 0.700619,
		0.765849, -0.201009, -0.610795,
		28.996141, 40.315468, 31.686789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.940010, 41.030121, 32.106403>,  <28.460047, 40.456173, 32.114346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.940010, 41.030121, 32.106403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.013384, 40.844486, 31.759769>,  <29.057407, 40.733105, 31.551788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.013384, 40.844486, 31.759769>,  <28.940010, 41.030121, 32.106403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.013384, 40.844486, 31.759769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111317, 0.866068, -0.487375,
		0.976709, 0.185867, 0.107206,
		0.183434, -0.464090, -0.866587,
		29.068415, 40.705257, 31.499794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.511454, 41.338886, 31.825483>,  <28.940010, 41.030121, 32.106403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.511454, 41.338886, 31.825483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.341724, 41.163872, 31.508368>,  <29.239887, 41.058865, 31.318098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.341724, 41.163872, 31.508368>,  <29.511454, 41.338886, 31.825483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.341724, 41.163872, 31.508368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091135, 0.891704, -0.443349,
		0.900918, -0.115868, -0.418237,
		-0.424314, -0.437537, -0.792792,
		29.214428, 41.032612, 31.270531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.815170, 41.683399, 31.215919>,  <29.511454, 41.338886, 31.825483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.815170, 41.683399, 31.215919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.467512, 41.519325, 31.105404>,  <29.258917, 41.420883, 31.039095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.467512, 41.519325, 31.105404>,  <29.815170, 41.683399, 31.215919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.467512, 41.519325, 31.105404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273336, 0.863997, -0.422844,
		0.412156, -0.291994, -0.863057,
		-0.869146, -0.410182, -0.276289,
		29.206768, 41.396271, 31.022518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.781996, 41.815571, 30.510218>,  <29.815170, 41.683399, 31.215919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.781996, 41.815571, 30.510218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.408356, 41.772072, 30.646235>,  <29.184172, 41.745972, 30.727844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.408356, 41.772072, 30.646235>,  <29.781996, 41.815571, 30.510218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.408356, 41.772072, 30.646235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218610, 0.927251, -0.303998,
		-0.282249, -0.358302, -0.889919,
		-0.934101, -0.108743, 0.340044,
		29.128126, 41.739449, 30.748247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.424520, 42.071964, 30.032295>,  <29.781996, 41.815571, 30.510218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.424520, 42.071964, 30.032295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.160637, 42.063969, 30.332798>,  <29.002306, 42.059174, 30.513100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.160637, 42.063969, 30.332798>,  <29.424520, 42.071964, 30.032295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.160637, 42.063969, 30.332798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501598, 0.756106, -0.420360,
		-0.559627, -0.654144, -0.508835,
		-0.659710, -0.019986, 0.751255,
		28.962725, 42.057972, 30.558174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.765448, 42.222446, 29.744123>,  <29.424520, 42.071964, 30.032295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.765448, 42.222446, 29.744123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.668987, 42.278137, 30.128304>,  <28.611111, 42.311550, 30.358810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.668987, 42.278137, 30.128304>,  <28.765448, 42.222446, 29.744123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.668987, 42.278137, 30.128304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521082, 0.816326, -0.249169,
		-0.818730, -0.560560, -0.124312,
		-0.241153, 0.139226, 0.960449,
		28.596642, 42.319904, 30.416439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.056652, 42.089718, 29.740227>,  <28.765448, 42.222446, 29.744123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.056652, 42.089718, 29.740227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.159803, 42.321602, 30.049402>,  <28.221695, 42.460732, 30.234907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.159803, 42.321602, 30.049402>,  <28.056652, 42.089718, 29.740227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.159803, 42.321602, 30.049402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546207, 0.747363, -0.378294,
		-0.796967, -0.324632, 0.509370,
		0.257878, 0.579710, 0.772940,
		28.237167, 42.495514, 30.281284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.473803, 42.315125, 29.998461>,  <28.056652, 42.089718, 29.740227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.473803, 42.315125, 29.998461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.750374, 42.576767, 30.121151>,  <27.916317, 42.733753, 30.194765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.750374, 42.576767, 30.121151>,  <27.473803, 42.315125, 29.998461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.750374, 42.576767, 30.121151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566204, 0.754325, -0.332274,
		-0.448712, 0.056074, 0.891916,
		0.691426, 0.654102, 0.306725,
		27.957802, 42.772999, 30.213169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.115889, 42.895134, 30.302921>,  <27.473803, 42.315125, 29.998461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.115889, 42.895134, 30.302921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.476786, 43.055347, 30.239008>,  <27.693325, 43.151474, 30.200661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.476786, 43.055347, 30.239008>,  <27.115889, 42.895134, 30.302921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.476786, 43.055347, 30.239008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426570, 0.883279, -0.194569,
		0.063200, 0.243706, 0.967788,
		0.902244, 0.400533, -0.159781,
		27.747459, 43.175507, 30.191074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.114731, 43.538635, 30.680096>,  <27.115889, 42.895134, 30.302921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.114731, 43.538635, 30.680096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.388838, 43.583973, 30.392328>,  <27.553303, 43.611176, 30.219667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.388838, 43.583973, 30.392328>,  <27.114731, 43.538635, 30.680096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.388838, 43.583973, 30.392328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335290, 0.926003, -0.173489,
		0.646519, 0.360100, 0.672563,
		0.685269, 0.113340, -0.719417,
		27.594418, 43.617973, 30.176502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.277893, 37.844215, 41.300438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.992844, 37.571201, 41.365330>,  <40.821815, 37.407394, 41.404266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.992844, 37.571201, 41.365330>,  <41.277893, 37.844215, 41.300438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.992844, 37.571201, 41.365330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043041, 0.273342, 0.960953,
		-0.700229, 0.677812, -0.224166,
		-0.712620, -0.682535, 0.162228,
		40.779057, 37.366440, 41.413998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.609680, 38.181644, 41.576389>,  <41.277893, 37.844215, 41.300438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.609680, 38.181644, 41.576389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.635254, 37.798080, 41.686951>,  <40.650600, 37.567940, 41.753288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.635254, 37.798080, 41.686951>,  <40.609680, 38.181644, 41.576389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.635254, 37.798080, 41.686951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001849, 0.277084, 0.960844,
		-0.997952, -0.060924, 0.019489,
		0.063938, -0.958912, 0.276404,
		40.654434, 37.510406, 41.769871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.157158, 38.086784, 42.096085>,  <40.609680, 38.181644, 41.576389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.157158, 38.086784, 42.096085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.415836, 37.784210, 42.135269>,  <40.571041, 37.602665, 42.158779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.415836, 37.784210, 42.135269>,  <40.157158, 38.086784, 42.096085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.415836, 37.784210, 42.135269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014591, 0.116135, 0.993126,
		-0.762610, -0.643678, 0.064067,
		0.646694, -0.756433, 0.097958,
		40.609844, 37.557281, 42.164658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053577, 37.877758, 42.729279>,  <40.157158, 38.086784, 42.096085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.053577, 37.877758, 42.729279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.390919, 37.672123, 42.666721>,  <40.593323, 37.548740, 42.629185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.390919, 37.672123, 42.666721>,  <40.053577, 37.877758, 42.729279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390919, 37.672123, 42.666721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230903, 0.083896, 0.969353,
		-0.485215, -0.853622, 0.189460,
		0.843356, -0.514092, -0.156396,
		40.643925, 37.517895, 42.619801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069328, 37.228634, 43.121803>,  <40.053577, 37.877758, 42.729279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.069328, 37.228634, 43.121803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.451221, 37.337994, 43.074936>,  <40.680359, 37.403610, 43.046814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.451221, 37.337994, 43.074936>,  <40.069328, 37.228634, 43.121803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.451221, 37.337994, 43.074936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104871, 0.059236, 0.992720,
		0.278351, -0.960075, 0.027883,
		0.954737, 0.273401, -0.117172,
		40.737644, 37.420013, 43.039783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331810, 36.855343, 43.613056>,  <40.069328, 37.228634, 43.121803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331810, 36.855343, 43.613056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.601589, 37.142296, 43.543209>,  <40.763454, 37.314468, 43.501301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.601589, 37.142296, 43.543209>,  <40.331810, 36.855343, 43.613056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.601589, 37.142296, 43.543209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169770, 0.079480, 0.982273,
		0.718543, -0.692132, -0.068185,
		0.674444, 0.717381, -0.174613,
		40.803921, 37.357510, 43.490826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.978100, 36.730904, 44.040577>,  <40.331810, 36.855343, 43.613056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.978100, 36.730904, 44.040577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.992592, 37.119537, 43.947021>,  <41.001289, 37.352718, 43.890888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.992592, 37.119537, 43.947021>,  <40.978100, 36.730904, 44.040577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.992592, 37.119537, 43.947021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340931, 0.207982, 0.916793,
		0.939390, -0.112956, -0.323709,
		0.036232, 0.971589, -0.233886,
		41.003460, 37.411015, 43.876854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.631378, 36.966228, 44.223080>,  <40.978100, 36.730904, 44.040577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.631378, 36.966228, 44.223080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.400677, 37.292122, 44.199192>,  <41.262257, 37.487656, 44.184860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.400677, 37.292122, 44.199192>,  <41.631378, 36.966228, 44.223080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.400677, 37.292122, 44.199192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338506, 0.304886, 0.890201,
		0.743482, 0.493213, -0.451636,
		-0.576756, 0.814730, -0.059722,
		41.227650, 37.536541, 44.181274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.024933, 37.592770, 44.592697>,  <41.631378, 36.966228, 44.223080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.024933, 37.592770, 44.592697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.644321, 37.713974, 44.571583>,  <41.415955, 37.786697, 44.558914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.644321, 37.713974, 44.571583>,  <42.024933, 37.592770, 44.592697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.644321, 37.713974, 44.571583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086938, 0.429584, 0.898832,
		0.295027, 0.850673, -0.435103,
		-0.951526, 0.303006, -0.052783,
		41.358864, 37.804874, 44.555748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.132828, 38.220142, 44.804005>,  <42.024933, 37.592770, 44.592697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.132828, 38.220142, 44.804005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.735153, 38.185486, 44.829578>,  <41.496548, 38.164692, 44.844925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.735153, 38.185486, 44.829578>,  <42.132828, 38.220142, 44.804005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.735153, 38.185486, 44.829578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001601, 0.581809, 0.813324,
		-0.107666, 0.808698, -0.578287,
		-0.994186, -0.086641, 0.063936,
		41.436897, 38.159492, 44.848759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.820774, 38.956394, 44.937050>,  <42.132828, 38.220142, 44.804005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.820774, 38.956394, 44.937050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.571556, 38.678192, 45.080208>,  <41.422024, 38.511272, 45.166103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.571556, 38.678192, 45.080208>,  <41.820774, 38.956394, 44.937050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.571556, 38.678192, 45.080208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028578, 0.477491, 0.878172,
		-0.781664, 0.536912, -0.317375,
		-0.623045, -0.695505, 0.357894,
		41.384644, 38.469540, 45.187576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.573887, 39.320286, 45.443737>,  <41.820774, 38.956394, 44.937050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.573887, 39.320286, 45.443737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.473778, 38.937725, 45.503937>,  <41.413712, 38.708187, 45.540058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.473778, 38.937725, 45.503937>,  <41.573887, 39.320286, 45.443737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.473778, 38.937725, 45.503937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107654, 0.181973, 0.977393,
		-0.962171, 0.228416, -0.148504,
		-0.250276, -0.956406, 0.150499,
		41.398693, 38.650803, 45.549088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790333, 39.134396, 45.637047>,  <41.573887, 39.320286, 45.443737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.790333, 39.134396, 45.637047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.112217, 38.948807, 45.785198>,  <41.305347, 38.837456, 45.874088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.112217, 38.948807, 45.785198>,  <40.790333, 39.134396, 45.637047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.112217, 38.948807, 45.785198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193663, 0.384589, 0.902544,
		-0.561194, -0.798013, 0.219629,
		0.804709, -0.463968, 0.370374,
		41.353630, 38.809616, 45.896309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552570, 38.722801, 46.287502>,  <40.790333, 39.134396, 45.637047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552570, 38.722801, 46.287502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.919796, 38.874111, 46.240067>,  <41.140133, 38.964897, 46.211605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.919796, 38.874111, 46.240067>,  <40.552570, 38.722801, 46.287502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.919796, 38.874111, 46.240067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095778, 0.501932, 0.859588,
		0.384687, -0.777799, 0.497036,
		0.918065, 0.378277, -0.118591,
		41.195217, 38.987595, 46.204491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139114, 39.274200, 46.340378>,  <40.552570, 38.722801, 46.287502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.139114, 39.274200, 46.340378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.993305, 39.646679, 46.339905>,  <39.905819, 39.870167, 46.339622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.993305, 39.646679, 46.339905>,  <40.139114, 39.274200, 46.340378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993305, 39.646679, 46.339905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416765, 0.162011, -0.894460,
		-0.832726, -0.326539, -0.447146,
		-0.364519, 0.931195, -0.001179,
		39.883949, 39.926037, 46.339550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711952, 39.358528, 45.769798>,  <40.139114, 39.274200, 46.340378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.711952, 39.358528, 45.769798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.878883, 39.701206, 45.891068>,  <39.979042, 39.906815, 45.963829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.878883, 39.701206, 45.891068>,  <39.711952, 39.358528, 45.769798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878883, 39.701206, 45.891068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506520, 0.057706, -0.860295,
		-0.754505, 0.512586, -0.409850,
		0.417325, 0.856694, 0.303175,
		40.004082, 39.958214, 45.982021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827721, 39.806744, 45.233471>,  <39.711952, 39.358528, 45.769798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.827721, 39.806744, 45.233471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.039642, 40.036980, 45.482632>,  <40.166798, 40.175121, 45.632126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.039642, 40.036980, 45.482632>,  <39.827721, 39.806744, 45.233471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039642, 40.036980, 45.482632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402418, 0.475904, -0.782033,
		-0.746568, 0.664993, 0.020510,
		0.529807, 0.575587, 0.622900,
		40.198586, 40.209656, 45.669502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711269, 40.513065, 45.096382>,  <39.827721, 39.806744, 45.233471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.711269, 40.513065, 45.096382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.071434, 40.479935, 45.267216>,  <40.287533, 40.460056, 45.369717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.071434, 40.479935, 45.267216>,  <39.711269, 40.513065, 45.096382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.071434, 40.479935, 45.267216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413530, 0.467809, -0.781120,
		-0.135095, 0.879940, 0.455472,
		0.900412, -0.082826, 0.427080,
		40.341557, 40.455086, 45.395340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954784, 41.217354, 45.040516>,  <39.711269, 40.513065, 45.096382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954784, 41.217354, 45.040516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.264248, 40.967579, 45.083462>,  <40.449928, 40.817715, 45.109230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.264248, 40.967579, 45.083462>,  <39.954784, 41.217354, 45.040516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.264248, 40.967579, 45.083462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412666, 0.368023, -0.833226,
		0.480783, 0.688941, 0.542409,
		0.773663, -0.624435, 0.107364,
		40.496346, 40.780247, 45.115669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552467, 41.657482, 44.906082>,  <39.954784, 41.217354, 45.040516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552467, 41.657482, 44.906082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.657272, 41.275204, 44.852421>,  <40.720154, 41.045837, 44.820225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.657272, 41.275204, 44.852421>,  <40.552467, 41.657482, 44.906082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.657272, 41.275204, 44.852421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414643, 0.237009, -0.878577,
		0.871447, 0.174572, 0.458372,
		0.262013, -0.955694, -0.134156,
		40.735878, 40.988495, 44.812176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.033829, 41.735806, 44.407375>,  <40.552467, 41.657482, 44.906082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.033829, 41.735806, 44.407375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.987934, 41.338467, 44.411415>,  <40.960396, 41.100063, 44.413837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.987934, 41.338467, 44.411415>,  <41.033829, 41.735806, 44.407375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.987934, 41.338467, 44.411415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494620, -0.065940, -0.866604,
		0.861502, -0.094439, 0.498894,
		-0.114738, -0.993344, 0.010096,
		40.953514, 41.040462, 44.414444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.676670, 41.340088, 44.137280>,  <41.033829, 41.735806, 44.407375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.676670, 41.340088, 44.137280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.351994, 41.114948, 44.074848>,  <41.157188, 40.979862, 44.037388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.351994, 41.114948, 44.074848>,  <41.676670, 41.340088, 44.137280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.351994, 41.114948, 44.074848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265061, -0.116833, -0.957127,
		0.520486, -0.818259, 0.244022,
		-0.811688, -0.562852, -0.156078,
		41.108486, 40.946095, 44.028023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.859371, 40.602608, 43.767014>,  <41.676670, 41.340088, 44.137280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.859371, 40.602608, 43.767014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.472607, 40.685310, 43.707245>,  <41.240547, 40.734932, 43.671383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.472607, 40.685310, 43.707245>,  <41.859371, 40.602608, 43.767014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.472607, 40.685310, 43.707245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097877, -0.240237, -0.965767,
		-0.235517, -0.948452, 0.212061,
		-0.966929, 0.206699, -0.149412,
		41.182533, 40.747337, 43.662418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.620655, 39.961277, 43.480213>,  <41.859371, 40.602608, 43.767014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.620655, 39.961277, 43.480213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.341969, 40.228107, 43.374691>,  <41.174755, 40.388206, 43.311378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.341969, 40.228107, 43.374691>,  <41.620655, 39.961277, 43.480213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.341969, 40.228107, 43.374691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114782, -0.466679, -0.876947,
		-0.708104, -0.580703, 0.401712,
		-0.696716, 0.667079, -0.263803,
		41.132954, 40.428230, 43.295551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.153210, 39.559879, 43.137665>,  <41.620655, 39.961277, 43.480213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.153210, 39.559879, 43.137665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.057793, 39.931141, 43.023384>,  <41.000542, 40.153896, 42.954815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.057793, 39.931141, 43.023384>,  <41.153210, 39.559879, 43.137665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.057793, 39.931141, 43.023384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188627, -0.332879, -0.923911,
		-0.952636, -0.166503, 0.254481,
		-0.238546, 0.928153, -0.285706,
		40.986229, 40.209587, 42.937672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.519321, 39.473309, 42.573818>,  <41.153210, 39.559879, 43.137665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.519321, 39.473309, 42.573818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.683483, 39.830318, 42.499031>,  <40.781982, 40.044525, 42.454159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.683483, 39.830318, 42.499031>,  <40.519321, 39.473309, 42.573818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.683483, 39.830318, 42.499031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043832, -0.185487, -0.981668,
		-0.910847, 0.411081, -0.037004,
		0.410409, 0.892528, -0.186969,
		40.806606, 40.098076, 42.442940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209183, 39.609615, 41.918804>,  <40.519321, 39.473309, 42.573818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209183, 39.609615, 41.918804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.507515, 39.871593, 41.967445>,  <40.686512, 40.028782, 41.996632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.507515, 39.871593, 41.967445>,  <40.209183, 39.609615, 41.918804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507515, 39.871593, 41.967445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153268, 0.008933, -0.988144,
		-0.648266, 0.755624, -0.093719,
		0.745828, 0.654945, 0.121604,
		40.731262, 40.068077, 42.003925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104023, 40.044209, 41.433235>,  <40.209183, 39.609615, 41.918804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104023, 40.044209, 41.433235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.499882, 40.054611, 41.489700>,  <40.737396, 40.060852, 41.523579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.499882, 40.054611, 41.489700>,  <40.104023, 40.044209, 41.433235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.499882, 40.054611, 41.489700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141865, -0.027326, -0.989509,
		-0.021881, 0.999288, -0.030733,
		0.989644, 0.026011, 0.141166,
		40.796776, 40.062416, 41.532051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508785, 40.418770, 41.155205>,  <40.104023, 40.044209, 41.433235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.508785, 40.418770, 41.155205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.212502, 40.150684, 41.136574>,  <39.034733, 39.989834, 41.125397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.212502, 40.150684, 41.136574>,  <39.508785, 40.418770, 41.155205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.212502, 40.150684, 41.136574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233551, 0.191874, 0.953225,
		-0.629926, 0.716938, -0.298651,
		-0.740707, -0.670212, -0.046575,
		38.990288, 39.949619, 41.122601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924908, 40.774784, 41.463047>,  <39.508785, 40.418770, 41.155205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924908, 40.774784, 41.463047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.855007, 40.381676, 41.487137>,  <38.813065, 40.145813, 41.501591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.855007, 40.381676, 41.487137>,  <38.924908, 40.774784, 41.463047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855007, 40.381676, 41.487137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202342, 0.095706, 0.974627,
		-0.963596, 0.158136, -0.215580,
		-0.174755, -0.982768, 0.060225,
		38.802582, 40.086845, 41.505203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361130, 40.807861, 41.845848>,  <38.924908, 40.774784, 41.463047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361130, 40.807861, 41.845848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.464779, 40.421566, 41.851578>,  <38.526970, 40.189789, 41.855015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.464779, 40.421566, 41.851578>,  <38.361130, 40.807861, 41.845848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464779, 40.421566, 41.851578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200520, -0.039280, 0.978902,
		-0.944799, -0.256532, -0.203828,
		0.259126, -0.965738, 0.014328,
		38.542515, 40.131844, 41.855877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845516, 40.415535, 42.223324>,  <38.361130, 40.807861, 41.845848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845516, 40.415535, 42.223324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.159416, 40.168030, 42.237785>,  <38.347755, 40.019527, 42.246464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.159416, 40.168030, 42.237785>,  <37.845516, 40.415535, 42.223324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159416, 40.168030, 42.237785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208266, -0.208291, 0.955636,
		-0.583778, -0.757463, -0.292322,
		0.784747, -0.618761, 0.036158,
		38.394840, 39.982403, 42.248634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632774, 39.684101, 42.435562>,  <37.845516, 40.415535, 42.223324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632774, 39.684101, 42.435562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.026493, 39.709999, 42.501240>,  <38.262726, 39.725540, 42.540646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.026493, 39.709999, 42.501240>,  <37.632774, 39.684101, 42.435562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026493, 39.709999, 42.501240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150826, -0.174630, 0.973014,
		0.091676, -0.982503, -0.162123,
		0.984300, 0.064750, 0.164197,
		38.321785, 39.729424, 42.550499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801697, 39.054737, 42.874397>,  <37.632774, 39.684101, 42.435562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801697, 39.054737, 42.874397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.105183, 39.306591, 42.941219>,  <38.287273, 39.457703, 42.981312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.105183, 39.306591, 42.941219>,  <37.801697, 39.054737, 42.874397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105183, 39.306591, 42.941219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194666, -0.025582, 0.980536,
		0.621655, -0.776469, 0.103159,
		0.758717, 0.629636, 0.167055,
		38.332798, 39.495483, 42.991337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121235, 38.871719, 43.471409>,  <37.801697, 39.054737, 42.874397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121235, 38.871719, 43.471409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.254845, 39.248699, 43.465393>,  <38.335011, 39.474888, 43.461784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.254845, 39.248699, 43.465393>,  <38.121235, 38.871719, 43.471409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254845, 39.248699, 43.465393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287875, 0.117196, 0.950470,
		0.897529, -0.313148, 0.310453,
		0.334022, 0.942445, -0.015039,
		38.355053, 39.531433, 43.460880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440681, 38.262924, 43.657787>,  <38.121235, 38.871719, 43.471409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440681, 38.262924, 43.657787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.144951, 37.996269, 43.695732>,  <37.967514, 37.836277, 43.718498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.144951, 37.996269, 43.695732>,  <38.440681, 38.262924, 43.657787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144951, 37.996269, 43.695732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093884, -0.037449, -0.994879,
		0.666774, -0.744442, -0.034900,
		-0.739323, -0.666636, 0.094861,
		37.923153, 37.796280, 43.724190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559597, 37.677784, 43.183239>,  <38.440681, 38.262924, 43.657787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559597, 37.677784, 43.183239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.164791, 37.667702, 43.246700>,  <37.927910, 37.661652, 43.284775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.164791, 37.667702, 43.246700>,  <38.559597, 37.677784, 43.183239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.164791, 37.667702, 43.246700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144434, -0.293085, -0.945114,
		0.070317, -0.955754, 0.285639,
		-0.987013, -0.025201, 0.158652,
		37.868687, 37.660141, 43.294296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376694, 37.025764, 42.872734>,  <38.559597, 37.677784, 43.183239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376694, 37.025764, 42.872734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.048615, 37.253117, 42.898735>,  <37.851768, 37.389526, 42.914337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.048615, 37.253117, 42.898735>,  <38.376694, 37.025764, 42.872734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048615, 37.253117, 42.898735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304769, -0.337961, -0.890448,
		-0.484141, -0.750154, 0.450419,
		-0.820197, 0.568376, 0.065003,
		37.802555, 37.423630, 42.918236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858459, 36.714638, 42.462517>,  <38.376694, 37.025764, 42.872734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858459, 36.714638, 42.462517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.714207, 37.082085, 42.527119>,  <37.627655, 37.302555, 42.565880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.714207, 37.082085, 42.527119>,  <37.858459, 36.714638, 42.462517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714207, 37.082085, 42.527119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490554, -0.039533, -0.870514,
		-0.793286, -0.393161, 0.464889,
		-0.360630, 0.918620, 0.161506,
		37.606018, 37.357670, 42.575569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250980, 36.648308, 42.226738>,  <37.858459, 36.714638, 42.462517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250980, 36.648308, 42.226738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.313717, 37.043358, 42.227543>,  <37.351357, 37.280388, 42.228024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.313717, 37.043358, 42.227543>,  <37.250980, 36.648308, 42.226738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.313717, 37.043358, 42.227543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514413, 0.083426, -0.853475,
		-0.843078, 0.132826, 0.521130,
		0.156839, 0.987622, 0.002007,
		37.360767, 37.339645, 42.228146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567642, 36.961273, 42.070896>,  <37.250980, 36.648308, 42.226738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567642, 36.961273, 42.070896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.849606, 37.216461, 41.946903>,  <37.018784, 37.369576, 41.872509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.849606, 37.216461, 41.946903>,  <36.567642, 36.961273, 42.070896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849606, 37.216461, 41.946903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473359, 0.097665, -0.875439,
		-0.528233, 0.763840, 0.370836,
		0.704912, 0.637974, -0.309981,
		37.061081, 37.407852, 41.853909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282352, 37.357132, 41.672215>,  <36.567642, 36.961273, 42.070896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282352, 37.357132, 41.672215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.660179, 37.416008, 41.554829>,  <36.886875, 37.451332, 41.484398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.660179, 37.416008, 41.554829>,  <36.282352, 37.357132, 41.672215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660179, 37.416008, 41.554829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297179, 0.003409, -0.954816,
		-0.139537, 0.989103, 0.046961,
		0.944571, 0.147188, -0.293465,
		36.943550, 37.460163, 41.466789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<39.205605, 35.212345, 46.178696> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.517189, 35.420662, 46.038982>,  <39.704140, 35.545650, 45.955154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.517189, 35.420662, 46.038982>,  <39.205605, 35.212345, 46.178696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517189, 35.420662, 46.038982> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085090, -0.464062, -0.881706,
		-0.621273, 0.716535, -0.317172,
		0.778960, 0.520792, -0.349280,
		39.750877, 35.576900, 45.934200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998123, 35.470287, 45.421097>,  <39.205605, 35.212345, 46.178696>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998123, 35.470287, 45.421097> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.397072, 35.468189, 45.450008>,  <39.636440, 35.466930, 45.467354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.397072, 35.468189, 45.450008>,  <38.998123, 35.470287, 45.421097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397072, 35.468189, 45.450008> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067253, -0.304397, -0.950168,
		0.026984, 0.952531, -0.303244,
		0.997371, -0.005245, 0.072275,
		39.696281, 35.466618, 45.471691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301655, 35.717506, 44.757492>,  <38.998123, 35.470287, 45.421097>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301655, 35.717506, 44.757492> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.619621, 35.548534, 44.931698>,  <39.810402, 35.447151, 45.036221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.619621, 35.548534, 44.931698>,  <39.301655, 35.717506, 44.757492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.619621, 35.548534, 44.931698> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351453, -0.264522, -0.898058,
		0.494566, 0.866940, -0.061810,
		0.794912, -0.422426, 0.435512,
		39.858093, 35.421806, 45.062351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773502, 35.812023, 44.263012>,  <39.301655, 35.717506, 44.757492>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.773502, 35.812023, 44.263012> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.904575, 35.498817, 44.474487>,  <39.983219, 35.310894, 44.601372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.904575, 35.498817, 44.474487>,  <39.773502, 35.812023, 44.263012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.904575, 35.498817, 44.474487> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211414, -0.484622, -0.848791,
		0.920829, 0.389909, 0.006736,
		0.327687, -0.783015, 0.528686,
		40.002880, 35.263912, 44.633095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.520576, 35.609440, 44.015934>,  <39.773502, 35.812023, 44.263012>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.520576, 35.609440, 44.015934> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.300121, 35.311371, 44.166119>,  <40.167850, 35.132530, 44.256229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.300121, 35.311371, 44.166119>,  <40.520576, 35.609440, 44.015934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.300121, 35.311371, 44.166119> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224722, -0.565903, -0.793255,
		0.803586, -0.352815, 0.479344,
		-0.551135, -0.745168, 0.375466,
		40.134781, 35.087822, 44.278759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.913002, 34.972519, 43.948853>,  <40.520576, 35.609440, 44.015934>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.913002, 34.972519, 43.948853> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.542618, 34.830898, 44.001381>,  <40.320389, 34.745926, 44.032898>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.542618, 34.830898, 44.001381>,  <40.913002, 34.972519, 43.948853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.542618, 34.830898, 44.001381> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121007, -0.607630, -0.784948,
		0.357708, -0.710940, 0.605483,
		-0.925961, -0.354050, 0.131325,
		40.264832, 34.724682, 44.040779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.038704, 34.284176, 43.743370>,  <40.913002, 34.972519, 43.948853>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.038704, 34.284176, 43.743370> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.643314, 34.344116, 43.734680>,  <40.406082, 34.380081, 43.729465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.643314, 34.344116, 43.734680>,  <41.038704, 34.284176, 43.743370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.643314, 34.344116, 43.734680> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054499, -0.485967, -0.872276,
		-0.141264, -0.861036, 0.488530,
		-0.988471, 0.149846, -0.021724,
		40.346775, 34.389069, 43.728165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.745544, 33.804176, 43.443222>,  <41.038704, 34.284176, 43.743370>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.745544, 33.804176, 43.443222> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.439392, 34.051105, 43.370438>,  <40.255703, 34.199261, 43.326767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.439392, 34.051105, 43.370438>,  <40.745544, 33.804176, 43.443222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.439392, 34.051105, 43.370438> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043448, -0.331656, -0.942400,
		-0.642112, -0.713386, 0.280664,
		-0.765378, 0.617320, -0.181965,
		40.209778, 34.236301, 43.315849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205761, 33.444206, 43.062675>,  <40.745544, 33.804176, 43.443222>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205761, 33.444206, 43.062675> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.126808, 33.825027, 42.969177>,  <40.079437, 34.053520, 42.913078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.126808, 33.825027, 42.969177>,  <40.205761, 33.444206, 43.062675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.126808, 33.825027, 42.969177> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382745, -0.294352, -0.875707,
		-0.902523, -0.083382, 0.422493,
		-0.197380, 0.952053, -0.233746,
		40.067593, 34.110641, 42.899052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571484, 33.348911, 42.779099>,  <40.205761, 33.444206, 43.062675>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571484, 33.348911, 42.779099> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.692879, 33.707993, 42.651337>,  <39.765717, 33.923443, 42.574680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.692879, 33.707993, 42.651337>,  <39.571484, 33.348911, 42.779099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.692879, 33.707993, 42.651337> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512985, -0.128547, -0.848718,
		-0.802956, 0.421429, 0.421496,
		0.303492, 0.897704, -0.319404,
		39.783928, 33.977303, 42.555515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004829, 33.617832, 42.445061>,  <39.571484, 33.348911, 42.779099>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004829, 33.617832, 42.445061> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.294460, 33.850048, 42.296097>,  <39.468239, 33.989376, 42.206718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.294460, 33.850048, 42.296097>,  <39.004829, 33.617832, 42.445061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294460, 33.850048, 42.296097> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335654, -0.175091, -0.925570,
		-0.602533, 0.795185, 0.068080,
		0.724079, 0.580538, -0.372405,
		39.511684, 34.024208, 42.184376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675514, 34.208588, 42.017281>,  <39.004829, 33.617832, 42.445061>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675514, 34.208588, 42.017281> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.050156, 34.140701, 41.894669>,  <39.274940, 34.099968, 41.821102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.050156, 34.140701, 41.894669>,  <38.675514, 34.208588, 42.017281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050156, 34.140701, 41.894669> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330115, -0.134211, -0.934351,
		0.117435, 0.976311, -0.181729,
		0.936607, -0.169717, -0.306534,
		39.331139, 34.089787, 41.802708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246548, 34.857288, 42.129421>,  <38.675514, 34.208588, 42.017281>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246548, 34.857288, 42.129421> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.875526, 34.733967, 42.044949>,  <37.652912, 34.659973, 41.994267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.875526, 34.733967, 42.044949>,  <38.246548, 34.857288, 42.129421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875526, 34.733967, 42.044949> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156318, -0.193191, 0.968629,
		-0.339428, 0.931465, 0.131002,
		-0.927552, -0.308302, -0.211180,
		37.597260, 34.641476, 41.981594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841183, 35.081982, 42.683201>,  <38.246548, 34.857288, 42.129421>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841183, 35.081982, 42.683201> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.617931, 34.789379, 42.526539>,  <37.483978, 34.613819, 42.432541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.617931, 34.789379, 42.526539>,  <37.841183, 35.081982, 42.683201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617931, 34.789379, 42.526539> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173284, -0.358845, 0.917171,
		-0.811457, 0.579769, 0.073525,
		-0.558132, -0.731504, -0.391652,
		37.450493, 34.569927, 42.409042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239624, 35.213821, 43.035465>,  <37.841183, 35.081982, 42.683201>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239624, 35.213821, 43.035465> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.217701, 34.835125, 42.908539>,  <37.204548, 34.607906, 42.832382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.217701, 34.835125, 42.908539>,  <37.239624, 35.213821, 43.035465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217701, 34.835125, 42.908539> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327004, -0.283246, 0.901577,
		-0.943432, 0.153174, -0.294063,
		-0.054806, -0.946736, -0.317312,
		37.201260, 34.551105, 42.813347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640827, 34.928276, 43.319962>,  <37.239624, 35.213821, 43.035465>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640827, 34.928276, 43.319962> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.863766, 34.606377, 43.238228>,  <36.997528, 34.413239, 43.189190>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.863766, 34.606377, 43.238228>,  <36.640827, 34.928276, 43.319962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863766, 34.606377, 43.238228> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092263, -0.304602, 0.948001,
		-0.825138, -0.509512, -0.244016,
		0.557346, -0.804745, -0.204330,
		37.030968, 34.364952, 43.176929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259754, 34.390060, 43.587780>,  <36.640827, 34.928276, 43.319962>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259754, 34.390060, 43.587780> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.641960, 34.277821, 43.551441>,  <36.871284, 34.210476, 43.529636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.641960, 34.277821, 43.551441>,  <36.259754, 34.390060, 43.587780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641960, 34.277821, 43.551441> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032992, -0.407769, 0.912489,
		-0.293086, -0.868901, -0.398887,
		0.955517, -0.280598, -0.090845,
		36.928616, 34.193642, 43.524189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267521, 33.867924, 43.963238>,  <36.259754, 34.390060, 43.587780>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267521, 33.867924, 43.963238> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.661579, 33.902504, 43.903881>,  <36.898014, 33.923252, 43.868267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.661579, 33.902504, 43.903881>,  <36.267521, 33.867924, 43.963238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661579, 33.902504, 43.903881> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170305, -0.380389, 0.909010,
		0.022137, -0.920777, -0.389461,
		0.985143, 0.086450, -0.148393,
		36.957123, 33.928440, 43.859364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549355, 33.273613, 44.254181>,  <36.267521, 33.867924, 43.963238>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549355, 33.273613, 44.254181> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.833721, 33.554863, 44.248257>,  <37.004341, 33.723614, 44.244701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.833721, 33.554863, 44.248257>,  <36.549355, 33.273613, 44.254181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833721, 33.554863, 44.248257> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364112, -0.349966, 0.863102,
		0.601683, -0.618986, -0.504812,
		0.710915, 0.703122, -0.014812,
		37.046997, 33.765800, 44.243813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169903, 32.889286, 44.462273>,  <36.549355, 33.273613, 44.254181>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169903, 32.889286, 44.462273> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.287872, 33.271431, 44.469250>,  <37.358654, 33.500717, 44.473434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.287872, 33.271431, 44.469250>,  <37.169903, 32.889286, 44.462273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287872, 33.271431, 44.469250> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563548, -0.188652, 0.804253,
		0.771644, -0.227362, -0.594030,
		0.294921, 0.955362, 0.017442,
		37.376350, 33.558041, 44.474483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851097, 32.878380, 44.588676>,  <37.169903, 32.889286, 44.462273>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851097, 32.878380, 44.588676> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.716198, 33.238586, 44.698467>,  <37.635258, 33.454708, 44.764343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.716198, 33.238586, 44.698467>,  <37.851097, 32.878380, 44.588676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716198, 33.238586, 44.698467> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412628, -0.120663, 0.902873,
		0.846168, 0.417752, -0.330883,
		-0.337252, 0.900513, 0.274477,
		37.615021, 33.508739, 44.780811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403137, 33.372898, 44.838520>,  <37.851097, 32.878380, 44.588676>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403137, 33.372898, 44.838520> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.052956, 33.479755, 44.999626>,  <37.842846, 33.543869, 45.096291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.052956, 33.479755, 44.999626>,  <38.403137, 33.372898, 44.838520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052956, 33.479755, 44.999626> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413782, -0.016345, 0.910229,
		0.249741, 0.963519, -0.096228,
		-0.875451, 0.267139, 0.402769,
		37.790321, 33.559898, 45.120457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605667, 33.706120, 45.395878>,  <38.403137, 33.372898, 44.838520>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605667, 33.706120, 45.395878> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.214252, 33.687729, 45.476231>,  <37.979404, 33.676697, 45.524441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.214252, 33.687729, 45.476231>,  <38.605667, 33.706120, 45.395878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214252, 33.687729, 45.476231> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192348, 0.146081, 0.970393,
		-0.073959, 0.988204, -0.134103,
		-0.978536, -0.045975, 0.200883,
		37.920692, 33.673935, 45.536495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417976, 34.398605, 45.676815>,  <38.605667, 33.706120, 45.395878>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417976, 34.398605, 45.676815> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.187634, 34.110992, 45.832443>,  <38.049427, 33.938423, 45.925819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.187634, 34.110992, 45.832443>,  <38.417976, 34.398605, 45.676815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187634, 34.110992, 45.832443> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384129, 0.182132, 0.905137,
		-0.721685, 0.670687, 0.171319,
		-0.575861, -0.719032, 0.389072,
		38.014874, 33.895283, 45.949165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201431, 34.721863, 46.214828>,  <38.417976, 34.398605, 45.676815>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201431, 34.721863, 46.214828> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.151005, 34.334755, 46.302036>,  <38.120747, 34.102489, 46.354359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.151005, 34.334755, 46.302036>,  <38.201431, 34.721863, 46.214828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151005, 34.334755, 46.302036> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416038, 0.147931, 0.897234,
		-0.900566, 0.203816, 0.383979,
		-0.126069, -0.967768, 0.218017,
		38.113186, 34.044426, 46.367443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500095, 35.352627, 46.294308>,  <38.201431, 34.721863, 46.214828>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500095, 35.352627, 46.294308> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.210178, 35.623783, 46.343540>,  <38.036228, 35.786476, 46.373081>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.210178, 35.623783, 46.343540>,  <38.500095, 35.352627, 46.294308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210178, 35.623783, 46.343540> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051725, 0.231681, -0.971416,
		-0.687028, -0.697703, -0.202984,
		-0.724788, 0.677889, 0.123083,
		37.992741, 35.827148, 46.380466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030834, 35.428638, 45.755886>,  <38.500095, 35.352627, 46.294308>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030834, 35.428638, 45.755886> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.995548, 35.799244, 45.902199>,  <37.974377, 36.021606, 45.989986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.995548, 35.799244, 45.902199>,  <38.030834, 35.428638, 45.755886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995548, 35.799244, 45.902199> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100585, 0.373619, -0.922113,
		-0.991010, -0.044550, -0.126151,
		-0.088213, 0.926512, 0.365779,
		37.969086, 36.077198, 46.011932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517105, 35.768028, 45.401829>,  <38.030834, 35.428638, 45.755886>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517105, 35.768028, 45.401829> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.706402, 36.085083, 45.555588>,  <37.819981, 36.275318, 45.647842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.706402, 36.085083, 45.555588>,  <37.517105, 35.768028, 45.401829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706402, 36.085083, 45.555588> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005223, 0.433825, -0.900982,
		-0.880917, 0.428391, 0.201165,
		0.473243, 0.792639, 0.384402,
		37.848373, 36.322876, 45.670910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074833, 36.356052, 45.351128>,  <37.517105, 35.768028, 45.401829>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074833, 36.356052, 45.351128> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.435760, 36.528168, 45.361500>,  <37.652317, 36.631435, 45.367725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.435760, 36.528168, 45.361500>,  <37.074833, 36.356052, 45.351128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435760, 36.528168, 45.361500> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194889, 0.460866, -0.865807,
		-0.384498, 0.776180, 0.499706,
		0.902319, 0.430288, 0.025933,
		37.706455, 36.657253, 45.369278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876064, 37.047394, 45.180119>,  <37.074833, 36.356052, 45.351128>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876064, 37.047394, 45.180119> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.271923, 37.000599, 45.146866>,  <37.509438, 36.972523, 45.126915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.271923, 37.000599, 45.146866>,  <36.876064, 37.047394, 45.180119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271923, 37.000599, 45.146866> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014538, 0.657986, -0.752890,
		0.142778, 0.743887, 0.652875,
		0.989648, -0.116988, -0.083132,
		37.568817, 36.965504, 45.121925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215340, 37.752926, 45.202488>,  <36.876064, 37.047394, 45.180119>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215340, 37.752926, 45.202488> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.468052, 37.492245, 45.034611>,  <37.619678, 37.335838, 44.933884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.468052, 37.492245, 45.034611>,  <37.215340, 37.752926, 45.202488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468052, 37.492245, 45.034611> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081786, 0.594455, -0.799959,
		0.770819, 0.471075, 0.428866,
		0.631782, -0.651699, -0.419691,
		37.657585, 37.296734, 44.908703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723515, 38.171581, 45.009750>,  <37.215340, 37.752926, 45.202488>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723515, 38.171581, 45.009750> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.758518, 37.831669, 44.801823>,  <37.779518, 37.627720, 44.677067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.758518, 37.831669, 44.801823>,  <37.723515, 38.171581, 45.009750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758518, 37.831669, 44.801823> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068516, 0.515452, -0.854175,
		0.993805, 0.110363, -0.013117,
		0.087508, -0.849782, -0.519820,
		37.784771, 37.576733, 44.645878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193657, 38.262863, 44.435596>,  <37.723515, 38.171581, 45.009750>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193657, 38.262863, 44.435596> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.995239, 37.938465, 44.311512>,  <37.876190, 37.743828, 44.237061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.995239, 37.938465, 44.311512>,  <38.193657, 38.262863, 44.435596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995239, 37.938465, 44.311512> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129526, 0.422374, -0.897119,
		0.858583, -0.404829, -0.314560,
		-0.496042, -0.810995, -0.310208,
		37.846428, 37.695168, 44.218449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457069, 38.911106, 44.114174>,  <38.193657, 38.262863, 44.435596>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457069, 38.911106, 44.114174> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.401325, 39.292465, 44.007133>,  <38.367878, 39.521282, 43.942909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.401325, 39.292465, 44.007133>,  <38.457069, 38.911106, 44.114174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401325, 39.292465, 44.007133> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202610, 0.237068, 0.950130,
		0.969292, 0.186630, 0.160129,
		-0.139362, 0.953398, -0.267602,
		38.359516, 39.578484, 43.926853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816326, 39.290562, 44.545021>,  <38.457069, 38.911106, 44.114174>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816326, 39.290562, 44.545021> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.549244, 39.557190, 44.412445>,  <38.388996, 39.717167, 44.332897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.549244, 39.557190, 44.412445>,  <38.816326, 39.290562, 44.545021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549244, 39.557190, 44.412445> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151492, 0.314247, 0.937176,
		0.728852, 0.675964, -0.108842,
		-0.667701, 0.666574, -0.331442,
		38.348934, 39.757164, 44.313011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959309, 39.830757, 44.896236>,  <38.816326, 39.290562, 44.545021>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959309, 39.830757, 44.896236> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.581806, 39.891907, 44.778965>,  <38.355305, 39.928596, 44.708603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.581806, 39.891907, 44.778965>,  <38.959309, 39.830757, 44.896236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581806, 39.891907, 44.778965> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214296, 0.392448, 0.894462,
		0.251800, 0.906980, -0.337614,
		-0.943755, 0.152877, -0.293181,
		38.298679, 39.937771, 44.691010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844254, 40.547813, 45.251690>,  <38.959309, 39.830757, 44.896236>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844254, 40.547813, 45.251690> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.503155, 40.375137, 45.134071>,  <38.298496, 40.271534, 45.063499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.503155, 40.375137, 45.134071>,  <38.844254, 40.547813, 45.251690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503155, 40.375137, 45.134071> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475408, 0.408311, 0.779275,
		-0.216340, 0.804319, -0.553414,
		-0.852751, -0.431686, -0.294046,
		38.247330, 40.245632, 45.045856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411785, 41.040173, 45.358406>,  <38.844254, 40.547813, 45.251690>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411785, 41.040173, 45.358406> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.193874, 40.704773, 45.362953>,  <38.063129, 40.503532, 45.365681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.193874, 40.704773, 45.362953>,  <38.411785, 41.040173, 45.358406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193874, 40.704773, 45.362953> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519925, 0.348372, 0.779946,
		-0.657948, 0.418985, -0.625744,
		-0.544778, -0.838504, 0.011370,
		38.030441, 40.453220, 45.366364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693138, 41.231342, 45.645813>,  <38.411785, 41.040173, 45.358406>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.693138, 41.231342, 45.645813> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.738956, 40.835594, 45.681637>,  <37.766449, 40.598145, 45.703133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.738956, 40.835594, 45.681637>,  <37.693138, 41.231342, 45.645813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738956, 40.835594, 45.681637> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508682, 0.019024, 0.860744,
		-0.853300, -0.144157, -0.501096,
		0.114550, -0.989372, 0.089563,
		37.773323, 40.538784, 45.708508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183937, 40.987988, 46.086685>,  <37.693138, 41.231342, 45.645813>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183937, 40.987988, 46.086685> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.362846, 40.631523, 46.117111>,  <37.470192, 40.417645, 46.135368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.362846, 40.631523, 46.117111>,  <37.183937, 40.987988, 46.086685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362846, 40.631523, 46.117111> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254492, -0.045274, 0.966014,
		-0.857428, -0.451427, -0.247043,
		0.447270, -0.891158, 0.076065,
		37.497028, 40.364174, 46.139931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807293, 40.569202, 46.403923>,  <37.183937, 40.987988, 46.086685>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807293, 40.569202, 46.403923> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.168068, 40.417568, 46.486671>,  <37.384533, 40.326588, 46.536320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.168068, 40.417568, 46.486671>,  <36.807293, 40.569202, 46.403923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.168068, 40.417568, 46.486671> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226139, -0.006486, 0.974074,
		-0.367919, -0.925337, -0.091577,
		0.901940, -0.379090, 0.206868,
		37.438652, 40.303841, 46.548733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709442, 40.046738, 46.879520>,  <36.807293, 40.569202, 46.403923>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709442, 40.046738, 46.879520> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.089756, 40.162556, 46.923664>,  <37.317944, 40.232048, 46.950150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.089756, 40.162556, 46.923664>,  <36.709442, 40.046738, 46.879520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089756, 40.162556, 46.923664> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129790, 0.048729, 0.990343,
		0.281375, -0.955922, 0.083911,
		0.950780, 0.289549, 0.110358,
		37.374989, 40.249420, 46.956772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<38.883518, 38.189278, 30.655615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.209930, 38.389736, 30.770817>,  <39.405777, 38.510014, 30.839939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.209930, 38.389736, 30.770817>,  <38.883518, 38.189278, 30.655615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209930, 38.389736, 30.770817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456700, 0.253607, 0.852706,
		0.354295, -0.827364, 0.435826,
		0.816027, 0.501151, 0.288006,
		39.454739, 38.540081, 30.857218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981033, 38.002872, 31.349245>,  <38.883518, 38.189278, 30.655615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981033, 38.002872, 31.349245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178608, 38.348938, 31.314583>,  <39.297153, 38.556580, 31.293785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178608, 38.348938, 31.314583>,  <38.981033, 38.002872, 31.349245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178608, 38.348938, 31.314583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185205, 0.202062, 0.961702,
		0.849542, -0.458974, 0.260040,
		0.493940, 0.865167, -0.086656,
		39.326790, 38.608486, 31.288586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346684, 38.015316, 31.941563>,  <38.981033, 38.002872, 31.349245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346684, 38.015316, 31.941563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309429, 38.392506, 31.813738>,  <39.287079, 38.618820, 31.737043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309429, 38.392506, 31.813738>,  <39.346684, 38.015316, 31.941563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309429, 38.392506, 31.813738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221187, 0.293341, 0.930068,
		0.970774, 0.157303, 0.181255,
		-0.093133, 0.942978, -0.319562,
		39.281490, 38.675400, 31.717869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747154, 38.429844, 32.344608>,  <39.346684, 38.015316, 31.941563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.747154, 38.429844, 32.344608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.454659, 38.660126, 32.198265>,  <39.279160, 38.798294, 32.110458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.454659, 38.660126, 32.198265>,  <39.747154, 38.429844, 32.344608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454659, 38.660126, 32.198265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213691, 0.316022, 0.924374,
		0.647785, 0.754119, -0.108065,
		-0.731239, 0.575703, -0.365862,
		39.235287, 38.832836, 32.088505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.867458, 39.004181, 32.677391>,  <39.747154, 38.429844, 32.344608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.867458, 39.004181, 32.677391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.490990, 39.051525, 32.550781>,  <39.265110, 39.079933, 32.474815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.490990, 39.051525, 32.550781>,  <39.867458, 39.004181, 32.677391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490990, 39.051525, 32.550781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259711, 0.345941, 0.901596,
		0.216215, 0.930760, -0.294849,
		-0.941170, 0.118363, -0.316526,
		39.208637, 39.087032, 32.455822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675526, 39.613308, 32.790428>,  <39.867458, 39.004181, 32.677391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.675526, 39.613308, 32.790428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311554, 39.448914, 32.768089>,  <39.093170, 39.350277, 32.754684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311554, 39.448914, 32.768089>,  <39.675526, 39.613308, 32.790428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311554, 39.448914, 32.768089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193186, 0.300808, 0.933913,
		-0.367030, 0.860582, -0.353112,
		-0.909928, -0.410990, -0.055846,
		39.038574, 39.325615, 32.751335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271439, 40.032444, 33.149799>,  <39.675526, 39.613308, 32.790428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271439, 40.032444, 33.149799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.029266, 39.714096, 33.152699>,  <38.883965, 39.523087, 33.154438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.029266, 39.714096, 33.152699>,  <39.271439, 40.032444, 33.149799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029266, 39.714096, 33.152699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155982, 0.127576, 0.979487,
		-0.780467, 0.591877, -0.201379,
		-0.605426, -0.795868, 0.007247,
		38.847637, 39.475334, 33.154873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714981, 40.261044, 33.501823>,  <39.271439, 40.032444, 33.149799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714981, 40.261044, 33.501823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.680717, 39.862564, 33.495464>,  <38.660160, 39.623478, 33.491650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.680717, 39.862564, 33.495464>,  <38.714981, 40.261044, 33.501823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680717, 39.862564, 33.495464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238479, 0.005010, 0.971135,
		-0.967363, 0.086975, -0.238001,
		-0.085657, -0.996198, -0.015895,
		38.655022, 39.563705, 33.490696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111507, 40.176758, 33.920033>,  <38.714981, 40.261044, 33.501823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111507, 40.176758, 33.920033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303429, 39.826775, 33.894020>,  <38.418583, 39.616783, 33.878414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303429, 39.826775, 33.894020>,  <38.111507, 40.176758, 33.920033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303429, 39.826775, 33.894020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049300, -0.100890, 0.993676,
		-0.875989, -0.473565, -0.091543,
		0.479806, -0.874961, -0.065031,
		38.447369, 39.564285, 33.874512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737053, 39.755379, 34.312412>,  <38.111507, 40.176758, 33.920033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737053, 39.755379, 34.312412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.110806, 39.613049, 34.305252>,  <38.335056, 39.527653, 34.300957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.110806, 39.613049, 34.305252>,  <37.737053, 39.755379, 34.312412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110806, 39.613049, 34.305252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025391, 0.016401, 0.999543,
		-0.355366, -0.934410, 0.024360,
		0.934382, -0.355823, -0.017897,
		38.391121, 39.506302, 34.299881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736824, 39.286736, 34.796200>,  <37.737053, 39.755379, 34.312412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736824, 39.286736, 34.796200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128777, 39.345478, 34.742130>,  <38.363949, 39.380722, 34.709690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128777, 39.345478, 34.742130>,  <37.736824, 39.286736, 34.796200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128777, 39.345478, 34.742130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151551, -0.106702, 0.982673,
		0.129885, -0.983387, -0.126811,
		0.979879, 0.146853, -0.135174,
		38.422741, 39.389534, 34.701576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039024, 38.697178, 35.092270>,  <37.736824, 39.286736, 34.796200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039024, 38.697178, 35.092270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.322010, 38.979843, 35.088009>,  <38.491802, 39.149445, 35.085453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.322010, 38.979843, 35.088009>,  <38.039024, 38.697178, 35.092270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.322010, 38.979843, 35.088009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150466, -0.135877, 0.979233,
		0.690542, -0.694379, -0.202457,
		0.707468, 0.706665, -0.010652,
		38.534252, 39.191841, 35.084812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133282, 37.963940, 35.183830>,  <38.039024, 38.697178, 35.092270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133282, 37.963940, 35.183830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758335, 37.844627, 35.255791>,  <37.533367, 37.773041, 35.298965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758335, 37.844627, 35.255791>,  <38.133282, 37.963940, 35.183830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758335, 37.844627, 35.255791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160648, -0.088060, -0.983076,
		0.309079, -0.950406, 0.034625,
		-0.937370, -0.298285, 0.179898,
		37.477123, 37.755142, 35.309761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022720, 37.275333, 34.836502>,  <38.133282, 37.963940, 35.183830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022720, 37.275333, 34.836502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.659199, 37.436668, 34.879200>,  <37.441086, 37.533470, 34.904819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.659199, 37.436668, 34.879200>,  <38.022720, 37.275333, 34.836502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659199, 37.436668, 34.879200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167889, -0.119317, -0.978559,
		-0.381952, -0.907239, 0.176151,
		-0.908805, 0.403336, 0.106742,
		37.386559, 37.557671, 34.911224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538361, 36.833698, 34.569454>,  <38.022720, 37.275333, 34.836502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538361, 36.833698, 34.569454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321960, 37.170048, 34.563141>,  <37.192120, 37.371857, 34.559353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321960, 37.170048, 34.563141>,  <37.538361, 36.833698, 34.569454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321960, 37.170048, 34.563141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423015, -0.288275, -0.859044,
		-0.726899, -0.458064, 0.511659,
		-0.540995, 0.840878, -0.015780,
		37.159660, 37.422310, 34.558407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.934837, 36.649628, 34.223042>,  <37.538361, 36.833698, 34.569454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.934837, 36.649628, 34.223042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932423, 37.049587, 34.217838>,  <36.930973, 37.289562, 34.214714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932423, 37.049587, 34.217838>,  <36.934837, 36.649628, 34.223042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932423, 37.049587, 34.217838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477509, -0.014315, -0.878510,
		-0.878606, 0.000908, 0.477547,
		-0.006038, 0.999897, -0.013011,
		36.930611, 37.349556, 34.213936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291737, 36.787956, 34.129234>,  <36.934837, 36.649628, 34.223042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291737, 36.787956, 34.129234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.492416, 37.107510, 33.996513>,  <36.612823, 37.299240, 33.916882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.492416, 37.107510, 33.996513>,  <36.291737, 36.787956, 34.129234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492416, 37.107510, 33.996513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561705, 0.009151, -0.827287,
		-0.657866, 0.601422, 0.453326,
		0.501697, 0.798879, -0.331801,
		36.642925, 37.347172, 33.896973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794785, 37.204765, 33.790375>,  <36.291737, 36.787956, 34.129234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794785, 37.204765, 33.790375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.136971, 37.349243, 33.641937>,  <36.342281, 37.435932, 33.552876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.136971, 37.349243, 33.641937>,  <35.794785, 37.204765, 33.790375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136971, 37.349243, 33.641937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389060, -0.024654, -0.920882,
		-0.341771, 0.932163, 0.119437,
		0.855468, 0.361199, -0.371094,
		36.393612, 37.457603, 33.530609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621910, 37.722534, 33.287952>,  <35.794785, 37.204765, 33.790375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621910, 37.722534, 33.287952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998383, 37.658085, 33.169151>,  <36.224266, 37.619415, 33.097870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998383, 37.658085, 33.169151>,  <35.621910, 37.722534, 33.287952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998383, 37.658085, 33.169151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280819, 0.115835, -0.952745,
		0.187909, 0.980114, 0.063777,
		0.941186, -0.161120, -0.297001,
		36.280739, 37.609749, 33.080051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733658, 38.278191, 32.761963>,  <35.621910, 37.722534, 33.287952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733658, 38.278191, 32.761963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996868, 37.983280, 32.700748>,  <36.154797, 37.806335, 32.664021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996868, 37.983280, 32.700748>,  <35.733658, 38.278191, 32.761963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996868, 37.983280, 32.700748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368571, -0.138136, -0.919279,
		0.656621, 0.661319, -0.362636,
		0.658030, -0.737275, -0.153040,
		36.194279, 37.762096, 32.654835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920055, 38.454716, 32.121410>,  <35.733658, 38.278191, 32.761963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920055, 38.454716, 32.121410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.979664, 38.067333, 32.201290>,  <36.015430, 37.834904, 32.249218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.979664, 38.067333, 32.201290>,  <35.920055, 38.454716, 32.121410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979664, 38.067333, 32.201290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613909, -0.248934, -0.749098,
		0.775182, -0.010963, -0.631643,
		0.149026, -0.968458, 0.199699,
		36.024372, 37.776794, 32.261200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826271, 38.090729, 31.508934>,  <35.920055, 38.454716, 32.121410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826271, 38.090729, 31.508934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818569, 37.785683, 31.767559>,  <35.813950, 37.602654, 31.922733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818569, 37.785683, 31.767559>,  <35.826271, 38.090729, 31.508934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818569, 37.785683, 31.767559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601543, -0.507708, -0.616749,
		0.798609, -0.400807, -0.448974,
		-0.019250, -0.762618, 0.646562,
		35.812794, 37.556896, 31.961527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870251, 37.542278, 31.077074>,  <35.826271, 38.090729, 31.508934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870251, 37.542278, 31.077074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721531, 37.407848, 31.423212>,  <35.632301, 37.327190, 31.630896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721531, 37.407848, 31.423212>,  <35.870251, 37.542278, 31.077074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721531, 37.407848, 31.423212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681667, -0.533935, -0.500244,
		0.630158, -0.775865, -0.030578,
		-0.371795, -0.336076, 0.865345,
		35.609993, 37.307026, 31.682816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763187, 36.772343, 30.994286>,  <35.870251, 37.542278, 31.077074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763187, 36.772343, 30.994286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527828, 36.871258, 31.302217>,  <35.386612, 36.930607, 31.486977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527828, 36.871258, 31.302217>,  <35.763187, 36.772343, 30.994286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527828, 36.871258, 31.302217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694445, -0.642230, -0.324478,
		0.414167, -0.725526, 0.549616,
		-0.588397, 0.247290, 0.769829,
		35.351311, 36.945446, 31.533167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354710, 36.134071, 31.152624>,  <35.763187, 36.772343, 30.994286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354710, 36.134071, 31.152624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140030, 36.410633, 31.346083>,  <35.011223, 36.576569, 31.462158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140030, 36.410633, 31.346083>,  <35.354710, 36.134071, 31.152624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140030, 36.410633, 31.346083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825177, -0.549766, -0.129771,
		0.176168, -0.468742, 0.865590,
		-0.536701, 0.691403, 0.483647,
		34.979019, 36.618053, 31.491177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957176, 35.718845, 31.673622>,  <35.354710, 36.134071, 31.152624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957176, 35.718845, 31.673622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746971, 36.057789, 31.643080>,  <34.620850, 36.261154, 31.624754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746971, 36.057789, 31.643080>,  <34.957176, 35.718845, 31.673622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746971, 36.057789, 31.643080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831605, -0.530539, -0.164201,
		-0.179646, -0.022791, 0.983467,
		-0.525510, 0.847354, -0.076356,
		34.589317, 36.311996, 31.620173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855644, 35.111843, 31.236303>,  <34.957176, 35.718845, 31.673622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855644, 35.111843, 31.236303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996895, 34.739681, 31.197008>,  <35.081646, 34.516384, 31.173431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996895, 34.739681, 31.197008>,  <34.855644, 35.111843, 31.236303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996895, 34.739681, 31.197008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089891, -0.070775, 0.993434,
		-0.931247, -0.359639, 0.058642,
		0.353127, -0.930403, -0.098237,
		35.102833, 34.460560, 31.167538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409817, 34.696079, 31.645401>,  <34.855644, 35.111843, 31.236303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409817, 34.696079, 31.645401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761536, 34.508522, 31.611994>,  <34.972569, 34.395988, 31.591949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761536, 34.508522, 31.611994>,  <34.409817, 34.696079, 31.645401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761536, 34.508522, 31.611994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028589, -0.123074, 0.991986,
		-0.475416, -0.874637, -0.094813,
		0.879297, -0.468895, -0.083516,
		35.025326, 34.367855, 31.586939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296825, 34.115936, 32.060616>,  <34.409817, 34.696079, 31.645401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296825, 34.115936, 32.060616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.692871, 34.142403, 32.011154>,  <34.930500, 34.158283, 31.981478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.692871, 34.142403, 32.011154>,  <34.296825, 34.115936, 32.060616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.692871, 34.142403, 32.011154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138374, -0.317456, 0.938123,
		0.022821, -0.945961, -0.323475,
		0.990117, 0.066169, -0.123652,
		34.989906, 34.162254, 31.974058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536915, 33.462334, 32.284290>,  <34.296825, 34.115936, 32.060616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536915, 33.462334, 32.284290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816620, 33.748226, 32.289871>,  <34.984444, 33.919762, 32.293221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816620, 33.748226, 32.289871>,  <34.536915, 33.462334, 32.284290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816620, 33.748226, 32.289871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121826, -0.138371, 0.982859,
		0.704410, -0.685575, -0.183830,
		0.699261, 0.714731, 0.013949,
		35.026398, 33.962646, 32.294056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241245, 33.168400, 32.480003>,  <34.536915, 33.462334, 32.284290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241245, 33.168400, 32.480003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276379, 33.553192, 32.583450>,  <35.297459, 33.784065, 32.645519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276379, 33.553192, 32.583450>,  <35.241245, 33.168400, 32.480003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276379, 33.553192, 32.583450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264714, -0.272829, 0.924927,
		0.960318, -0.012782, -0.278614,
		0.087837, 0.961978, 0.258619,
		35.302731, 33.841785, 32.661037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750019, 33.197708, 32.981586>,  <35.241245, 33.168400, 32.480003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750019, 33.197708, 32.981586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564262, 33.549381, 33.024250>,  <35.452808, 33.760387, 33.049850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564262, 33.549381, 33.024250>,  <35.750019, 33.197708, 32.981586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564262, 33.549381, 33.024250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161627, -0.034281, 0.986256,
		0.870759, 0.475245, -0.126180,
		-0.464388, 0.879186, 0.106663,
		35.424946, 33.813137, 33.056248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343880, 33.714493, 33.378677>,  <35.750019, 33.197708, 32.981586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343880, 33.714493, 33.378677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.971272, 33.852108, 33.425842>,  <35.747707, 33.934677, 33.454140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.971272, 33.852108, 33.425842>,  <36.343880, 33.714493, 33.378677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971272, 33.852108, 33.425842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236178, 0.325713, 0.915495,
		0.276557, 0.880654, -0.384663,
		-0.931524, 0.344035, 0.117913,
		35.691814, 33.955318, 33.461216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450405, 34.390053, 33.646744>,  <36.343880, 33.714493, 33.378677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450405, 34.390053, 33.646744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088760, 34.258747, 33.756157>,  <35.871773, 34.179966, 33.821804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088760, 34.258747, 33.756157>,  <36.450405, 34.390053, 33.646744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088760, 34.258747, 33.756157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131039, 0.396293, 0.908725,
		-0.406697, 0.857436, -0.315280,
		-0.904116, -0.328261, 0.273529,
		35.817524, 34.160267, 33.838215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365669, 34.817688, 34.137749>,  <36.450405, 34.390053, 33.646744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.365669, 34.817688, 34.137749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.062977, 34.568260, 34.216251>,  <35.881359, 34.418602, 34.263351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.062977, 34.568260, 34.216251>,  <36.365669, 34.817688, 34.137749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062977, 34.568260, 34.216251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002223, 0.297750, 0.954641,
		-0.653720, 0.722845, -0.223931,
		-0.756733, -0.623571, 0.196253,
		35.835957, 34.381187, 34.275127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954853, 35.141853, 34.589203>,  <36.365669, 34.817688, 34.137749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954853, 35.141853, 34.589203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.865005, 34.758121, 34.657597>,  <35.811096, 34.527882, 34.698631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.865005, 34.758121, 34.657597>,  <35.954853, 35.141853, 34.589203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865005, 34.758121, 34.657597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024292, 0.169903, 0.985161,
		-0.974145, 0.225436, -0.014859,
		-0.224616, -0.959329, 0.170986,
		35.797623, 34.470322, 34.708893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423103, 35.201984, 35.147873>,  <35.954853, 35.141853, 34.589203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423103, 35.201984, 35.147873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.535454, 34.818314, 35.161068>,  <35.602863, 34.588112, 35.168983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.535454, 34.818314, 35.161068>,  <35.423103, 35.201984, 35.147873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535454, 34.818314, 35.161068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171714, 0.084040, 0.981556,
		-0.944258, -0.270031, 0.188309,
		0.280876, -0.959177, 0.032987,
		35.619717, 34.530560, 35.170963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006561, 34.900558, 35.663651>,  <35.423103, 35.201984, 35.147873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006561, 34.900558, 35.663651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325344, 34.663342, 35.617767>,  <35.516613, 34.521011, 35.590237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325344, 34.663342, 35.617767>,  <35.006561, 34.900558, 35.663651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325344, 34.663342, 35.617767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057779, -0.114193, 0.991777,
		-0.601267, -0.797031, -0.056742,
		0.796957, -0.593044, -0.114712,
		35.564430, 34.485428, 35.583355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849743, 34.372578, 36.037254>,  <35.006561, 34.900558, 35.663651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849743, 34.372578, 36.037254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248592, 34.372097, 36.006920>,  <35.487900, 34.371811, 35.988720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248592, 34.372097, 36.006920>,  <34.849743, 34.372578, 36.037254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248592, 34.372097, 36.006920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072046, -0.297677, 0.951944,
		-0.023716, -0.954666, -0.296733,
		0.997119, -0.001198, -0.075840,
		35.547729, 34.371738, 35.984169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116596, 33.924801, 36.657223>,  <34.849743, 34.372578, 36.037254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116596, 33.924801, 36.657223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446476, 34.106728, 36.522758>,  <35.644405, 34.215885, 36.442081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446476, 34.106728, 36.522758>,  <35.116596, 33.924801, 36.657223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446476, 34.106728, 36.522758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458597, -0.189923, 0.868112,
		0.330991, -0.870096, -0.365209,
		0.824703, 0.454821, -0.336161,
		35.693886, 34.243176, 36.421909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753693, 33.568756, 36.955780>,  <35.116596, 33.924801, 36.657223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753693, 33.568756, 36.955780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855030, 33.940983, 36.850048>,  <35.915833, 34.164318, 36.786610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855030, 33.940983, 36.850048>,  <35.753693, 33.568756, 36.955780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855030, 33.940983, 36.850048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455203, 0.126427, 0.881366,
		0.853585, -0.343612, -0.391566,
		0.253344, 0.930563, -0.264329,
		35.931034, 34.220150, 36.770748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401669, 33.606060, 37.259617>,  <35.753693, 33.568756, 36.955780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401669, 33.606060, 37.259617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.320309, 33.993683, 37.203674>,  <36.271492, 34.226257, 37.170109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.320309, 33.993683, 37.203674>,  <36.401669, 33.606060, 37.259617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320309, 33.993683, 37.203674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595183, 0.235795, 0.768217,
		0.777423, 0.073012, -0.624725,
		-0.203396, 0.969056, -0.139857,
		36.259289, 34.284401, 37.161716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020485, 33.913784, 37.427464>,  <36.401669, 33.606060, 37.259617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020485, 33.913784, 37.427464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774467, 34.228947, 37.439682>,  <36.626858, 34.418045, 37.447014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774467, 34.228947, 37.439682>,  <37.020485, 33.913784, 37.427464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774467, 34.228947, 37.439682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426935, 0.300202, 0.852998,
		0.662910, 0.537670, -0.521019,
		-0.615043, 0.787902, 0.030544,
		36.589954, 34.465317, 37.448845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416206, 34.523186, 37.556137>,  <37.020485, 33.913784, 37.427464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416206, 34.523186, 37.556137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.046097, 34.645756, 37.645557>,  <36.824032, 34.719299, 37.699207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.046097, 34.645756, 37.645557>,  <37.416206, 34.523186, 37.556137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046097, 34.645756, 37.645557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316011, 0.296811, 0.901133,
		0.209781, 0.904436, -0.371465,
		-0.925272, 0.306428, 0.223547,
		36.768517, 34.737682, 37.712620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445374, 35.280460, 37.890034>,  <37.416206, 34.523186, 37.556137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445374, 35.280460, 37.890034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126041, 35.067001, 38.001667>,  <36.934441, 34.938927, 38.068645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126041, 35.067001, 38.001667>,  <37.445374, 35.280460, 37.890034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126041, 35.067001, 38.001667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284588, 0.074099, 0.955782,
		-0.530732, 0.842454, 0.092714,
		-0.798332, -0.533649, 0.279079,
		36.886543, 34.906906, 38.085392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043011, 35.723633, 38.328453>,  <37.445374, 35.280460, 37.890034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043011, 35.723633, 38.328453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907352, 35.353191, 38.394554>,  <36.825958, 35.130928, 38.434216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907352, 35.353191, 38.394554>,  <37.043011, 35.723633, 38.328453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907352, 35.353191, 38.394554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037726, 0.188909, 0.981269,
		-0.939976, 0.326563, -0.099006,
		-0.339149, -0.926105, 0.165250,
		36.805607, 35.075359, 38.444130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629894, 35.916252, 38.851532>,  <37.043011, 35.723633, 38.328453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629894, 35.916252, 38.851532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671078, 35.518650, 38.866211>,  <36.695789, 35.280087, 38.875019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671078, 35.518650, 38.866211>,  <36.629894, 35.916252, 38.851532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671078, 35.518650, 38.866211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099116, 0.046963, 0.993967,
		-0.989735, -0.098702, 0.103358,
		0.102961, -0.994008, 0.036697,
		36.701965, 35.220448, 38.877220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241905, 35.730854, 39.449482>,  <36.629894, 35.916252, 38.851532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241905, 35.730854, 39.449482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.518078, 35.450386, 39.378292>,  <36.683781, 35.282104, 39.335579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.518078, 35.450386, 39.378292>,  <36.241905, 35.730854, 39.449482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518078, 35.450386, 39.378292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155323, -0.096599, 0.983130,
		-0.706530, -0.706423, 0.042212,
		0.690428, -0.701167, -0.177974,
		36.725204, 35.240036, 39.324902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203400, 35.245731, 40.036774>,  <36.241905, 35.730854, 39.449482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203400, 35.245731, 40.036774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549389, 35.135136, 39.869259>,  <36.756981, 35.068779, 39.768749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549389, 35.135136, 39.869259>,  <36.203400, 35.245731, 40.036774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549389, 35.135136, 39.869259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319025, -0.341205, 0.884196,
		-0.387366, -0.898404, -0.206923,
		0.864969, -0.276494, -0.418784,
		36.808880, 35.052189, 39.743622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315762, 34.591862, 40.134102>,  <36.203400, 35.245731, 40.036774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315762, 34.591862, 40.134102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683949, 34.722500, 40.048248>,  <36.904861, 34.800884, 39.996738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683949, 34.722500, 40.048248>,  <36.315762, 34.591862, 40.134102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683949, 34.722500, 40.048248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304000, -0.253245, 0.918396,
		0.245592, -0.910605, -0.332391,
		0.920472, 0.326597, -0.214629,
		36.960091, 34.820480, 39.983860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720829, 34.014744, 40.308762>,  <36.315762, 34.591862, 40.134102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720829, 34.014744, 40.308762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969807, 34.327473, 40.294216>,  <37.119194, 34.515110, 40.285488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969807, 34.327473, 40.294216>,  <36.720829, 34.014744, 40.308762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969807, 34.327473, 40.294216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497874, -0.359675, 0.789149,
		0.603893, -0.509305, -0.613124,
		0.622443, 0.781820, -0.036365,
		37.156540, 34.562019, 40.283306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356556, 33.825188, 40.347416>,  <36.720829, 34.014744, 40.308762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356556, 33.825188, 40.347416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.354286, 34.196133, 40.497063>,  <37.352924, 34.418701, 40.586849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.354286, 34.196133, 40.497063>,  <37.356556, 33.825188, 40.347416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354286, 34.196133, 40.497063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325029, -0.352095, 0.877716,
		0.945687, 0.126580, -0.299422,
		-0.005676, 0.927365, 0.374114,
		37.352585, 34.474342, 40.609299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846016, 33.735519, 40.746323>,  <37.356556, 33.825188, 40.347416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846016, 33.735519, 40.746323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.687050, 34.070854, 40.895588>,  <37.591671, 34.272057, 40.985149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.687050, 34.070854, 40.895588>,  <37.846016, 33.735519, 40.746323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687050, 34.070854, 40.895588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422773, -0.193658, 0.885302,
		0.814449, 0.509595, -0.277465,
		-0.397412, 0.838338, 0.373167,
		37.567825, 34.322357, 41.007538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337379, 33.948921, 41.408504>,  <37.846016, 33.735519, 40.746323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337379, 33.948921, 41.408504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.993309, 34.150852, 41.437492>,  <37.786865, 34.272011, 41.454884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.993309, 34.150852, 41.437492>,  <38.337379, 33.948921, 41.408504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993309, 34.150852, 41.437492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086736, 0.004783, 0.996220,
		0.502568, 0.863210, -0.047900,
		-0.860176, 0.504823, 0.072468,
		37.735256, 34.302299, 41.459232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748489, 34.626289, 41.371441>,  <38.337379, 33.948921, 41.408504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748489, 34.626289, 41.371441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069542, 34.391262, 41.330379>,  <39.262173, 34.250244, 41.305744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069542, 34.391262, 41.330379>,  <38.748489, 34.626289, 41.371441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069542, 34.391262, 41.330379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203490, -0.107965, -0.973106,
		0.560685, 0.801938, -0.206221,
		0.802636, -0.587570, -0.102652,
		39.310333, 34.214993, 41.299583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932369, 34.797562, 40.684444>,  <38.748489, 34.626289, 41.371441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932369, 34.797562, 40.684444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153835, 34.475258, 40.768551>,  <39.286713, 34.281876, 40.819016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153835, 34.475258, 40.768551>,  <38.932369, 34.797562, 40.684444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153835, 34.475258, 40.768551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011485, -0.245090, -0.969432,
		0.832663, 0.539151, -0.126442,
		0.553660, -0.805758, 0.210270,
		39.319935, 34.233532, 40.831631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700283, 34.809711, 40.372818>,  <38.932369, 34.797562, 40.684444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700283, 34.809711, 40.372818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.547802, 34.441463, 40.406616>,  <39.456314, 34.220512, 40.426895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.547802, 34.441463, 40.406616>,  <39.700283, 34.809711, 40.372818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547802, 34.441463, 40.406616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168808, -0.159176, -0.972711,
		0.908949, -0.356537, 0.216087,
		-0.381204, -0.920622, 0.084497,
		39.433441, 34.165276, 40.431965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087170, 34.467529, 39.962872>,  <39.700283, 34.809711, 40.372818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.087170, 34.467529, 39.962872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.790718, 34.203106, 40.009727>,  <39.612846, 34.044453, 40.037842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.790718, 34.203106, 40.009727>,  <40.087170, 34.467529, 39.962872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.790718, 34.203106, 40.009727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003667, -0.178468, -0.983939,
		0.671349, -0.728799, 0.134692,
		-0.741132, -0.661060, 0.117142,
		39.568378, 34.004787, 40.044868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231812, 33.845337, 39.514217>,  <40.087170, 34.467529, 39.962872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.231812, 33.845337, 39.514217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.840984, 33.831005, 39.598179>,  <39.606487, 33.822407, 39.648556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.840984, 33.831005, 39.598179>,  <40.231812, 33.845337, 39.514217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840984, 33.831005, 39.598179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198329, -0.205715, -0.958304,
		0.077516, -0.977956, 0.193891,
		-0.977066, -0.035829, 0.209904,
		39.547863, 33.820255, 39.661148>
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
