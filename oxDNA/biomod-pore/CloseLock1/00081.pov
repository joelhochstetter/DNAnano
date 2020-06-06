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
	<24.574020, 34.436665, 34.913544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.420887, 34.779713, 35.050907>,  <24.329008, 34.985542, 35.133327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.420887, 34.779713, 35.050907>,  <24.574020, 34.436665, 34.913544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.420887, 34.779713, 35.050907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602972, 0.513599, -0.610444,
		-0.699903, -0.026630, -0.713741,
		-0.382832, 0.857617, 0.343412,
		24.306038, 35.036999, 35.153931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.543137, 34.875229, 34.278084>,  <24.574020, 34.436665, 34.913544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.543137, 34.875229, 34.278084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.582287, 35.103817, 34.603992>,  <24.605776, 35.240971, 34.799538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.582287, 35.103817, 34.603992>,  <24.543137, 34.875229, 34.278084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.582287, 35.103817, 34.603992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539363, 0.657575, -0.526006,
		-0.836366, 0.490938, -0.243868,
		0.097874, 0.571467, 0.814768,
		24.611649, 35.275257, 34.848423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.692133, 35.524986, 34.106640>,  <24.543137, 34.875229, 34.278084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.692133, 35.524986, 34.106640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.779713, 35.558193, 34.495518>,  <24.832260, 35.578117, 34.728844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.779713, 35.558193, 34.495518>,  <24.692133, 35.524986, 34.106640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.779713, 35.558193, 34.495518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602864, 0.771930, -0.201690,
		-0.767214, 0.630263, 0.118961,
		0.218947, 0.083022, 0.972198,
		24.845396, 35.583099, 34.787178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.379000, 36.074123, 34.535789>,  <24.692133, 35.524986, 34.106640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.379000, 36.074123, 34.535789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.752474, 35.957134, 34.618439>,  <24.976559, 35.886940, 34.668026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.752474, 35.957134, 34.618439>,  <24.379000, 36.074123, 34.535789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.752474, 35.957134, 34.618439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358091, 0.761097, -0.540834,
		0.000921, 0.578958, 0.815357,
		0.933686, -0.292470, 0.206619,
		25.032579, 35.869392, 34.680424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.642033, 36.666332, 34.943092>,  <24.379000, 36.074123, 34.535789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.642033, 36.666332, 34.943092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.934244, 36.443207, 34.785526>,  <25.109571, 36.309330, 34.690987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.934244, 36.443207, 34.785526>,  <24.642033, 36.666332, 34.943092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.934244, 36.443207, 34.785526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471967, 0.829326, -0.299108,
		0.493529, 0.032593, 0.869119,
		0.730531, -0.557814, -0.393913,
		25.153404, 36.275864, 34.667351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.278719, 37.133953, 35.008945>,  <24.642033, 36.666332, 34.943092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.278719, 37.133953, 35.008945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.378704, 36.826420, 34.773518>,  <25.438696, 36.641899, 34.632259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.378704, 36.826420, 34.773518>,  <25.278719, 37.133953, 35.008945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.378704, 36.826420, 34.773518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751089, 0.537581, -0.383239,
		0.611051, -0.346275, 0.711836,
		0.249963, -0.768830, -0.588573,
		25.453693, 36.595772, 34.596947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.022762, 37.023758, 35.117138>,  <25.278719, 37.133953, 35.008945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.022762, 37.023758, 35.117138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.906088, 36.876495, 34.764008>,  <25.836082, 36.788139, 34.552128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.906088, 36.876495, 34.764008>,  <26.022762, 37.023758, 35.117138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.906088, 36.876495, 34.764008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796904, 0.416930, -0.437165,
		0.529020, -0.831044, 0.171769,
		-0.291687, -0.368152, -0.882826,
		25.818583, 36.766048, 34.499161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.594519, 37.159851, 34.681656>,  <26.022762, 37.023758, 35.117138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.594519, 37.159851, 34.681656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.362511, 37.041084, 34.378231>,  <26.223307, 36.969826, 34.196175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.362511, 37.041084, 34.378231>,  <26.594519, 37.159851, 34.681656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.362511, 37.041084, 34.378231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563803, 0.525809, -0.636907,
		0.587967, -0.797099, -0.137579,
		-0.580018, -0.296913, -0.758565,
		26.188505, 36.952011, 34.150661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.985352, 36.968498, 34.144173>,  <26.594519, 37.159851, 34.681656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.985352, 36.968498, 34.144173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.643728, 37.069557, 33.962296>,  <26.438753, 37.130192, 33.853168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.643728, 37.069557, 33.962296>,  <26.985352, 36.968498, 34.144173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.643728, 37.069557, 33.962296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520173, 0.415865, -0.745973,
		0.000623, -0.873627, -0.486595,
		-0.854061, 0.252649, -0.454696,
		26.387510, 37.145351, 33.825886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.099327, 36.708420, 33.456707>,  <26.985352, 36.968498, 34.144173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.099327, 36.708420, 33.456707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.811493, 36.986137, 33.461590>,  <26.638792, 37.152767, 33.464520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.811493, 36.986137, 33.461590>,  <27.099327, 36.708420, 33.456707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.811493, 36.986137, 33.461590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404099, 0.432988, -0.805745,
		-0.564712, -0.574870, -0.592137,
		-0.719587, 0.694296, 0.012209,
		26.595617, 37.194427, 33.465252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.760868, 36.739887, 32.748810>,  <27.099327, 36.708420, 33.456707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.760868, 36.739887, 32.748810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.633549, 37.073421, 32.929211>,  <26.557158, 37.273540, 33.037453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.633549, 37.073421, 32.929211>,  <26.760868, 36.739887, 32.748810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.633549, 37.073421, 32.929211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363694, 0.546752, -0.754181,
		-0.875449, -0.076029, -0.477292,
		-0.318300, 0.833836, 0.451002,
		26.538059, 37.323574, 33.064510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.335461, 37.111397, 32.265839>,  <26.760868, 36.739887, 32.748810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.335461, 37.111397, 32.265839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.491783, 37.356491, 32.540596>,  <26.585577, 37.503548, 32.705452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.491783, 37.356491, 32.540596>,  <26.335461, 37.111397, 32.265839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.491783, 37.356491, 32.540596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601725, 0.394649, -0.694392,
		-0.696561, 0.684695, -0.214466,
		0.390808, 0.612736, 0.686895,
		26.609026, 37.540310, 32.746666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.500706, 37.728962, 31.971775>,  <26.335461, 37.111397, 32.265839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.500706, 37.728962, 31.971775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.700003, 37.789104, 32.313335>,  <26.819582, 37.825191, 32.518272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.700003, 37.789104, 32.313335>,  <26.500706, 37.728962, 31.971775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.700003, 37.789104, 32.313335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711294, 0.492281, -0.501718,
		-0.495797, 0.857352, 0.138326,
		0.498244, 0.150360, 0.853900,
		26.849476, 37.834213, 32.569504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.707071, 38.492641, 32.059860>,  <26.500706, 37.728962, 31.971775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.707071, 38.492641, 32.059860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.962046, 38.272011, 32.275059>,  <27.115030, 38.139633, 32.404175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.962046, 38.272011, 32.275059>,  <26.707071, 38.492641, 32.059860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.962046, 38.272011, 32.275059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765005, 0.536330, -0.356536,
		-0.091883, 0.638835, 0.763837,
		0.637436, -0.551579, 0.537992,
		27.153276, 38.106537, 32.436455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.202026, 38.929596, 32.150879>,  <26.707071, 38.492641, 32.059860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.202026, 38.929596, 32.150879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.371426, 38.588173, 32.272259>,  <27.473066, 38.383320, 32.345089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.371426, 38.588173, 32.272259>,  <27.202026, 38.929596, 32.150879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.371426, 38.588173, 32.272259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904116, 0.377254, -0.200635,
		0.056775, 0.359325, 0.931484,
		0.423499, -0.853560, 0.303452,
		27.498476, 38.332104, 32.363293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.731802, 39.088722, 32.712776>,  <27.202026, 38.929596, 32.150879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.731802, 39.088722, 32.712776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.791904, 38.765560, 32.484844>,  <27.827967, 38.571663, 32.348083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.791904, 38.765560, 32.484844>,  <27.731802, 39.088722, 32.712776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.791904, 38.765560, 32.484844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906123, 0.343071, -0.247473,
		0.395428, -0.479154, 0.783612,
		0.150257, -0.807907, -0.569832,
		27.836981, 38.523190, 32.313896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.427250, 39.227943, 32.700569>,  <27.731802, 39.088722, 32.712776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.427250, 39.227943, 32.700569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.387756, 38.922821, 32.444954>,  <28.364059, 38.739746, 32.291584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.387756, 38.922821, 32.444954>,  <28.427250, 39.227943, 32.700569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.387756, 38.922821, 32.444954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839266, 0.281214, -0.465350,
		0.534681, -0.582272, 0.612434,
		-0.098735, -0.762809, -0.639041,
		28.358135, 38.693977, 32.253242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.030727, 38.728855, 32.691780>,  <28.427250, 39.227943, 32.700569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.030727, 38.728855, 32.691780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.870995, 38.684441, 32.327755>,  <28.775156, 38.657791, 32.109341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.870995, 38.684441, 32.327755>,  <29.030727, 38.728855, 32.691780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.870995, 38.684441, 32.327755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880282, 0.230954, -0.414443,
		0.256198, -0.966608, 0.005512,
		-0.399331, -0.111032, -0.910059,
		28.751196, 38.651131, 32.054737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.537203, 38.480282, 32.279964>,  <29.030727, 38.728855, 32.691780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.537203, 38.480282, 32.279964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291716, 38.653675, 32.016010>,  <29.144423, 38.757710, 31.857639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291716, 38.653675, 32.016010>,  <29.537203, 38.480282, 32.279964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.291716, 38.653675, 32.016010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788103, 0.286238, -0.544941,
		-0.047337, -0.854496, -0.517296,
		-0.613720, 0.433478, -0.659882,
		29.107599, 38.783718, 31.818047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.720200, 38.169582, 31.636358>,  <29.537203, 38.480282, 32.279964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.720200, 38.169582, 31.636358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.550875, 38.529217, 31.591728>,  <29.449280, 38.744999, 31.564949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.550875, 38.529217, 31.591728>,  <29.720200, 38.169582, 31.636358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.550875, 38.529217, 31.591728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728792, 0.264768, -0.631474,
		-0.538208, -0.348628, -0.767327,
		-0.423313, 0.899086, -0.111577,
		29.423882, 38.798943, 31.558254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.973839, 38.329262, 30.915628>,  <29.720200, 38.169582, 31.636358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.973839, 38.329262, 30.915628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.822178, 38.673725, 31.051069>,  <29.731180, 38.880402, 31.132334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.822178, 38.673725, 31.051069>,  <29.973839, 38.329262, 30.915628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.822178, 38.673725, 31.051069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632573, 0.508287, -0.584376,
		-0.675347, -0.007378, -0.737463,
		-0.379155, 0.861156, 0.338603,
		29.708431, 38.932072, 31.152651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.773710, 38.752956, 30.300522>,  <29.973839, 38.329262, 30.915628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.773710, 38.752956, 30.300522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.782661, 39.026169, 30.592539>,  <29.788033, 39.190098, 30.767750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.782661, 39.026169, 30.592539>,  <29.773710, 38.752956, 30.300522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.782661, 39.026169, 30.592539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499464, 0.624931, -0.599998,
		-0.866046, 0.378057, -0.327166,
		0.022377, 0.683033, 0.730045,
		29.789375, 39.231079, 30.811552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.672001, 39.462650, 30.004841>,  <29.773710, 38.752956, 30.300522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.672001, 39.462650, 30.004841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.851568, 39.538883, 30.354046>,  <29.959309, 39.584621, 30.563568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.851568, 39.538883, 30.354046>,  <29.672001, 39.462650, 30.004841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.851568, 39.538883, 30.354046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543407, 0.717349, -0.436028,
		-0.709354, 0.670141, 0.218467,
		0.448917, 0.190582, 0.873013,
		29.986244, 39.596058, 30.615950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.757093, 40.231453, 30.143021>,  <29.672001, 39.462650, 30.004841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.757093, 40.231453, 30.143021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.036020, 40.076889, 30.384497>,  <30.203377, 39.984150, 30.529383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.036020, 40.076889, 30.384497>,  <29.757093, 40.231453, 30.143021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.036020, 40.076889, 30.384497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662932, 0.667926, -0.338225,
		-0.272527, 0.636054, 0.721917,
		0.697316, -0.386406, 0.603688,
		30.245214, 39.960968, 30.565603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.138611, 40.901615, 30.265007>,  <29.757093, 40.231453, 30.143021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.138611, 40.901615, 30.265007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.368357, 40.592766, 30.373774>,  <30.506205, 40.407455, 30.439034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.368357, 40.592766, 30.373774>,  <30.138611, 40.901615, 30.265007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.368357, 40.592766, 30.373774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793367, 0.443209, -0.417296,
		0.201685, 0.455410, 0.867136,
		0.574363, -0.772119, 0.271918,
		30.540665, 40.361130, 30.455349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.824512, 41.232384, 30.430025>,  <30.138611, 40.901615, 30.265007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.824512, 41.232384, 30.430025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.867683, 40.837154, 30.386097>,  <30.893587, 40.600018, 30.359741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.867683, 40.837154, 30.386097>,  <30.824512, 41.232384, 30.430025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.867683, 40.837154, 30.386097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957482, 0.133040, -0.255987,
		0.267545, -0.077521, 0.960422,
		0.107930, -0.988074, -0.109819,
		30.900063, 40.540733, 30.353151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.507689, 41.080238, 30.716267>,  <30.824512, 41.232384, 30.430025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.507689, 41.080238, 30.716267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.394350, 40.789154, 30.466417>,  <31.326347, 40.614502, 30.316507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.394350, 40.789154, 30.466417>,  <31.507689, 41.080238, 30.716267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.394350, 40.789154, 30.466417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957023, -0.172565, -0.233084,
		0.061829, -0.663822, 0.745331,
		-0.283344, -0.727710, -0.624623,
		31.309347, 40.570843, 30.279030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.978102, 40.531963, 30.410877>,  <31.507689, 41.080238, 30.716267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.978102, 40.531963, 30.410877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270626, 40.585175, 30.143299>,  <32.446140, 40.617100, 29.982752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270626, 40.585175, 30.143299>,  <31.978102, 40.531963, 30.410877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270626, 40.585175, 30.143299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015659, -0.983811, -0.178522,
		-0.681866, 0.120080, -0.721554,
		0.731310, 0.133027, -0.668947,
		32.490021, 40.625084, 29.942616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.765871, 40.245220, 29.754477>,  <31.978102, 40.531963, 30.410877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.765871, 40.245220, 29.754477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.164131, 40.243759, 29.791723>,  <32.403088, 40.242882, 29.814072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.164131, 40.243759, 29.791723>,  <31.765871, 40.245220, 29.754477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.164131, 40.243759, 29.791723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012040, -0.985821, -0.167369,
		0.092409, 0.167761, -0.981487,
		0.995648, -0.003649, 0.093119,
		32.462826, 40.242664, 29.819658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175922, 40.056335, 29.078287>,  <31.765871, 40.245220, 29.754477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175922, 40.056335, 29.078287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333633, 39.940517, 29.427162>,  <32.428261, 39.871025, 29.636488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333633, 39.940517, 29.427162>,  <32.175922, 40.056335, 29.078287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333633, 39.940517, 29.427162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186723, -0.954513, -0.232465,
		0.899823, -0.071202, -0.430406,
		0.394276, -0.289544, 0.872187,
		32.451916, 39.853653, 29.688818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631069, 39.475800, 28.978683>,  <32.175922, 40.056335, 29.078287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631069, 39.475800, 28.978683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481255, 39.456287, 29.349054>,  <32.391365, 39.444580, 29.571278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481255, 39.456287, 29.349054>,  <32.631069, 39.475800, 28.978683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.481255, 39.456287, 29.349054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142144, -0.983791, -0.109321,
		0.916252, -0.172559, 0.361531,
		-0.374536, -0.048776, 0.925929,
		32.368893, 39.441654, 29.626833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997025, 38.988575, 29.312553>,  <32.631069, 39.475800, 28.978683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997025, 38.988575, 29.312553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.642017, 39.017887, 29.494513>,  <32.429012, 39.035473, 29.603689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.642017, 39.017887, 29.494513>,  <32.997025, 38.988575, 29.312553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642017, 39.017887, 29.494513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040038, -0.995803, 0.082300,
		0.459021, 0.054829, 0.886732,
		-0.887523, 0.073281, 0.454900,
		32.375759, 39.039871, 29.630983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.969707, 38.527878, 29.882273>,  <32.997025, 38.988575, 29.312553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.969707, 38.527878, 29.882273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.618580, 38.606922, 29.707745>,  <32.407902, 38.654350, 29.603027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.618580, 38.606922, 29.707745>,  <32.969707, 38.527878, 29.882273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.618580, 38.606922, 29.707745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141722, -0.977297, -0.157500,
		-0.457539, -0.076421, 0.885899,
		-0.877823, 0.197614, -0.436321,
		32.355232, 38.666206, 29.576849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.371109, 38.234959, 30.153328>,  <32.969707, 38.527878, 29.882273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.371109, 38.234959, 30.153328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305042, 38.282978, 29.761755>,  <32.265404, 38.311790, 29.526812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305042, 38.282978, 29.761755>,  <32.371109, 38.234959, 30.153328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305042, 38.282978, 29.761755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197996, -0.976393, -0.086334,
		-0.966187, 0.179565, 0.185038,
		-0.165167, 0.120051, -0.978932,
		32.255493, 38.318993, 29.468075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.693239, 38.064877, 29.958338>,  <32.371109, 38.234959, 30.153328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.693239, 38.064877, 29.958338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.971483, 37.968906, 29.687468>,  <32.138428, 37.911324, 29.524946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.971483, 37.968906, 29.687468>,  <31.693239, 38.064877, 29.958338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.971483, 37.968906, 29.687468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285443, -0.957293, 0.045963,
		-0.659281, 0.161322, -0.734387,
		0.695608, -0.239928, -0.677173,
		32.180164, 37.896927, 29.484316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.348276, 37.888393, 29.392559>,  <31.693239, 38.064877, 29.958338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.348276, 37.888393, 29.392559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695330, 37.690678, 29.414070>,  <31.903563, 37.572048, 29.426977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695330, 37.690678, 29.414070>,  <31.348276, 37.888393, 29.392559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695330, 37.690678, 29.414070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453217, -0.830715, -0.323276,
		0.204464, 0.256113, -0.944775,
		0.867634, -0.494287, 0.053776,
		31.955620, 37.542393, 29.430202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.497829, 37.650761, 28.742601>,  <31.348276, 37.888393, 29.392559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.497829, 37.650761, 28.742601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.679588, 37.395344, 28.991047>,  <31.788645, 37.242092, 29.140114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.679588, 37.395344, 28.991047>,  <31.497829, 37.650761, 28.742601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.679588, 37.395344, 28.991047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579642, -0.741399, -0.338145,
		0.676415, -0.206372, -0.707017,
		0.454398, -0.638544, 0.621115,
		31.815908, 37.203781, 29.177382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012171, 37.197624, 29.053675>,  <31.497829, 37.650761, 28.742601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.012171, 37.197624, 29.053675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.677982, 37.341290, 28.887304>,  <30.477470, 37.427486, 28.787483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.677982, 37.341290, 28.887304>,  <31.012171, 37.197624, 29.053675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.677982, 37.341290, 28.887304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549279, -0.522644, 0.652024,
		0.016801, 0.773206, 0.633933,
		-0.835470, 0.359161, -0.415925,
		30.427341, 37.449039, 28.762527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.603924, 37.495296, 29.544167>,  <31.012171, 37.197624, 29.053675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.603924, 37.495296, 29.544167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.348070, 37.419445, 29.246197>,  <30.194557, 37.373936, 29.067415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.348070, 37.419445, 29.246197>,  <30.603924, 37.495296, 29.544167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.348070, 37.419445, 29.246197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646481, -0.391563, 0.654783,
		-0.415850, 0.900400, 0.127866,
		-0.639634, -0.189629, -0.744923,
		30.156179, 37.362556, 29.022720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.917295, 37.824078, 29.815552>,  <30.603924, 37.495296, 29.544167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.917295, 37.824078, 29.815552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.827774, 37.563282, 29.525774>,  <29.774061, 37.406803, 29.351908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.827774, 37.563282, 29.525774>,  <29.917295, 37.824078, 29.815552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.827774, 37.563282, 29.525774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822971, -0.271788, 0.498848,
		-0.522139, 0.707843, -0.475741,
		-0.223805, -0.651989, -0.724446,
		29.760633, 37.367683, 29.308441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.238459, 37.825291, 29.815687>,  <29.917295, 37.824078, 29.815552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.238459, 37.825291, 29.815687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.345234, 37.481853, 29.640619>,  <29.409298, 37.275791, 29.535578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.345234, 37.481853, 29.640619>,  <29.238459, 37.825291, 29.815687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.345234, 37.481853, 29.640619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632633, -0.498715, 0.592503,
		-0.726994, 0.118724, -0.676302,
		0.266937, -0.858597, -0.437671,
		29.425316, 37.224274, 29.509317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.665352, 37.485756, 29.688208>,  <29.238459, 37.825291, 29.815687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.665352, 37.485756, 29.688208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.941463, 37.197353, 29.712435>,  <29.107130, 37.024311, 29.726971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.941463, 37.197353, 29.712435>,  <28.665352, 37.485756, 29.688208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.941463, 37.197353, 29.712435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624673, -0.551623, 0.552717,
		-0.365098, -0.419366, -0.831165,
		0.690280, -0.721002, 0.060571,
		29.148548, 36.981052, 29.730606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.253321, 36.933319, 29.584530>,  <28.665352, 37.485756, 29.688208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.253321, 36.933319, 29.584530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.590757, 36.786140, 29.740971>,  <28.793221, 36.697834, 29.834835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.590757, 36.786140, 29.740971>,  <28.253321, 36.933319, 29.584530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.590757, 36.786140, 29.740971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530035, -0.687344, 0.496609,
		0.086094, -0.626234, -0.774866,
		0.843594, -0.367951, 0.391102,
		28.843836, 36.675755, 29.858301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.211723, 36.211548, 29.720781>,  <28.253321, 36.933319, 29.584530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.211723, 36.211548, 29.720781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.504951, 36.256374, 29.989124>,  <28.680887, 36.283272, 30.150131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.504951, 36.256374, 29.989124>,  <28.211723, 36.211548, 29.720781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.504951, 36.256374, 29.989124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499582, -0.580600, 0.642901,
		0.461550, -0.806439, -0.369631,
		0.733068, 0.112070, 0.670859,
		28.724873, 36.289997, 30.190382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.456778, 35.553177, 29.955132>,  <28.211723, 36.211548, 29.720781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.456778, 35.553177, 29.955132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.544785, 35.832401, 30.227688>,  <28.597589, 35.999935, 30.391222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.544785, 35.832401, 30.227688>,  <28.456778, 35.553177, 29.955132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.544785, 35.832401, 30.227688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526219, -0.503231, 0.685457,
		0.821393, -0.509375, 0.256616,
		0.220017, 0.698066, 0.681393,
		28.610790, 36.041821, 30.432106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.584303, 35.076153, 30.380642>,  <28.456778, 35.553177, 29.955132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.584303, 35.076153, 30.380642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.561897, 35.405579, 30.606421>,  <28.548454, 35.603233, 30.741888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.561897, 35.405579, 30.606421>,  <28.584303, 35.076153, 30.380642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.561897, 35.405579, 30.606421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644316, -0.461681, 0.609679,
		0.762705, -0.329531, 0.556498,
		-0.056016, 0.823566, 0.564448,
		28.545092, 35.652649, 30.775755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.623384, 34.814411, 30.995144>,  <28.584303, 35.076153, 30.380642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.623384, 34.814411, 30.995144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.467770, 35.173409, 31.078245>,  <28.374401, 35.388805, 31.128107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.467770, 35.173409, 31.078245>,  <28.623384, 34.814411, 30.995144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.467770, 35.173409, 31.078245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546397, -0.406371, 0.732334,
		0.741688, 0.171387, 0.648479,
		-0.389036, 0.897491, 0.207755,
		28.351059, 35.442657, 31.140572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.792074, 34.867207, 31.723133>,  <28.623384, 34.814411, 30.995144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.792074, 34.867207, 31.723133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.501905, 35.136360, 31.665182>,  <28.327805, 35.297852, 31.630411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.501905, 35.136360, 31.665182>,  <28.792074, 34.867207, 31.723133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.501905, 35.136360, 31.665182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493304, -0.361470, 0.791196,
		0.480015, 0.645419, 0.594154,
		-0.725422, 0.672885, -0.144877,
		28.284279, 35.338226, 31.621719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.677692, 35.273438, 32.341537>,  <28.792074, 34.867207, 31.723133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.677692, 35.273438, 32.341537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.347239, 35.254467, 32.116947>,  <28.148966, 35.243084, 31.982193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.347239, 35.254467, 32.116947>,  <28.677692, 35.273438, 32.341537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.347239, 35.254467, 32.116947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512639, -0.350350, 0.783872,
		-0.233890, 0.935417, 0.265123,
		-0.826134, -0.047427, -0.561475,
		28.099398, 35.240238, 31.948505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.156319, 35.469837, 32.765614>,  <28.677692, 35.273438, 32.341537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.156319, 35.469837, 32.765614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.945545, 35.292107, 32.475807>,  <27.819082, 35.185467, 32.301926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.945545, 35.292107, 32.475807>,  <28.156319, 35.469837, 32.765614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.945545, 35.292107, 32.475807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652297, -0.335051, 0.679889,
		-0.544840, 0.830853, -0.113283,
		-0.526932, -0.444325, -0.724512,
		27.787466, 35.158810, 32.258453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.465580, 35.655907, 32.831772>,  <28.156319, 35.469837, 32.765614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.465580, 35.655907, 32.831772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.453035, 35.315323, 32.622375>,  <27.445509, 35.110973, 32.496738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.453035, 35.315323, 32.622375>,  <27.465580, 35.655907, 32.831772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.453035, 35.315323, 32.622375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785511, -0.302866, 0.539671,
		-0.618052, 0.428132, -0.659329,
		-0.031362, -0.851455, -0.523489,
		27.443626, 35.059887, 32.465328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.702950, 35.597961, 32.566315>,  <27.465580, 35.655907, 32.831772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.702950, 35.597961, 32.566315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.867311, 35.233562, 32.552212>,  <26.965929, 35.014923, 32.543751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.867311, 35.233562, 32.552212>,  <26.702950, 35.597961, 32.566315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.867311, 35.233562, 32.552212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791222, -0.375559, 0.482621,
		-0.452907, -0.170414, -0.875119,
		0.410904, -0.910996, -0.035258,
		26.990583, 34.960262, 32.541634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.177549, 35.210175, 32.443287>,  <26.702950, 35.597961, 32.566315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.177549, 35.210175, 32.443287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.455584, 34.952568, 32.571098>,  <26.622404, 34.798004, 32.647785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.455584, 34.952568, 32.571098>,  <26.177549, 35.210175, 32.443287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.455584, 34.952568, 32.571098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685117, -0.458682, 0.565885,
		-0.217880, -0.612251, -0.760051,
		0.695085, -0.644019, 0.319526,
		26.664108, 34.759361, 32.666954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.792128, 34.602104, 32.447483>,  <26.177549, 35.210175, 32.443287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.792128, 34.602104, 32.447483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.112768, 34.556343, 32.682209>,  <26.305153, 34.528889, 32.823044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.112768, 34.556343, 32.682209>,  <25.792128, 34.602104, 32.447483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.112768, 34.556343, 32.682209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554570, -0.508973, 0.658330,
		0.223362, -0.853147, -0.471434,
		0.801599, -0.114398, 0.586815,
		26.353249, 34.522022, 32.858253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.786581, 33.910282, 32.621407>,  <25.792128, 34.602104, 32.447483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.786581, 33.910282, 32.621407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.000809, 34.080017, 32.913460>,  <26.129345, 34.181858, 33.088692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.000809, 34.080017, 32.913460>,  <25.786581, 33.910282, 32.621407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.000809, 34.080017, 32.913460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577968, -0.446198, 0.683271,
		0.615724, -0.787937, 0.006283,
		0.535571, 0.424338, 0.730137,
		26.161480, 34.207317, 33.132500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.963404, 33.249744, 33.098946>,  <25.786581, 33.910282, 32.621407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.963404, 33.249744, 33.098946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.018734, 33.581028, 33.316177>,  <26.051931, 33.779797, 33.446518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.018734, 33.581028, 33.316177>,  <25.963404, 33.249744, 33.098946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.018734, 33.581028, 33.316177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449218, -0.436237, 0.779680,
		0.882649, -0.351812, 0.311703,
		0.138325, 0.828206, 0.543084,
		26.060232, 33.829491, 33.479103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.283304, 32.976440, 33.728638>,  <25.963404, 33.249744, 33.098946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.283304, 32.976440, 33.728638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.142138, 33.344975, 33.793858>,  <26.057438, 33.566097, 33.832989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.142138, 33.344975, 33.793858>,  <26.283304, 32.976440, 33.728638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.142138, 33.344975, 33.793858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494821, -0.331686, 0.803204,
		0.794104, 0.202782, 0.572955,
		-0.352917, 0.921338, 0.163052,
		26.036263, 33.621376, 33.842773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.005014, 33.234825, 33.618011>,  <26.283304, 32.976440, 33.728638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.005014, 33.234825, 33.618011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.088533, 32.993313, 33.310284>,  <27.138645, 32.848408, 33.125645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.088533, 32.993313, 33.310284>,  <27.005014, 33.234825, 33.618011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.088533, 32.993313, 33.310284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952023, 0.305457, 0.018656,
		0.223731, -0.736307, 0.638590,
		0.208798, -0.603778, -0.769321,
		27.151173, 32.812180, 33.079487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.600073, 32.778488, 33.847057>,  <27.005014, 33.234825, 33.618011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.600073, 32.778488, 33.847057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.582302, 32.778706, 33.447453>,  <27.571640, 32.778835, 33.207691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.582302, 32.778706, 33.447453>,  <27.600073, 32.778488, 33.847057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.582302, 32.778706, 33.447453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997051, -0.062605, -0.044375,
		-0.062569, -0.998038, 0.002201,
		-0.044425, 0.000582, -0.999012,
		27.568974, 32.778870, 33.147747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.957380, 32.249905, 33.492290>,  <27.600073, 32.778488, 33.847057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.957380, 32.249905, 33.492290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.934782, 32.569096, 33.252277>,  <27.921223, 32.760612, 33.108269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.934782, 32.569096, 33.252277>,  <27.957380, 32.249905, 33.492290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.934782, 32.569096, 33.252277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972704, -0.091488, -0.213255,
		-0.225069, -0.595699, -0.771030,
		-0.056495, 0.797980, -0.600030,
		27.917833, 32.808491, 33.072269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.372004, 32.112385, 32.939339>,  <27.957380, 32.249905, 33.492290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.372004, 32.112385, 32.939339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.380045, 32.511768, 32.960033>,  <28.384871, 32.751400, 32.972450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.380045, 32.511768, 32.960033>,  <28.372004, 32.112385, 32.939339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.380045, 32.511768, 32.960033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957630, -0.004363, -0.287970,
		-0.287301, 0.055330, -0.956241,
		0.020105, 0.998459, 0.051733,
		28.386076, 32.811306, 32.975552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.620937, 32.366245, 32.279148>,  <28.372004, 32.112385, 32.939339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.620937, 32.366245, 32.279148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.691500, 32.637802, 32.564243>,  <28.733837, 32.800735, 32.735298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.691500, 32.637802, 32.564243>,  <28.620937, 32.366245, 32.279148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.691500, 32.637802, 32.564243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969178, 0.006712, -0.246271,
		-0.171975, 0.734211, -0.656780,
		0.176407, 0.678889, 0.712735,
		28.744421, 32.841469, 32.778065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.183723, 32.714951, 32.030659>,  <28.620937, 32.366245, 32.279148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.183723, 32.714951, 32.030659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.167488, 32.801304, 32.420891>,  <29.157747, 32.853115, 32.655029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.167488, 32.801304, 32.420891>,  <29.183723, 32.714951, 32.030659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.167488, 32.801304, 32.420891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998120, 0.053646, 0.029653,
		-0.045934, 0.974945, -0.217654,
		-0.040586, 0.215882, 0.975576,
		29.155312, 32.866070, 32.713562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.654694, 33.346905, 32.202709>,  <29.183723, 32.714951, 32.030659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.654694, 33.346905, 32.202709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.594032, 33.132057, 32.534615>,  <29.557634, 33.003147, 32.733757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.594032, 33.132057, 32.534615>,  <29.654694, 33.346905, 32.202709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.594032, 33.132057, 32.534615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934712, 0.195055, 0.297098,
		-0.321425, 0.820645, 0.472469,
		-0.151654, -0.537117, 0.829762,
		29.548536, 32.970921, 32.783543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.427177, 33.234661, 32.123444>,  <29.654694, 33.346905, 32.202709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.427177, 33.234661, 32.123444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.733736, 33.007202, 32.242962>,  <30.917671, 32.870728, 32.314674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.733736, 33.007202, 32.242962>,  <30.427177, 33.234661, 32.123444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.733736, 33.007202, 32.242962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153852, 0.289120, 0.944849,
		-0.623673, -0.770098, 0.134092,
		0.766395, -0.568646, 0.298798,
		30.963654, 32.836609, 32.332600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.195852, 32.683781, 32.658875>,  <30.427177, 33.234661, 32.123444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.195852, 32.683781, 32.658875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.584320, 32.773277, 32.691799>,  <30.817400, 32.826973, 32.711555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.584320, 32.773277, 32.691799>,  <30.195852, 32.683781, 32.658875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.584320, 32.773277, 32.691799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063801, -0.088766, 0.994007,
		0.229703, -0.970599, -0.071932,
		0.971167, 0.223737, 0.082315,
		30.875669, 32.840397, 32.716496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.494200, 32.293907, 33.182365>,  <30.195852, 32.683781, 32.658875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.494200, 32.293907, 33.182365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.776943, 32.576542, 33.169197>,  <30.946589, 32.746124, 33.161297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.776943, 32.576542, 33.169197>,  <30.494200, 32.293907, 33.182365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.776943, 32.576542, 33.169197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001582, 0.044961, 0.998987,
		0.707355, -0.706193, 0.030663,
		0.706857, 0.706590, -0.032920,
		30.989000, 32.788517, 33.159321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.906441, 32.102478, 33.653419>,  <30.494200, 32.293907, 33.182365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.906441, 32.102478, 33.653419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.005648, 32.489235, 33.629414>,  <31.065172, 32.721291, 33.615009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.005648, 32.489235, 33.629414>,  <30.906441, 32.102478, 33.653419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.005648, 32.489235, 33.629414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144388, 0.024362, 0.989221,
		0.957935, -0.254009, -0.133565,
		0.248017, 0.966895, -0.060013,
		31.080053, 32.779305, 33.611408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482140, 32.142590, 34.129551>,  <30.906441, 32.102478, 33.653419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.482140, 32.142590, 34.129551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.342308, 32.515434, 34.091682>,  <31.258410, 32.739140, 34.068962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.342308, 32.515434, 34.091682>,  <31.482140, 32.142590, 34.129551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.342308, 32.515434, 34.091682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278057, 0.199716, 0.939573,
		0.894694, 0.302132, -0.328997,
		-0.349581, 0.932110, -0.094675,
		31.237434, 32.795067, 34.063278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.880659, 32.562386, 34.568096>,  <31.482140, 32.142590, 34.129551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.880659, 32.562386, 34.568096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.591412, 32.822147, 34.473972>,  <31.417864, 32.978004, 34.417500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.591412, 32.822147, 34.473972>,  <31.880659, 32.562386, 34.568096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.591412, 32.822147, 34.473972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084276, 0.255174, 0.963216,
		0.685563, 0.716351, -0.129791,
		-0.723119, 0.649406, -0.235309,
		31.374475, 33.016968, 34.403381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.122066, 33.129482, 35.004734>,  <31.880659, 32.562386, 34.568096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.122066, 33.129482, 35.004734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738873, 33.190113, 34.907333>,  <31.508957, 33.226490, 34.848892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738873, 33.190113, 34.907333>,  <32.122066, 33.129482, 35.004734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738873, 33.190113, 34.907333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198792, 0.261089, 0.944624,
		0.206756, 0.953340, -0.219987,
		-0.957984, 0.151575, -0.243498,
		31.451477, 33.235584, 34.834286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.891928, 33.786976, 35.319317>,  <32.122066, 33.129482, 35.004734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.891928, 33.786976, 35.319317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.563757, 33.572094, 35.241032>,  <31.366854, 33.443165, 35.194061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.563757, 33.572094, 35.241032>,  <31.891928, 33.786976, 35.319317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.563757, 33.572094, 35.241032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267397, 0.057955, 0.961842,
		-0.505368, 0.841455, -0.191196,
		-0.820428, -0.537209, -0.195714,
		31.317629, 33.410931, 35.182316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.428301, 34.001926, 35.882759>,  <31.891928, 33.786976, 35.319317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.428301, 34.001926, 35.882759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.227030, 33.684208, 35.746578>,  <31.106268, 33.493576, 35.664871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.227030, 33.684208, 35.746578>,  <31.428301, 34.001926, 35.882759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.227030, 33.684208, 35.746578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455144, -0.091307, 0.885724,
		-0.734613, 0.600630, -0.315576,
		-0.503178, -0.794297, -0.340449,
		31.076077, 33.445919, 35.644444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680763, 34.069294, 36.049858>,  <31.428301, 34.001926, 35.882759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680763, 34.069294, 36.049858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760218, 33.681602, 35.991711>,  <30.807890, 33.448986, 35.956821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760218, 33.681602, 35.991711>,  <30.680763, 34.069294, 36.049858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.760218, 33.681602, 35.991711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248548, -0.193294, 0.949137,
		-0.948034, -0.152401, -0.279296,
		0.198636, -0.969232, -0.145370,
		30.819809, 33.390831, 35.948101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.179562, 33.634167, 36.521378>,  <30.680763, 34.069294, 36.049858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.179562, 33.634167, 36.521378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.484043, 33.393139, 36.425480>,  <30.666733, 33.248524, 36.367943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.484043, 33.393139, 36.425480>,  <30.179562, 33.634167, 36.521378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.484043, 33.393139, 36.425480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078159, -0.452233, 0.888469,
		-0.643783, -0.657569, -0.391339,
		0.761206, -0.602568, -0.239745,
		30.712404, 33.212368, 36.353558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.977264, 33.044498, 36.786964>,  <30.179562, 33.634167, 36.521378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.977264, 33.044498, 36.786964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.374474, 33.002537, 36.765434>,  <30.612799, 32.977360, 36.752518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.374474, 33.002537, 36.765434>,  <29.977264, 33.044498, 36.786964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.374474, 33.002537, 36.765434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009628, -0.382811, 0.923777,
		-0.117513, -0.917851, -0.379130,
		0.993025, -0.104906, -0.053822,
		30.672380, 32.971066, 36.749287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.064547, 32.535568, 37.175602>,  <29.977264, 33.044498, 36.786964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.064547, 32.535568, 37.175602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.423464, 32.711903, 37.166401>,  <30.638813, 32.817703, 37.160881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.423464, 32.711903, 37.166401>,  <30.064547, 32.535568, 37.175602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.423464, 32.711903, 37.166401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141900, -0.238705, 0.960669,
		0.418011, -0.865263, -0.276743,
		0.897291, 0.440840, -0.022999,
		30.692652, 32.844154, 37.159500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.570711, 32.062500, 37.399139>,  <30.064547, 32.535568, 37.175602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.570711, 32.062500, 37.399139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.735319, 32.421177, 37.464363>,  <30.834084, 32.636383, 37.503498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.735319, 32.421177, 37.464363>,  <30.570711, 32.062500, 37.399139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.735319, 32.421177, 37.464363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019529, -0.187545, 0.982062,
		0.911191, -0.400954, -0.094690,
		0.411520, 0.896695, 0.163059,
		30.858776, 32.690186, 37.513283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.186308, 31.878605, 37.765633>,  <30.570711, 32.062500, 37.399139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.186308, 31.878605, 37.765633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.085539, 32.260647, 37.827995>,  <31.025078, 32.489872, 37.865414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.085539, 32.260647, 37.827995>,  <31.186308, 31.878605, 37.765633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.085539, 32.260647, 37.827995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003949, -0.162112, 0.986764,
		0.967739, 0.247975, 0.044612,
		-0.251925, 0.955106, 0.155903,
		31.009962, 32.547180, 37.874767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712662, 32.213802, 38.308434>,  <31.186308, 31.878605, 37.765633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712662, 32.213802, 38.308434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.379589, 32.434734, 38.324303>,  <31.179747, 32.567295, 38.333824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.379589, 32.434734, 38.324303>,  <31.712662, 32.213802, 38.308434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.379589, 32.434734, 38.324303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027995, -0.113543, 0.993139,
		0.553047, 0.825856, 0.110008,
		-0.832680, 0.552332, 0.039675,
		31.129786, 32.600433, 38.336205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.803661, 32.715450, 38.885162>,  <31.712662, 32.213802, 38.308434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.803661, 32.715450, 38.885162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.410650, 32.766754, 38.831211>,  <31.174845, 32.797535, 38.798840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.410650, 32.766754, 38.831211>,  <31.803661, 32.715450, 38.885162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.410650, 32.766754, 38.831211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152684, -0.141028, 0.978161,
		0.106438, 0.981662, 0.158147,
		-0.982527, 0.128260, -0.134873,
		31.115892, 32.805233, 38.790749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645727, 33.144611, 39.447990>,  <31.803661, 32.715450, 38.885162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645727, 33.144611, 39.447990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.296558, 32.983543, 39.337822>,  <31.087057, 32.886902, 39.271721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.296558, 32.983543, 39.337822>,  <31.645727, 33.144611, 39.447990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.296558, 32.983543, 39.337822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267213, -0.077704, 0.960499,
		-0.408170, 0.912039, -0.039770,
		-0.872923, -0.402675, -0.275425,
		31.034681, 32.862740, 39.255196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.150187, 33.476353, 39.807034>,  <31.645727, 33.144611, 39.447990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.150187, 33.476353, 39.807034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.967163, 33.131989, 39.718067>,  <30.857349, 32.925369, 39.664688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.967163, 33.131989, 39.718067>,  <31.150187, 33.476353, 39.807034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.967163, 33.131989, 39.718067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149724, -0.171964, 0.973659,
		-0.876483, 0.478808, -0.050215,
		-0.457560, -0.860913, -0.222412,
		30.829895, 32.873714, 39.651344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501492, 33.486073, 40.063068>,  <31.150187, 33.476353, 39.807034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.501492, 33.486073, 40.063068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.563643, 33.091862, 40.035973>,  <30.600933, 32.855335, 40.019714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.563643, 33.091862, 40.035973>,  <30.501492, 33.486073, 40.063068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.563643, 33.091862, 40.035973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210662, -0.100051, 0.972425,
		-0.965132, -0.136822, -0.223159,
		0.155376, -0.985530, -0.067739,
		30.610256, 32.796204, 40.015652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.915247, 33.182091, 40.358685>,  <30.501492, 33.486073, 40.063068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.915247, 33.182091, 40.358685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.204908, 32.906643, 40.373672>,  <30.378706, 32.741375, 40.382668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.204908, 32.906643, 40.373672>,  <29.915247, 33.182091, 40.358685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.204908, 32.906643, 40.373672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232805, -0.192947, 0.953191,
		-0.649157, -0.698980, -0.300037,
		0.724153, -0.688621, 0.037473,
		30.422153, 32.700058, 40.384914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.711397, 32.548737, 40.678661>,  <29.915247, 33.182091, 40.358685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.711397, 32.548737, 40.678661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.105070, 32.504055, 40.733658>,  <30.341274, 32.477245, 40.766655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.105070, 32.504055, 40.733658>,  <29.711397, 32.548737, 40.678661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.105070, 32.504055, 40.733658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159864, -0.225649, 0.961002,
		-0.076321, -0.967784, -0.239938,
		0.984184, -0.111702, 0.137492,
		30.400326, 32.470543, 40.774906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.775463, 31.838987, 40.921864>,  <29.711397, 32.548737, 40.678661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.775463, 31.838987, 40.921864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.103188, 32.041168, 41.030117>,  <30.299822, 32.162476, 41.095070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.103188, 32.041168, 41.030117>,  <29.775463, 31.838987, 40.921864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.103188, 32.041168, 41.030117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062145, -0.390952, 0.918311,
		0.569969, -0.769202, -0.288901,
		0.819313, 0.505455, 0.270632,
		30.348982, 32.192806, 41.111305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.032850, 31.268038, 41.387756>,  <29.775463, 31.838987, 40.921864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.032850, 31.268038, 41.387756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.208036, 31.618759, 41.467155>,  <30.313148, 31.829191, 41.514797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.208036, 31.618759, 41.467155>,  <30.032850, 31.268038, 41.387756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.208036, 31.618759, 41.467155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116437, -0.274269, 0.954578,
		0.891419, -0.394960, -0.222213,
		0.437966, 0.876803, 0.198501,
		30.339426, 31.881800, 41.526707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.478195, 31.124269, 41.958664>,  <30.032850, 31.268038, 41.387756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.478195, 31.124269, 41.958664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.482529, 31.523409, 41.984524>,  <30.485128, 31.762892, 42.000042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.482529, 31.523409, 41.984524>,  <30.478195, 31.124269, 41.958664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.482529, 31.523409, 41.984524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062043, -0.065204, 0.995941,
		0.998015, -0.006776, -0.062616,
		0.010832, 0.997849, 0.064654,
		30.485779, 31.822763, 42.003922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.946505, 31.286280, 42.377831>,  <30.478195, 31.124269, 41.958664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.946505, 31.286280, 42.377831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.718817, 31.613714, 42.408569>,  <30.582205, 31.810175, 42.427013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.718817, 31.613714, 42.408569>,  <30.946505, 31.286280, 42.377831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.718817, 31.613714, 42.408569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003472, -0.091069, 0.995839,
		0.822178, 0.567118, 0.048996,
		-0.569220, 0.818586, 0.076844,
		30.548050, 31.859291, 42.431622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.114149, 31.671680, 42.990784>,  <30.946505, 31.286280, 42.377831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.114149, 31.671680, 42.990784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.780479, 31.877333, 42.910961>,  <30.580276, 32.000725, 42.863068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.780479, 31.877333, 42.910961>,  <31.114149, 31.671680, 42.990784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.780479, 31.877333, 42.910961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166530, 0.110136, 0.979866,
		0.525755, 0.850613, -0.006255,
		-0.834176, 0.514128, -0.199557,
		30.530228, 32.031570, 42.851093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.138325, 32.343456, 43.334118>,  <31.114149, 31.671680, 42.990784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.138325, 32.343456, 43.334118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.757938, 32.237526, 43.270199>,  <30.529707, 32.173969, 43.231850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.757938, 32.237526, 43.270199>,  <31.138325, 32.343456, 43.334118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.757938, 32.237526, 43.270199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182420, 0.062998, 0.981200,
		-0.249777, 0.962237, -0.108218,
		-0.950965, -0.264822, -0.159795,
		30.472649, 32.158081, 43.222260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.814861, 32.792168, 43.668892>,  <31.138325, 32.343456, 43.334118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.814861, 32.792168, 43.668892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.562744, 32.483227, 43.637386>,  <30.411474, 32.297863, 43.618484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.562744, 32.483227, 43.637386>,  <30.814861, 32.792168, 43.668892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.562744, 32.483227, 43.637386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145441, 0.017815, 0.989206,
		-0.762613, 0.634945, -0.123560,
		-0.630293, -0.772352, -0.078760,
		30.373657, 32.251522, 43.613758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.176340, 33.053429, 44.137733>,  <30.814861, 32.792168, 43.668892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.176340, 33.053429, 44.137733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.182844, 32.653496, 44.134247>,  <30.186747, 32.413536, 44.132156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.182844, 32.653496, 44.134247>,  <30.176340, 33.053429, 44.137733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.182844, 32.653496, 44.134247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297432, -0.013156, 0.954652,
		-0.954604, -0.012932, -0.297596,
		0.016261, -0.999830, -0.008712,
		30.187723, 32.353546, 44.131634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.695396, 32.824375, 44.600548>,  <30.176340, 33.053429, 44.137733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.695396, 32.824375, 44.600548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913937, 32.492550, 44.554371>,  <30.045061, 32.293453, 44.526665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913937, 32.492550, 44.554371>,  <29.695396, 32.824375, 44.600548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.913937, 32.492550, 44.554371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112406, -0.209210, 0.971389,
		-0.829979, -0.517743, -0.207550,
		0.546351, -0.829562, -0.115442,
		30.077843, 32.243683, 44.519737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.397696, 32.418686, 45.165398>,  <29.695396, 32.824375, 44.600548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.397696, 32.418686, 45.165398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.729939, 32.220917, 45.062920>,  <29.929285, 32.102257, 45.001434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.729939, 32.220917, 45.062920>,  <29.397696, 32.418686, 45.165398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.729939, 32.220917, 45.062920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066245, -0.369074, 0.927036,
		-0.552903, -0.786976, -0.273803,
		0.830608, -0.494423, -0.256195,
		29.979122, 32.072590, 44.986061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.327448, 31.731544, 45.512508>,  <29.397696, 32.418686, 45.165398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.327448, 31.731544, 45.512508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.719297, 31.766035, 45.439957>,  <29.954407, 31.786730, 45.396427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.719297, 31.766035, 45.439957>,  <29.327448, 31.731544, 45.512508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.719297, 31.766035, 45.439957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200365, -0.358135, 0.911917,
		0.013672, -0.929680, -0.368115,
		0.979626, 0.086225, -0.181379,
		30.013186, 31.791903, 45.385544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.629950, 31.387480, 45.991024>,  <29.327448, 31.731544, 45.512508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.629950, 31.387480, 45.991024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.965851, 31.569027, 45.871811>,  <30.167391, 31.677956, 45.800285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.965851, 31.569027, 45.871811>,  <29.629950, 31.387480, 45.991024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.965851, 31.569027, 45.871811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408459, -0.166411, 0.897479,
		0.357742, -0.875392, -0.325130,
		0.839751, 0.453868, -0.298030,
		30.217775, 31.705187, 45.782402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.226711, 30.955334, 46.099953>,  <29.629950, 31.387480, 45.991024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.226711, 30.955334, 46.099953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.373156, 31.326418, 46.129108>,  <30.461021, 31.549068, 46.146603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.373156, 31.326418, 46.129108>,  <30.226711, 30.955334, 46.099953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.373156, 31.326418, 46.129108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512793, -0.266486, 0.816106,
		0.776535, -0.261409, -0.573288,
		0.366110, 0.927713, 0.072887,
		30.482988, 31.604733, 46.150974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.914219, 30.943909, 45.919445>,  <30.226711, 30.955334, 46.099953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.914219, 30.943909, 45.919445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.853594, 31.275681, 46.134510>,  <30.817219, 31.474743, 46.263550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.853594, 31.275681, 46.134510>,  <30.914219, 30.943909, 45.919445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.853594, 31.275681, 46.134510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649528, -0.326443, 0.686694,
		0.745079, 0.453302, -0.489260,
		-0.151564, 0.829429, 0.537658,
		30.808125, 31.524509, 46.295807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618420, 31.060040, 46.148029>,  <30.914219, 30.943909, 45.919445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618420, 31.060040, 46.148029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.394073, 31.295336, 46.381062>,  <31.259466, 31.436514, 46.520882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.394073, 31.295336, 46.381062>,  <31.618420, 31.060040, 46.148029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.394073, 31.295336, 46.381062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513204, -0.305153, 0.802187,
		0.649655, 0.748903, -0.130737,
		-0.560866, 0.588239, 0.582584,
		31.225813, 31.471807, 46.555836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.055824, 31.590981, 46.521664>,  <31.618420, 31.060040, 46.148029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.055824, 31.590981, 46.521664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727716, 31.526613, 46.741215>,  <31.530853, 31.487993, 46.872944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727716, 31.526613, 46.741215>,  <32.055824, 31.590981, 46.521664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.727716, 31.526613, 46.741215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568861, -0.129407, 0.812189,
		-0.059666, 0.978447, 0.197688,
		-0.820267, -0.160917, 0.548879,
		31.481636, 31.478338, 46.905880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.314018, 31.782921, 47.129055>,  <32.055824, 31.590981, 46.521664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.314018, 31.782921, 47.129055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.965212, 31.610981, 47.222706>,  <31.755928, 31.507818, 47.278896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.965212, 31.610981, 47.222706>,  <32.314018, 31.782921, 47.129055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.965212, 31.610981, 47.222706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401349, -0.354104, 0.844707,
		-0.280189, 0.830567, 0.481304,
		-0.872017, -0.429848, 0.234131,
		31.703608, 31.482027, 47.292946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072781, 31.927803, 47.776291>,  <32.314018, 31.782921, 47.129055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072781, 31.927803, 47.776291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898561, 31.570553, 47.731335>,  <31.794031, 31.356203, 47.704361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898561, 31.570553, 47.731335>,  <32.072781, 31.927803, 47.776291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898561, 31.570553, 47.731335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154070, -0.196972, 0.968227,
		-0.886884, 0.404391, 0.223394,
		-0.435545, -0.893124, -0.112387,
		31.767899, 31.302616, 47.697617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805141, 31.766520, 48.402020>,  <32.072781, 31.927803, 47.776291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805141, 31.766520, 48.402020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785891, 31.416775, 48.208866>,  <31.774340, 31.206928, 48.092976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785891, 31.416775, 48.208866>,  <31.805141, 31.766520, 48.402020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785891, 31.416775, 48.208866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100655, -0.485225, 0.868577,
		-0.993757, -0.006804, 0.111360,
		-0.048125, -0.874363, -0.482880,
		31.771454, 31.154467, 48.064003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.580917, 31.230528, 48.928997>,  <31.805141, 31.766520, 48.402020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.580917, 31.230528, 48.928997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708576, 31.024033, 48.611092>,  <31.785172, 30.900135, 48.420349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708576, 31.024033, 48.611092>,  <31.580917, 31.230528, 48.928997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.708576, 31.024033, 48.611092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273279, -0.752864, 0.598760,
		-0.907449, -0.408284, -0.099198,
		0.319147, -0.516236, -0.794762,
		31.804319, 30.869162, 48.372662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.209990, 30.673157, 49.092773>,  <31.580917, 31.230528, 48.928997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.209990, 30.673157, 49.092773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.515404, 30.589834, 48.848274>,  <31.698652, 30.539841, 48.701576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.515404, 30.589834, 48.848274>,  <31.209990, 30.673157, 49.092773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.515404, 30.589834, 48.848274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327646, -0.690700, 0.644656,
		-0.556474, -0.692490, -0.459124,
		0.763535, -0.208304, -0.611248,
		31.744465, 30.527342, 48.664898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205988, 29.994530, 48.781857>,  <31.209990, 30.673157, 49.092773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205988, 29.994530, 48.781857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.584721, 30.122604, 48.794415>,  <31.811960, 30.199450, 48.801949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.584721, 30.122604, 48.794415>,  <31.205988, 29.994530, 48.781857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.584721, 30.122604, 48.794415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263545, -0.827883, 0.495130,
		0.184526, -0.460531, -0.868252,
		0.946834, 0.320188, 0.031396,
		31.868771, 30.218660, 48.803833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202768, 29.424986, 48.355103>,  <31.205988, 29.994530, 48.781857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202768, 29.424986, 48.355103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079203, 29.207241, 48.043144>,  <31.005062, 29.076593, 47.855968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079203, 29.207241, 48.043144>,  <31.202768, 29.424986, 48.355103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079203, 29.207241, 48.043144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386978, -0.820999, 0.419772,
		-0.868803, -0.172129, 0.464276,
		-0.308916, -0.544364, -0.779897,
		30.986528, 29.043932, 47.809174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.060640, 28.901390, 48.734325>,  <31.202768, 29.424986, 48.355103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.060640, 28.901390, 48.734325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.156456, 28.810804, 48.356682>,  <31.213945, 28.756453, 48.130096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.156456, 28.810804, 48.356682>,  <31.060640, 28.901390, 48.734325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.156456, 28.810804, 48.356682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536456, -0.779622, 0.323118,
		-0.809219, -0.583871, -0.065265,
		0.239541, -0.226462, -0.944105,
		31.228317, 28.742867, 48.073452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.791800, 28.190359, 48.597359>,  <31.060640, 28.901390, 48.734325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.791800, 28.190359, 48.597359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.120520, 28.278017, 48.386982>,  <31.317753, 28.330612, 48.260754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.120520, 28.278017, 48.386982>,  <30.791800, 28.190359, 48.597359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.120520, 28.278017, 48.386982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480191, -0.763242, 0.432294,
		-0.306688, -0.607814, -0.732465,
		0.821802, 0.219144, -0.525944,
		31.367060, 28.343760, 48.229198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998188, 27.666161, 48.032143>,  <30.791800, 28.190359, 48.597359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998188, 27.666161, 48.032143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.253929, 27.860003, 48.270935>,  <31.407373, 27.976309, 48.414211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.253929, 27.860003, 48.270935>,  <30.998188, 27.666161, 48.032143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.253929, 27.860003, 48.270935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280877, -0.869934, 0.405368,
		0.715777, -0.091495, -0.692309,
		0.639352, 0.484606, 0.596980,
		31.445734, 28.005384, 48.450027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596113, 27.323156, 47.861942>,  <30.998188, 27.666161, 48.032143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596113, 27.323156, 47.861942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.679140, 27.507647, 48.207008>,  <31.728956, 27.618341, 48.414047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.679140, 27.507647, 48.207008>,  <31.596113, 27.323156, 47.861942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.679140, 27.507647, 48.207008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596389, -0.758686, 0.262136,
		0.775394, 0.460071, -0.432549,
		0.207568, 0.461226, 0.862662,
		31.741411, 27.646015, 48.465809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352512, 27.633663, 47.875675>,  <31.596113, 27.323156, 47.861942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352512, 27.633663, 47.875675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.233856, 27.542263, 48.246574>,  <32.162663, 27.487423, 48.469112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.233856, 27.542263, 48.246574>,  <32.352512, 27.633663, 47.875675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.233856, 27.542263, 48.246574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868090, -0.469197, 0.162095,
		0.398023, 0.853019, 0.337545,
		-0.296645, -0.228502, 0.927248,
		32.144863, 27.473713, 48.524750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119740, 28.245071, 47.491322>,  <32.352512, 27.633663, 47.875675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119740, 28.245071, 47.491322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.923851, 28.588110, 47.554192>,  <31.806318, 28.793934, 47.591915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.923851, 28.588110, 47.554192>,  <32.119740, 28.245071, 47.491322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.923851, 28.588110, 47.554192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029943, 0.163623, -0.986068,
		-0.871367, -0.487601, -0.054450,
		-0.489717, 0.857597, 0.157176,
		31.776936, 28.845388, 47.601345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.627054, 28.266081, 47.027031>,  <32.119740, 28.245071, 47.491322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.627054, 28.266081, 47.027031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.693172, 28.651178, 47.112633>,  <31.732843, 28.882236, 47.163994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.693172, 28.651178, 47.112633>,  <31.627054, 28.266081, 47.027031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.693172, 28.651178, 47.112633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141588, 0.237905, -0.960913,
		-0.976028, 0.128535, 0.175638,
		0.165296, 0.962746, 0.214003,
		31.742762, 28.940002, 47.176834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.026825, 28.799564, 46.931370>,  <31.627054, 28.266081, 47.027031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.026825, 28.799564, 46.931370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.410484, 28.901438, 46.882103>,  <31.640680, 28.962561, 46.852543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.410484, 28.901438, 46.882103>,  <31.026825, 28.799564, 46.931370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.410484, 28.901438, 46.882103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189846, 0.256683, -0.947667,
		-0.209740, 0.932336, 0.294548,
		0.959149, 0.254682, -0.123164,
		31.698229, 28.977842, 46.845154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.960051, 29.328215, 46.476368>,  <31.026825, 28.799564, 46.931370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.960051, 29.328215, 46.476368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.348070, 29.231480, 46.467220>,  <31.580881, 29.173439, 46.461731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.348070, 29.231480, 46.467220>,  <30.960051, 29.328215, 46.476368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.348070, 29.231480, 46.467220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012924, 0.042650, -0.999007,
		0.242572, 0.969379, 0.038247,
		0.970047, -0.241837, -0.022874,
		31.639084, 29.158928, 46.460358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.411905, 29.804276, 46.171314>,  <30.960051, 29.328215, 46.476368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.411905, 29.804276, 46.171314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.643948, 29.484146, 46.110703>,  <31.783173, 29.292068, 46.074337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.643948, 29.484146, 46.110703>,  <31.411905, 29.804276, 46.171314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.643948, 29.484146, 46.110703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114089, 0.264027, -0.957744,
		0.806512, 0.538305, 0.244471,
		0.580105, -0.800324, -0.151526,
		31.817980, 29.244049, 46.065243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990408, 30.056549, 45.758778>,  <31.411905, 29.804276, 46.171314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990408, 30.056549, 45.758778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.005707, 29.659098, 45.716370>,  <32.014885, 29.420628, 45.690926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.005707, 29.659098, 45.716370>,  <31.990408, 30.056549, 45.758778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.005707, 29.659098, 45.716370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179677, 0.111212, -0.977419,
		0.982982, 0.018335, 0.182786,
		0.038249, -0.993628, -0.106025,
		32.017181, 29.361010, 45.684563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552883, 29.887430, 45.335323>,  <31.990408, 30.056549, 45.758778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.552883, 29.887430, 45.335323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.330826, 29.558575, 45.284885>,  <32.197590, 29.361261, 45.254623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.330826, 29.558575, 45.284885>,  <32.552883, 29.887430, 45.335323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330826, 29.558575, 45.284885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257545, -0.025764, -0.965923,
		0.790874, -0.568704, 0.226040,
		-0.555148, -0.822139, -0.126090,
		32.164280, 29.311934, 45.247059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988106, 29.438942, 45.012867>,  <32.552883, 29.887430, 45.335323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988106, 29.438942, 45.012867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.611343, 29.324490, 44.942505>,  <32.385284, 29.255817, 44.900288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.611343, 29.324490, 44.942505>,  <32.988106, 29.438942, 45.012867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.611343, 29.324490, 44.942505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211799, -0.099523, -0.972233,
		0.260682, -0.953007, 0.154344,
		-0.941906, -0.286133, -0.175903,
		32.328773, 29.238649, 44.889732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142052, 28.797134, 44.558990>,  <32.988106, 29.438942, 45.012867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142052, 28.797134, 44.558990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760098, 28.899586, 44.498875>,  <32.530926, 28.961056, 44.462807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760098, 28.899586, 44.498875>,  <33.142052, 28.797134, 44.558990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760098, 28.899586, 44.498875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117957, -0.137317, -0.983479,
		-0.272534, -0.956840, 0.100910,
		-0.954888, 0.256129, -0.150290,
		32.473633, 28.976423, 44.453789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886032, 28.315937, 44.104359>,  <33.142052, 28.797134, 44.558990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886032, 28.315937, 44.104359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639309, 28.630426, 44.089420>,  <32.491272, 28.819120, 44.080456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639309, 28.630426, 44.089420>,  <32.886032, 28.315937, 44.104359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639309, 28.630426, 44.089420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210422, 0.118989, -0.970342,
		-0.758462, -0.606378, -0.238833,
		-0.616813, 0.786223, -0.037346,
		32.454266, 28.866293, 44.078217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386940, 28.181665, 43.580818>,  <32.886032, 28.315937, 44.104359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386940, 28.181665, 43.580818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.408176, 28.579662, 43.614700>,  <32.420918, 28.818460, 43.635029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.408176, 28.579662, 43.614700>,  <32.386940, 28.181665, 43.580818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.408176, 28.579662, 43.614700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191953, 0.073076, -0.978680,
		-0.979967, 0.068216, -0.187112,
		0.053088, 0.994991, 0.084706,
		32.424103, 28.878160, 43.640114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.122002, 28.387703, 42.946407>,  <32.386940, 28.181665, 43.580818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.122002, 28.387703, 42.946407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305649, 28.710308, 43.095402>,  <32.415836, 28.903872, 43.184799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305649, 28.710308, 43.095402>,  <32.122002, 28.387703, 42.946407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305649, 28.710308, 43.095402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273880, 0.270369, -0.922979,
		-0.845105, 0.525771, -0.096758,
		0.459115, 0.806514, 0.372489,
		32.443382, 28.952263, 43.207150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.002857, 29.022066, 42.486538>,  <32.122002, 28.387703, 42.946407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.002857, 29.022066, 42.486538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.335030, 29.116571, 42.688354>,  <32.534332, 29.173275, 42.809444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.335030, 29.116571, 42.688354>,  <32.002857, 29.022066, 42.486538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335030, 29.116571, 42.688354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414634, 0.342772, -0.842963,
		-0.372104, 0.909223, 0.186686,
		0.830432, 0.236263, 0.504542,
		32.584160, 29.187450, 42.839718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.255852, 29.586662, 42.132805>,  <32.002857, 29.022066, 42.486538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.255852, 29.586662, 42.132805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585266, 29.478191, 42.332108>,  <32.782913, 29.413109, 42.451687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585266, 29.478191, 42.332108>,  <32.255852, 29.586662, 42.132805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585266, 29.478191, 42.332108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567113, 0.414094, -0.711975,
		-0.013253, 0.868901, 0.494808,
		0.823533, -0.271177, 0.498253,
		32.832325, 29.396839, 42.481583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774700, 30.127399, 41.981853>,  <32.255852, 29.586662, 42.132805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774700, 30.127399, 41.981853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.010426, 29.860569, 42.164158>,  <33.151859, 29.700470, 42.273540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.010426, 29.860569, 42.164158>,  <32.774700, 30.127399, 41.981853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.010426, 29.860569, 42.164158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745348, 0.231248, -0.625284,
		0.311719, 0.708189, 0.633482,
		0.589311, -0.667078, 0.455763,
		33.187218, 29.660446, 42.300888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488052, 30.387011, 42.255875>,  <32.774700, 30.127399, 41.981853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488052, 30.387011, 42.255875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541019, 30.002237, 42.160252>,  <33.572800, 29.771374, 42.102879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541019, 30.002237, 42.160252>,  <33.488052, 30.387011, 42.255875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541019, 30.002237, 42.160252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609739, 0.269199, -0.745486,
		0.781463, -0.047049, 0.622175,
		0.132415, -0.961935, -0.239057,
		33.580746, 29.713657, 42.088535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177738, 30.242113, 42.164066>,  <33.488052, 30.387011, 42.255875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177738, 30.242113, 42.164066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005287, 29.960205, 41.938702>,  <33.901817, 29.791059, 41.803482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005287, 29.960205, 41.938702>,  <34.177738, 30.242113, 42.164066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005287, 29.960205, 41.938702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578566, 0.263226, -0.771993,
		0.692382, -0.658795, 0.294272,
		-0.431125, -0.704770, -0.563409,
		33.875950, 29.748774, 41.769680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637394, 30.163563, 41.691380>,  <34.177738, 30.242113, 42.164066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637394, 30.163563, 41.691380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339333, 29.948828, 41.533115>,  <34.160496, 29.819986, 41.438156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339333, 29.948828, 41.533115>,  <34.637394, 30.163563, 41.691380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339333, 29.948828, 41.533115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349333, 0.191176, -0.917289,
		0.568078, -0.821739, 0.045080,
		-0.745154, -0.536839, -0.395663,
		34.115788, 29.787777, 41.414417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020920, 29.765581, 41.183811>,  <34.637394, 30.163563, 41.691380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020920, 29.765581, 41.183811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.629143, 29.793747, 41.108204>,  <34.394077, 29.810646, 41.062840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.629143, 29.793747, 41.108204>,  <35.020920, 29.765581, 41.183811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629143, 29.793747, 41.108204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197573, 0.146200, -0.969325,
		-0.040622, -0.986746, -0.157107,
		-0.979446, 0.070416, -0.189016,
		34.335308, 29.814871, 41.051498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976280, 29.423449, 40.539585>,  <35.020920, 29.765581, 41.183811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976280, 29.423449, 40.539585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635281, 29.631353, 40.561836>,  <34.430679, 29.756096, 40.575188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635281, 29.631353, 40.561836>,  <34.976280, 29.423449, 40.539585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635281, 29.631353, 40.561836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030941, 0.056059, -0.997948,
		-0.521813, -0.852470, -0.031708,
		-0.852499, 0.519761, 0.055629,
		34.379532, 29.787281, 40.578526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637596, 29.202454, 39.890621>,  <34.976280, 29.423449, 40.539585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637596, 29.202454, 39.890621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.501053, 29.557695, 40.013744>,  <34.419128, 29.770842, 40.087616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.501053, 29.557695, 40.013744>,  <34.637596, 29.202454, 39.890621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501053, 29.557695, 40.013744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125072, 0.281644, -0.951332,
		-0.931575, -0.363241, 0.014936,
		-0.341357, 0.888106, 0.307804,
		34.398647, 29.824127, 40.106087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056107, 29.307474, 39.474663>,  <34.637596, 29.202454, 39.890621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056107, 29.307474, 39.474663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.155018, 29.676739, 39.592392>,  <34.214363, 29.898298, 39.663029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.155018, 29.676739, 39.592392>,  <34.056107, 29.307474, 39.474663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155018, 29.676739, 39.592392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220602, 0.349416, -0.910628,
		-0.943498, 0.160250, 0.290054,
		0.247278, 0.923162, 0.294322,
		34.229202, 29.953688, 39.680687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545055, 29.738115, 39.277615>,  <34.056107, 29.307474, 39.474663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545055, 29.738115, 39.277615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836979, 30.008171, 39.320637>,  <34.012135, 30.170204, 39.346451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836979, 30.008171, 39.320637>,  <33.545055, 29.738115, 39.277615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836979, 30.008171, 39.320637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200605, 0.361884, -0.910383,
		-0.653557, 0.642829, 0.399542,
		0.729809, 0.675138, 0.107557,
		34.055920, 30.210712, 39.352905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349968, 30.382208, 39.095989>,  <33.545055, 29.738115, 39.277615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349968, 30.382208, 39.095989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744217, 30.434601, 39.053310>,  <33.980766, 30.466036, 39.027702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744217, 30.434601, 39.053310>,  <33.349968, 30.382208, 39.095989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.744217, 30.434601, 39.053310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152550, 0.418691, -0.895224,
		-0.072586, 0.898633, 0.432654,
		0.985627, 0.130982, -0.106696,
		34.039906, 30.473896, 39.021301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371620, 31.055265, 38.842873>,  <33.349968, 30.382208, 39.095989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371620, 31.055265, 38.842873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736153, 30.918259, 38.751522>,  <33.954872, 30.836054, 38.696712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736153, 30.918259, 38.751522>,  <33.371620, 31.055265, 38.842873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736153, 30.918259, 38.751522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078362, 0.400286, -0.913034,
		0.404146, 0.849973, 0.337953,
		0.911331, -0.342517, -0.228379,
		34.009552, 30.815504, 38.683010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.773434, 31.600431, 38.634647>,  <33.371620, 31.055265, 38.842873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.773434, 31.600431, 38.634647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935303, 31.277071, 38.463661>,  <34.032425, 31.083054, 38.361069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935303, 31.277071, 38.463661>,  <33.773434, 31.600431, 38.634647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935303, 31.277071, 38.463661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016739, 0.460825, -0.887333,
		0.914310, 0.366231, 0.172950,
		0.404669, -0.808403, -0.427467,
		34.056702, 31.034550, 38.335423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297771, 31.850634, 38.246002>,  <33.773434, 31.600431, 38.634647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297771, 31.850634, 38.246002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.223457, 31.500805, 38.066845>,  <34.178871, 31.290907, 37.959351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.223457, 31.500805, 38.066845>,  <34.297771, 31.850634, 38.246002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.223457, 31.500805, 38.066845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216131, 0.408290, -0.886897,
		0.958526, -0.261574, 0.113169,
		-0.185783, -0.874573, -0.447891,
		34.167721, 31.238434, 37.932476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707470, 31.925264, 37.674351>,  <34.297771, 31.850634, 38.246002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707470, 31.925264, 37.674351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.486057, 31.608044, 37.572628>,  <34.353210, 31.417711, 37.511597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.486057, 31.608044, 37.572628>,  <34.707470, 31.925264, 37.674351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486057, 31.608044, 37.572628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053754, 0.270690, -0.961165,
		0.831093, -0.545703, -0.107205,
		-0.553530, -0.793054, -0.254302,
		34.320000, 31.370127, 37.496338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078690, 31.592216, 37.127911>,  <34.707470, 31.925264, 37.674351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078690, 31.592216, 37.127911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688709, 31.503887, 37.117302>,  <34.454720, 31.450890, 37.110935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688709, 31.503887, 37.117302>,  <35.078690, 31.592216, 37.127911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688709, 31.503887, 37.117302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001435, 0.125497, -0.992093,
		0.222409, -0.967205, -0.122671,
		-0.974953, -0.220826, -0.026524,
		34.396225, 31.437639, 37.109344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995811, 31.094761, 36.548145>,  <35.078690, 31.592216, 37.127911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995811, 31.094761, 36.548145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.642735, 31.273474, 36.606434>,  <34.430889, 31.380701, 36.641407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.642735, 31.273474, 36.606434>,  <34.995811, 31.094761, 36.548145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642735, 31.273474, 36.606434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190419, -0.056558, -0.980072,
		-0.429638, -0.892853, 0.134999,
		-0.882696, 0.446782, 0.145717,
		34.377926, 31.407509, 36.650150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490177, 30.624632, 36.300636>,  <34.995811, 31.094761, 36.548145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490177, 30.624632, 36.300636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305260, 30.978525, 36.324387>,  <34.194309, 31.190861, 36.338634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305260, 30.978525, 36.324387>,  <34.490177, 30.624632, 36.300636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305260, 30.978525, 36.324387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344839, -0.117694, -0.931254,
		-0.816926, -0.450990, 0.359501,
		-0.462297, 0.884735, 0.059371,
		34.166569, 31.243946, 36.342197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975811, 30.463854, 35.877766>,  <34.490177, 30.624632, 36.300636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975811, 30.463854, 35.877766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992317, 30.862482, 35.906452>,  <34.002220, 31.101660, 35.923664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992317, 30.862482, 35.906452>,  <33.975811, 30.463854, 35.877766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992317, 30.862482, 35.906452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236844, 0.079490, -0.968290,
		-0.970671, 0.022967, 0.239312,
		0.041262, 0.996571, 0.071719,
		34.004696, 31.161453, 35.927967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413715, 30.767061, 35.539120>,  <33.975811, 30.463854, 35.877766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413715, 30.767061, 35.539120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694294, 31.052114, 35.543587>,  <33.862640, 31.223146, 35.546265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694294, 31.052114, 35.543587>,  <33.413715, 30.767061, 35.539120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694294, 31.052114, 35.543587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081866, 0.096124, -0.991997,
		-0.708005, 0.694919, 0.125766,
		0.701446, 0.712635, 0.011166,
		33.904728, 31.265905, 35.546936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307999, 31.153368, 35.018078>,  <33.413715, 30.767061, 35.539120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307999, 31.153368, 35.018078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692066, 31.256163, 35.061974>,  <33.922504, 31.317839, 35.088310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692066, 31.256163, 35.061974>,  <33.307999, 31.153368, 35.018078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692066, 31.256163, 35.061974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076391, 0.136363, -0.987709,
		-0.268791, 0.956746, 0.111300,
		0.960164, 0.256985, 0.109740,
		33.980114, 31.333258, 35.094894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428879, 31.491371, 34.368355>,  <33.307999, 31.153368, 35.018078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428879, 31.491371, 34.368355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798450, 31.479425, 34.520908>,  <34.020195, 31.472258, 34.612442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798450, 31.479425, 34.520908>,  <33.428879, 31.491371, 34.368355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.798450, 31.479425, 34.520908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382071, 0.122227, -0.916015,
		-0.019260, 0.992053, 0.124339,
		0.923932, -0.029864, 0.381389,
		34.075630, 31.470467, 34.635326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846603, 32.023045, 34.158260>,  <33.428879, 31.491371, 34.368355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846603, 32.023045, 34.158260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110828, 31.731827, 34.231590>,  <34.269363, 31.557096, 34.275589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110828, 31.731827, 34.231590>,  <33.846603, 32.023045, 34.158260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110828, 31.731827, 34.231590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355389, 0.088135, -0.930554,
		0.661327, 0.679842, 0.316958,
		0.660564, -0.728044, 0.183322,
		34.308998, 31.513414, 34.286587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429272, 32.320721, 34.126003>,  <33.846603, 32.023045, 34.158260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429272, 32.320721, 34.126003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510975, 31.938196, 34.042332>,  <34.559998, 31.708683, 33.992130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510975, 31.938196, 34.042332>,  <34.429272, 32.320721, 34.126003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510975, 31.938196, 34.042332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430620, 0.279673, -0.858108,
		0.879116, 0.085202, 0.468931,
		0.204260, -0.956307, -0.209176,
		34.572254, 31.651304, 33.979580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008888, 32.314644, 33.753407>,  <34.429272, 32.320721, 34.126003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008888, 32.314644, 33.753407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903107, 31.935144, 33.684196>,  <34.839638, 31.707445, 33.642670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903107, 31.935144, 33.684196>,  <35.008888, 32.314644, 33.753407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903107, 31.935144, 33.684196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392906, 0.057850, -0.917757,
		0.880731, -0.310687, 0.357471,
		-0.264456, -0.948750, -0.173022,
		34.823769, 31.650520, 33.632290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637917, 31.999809, 33.495182>,  <35.008888, 32.314644, 33.753407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637917, 31.999809, 33.495182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320698, 31.786942, 33.376606>,  <35.130367, 31.659222, 33.305462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320698, 31.786942, 33.376606>,  <35.637917, 31.999809, 33.495182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320698, 31.786942, 33.376606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429082, -0.142577, -0.891942,
		0.432397, -0.834547, 0.341413,
		-0.793046, -0.532168, -0.296439,
		35.082783, 31.627291, 33.287674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892326, 31.319036, 33.280384>,  <35.637917, 31.999809, 33.495182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892326, 31.319036, 33.280384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559616, 31.443163, 33.096272>,  <35.359989, 31.517639, 32.985806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559616, 31.443163, 33.096272>,  <35.892326, 31.319036, 33.280384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559616, 31.443163, 33.096272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480454, -0.012892, -0.876925,
		-0.278058, -0.950546, -0.138369,
		-0.831774, 0.310316, -0.460278,
		35.310085, 31.536257, 32.958187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355972, 30.712999, 33.352943>,  <35.892326, 31.319036, 33.280384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355972, 30.712999, 33.352943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295742, 30.497778, 33.684685>,  <36.259605, 30.368645, 33.883728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295742, 30.497778, 33.684685>,  <36.355972, 30.712999, 33.352943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295742, 30.497778, 33.684685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987286, -0.125060, 0.098112,
		0.050929, 0.833583, 0.550042,
		-0.150573, -0.538052, 0.829354,
		36.250568, 30.336363, 33.933491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029755, 30.262514, 32.874207>,  <36.355972, 30.712999, 33.352943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029755, 30.262514, 32.874207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.422352, 30.336088, 32.895542>,  <36.657909, 30.380232, 32.908344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.422352, 30.336088, 32.895542>,  <36.029755, 30.262514, 32.874207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422352, 30.336088, 32.895542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007951, -0.317392, 0.948261,
		0.191346, -0.930285, -0.312979,
		0.981490, 0.183935, 0.053335,
		36.716801, 30.391268, 32.911541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137970, 29.962261, 33.495167>,  <36.029755, 30.262514, 32.874207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137970, 29.962261, 33.495167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486725, 30.134937, 33.402691>,  <36.695980, 30.238543, 33.347206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486725, 30.134937, 33.402691>,  <36.137970, 29.962261, 33.495167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486725, 30.134937, 33.402691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361991, -0.250211, 0.897974,
		0.329799, -0.866625, -0.374424,
		0.871892, 0.431689, -0.231191,
		36.748291, 30.264444, 33.333332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687023, 29.440645, 33.607597>,  <36.137970, 29.962261, 33.495167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687023, 29.440645, 33.607597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811954, 29.817968, 33.652523>,  <36.886913, 30.044363, 33.679478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811954, 29.817968, 33.652523>,  <36.687023, 29.440645, 33.607597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811954, 29.817968, 33.652523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356883, -0.226084, 0.906378,
		0.880388, -0.243007, -0.407264,
		0.312333, 0.943310, 0.112317,
		36.905655, 30.100962, 33.686218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397617, 29.290766, 33.879704>,  <36.687023, 29.440645, 33.607597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397617, 29.290766, 33.879704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.292469, 29.664989, 33.974045>,  <37.229378, 29.889523, 34.030651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.292469, 29.664989, 33.974045>,  <37.397617, 29.290766, 33.879704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292469, 29.664989, 33.974045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317160, -0.147080, 0.936898,
		0.911212, 0.321091, -0.258058,
		-0.262874, 0.935558, 0.235858,
		37.213608, 29.945658, 34.044804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830727, 29.505081, 34.348400>,  <37.397617, 29.290766, 33.879704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830727, 29.505081, 34.348400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.544079, 29.772312, 34.428535>,  <37.372089, 29.932650, 34.476616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.544079, 29.772312, 34.428535>,  <37.830727, 29.505081, 34.348400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544079, 29.772312, 34.428535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284378, 0.017595, 0.958551,
		0.636859, 0.743885, -0.202595,
		-0.716617, 0.668076, 0.200339,
		37.329094, 29.972734, 34.488636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090328, 30.086956, 34.730793>,  <37.830727, 29.505081, 34.348400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090328, 30.086956, 34.730793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696621, 30.108019, 34.798252>,  <37.460396, 30.120657, 34.838726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696621, 30.108019, 34.798252>,  <38.090328, 30.086956, 34.730793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696621, 30.108019, 34.798252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170423, 0.031316, 0.984873,
		0.046580, 0.998121, -0.039798,
		-0.984269, 0.052657, 0.168644,
		37.401340, 30.123816, 34.848846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070564, 30.544746, 35.339924>,  <38.090328, 30.086956, 34.730793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070564, 30.544746, 35.339924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718117, 30.358717, 35.305683>,  <37.506649, 30.247099, 35.285137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718117, 30.358717, 35.305683>,  <38.070564, 30.544746, 35.339924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718117, 30.358717, 35.305683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042913, -0.101636, 0.993896,
		-0.470937, 0.879417, 0.069596,
		-0.881123, -0.465076, -0.085602,
		37.453781, 30.219194, 35.280003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718132, 30.867266, 35.847275>,  <38.070564, 30.544746, 35.339924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718132, 30.867266, 35.847275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.516804, 30.529297, 35.774860>,  <37.396008, 30.326515, 35.731411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.516804, 30.529297, 35.774860>,  <37.718132, 30.867266, 35.847275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516804, 30.529297, 35.774860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142334, -0.125583, 0.981820,
		-0.852298, 0.519935, -0.057054,
		-0.503318, -0.844924, -0.181038,
		37.365807, 30.275820, 35.720551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077515, 30.861376, 36.220222>,  <37.718132, 30.867266, 35.847275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077515, 30.861376, 36.220222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.173901, 30.478310, 36.157211>,  <37.231731, 30.248470, 36.119404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.173901, 30.478310, 36.157211>,  <37.077515, 30.861376, 36.220222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173901, 30.478310, 36.157211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188456, -0.205392, 0.960364,
		-0.952060, -0.201730, -0.229970,
		0.240968, -0.957663, -0.157528,
		37.246193, 30.191011, 36.109951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548355, 30.406199, 36.446716>,  <37.077515, 30.861376, 36.220222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548355, 30.406199, 36.446716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.868656, 30.166786, 36.437241>,  <37.060837, 30.023140, 36.431553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.868656, 30.166786, 36.437241>,  <36.548355, 30.406199, 36.446716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868656, 30.166786, 36.437241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224946, -0.337134, 0.914188,
		-0.555156, -0.726707, -0.404597,
		0.800751, -0.598530, -0.023693,
		37.108883, 29.987228, 36.430134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229958, 29.781807, 36.683613>,  <36.548355, 30.406199, 36.446716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229958, 29.781807, 36.683613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624111, 29.729069, 36.726757>,  <36.860603, 29.697426, 36.752644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624111, 29.729069, 36.726757>,  <36.229958, 29.781807, 36.683613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624111, 29.729069, 36.726757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164724, -0.576225, 0.800519,
		-0.043393, -0.806587, -0.589521,
		0.985385, -0.131845, 0.107860,
		36.919727, 29.689516, 36.759113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221718, 29.182280, 36.984005>,  <36.229958, 29.781807, 36.683613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221718, 29.182280, 36.984005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.589748, 29.320751, 37.057358>,  <36.810566, 29.403833, 37.101368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.589748, 29.320751, 37.057358>,  <36.221718, 29.182280, 36.984005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589748, 29.320751, 37.057358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013260, -0.440320, 0.897743,
		0.391525, -0.828420, -0.400536,
		0.920072, 0.346177, 0.183381,
		36.865768, 29.424604, 37.112373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539532, 28.560566, 37.124451>,  <36.221718, 29.182280, 36.984005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539532, 28.560566, 37.124451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758945, 28.840509, 37.307449>,  <36.890594, 29.008474, 37.417248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758945, 28.840509, 37.307449>,  <36.539532, 28.560566, 37.124451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758945, 28.840509, 37.307449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050415, -0.518486, 0.853598,
		0.834604, -0.491297, -0.249126,
		0.548539, 0.699857, 0.457500,
		36.923508, 29.050467, 37.444698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138062, 28.230331, 37.422310>,  <36.539532, 28.560566, 37.124451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138062, 28.230331, 37.422310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058384, 28.573133, 37.612411>,  <37.010578, 28.778814, 37.726471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058384, 28.573133, 37.612411>,  <37.138062, 28.230331, 37.422310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058384, 28.573133, 37.612411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086222, -0.467764, 0.879638,
		0.976161, 0.216192, 0.019281,
		-0.199190, 0.857005, 0.475253,
		36.998627, 28.830235, 37.754986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512207, 28.216532, 38.001678>,  <37.138062, 28.230331, 37.422310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512207, 28.216532, 38.001678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257565, 28.508249, 38.101963>,  <37.104778, 28.683281, 38.162132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257565, 28.508249, 38.101963>,  <37.512207, 28.216532, 38.001678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257565, 28.508249, 38.101963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012020, -0.315675, 0.948791,
		0.771092, 0.607024, 0.192196,
		-0.636611, 0.729295, 0.250711,
		37.066582, 28.727037, 38.177177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749447, 28.318243, 38.661568>,  <37.512207, 28.216532, 38.001678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749447, 28.318243, 38.661568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.403854, 28.519619, 38.665157>,  <37.196499, 28.640446, 38.667313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.403854, 28.519619, 38.665157>,  <37.749447, 28.318243, 38.661568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403854, 28.519619, 38.665157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178233, -0.322449, 0.929656,
		0.470921, 0.801607, 0.368320,
		-0.863983, 0.503441, 0.008975,
		37.144661, 28.670650, 38.667850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683975, 28.707676, 39.254200>,  <37.749447, 28.318243, 38.661568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683975, 28.707676, 39.254200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303936, 28.674685, 39.133854>,  <37.075912, 28.654890, 39.061646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303936, 28.674685, 39.133854>,  <37.683975, 28.707676, 39.254200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303936, 28.674685, 39.133854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293212, -0.093245, 0.951490,
		-0.106531, 0.992221, 0.064408,
		-0.950094, -0.082478, -0.300864,
		37.018909, 28.649940, 39.043594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355778, 29.153439, 39.653137>,  <37.683975, 28.707676, 39.254200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355778, 29.153439, 39.653137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.085766, 28.895817, 39.509178>,  <36.923759, 28.741243, 39.422802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.085766, 28.895817, 39.509178>,  <37.355778, 29.153439, 39.653137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085766, 28.895817, 39.509178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490220, 0.026981, 0.871181,
		-0.551376, 0.764505, -0.333941,
		-0.675032, -0.644053, -0.359899,
		36.883255, 28.702600, 39.401207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679680, 29.346746, 39.871040>,  <37.355778, 29.153439, 39.653137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679680, 29.346746, 39.871040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652027, 28.953110, 39.805580>,  <36.635437, 28.716928, 39.766304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652027, 28.953110, 39.805580>,  <36.679680, 29.346746, 39.871040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652027, 28.953110, 39.805580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345045, -0.130336, 0.929493,
		-0.936037, 0.120726, -0.330546,
		-0.069132, -0.984093, -0.163655,
		36.631287, 28.657883, 39.756485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026974, 29.150509, 40.103092>,  <36.679680, 29.346746, 39.871040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026974, 29.150509, 40.103092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.201118, 28.790903, 40.084213>,  <36.305607, 28.575140, 40.072884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.201118, 28.790903, 40.084213>,  <36.026974, 29.150509, 40.103092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201118, 28.790903, 40.084213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362818, -0.223202, 0.904734,
		-0.823906, -0.376763, -0.423354,
		0.435364, -0.899016, -0.047201,
		36.331726, 28.521198, 40.070053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469936, 28.777044, 40.298161>,  <36.026974, 29.150509, 40.103092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469936, 28.777044, 40.298161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.800182, 28.559055, 40.356632>,  <35.998329, 28.428263, 40.391716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.800182, 28.559055, 40.356632>,  <35.469936, 28.777044, 40.298161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800182, 28.559055, 40.356632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443295, -0.466216, 0.765593,
		-0.349073, -0.696885, -0.626497,
		0.825613, -0.544971, 0.146182,
		36.047867, 28.395563, 40.400486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324677, 28.048378, 40.407082>,  <35.469936, 28.777044, 40.298161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324677, 28.048378, 40.407082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.686310, 28.092651, 40.572189>,  <35.903290, 28.119215, 40.671253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.686310, 28.092651, 40.572189>,  <35.324677, 28.048378, 40.407082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686310, 28.092651, 40.572189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370112, -0.280080, 0.885761,
		0.213646, -0.953575, -0.212252,
		0.904087, 0.110682, 0.412767,
		35.957535, 28.125856, 40.696018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429096, 27.505001, 40.879250>,  <35.324677, 28.048378, 40.407082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429096, 27.505001, 40.879250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.696747, 27.767385, 41.018959>,  <35.857338, 27.924816, 41.102783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.696747, 27.767385, 41.018959>,  <35.429096, 27.505001, 40.879250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696747, 27.767385, 41.018959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232334, -0.261779, 0.936746,
		0.705899, -0.707947, -0.022761,
		0.669124, 0.655960, 0.349270,
		35.897484, 27.964174, 41.123741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815914, 27.089964, 41.377411>,  <35.429096, 27.505001, 40.879250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815914, 27.089964, 41.377411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825619, 27.483690, 41.447304>,  <35.831440, 27.719927, 41.489239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825619, 27.483690, 41.447304>,  <35.815914, 27.089964, 41.377411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825619, 27.483690, 41.447304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376741, -0.152896, 0.913613,
		0.926001, -0.087994, 0.367123,
		0.024261, 0.984317, 0.174732,
		35.832897, 27.778986, 41.499725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126015, 27.282587, 42.055035>,  <35.815914, 27.089964, 41.377411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126015, 27.282587, 42.055035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.914505, 27.615044, 41.986221>,  <35.787598, 27.814518, 41.944931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.914505, 27.615044, 41.986221>,  <36.126015, 27.282587, 42.055035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914505, 27.615044, 41.986221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378635, -0.049585, 0.924217,
		0.759626, 0.553843, 0.340920,
		-0.528775, 0.831144, -0.172038,
		35.755871, 27.864388, 41.934608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309410, 27.771311, 42.571636>,  <36.126015, 27.282587, 42.055035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309410, 27.771311, 42.571636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950611, 27.899984, 42.450363>,  <35.735332, 27.977188, 42.377598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950611, 27.899984, 42.450363>,  <36.309410, 27.771311, 42.571636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950611, 27.899984, 42.450363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284598, 0.104544, 0.952929,
		0.338237, 0.941058, -0.002224,
		-0.896995, 0.321683, -0.303184,
		35.681511, 27.996489, 42.359409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208424, 28.429081, 42.995403>,  <36.309410, 27.771311, 42.571636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208424, 28.429081, 42.995403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848854, 28.372152, 42.829666>,  <35.633114, 28.337996, 42.730225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848854, 28.372152, 42.829666>,  <36.208424, 28.429081, 42.995403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848854, 28.372152, 42.829666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436175, 0.202086, 0.876876,
		-0.041065, 0.968971, -0.243738,
		-0.898924, -0.142322, -0.414343,
		35.579178, 28.329456, 42.705364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902336, 29.104242, 43.090515>,  <36.208424, 28.429081, 42.995403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902336, 29.104242, 43.090515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629181, 28.813219, 43.064205>,  <35.465290, 28.638605, 43.048420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629181, 28.813219, 43.064205>,  <35.902336, 29.104242, 43.090515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629181, 28.813219, 43.064205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392319, 0.289287, 0.873154,
		-0.616242, 0.622070, -0.482985,
		-0.682884, -0.727559, -0.065779,
		35.424316, 28.594952, 43.044472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233315, 29.382805, 43.238995>,  <35.902336, 29.104242, 43.090515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233315, 29.382805, 43.238995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201069, 28.989395, 43.303715>,  <35.181721, 28.753349, 43.342548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201069, 28.989395, 43.303715>,  <35.233315, 29.382805, 43.238995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201069, 28.989395, 43.303715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348232, 0.179892, 0.919986,
		-0.933936, 0.017816, -0.356996,
		-0.080611, -0.983525, 0.161803,
		35.176884, 28.694338, 43.352257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801537, 29.410025, 43.723080>,  <35.233315, 29.382805, 43.238995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801537, 29.410025, 43.723080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913597, 29.026121, 43.715324>,  <34.980835, 28.795778, 43.710670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913597, 29.026121, 43.715324>,  <34.801537, 29.410025, 43.723080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913597, 29.026121, 43.715324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236214, -0.088500, 0.967662,
		-0.930439, -0.266516, -0.251502,
		0.280155, -0.959759, -0.019389,
		34.997643, 28.738194, 43.709507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223091, 28.951900, 44.111740>,  <34.801537, 29.410025, 43.723080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223091, 28.951900, 44.111740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581478, 28.774277, 44.114468>,  <34.796513, 28.667702, 44.116104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581478, 28.774277, 44.114468>,  <34.223091, 28.951900, 44.111740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581478, 28.774277, 44.114468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127850, -0.243193, 0.961515,
		-0.425314, -0.862361, -0.274667,
		0.895970, -0.444062, 0.006819,
		34.850269, 28.641058, 44.116512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106537, 28.368931, 44.401001>,  <34.223091, 28.951900, 44.111740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106537, 28.368931, 44.401001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.494728, 28.431807, 44.474163>,  <34.727646, 28.469532, 44.518063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.494728, 28.431807, 44.474163>,  <34.106537, 28.368931, 44.401001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.494728, 28.431807, 44.474163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155378, -0.172516, 0.972674,
		0.184448, -0.972384, -0.143000,
		0.970483, 0.157189, 0.182908,
		34.785873, 28.478962, 44.529034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324680, 27.803488, 44.857315>,  <34.106537, 28.368931, 44.401001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324680, 27.803488, 44.857315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626472, 28.063293, 44.895020>,  <34.807549, 28.219177, 44.917645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626472, 28.063293, 44.895020>,  <34.324680, 27.803488, 44.857315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626472, 28.063293, 44.895020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034011, -0.104738, 0.993918,
		0.655438, -0.753101, -0.056932,
		0.754483, 0.649515, 0.094263,
		34.852818, 28.258148, 44.923298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684410, 27.570021, 45.402916>,  <34.324680, 27.803488, 44.857315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684410, 27.570021, 45.402916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771515, 27.959085, 45.370655>,  <34.823780, 28.192524, 45.351299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771515, 27.959085, 45.370655>,  <34.684410, 27.570021, 45.402916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771515, 27.959085, 45.370655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056545, 0.095067, 0.993864,
		0.974362, -0.211869, 0.075702,
		0.217766, 0.972663, -0.080650,
		34.836845, 28.250885, 45.346458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072689, 27.617186, 45.918175>,  <34.684410, 27.570021, 45.402916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072689, 27.617186, 45.918175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943916, 27.986242, 45.833233>,  <34.866653, 28.207676, 45.782269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943916, 27.986242, 45.833233>,  <35.072689, 27.617186, 45.918175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943916, 27.986242, 45.833233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148379, 0.172358, 0.973795,
		0.935065, 0.345001, 0.081414,
		-0.321927, 0.922642, -0.212357,
		34.847340, 28.263035, 45.769527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289402, 28.184137, 46.467987>,  <35.072689, 27.617186, 45.918175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289402, 28.184137, 46.467987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988857, 28.374165, 46.284790>,  <34.808529, 28.488182, 46.174870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988857, 28.374165, 46.284790>,  <35.289402, 28.184137, 46.467987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988857, 28.374165, 46.284790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390138, 0.239952, 0.888941,
		0.532205, 0.846600, 0.005051,
		-0.751365, 0.475070, -0.457994,
		34.763447, 28.516685, 46.147392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097618, 28.676603, 47.009911>,  <35.289402, 28.184137, 46.467987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097618, 28.676603, 47.009911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791912, 28.683044, 46.752029>,  <34.608490, 28.686909, 46.597301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791912, 28.683044, 46.752029>,  <35.097618, 28.676603, 47.009911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791912, 28.683044, 46.752029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639364, 0.111819, 0.760730,
		0.084341, 0.993598, -0.075163,
		-0.764264, 0.016105, -0.644702,
		34.562634, 28.687876, 46.558620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684986, 29.198536, 47.013309>,  <35.097618, 28.676603, 47.009911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684986, 29.198536, 47.013309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446220, 28.910439, 46.871922>,  <34.302959, 28.737581, 46.787090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446220, 28.910439, 46.871922>,  <34.684986, 29.198536, 47.013309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446220, 28.910439, 46.871922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600399, 0.108778, 0.792268,
		-0.532175, 0.685141, -0.497364,
		-0.596918, -0.720243, -0.353469,
		34.267143, 28.694366, 46.765881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334358, 29.754105, 47.474682>,  <34.684986, 29.198536, 47.013309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334358, 29.754105, 47.474682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.379250, 30.111090, 47.649460>,  <34.406185, 30.325281, 47.754326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.379250, 30.111090, 47.649460>,  <34.334358, 29.754105, 47.474682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379250, 30.111090, 47.649460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291420, 0.390825, -0.873115,
		-0.949989, 0.225319, -0.216221,
		0.112225, 0.892461, 0.436942,
		34.412918, 30.378828, 47.780544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942093, 30.294874, 47.134548>,  <34.334358, 29.754105, 47.474682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942093, 30.294874, 47.134548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.247192, 30.464769, 47.329609>,  <34.430252, 30.566708, 47.446648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.247192, 30.464769, 47.329609>,  <33.942093, 30.294874, 47.134548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.247192, 30.464769, 47.329609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279195, 0.463898, -0.840743,
		-0.583319, 0.777428, 0.235254,
		0.762751, 0.424740, 0.487655,
		34.476017, 30.592192, 47.475906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816330, 30.922211, 46.876820>,  <33.942093, 30.294874, 47.134548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816330, 30.922211, 46.876820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193111, 30.900524, 47.009354>,  <34.419182, 30.887512, 47.088875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193111, 30.900524, 47.009354>,  <33.816330, 30.922211, 46.876820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193111, 30.900524, 47.009354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334227, 0.244971, -0.910100,
		-0.031827, 0.968014, 0.248872,
		0.941955, -0.054214, 0.331333,
		34.475697, 30.884260, 47.108753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224518, 31.605688, 46.685608>,  <33.816330, 30.922211, 46.876820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224518, 31.605688, 46.685608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525066, 31.355034, 46.768322>,  <34.705395, 31.204641, 46.817951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525066, 31.355034, 46.768322>,  <34.224518, 31.605688, 46.685608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525066, 31.355034, 46.768322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541089, 0.405714, -0.736627,
		0.377700, 0.665375, 0.643909,
		0.751376, -0.626636, 0.206789,
		34.750481, 31.167044, 46.830360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864925, 32.048504, 46.529079>,  <34.224518, 31.605688, 46.685608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864925, 32.048504, 46.529079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949924, 31.657648, 46.526676>,  <35.000923, 31.423134, 46.525234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949924, 31.657648, 46.526676>,  <34.864925, 32.048504, 46.529079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949924, 31.657648, 46.526676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456565, 0.104718, -0.883506,
		0.863940, 0.185004, 0.468381,
		0.212500, -0.977143, -0.006004,
		35.013676, 31.364506, 46.524876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645882, 31.965908, 46.375046>,  <34.864925, 32.048504, 46.529079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645882, 31.965908, 46.375046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.468014, 31.620932, 46.278336>,  <35.361294, 31.413946, 46.220310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.468014, 31.620932, 46.278336>,  <35.645882, 31.965908, 46.375046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.468014, 31.620932, 46.278336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570654, -0.064730, -0.818636,
		0.690376, -0.501998, 0.520940,
		-0.444674, -0.862443, -0.241780,
		35.334610, 31.362198, 46.205803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176590, 31.518341, 46.214417>,  <35.645882, 31.965908, 46.375046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176590, 31.518341, 46.214417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860069, 31.330202, 46.058155>,  <35.670155, 31.217319, 45.964397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860069, 31.330202, 46.058155>,  <36.176590, 31.518341, 46.214417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860069, 31.330202, 46.058155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549349, -0.266421, -0.791982,
		0.268429, -0.841304, 0.469205,
		-0.791304, -0.470348, -0.390654,
		35.622677, 31.189098, 45.940960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475033, 30.859911, 45.941364>,  <36.176590, 31.518341, 46.214417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475033, 30.859911, 45.941364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133537, 30.907928, 45.738697>,  <35.928638, 30.936739, 45.617096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133537, 30.907928, 45.738697>,  <36.475033, 30.859911, 45.941364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133537, 30.907928, 45.738697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497256, -0.100690, -0.861741,
		-0.154465, -0.987649, 0.026269,
		-0.853743, 0.120046, -0.506667,
		35.877415, 30.943941, 45.586697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538490, 30.384487, 45.322178>,  <36.475033, 30.859911, 45.941364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538490, 30.384487, 45.322178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222427, 30.607098, 45.219467>,  <36.032791, 30.740664, 45.157841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222427, 30.607098, 45.219467>,  <36.538490, 30.384487, 45.322178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222427, 30.607098, 45.219467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265823, -0.066320, -0.961738,
		-0.552263, -0.828178, -0.095535,
		-0.790155, 0.556527, -0.256775,
		35.985382, 30.774055, 45.142433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133427, 30.004034, 44.893112>,  <36.538490, 30.384487, 45.322178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133427, 30.004034, 44.893112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070023, 30.389980, 44.809299>,  <36.031979, 30.621548, 44.759010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070023, 30.389980, 44.809299>,  <36.133427, 30.004034, 44.893112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070023, 30.389980, 44.809299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215353, -0.173321, -0.961032,
		-0.963585, -0.197461, -0.180313,
		-0.158514, 0.964867, -0.209534,
		36.022469, 30.679441, 44.746441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955677, 29.989702, 44.246552>,  <36.133427, 30.004034, 44.893112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955677, 29.989702, 44.246552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.043957, 30.379412, 44.264797>,  <36.096924, 30.613237, 44.275745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.043957, 30.379412, 44.264797>,  <35.955677, 29.989702, 44.246552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043957, 30.379412, 44.264797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231156, -0.006811, -0.972893,
		-0.947554, 0.225261, -0.226712,
		0.220699, 0.974275, 0.045617,
		36.110165, 30.671694, 44.278481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635334, 30.316769, 43.666172>,  <35.955677, 29.989702, 44.246552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635334, 30.316769, 43.666172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903194, 30.595438, 43.769104>,  <36.063911, 30.762640, 43.830864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903194, 30.595438, 43.769104>,  <35.635334, 30.316769, 43.666172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903194, 30.595438, 43.769104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104653, 0.254514, -0.961390,
		-0.735268, 0.670723, 0.097526,
		0.669648, 0.696673, 0.257329,
		36.104088, 30.804440, 43.846302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524872, 30.837729, 43.213566>,  <35.635334, 30.316769, 43.666172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524872, 30.837729, 43.213566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879753, 30.961004, 43.350903>,  <36.092682, 31.034969, 43.433304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879753, 30.961004, 43.350903>,  <35.524872, 30.837729, 43.213566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879753, 30.961004, 43.350903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278097, 0.236577, -0.930964,
		-0.368139, 0.921440, 0.124187,
		0.887206, 0.308188, 0.343343,
		36.145916, 31.053461, 43.453907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719257, 31.546404, 42.834660>,  <35.524872, 30.837729, 43.213566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719257, 31.546404, 42.834660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.049084, 31.364386, 42.969135>,  <36.246979, 31.255175, 43.049820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.049084, 31.364386, 42.969135>,  <35.719257, 31.546404, 42.834660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049084, 31.364386, 42.969135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397790, 0.043758, -0.916432,
		0.402307, 0.889393, 0.217094,
		0.824568, -0.455045, 0.336188,
		36.296455, 31.227873, 43.069992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202549, 32.033821, 42.718216>,  <35.719257, 31.546404, 42.834660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202549, 32.033821, 42.718216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371838, 31.671896, 42.736980>,  <36.473412, 31.454741, 42.748241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371838, 31.671896, 42.736980>,  <36.202549, 32.033821, 42.718216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371838, 31.671896, 42.736980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209649, 0.047424, -0.976626,
		0.881439, 0.423161, 0.209763,
		0.423218, -0.904813, 0.046914,
		36.498802, 31.400452, 42.751053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899048, 32.049885, 42.405262>,  <36.202549, 32.033821, 42.718216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899048, 32.049885, 42.405262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769428, 31.671532, 42.398335>,  <36.691654, 31.444521, 42.394180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769428, 31.671532, 42.398335>,  <36.899048, 32.049885, 42.405262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769428, 31.671532, 42.398335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274292, -0.076423, -0.958605,
		0.905403, -0.315387, 0.284212,
		-0.324052, -0.945881, -0.017314,
		36.672215, 31.387768, 42.393139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538364, 31.780905, 42.266659>,  <36.899048, 32.049885, 42.405262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538364, 31.780905, 42.266659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265942, 31.498775, 42.187988>,  <37.102489, 31.329498, 42.140785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265942, 31.498775, 42.187988>,  <37.538364, 31.780905, 42.266659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265942, 31.498775, 42.187988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332126, -0.058185, -0.941439,
		0.652577, -0.706492, 0.273884,
		-0.681055, -0.705325, -0.196674,
		37.061626, 31.287178, 42.128986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901272, 31.088856, 42.024132>,  <37.538364, 31.780905, 42.266659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901272, 31.088856, 42.024132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.533367, 31.119555, 41.870171>,  <37.312626, 31.137974, 41.777794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.533367, 31.119555, 41.870171>,  <37.901272, 31.088856, 42.024132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533367, 31.119555, 41.870171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385381, -0.009042, -0.922713,
		-0.074297, -0.997010, -0.021261,
		-0.919762, 0.076748, -0.384901,
		37.257439, 31.142578, 41.754700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988125, 30.805967, 41.387291>,  <37.901272, 31.088856, 42.024132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988125, 30.805967, 41.387291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.620396, 30.940519, 41.305611>,  <37.399757, 31.021250, 41.256603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.620396, 30.940519, 41.305611>,  <37.988125, 30.805967, 41.387291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620396, 30.940519, 41.305611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233791, 0.049469, -0.971028,
		-0.316532, -0.940427, -0.124120,
		-0.919320, 0.336379, -0.204205,
		37.344601, 31.041433, 41.244350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811703, 30.389029, 40.851288>,  <37.988125, 30.805967, 41.387291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811703, 30.389029, 40.851288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.562492, 30.701906, 40.850170>,  <37.412968, 30.889633, 40.849499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.562492, 30.701906, 40.850170>,  <37.811703, 30.389029, 40.851288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562492, 30.701906, 40.850170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123598, 0.094924, -0.987782,
		-0.772374, -0.615759, -0.155818,
		-0.623027, 0.782196, -0.002790,
		37.375584, 30.936565, 40.849335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429958, 30.255323, 40.357731>,  <37.811703, 30.389029, 40.851288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.429958, 30.255323, 40.357731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391102, 30.652830, 40.379604>,  <37.367786, 30.891335, 40.392727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391102, 30.652830, 40.379604>,  <37.429958, 30.255323, 40.357731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391102, 30.652830, 40.379604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136735, 0.067747, -0.988288,
		-0.985833, -0.088530, -0.142465,
		-0.097145, 0.993767, 0.054682,
		37.361958, 30.950960, 40.396008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899723, 30.486530, 39.976357>,  <37.429958, 30.255323, 40.357731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899723, 30.486530, 39.976357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153896, 30.793734, 40.008308>,  <37.306400, 30.978056, 40.027481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153896, 30.793734, 40.008308>,  <36.899723, 30.486530, 39.976357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153896, 30.793734, 40.008308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062338, 0.052091, -0.996695,
		-0.769632, 0.638317, -0.014775,
		0.635437, 0.768009, 0.079882,
		37.344528, 31.024136, 40.032272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737087, 30.665932, 39.378548>,  <36.899723, 30.486530, 39.976357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737087, 30.665932, 39.378548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047195, 30.896002, 39.482948>,  <37.233261, 31.034044, 39.545589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047195, 30.896002, 39.482948>,  <36.737087, 30.665932, 39.378548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047195, 30.896002, 39.482948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102713, 0.292924, -0.950603,
		-0.623219, 0.763785, 0.168017,
		0.775272, 0.575177, 0.261006,
		37.279778, 31.068554, 39.561249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688915, 31.200089, 38.960899>,  <36.737087, 30.665932, 39.378548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688915, 31.200089, 38.960899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076031, 31.205343, 39.061466>,  <37.308300, 31.208496, 39.121807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076031, 31.205343, 39.061466>,  <36.688915, 31.200089, 38.960899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076031, 31.205343, 39.061466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237466, 0.284048, -0.928939,
		-0.083617, 0.958720, 0.271779,
		0.967790, 0.013137, 0.251414,
		37.366367, 31.209284, 39.136890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952065, 31.876511, 38.725399>,  <36.688915, 31.200089, 38.960899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952065, 31.876511, 38.725399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.260361, 31.623262, 38.754025>,  <37.445339, 31.471313, 38.771202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.260361, 31.623262, 38.754025>,  <36.952065, 31.876511, 38.725399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260361, 31.623262, 38.754025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301052, 0.262871, -0.916660,
		0.561544, 0.728050, 0.393207,
		0.770737, -0.633121, 0.071567,
		37.491581, 31.433327, 38.775494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591904, 32.312569, 38.702316>,  <36.952065, 31.876511, 38.725399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591904, 32.312569, 38.702316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696255, 31.936975, 38.612640>,  <37.758865, 31.711620, 38.558834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696255, 31.936975, 38.612640>,  <37.591904, 32.312569, 38.702316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696255, 31.936975, 38.612640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522723, 0.332631, -0.784931,
		0.811607, 0.087581, 0.577602,
		0.260873, -0.938982, -0.224185,
		37.774517, 31.655281, 38.545383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250881, 32.526802, 38.415981>,  <37.591904, 32.312569, 38.702316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250881, 32.526802, 38.415981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.194904, 32.141129, 38.325863>,  <38.161316, 31.909723, 38.271790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.194904, 32.141129, 38.325863>,  <38.250881, 32.526802, 38.415981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194904, 32.141129, 38.325863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637287, 0.086436, -0.765764,
		0.757813, -0.250746, 0.602367,
		-0.139946, -0.964186, -0.225300,
		38.152920, 31.851873, 38.258274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950119, 32.185753, 38.402149>,  <38.250881, 32.526802, 38.415981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950119, 32.185753, 38.402149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692646, 31.993334, 38.164066>,  <38.538162, 31.877882, 38.021217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692646, 31.993334, 38.164066>,  <38.950119, 32.185753, 38.402149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692646, 31.993334, 38.164066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440282, 0.403376, -0.802147,
		0.625964, -0.778383, -0.047846,
		-0.643677, -0.481049, -0.595207,
		38.499542, 31.849020, 37.985504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349781, 32.041920, 37.773079>,  <38.950119, 32.185753, 38.402149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349781, 32.041920, 37.773079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967457, 32.033619, 37.655777>,  <38.738064, 32.028641, 37.585396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967457, 32.033619, 37.655777>,  <39.349781, 32.041920, 37.773079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967457, 32.033619, 37.655777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269861, 0.333792, -0.903193,
		0.116625, -0.942418, -0.313442,
		-0.955810, -0.020749, -0.293251,
		38.680714, 32.027393, 37.567802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347359, 31.675182, 37.176292>,  <39.349781, 32.041920, 37.773079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347359, 31.675182, 37.176292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.012051, 31.891968, 37.152382>,  <38.810863, 32.022038, 37.138035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.012051, 31.891968, 37.152382>,  <39.347359, 31.675182, 37.176292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012051, 31.891968, 37.152382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248852, 0.282729, -0.926357,
		-0.485149, -0.791417, -0.371873,
		-0.838274, 0.541962, -0.059780,
		38.760567, 32.054558, 37.134449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108131, 31.510273, 36.506603>,  <39.347359, 31.675182, 37.176292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108131, 31.510273, 36.506603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.922886, 31.841156, 36.633888>,  <38.811741, 32.039684, 36.710258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.922886, 31.841156, 36.633888>,  <39.108131, 31.510273, 36.506603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.922886, 31.841156, 36.633888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207244, 0.450148, -0.868572,
		-0.861730, -0.336298, -0.379903,
		-0.463112, 0.827206, 0.318210,
		38.783951, 32.089317, 36.729351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578323, 31.613604, 36.066620>,  <39.108131, 31.510273, 36.506603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578323, 31.613604, 36.066620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662682, 31.971350, 36.224422>,  <38.713299, 32.185997, 36.319103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662682, 31.971350, 36.224422>,  <38.578323, 31.613604, 36.066620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662682, 31.971350, 36.224422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227349, 0.347636, -0.909649,
		-0.950702, 0.281533, -0.130018,
		0.210898, 0.894365, 0.394505,
		38.725952, 32.239658, 36.342773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288712, 32.139320, 35.672226>,  <38.578323, 31.613604, 36.066620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288712, 32.139320, 35.672226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562042, 32.352226, 35.872128>,  <38.726040, 32.479969, 35.992069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562042, 32.352226, 35.872128>,  <38.288712, 32.139320, 35.672226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562042, 32.352226, 35.872128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115138, 0.597363, -0.793663,
		-0.720974, 0.599874, 0.346912,
		0.683330, 0.532268, 0.499752,
		38.767040, 32.511906, 36.022053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235935, 32.745831, 35.404560>,  <38.288712, 32.139320, 35.672226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235935, 32.745831, 35.404560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.589035, 32.754791, 35.592285>,  <38.800896, 32.760166, 35.704922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.589035, 32.754791, 35.592285>,  <38.235935, 32.745831, 35.404560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589035, 32.754791, 35.592285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310378, 0.722093, -0.618261,
		-0.352739, 0.691433, 0.630472,
		0.882746, 0.022400, 0.469316,
		38.853859, 32.761513, 35.733082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439331, 33.401833, 35.573006>,  <38.235935, 32.745831, 35.404560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439331, 33.401833, 35.573006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802841, 33.241299, 35.618721>,  <39.020947, 33.144978, 35.646149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802841, 33.241299, 35.618721>,  <38.439331, 33.401833, 35.573006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802841, 33.241299, 35.618721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406145, 0.787801, -0.463052,
		0.095804, 0.467226, 0.878932,
		0.908773, -0.401336, 0.114287,
		39.075474, 33.120899, 35.653008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860451, 34.016716, 35.488926>,  <38.439331, 33.401833, 35.573006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.860451, 34.016716, 35.488926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.102272, 33.710918, 35.399433>,  <39.247364, 33.527439, 35.345737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.102272, 33.710918, 35.399433>,  <38.860451, 34.016716, 35.488926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102272, 33.710918, 35.399433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637089, 0.632658, -0.440296,
		0.478150, 0.123648, 0.869531,
		0.604557, -0.764496, -0.223731,
		39.283638, 33.481571, 35.332314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616718, 34.257744, 35.734360>,  <38.860451, 34.016716, 35.488926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616718, 34.257744, 35.734360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.653107, 33.951797, 35.479263>,  <39.674938, 33.768230, 35.326206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.653107, 33.951797, 35.479263>,  <39.616718, 34.257744, 35.734360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.653107, 33.951797, 35.479263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629250, 0.540500, -0.558484,
		0.771861, -0.350491, 0.530460,
		0.090970, -0.764863, -0.637737,
		39.680397, 33.722340, 35.287941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331551, 34.154819, 35.544998>,  <39.616718, 34.257744, 35.734360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331551, 34.154819, 35.544998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151394, 33.942009, 35.258198>,  <40.043301, 33.814323, 35.086117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151394, 33.942009, 35.258198>,  <40.331551, 34.154819, 35.544998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151394, 33.942009, 35.258198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645064, 0.361316, -0.673307,
		0.617281, -0.765768, 0.180454,
		-0.450396, -0.532024, -0.717003,
		40.016273, 33.782402, 35.043098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862175, 33.805344, 35.281208>,  <40.331551, 34.154819, 35.544998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.862175, 33.805344, 35.281208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.577873, 33.812958, 34.999935>,  <40.407291, 33.817528, 34.831173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.577873, 33.812958, 34.999935>,  <40.862175, 33.805344, 35.281208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.577873, 33.812958, 34.999935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678075, 0.284556, -0.677674,
		0.187195, -0.958470, -0.215157,
		-0.710755, 0.019036, -0.703183,
		40.364647, 33.818668, 34.788979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.230671, 33.558098, 34.749695>,  <40.862175, 33.805344, 35.281208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.230671, 33.558098, 34.749695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900158, 33.731487, 34.605831>,  <40.701851, 33.835522, 34.519512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900158, 33.731487, 34.605831>,  <41.230671, 33.558098, 34.749695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.900158, 33.731487, 34.605831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531230, 0.387515, -0.753410,
		-0.187215, -0.813590, -0.550474,
		-0.826284, 0.433479, -0.359655,
		40.652271, 33.861530, 34.497936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.810108, 33.063866, 34.700527>,  <41.230671, 33.558098, 34.749695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.810108, 33.063866, 34.700527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184753, 33.171299, 34.790524>,  <42.409538, 33.235760, 34.844521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184753, 33.171299, 34.790524>,  <41.810108, 33.063866, 34.700527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.184753, 33.171299, 34.790524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350295, -0.704193, -0.617580,
		-0.007435, 0.657246, -0.753639,
		0.936610, 0.268587, 0.224994,
		42.465736, 33.251877, 34.858021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.136169, 33.121178, 34.024761>,  <41.810108, 33.063866, 34.700527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.136169, 33.121178, 34.024761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.403130, 33.066116, 34.317509>,  <42.563305, 33.033077, 34.493156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.403130, 33.066116, 34.317509>,  <42.136169, 33.121178, 34.024761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.403130, 33.066116, 34.317509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580787, -0.518915, -0.627227,
		0.466119, 0.843669, -0.266373,
		0.667397, -0.137656, 0.731869,
		42.603348, 33.024818, 34.537067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.834873, 33.388065, 33.784054>,  <42.136169, 33.121178, 34.024761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.834873, 33.388065, 33.784054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.829201, 33.089684, 34.050392>,  <42.825798, 32.910656, 34.210194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.829201, 33.089684, 34.050392>,  <42.834873, 33.388065, 33.784054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.829201, 33.089684, 34.050392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405767, -0.612909, -0.678008,
		0.913866, 0.260563, 0.311376,
		-0.014181, -0.745955, 0.665845,
		42.824947, 32.865898, 34.250145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.590744, 33.218872, 34.174809>,  <42.834873, 33.388065, 33.784054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.590744, 33.218872, 34.174809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.323891, 32.932659, 34.091915>,  <43.163780, 32.760929, 34.042179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.323891, 32.932659, 34.091915>,  <43.590744, 33.218872, 34.174809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.323891, 32.932659, 34.091915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580534, -0.325043, -0.746544,
		0.466819, -0.618348, 0.632239,
		-0.667129, -0.715536, -0.207236,
		43.123753, 32.717999, 34.029743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.874084, 32.454407, 34.148144>,  <43.590744, 33.218872, 34.174809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.874084, 32.454407, 34.148144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.582386, 32.496246, 33.877663>,  <43.407368, 32.521351, 33.715374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.582386, 32.496246, 33.877663>,  <43.874084, 32.454407, 34.148144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.582386, 32.496246, 33.877663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671238, -0.082440, -0.736643,
		-0.132805, -0.991091, -0.010097,
		-0.729248, 0.104608, -0.676206,
		43.363613, 32.527626, 33.674801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.918259, 31.938366, 33.652866>,  <43.874084, 32.454407, 34.148144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.918259, 31.938366, 33.652866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.758289, 32.257908, 33.473137>,  <43.662308, 32.449635, 33.365299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.758289, 32.257908, 33.473137>,  <43.918259, 31.938366, 33.652866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.758289, 32.257908, 33.473137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598723, -0.143486, -0.787999,
		-0.693970, -0.584158, -0.420910,
		-0.399921, 0.798856, -0.449324,
		43.638313, 32.497566, 33.338341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.872292, 31.799063, 32.949524>,  <43.918259, 31.938366, 33.652866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.872292, 31.799063, 32.949524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.849804, 32.198334, 32.958324>,  <43.836311, 32.437897, 32.963604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.849804, 32.198334, 32.958324>,  <43.872292, 31.799063, 32.949524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.849804, 32.198334, 32.958324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569804, 0.050166, -0.820248,
		-0.819855, -0.033577, -0.571585,
		-0.056215, 0.998176, 0.021997,
		43.832939, 32.497787, 32.964924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.598419, 32.079662, 32.324902>,  <43.872292, 31.799063, 32.949524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.598419, 32.079662, 32.324902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.841316, 32.356197, 32.481518>,  <43.987053, 32.522118, 32.575489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.841316, 32.356197, 32.481518>,  <43.598419, 32.079662, 32.324902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.841316, 32.356197, 32.481518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651296, -0.150893, -0.743670,
		-0.455049, 0.706597, -0.541896,
		0.607243, 0.691341, 0.391540,
		44.023491, 32.563599, 32.598980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.937675, 32.570995, 31.704075>,  <43.598419, 32.079662, 32.324902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.937675, 32.570995, 31.704075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.175995, 32.605736, 32.023445>,  <44.318985, 32.626579, 32.215065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.175995, 32.605736, 32.023445>,  <43.937675, 32.570995, 31.704075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.175995, 32.605736, 32.023445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785766, 0.142590, -0.601864,
		-0.166120, 0.985964, 0.016710,
		0.595799, 0.086852, 0.798424,
		44.354736, 32.631790, 32.262974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.255009, 33.218445, 31.621222>,  <43.937675, 32.570995, 31.704075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.255009, 33.218445, 31.621222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.479515, 32.993084, 31.863728>,  <44.614220, 32.857868, 32.009232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.479515, 32.993084, 31.863728>,  <44.255009, 33.218445, 31.621222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.479515, 32.993084, 31.863728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774635, 0.099694, -0.624501,
		0.291403, 0.820147, 0.492385,
		0.561270, -0.563401, 0.606264,
		44.647896, 32.824062, 32.045609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.834389, 33.549442, 31.516907>,  <44.255009, 33.218445, 31.621222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.834389, 33.549442, 31.516907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.927895, 33.200237, 31.688112>,  <44.983997, 32.990715, 31.790834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.927895, 33.200237, 31.688112>,  <44.834389, 33.549442, 31.516907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.927895, 33.200237, 31.688112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657325, -0.182464, -0.731185,
		0.716433, 0.452272, 0.531201,
		0.233769, -0.873016, 0.428012,
		44.998024, 32.938332, 31.816517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.572937, 33.542141, 31.670963>,  <44.834389, 33.549442, 31.516907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.572937, 33.542141, 31.670963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.463913, 33.157284, 31.671202>,  <45.398499, 32.926369, 31.671345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.463913, 33.157284, 31.671202>,  <45.572937, 33.542141, 31.670963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.463913, 33.157284, 31.671202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682068, -0.193655, -0.705182,
		0.678599, -0.191793, 0.709027,
		-0.272555, -0.962140, 0.000598,
		45.382145, 32.868641, 31.671381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.240509, 33.080330, 31.703365>,  <45.572937, 33.542141, 31.670963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.240509, 33.080330, 31.703365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.958603, 32.851643, 31.535343>,  <45.789459, 32.714428, 31.434530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.958603, 32.851643, 31.535343>,  <46.240509, 33.080330, 31.703365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.958603, 32.851643, 31.535343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619909, -0.208342, -0.756509,
		0.344998, -0.793554, 0.501247,
		-0.704762, -0.571722, -0.420054,
		45.747173, 32.680126, 31.409327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.625126, 32.517120, 31.320402>,  <46.240509, 33.080330, 31.703365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.625126, 32.517120, 31.320402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.251526, 32.482349, 31.181786>,  <46.027367, 32.461487, 31.098616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.251526, 32.482349, 31.181786>,  <46.625126, 32.517120, 31.320402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.251526, 32.482349, 31.181786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356335, -0.297056, -0.885880,
		-0.025933, -0.950895, 0.308426,
		-0.933998, -0.086930, -0.346541,
		45.971325, 32.456272, 31.077824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.510399, 31.749884, 31.081341>,  <46.625126, 32.517120, 31.320402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.510399, 31.749884, 31.081341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.255371, 31.991796, 30.890453>,  <46.102352, 32.136944, 30.775921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.255371, 31.991796, 30.890453>,  <46.510399, 31.749884, 31.081341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.255371, 31.991796, 30.890453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268533, -0.406137, -0.873466,
		-0.722074, -0.685047, 0.096537,
		-0.637573, 0.604784, -0.477219,
		46.064098, 32.173233, 30.747288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.161068, 31.346659, 30.573259>,  <46.510399, 31.749884, 31.081341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.161068, 31.346659, 30.573259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.091633, 31.721252, 30.451363>,  <46.049973, 31.946009, 30.378225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.091633, 31.721252, 30.451363>,  <46.161068, 31.346659, 30.573259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.091633, 31.721252, 30.451363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014464, -0.306980, -0.951606,
		-0.984712, -0.169596, 0.039743,
		-0.173589, 0.936483, -0.304740,
		46.039555, 32.002197, 30.359941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.684258, 31.259945, 30.058790>,  <46.161068, 31.346659, 30.573259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.684258, 31.259945, 30.058790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.857582, 31.613497, 29.988369>,  <45.961578, 31.825628, 29.946115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.857582, 31.613497, 29.988369>,  <45.684258, 31.259945, 30.058790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.857582, 31.613497, 29.988369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015451, -0.202604, -0.979139,
		-0.901112, 0.421551, -0.101448,
		0.433311, 0.883881, -0.176055,
		45.987576, 31.878662, 29.935553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.366421, 31.478191, 29.539579>,  <45.684258, 31.259945, 30.058790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.366421, 31.478191, 29.539579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.702446, 31.695158, 29.543285>,  <45.904060, 31.825338, 29.545509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.702446, 31.695158, 29.543285>,  <45.366421, 31.478191, 29.539579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.702446, 31.695158, 29.543285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111385, -0.155739, -0.981498,
		-0.530937, 0.825548, -0.191247,
		0.840059, 0.542416, 0.009266,
		45.954464, 31.857883, 29.546064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.278030, 32.044666, 29.032663>,  <45.366421, 31.478191, 29.539579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.278030, 32.044666, 29.032663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.666245, 31.991304, 29.112930>,  <45.899174, 31.959286, 29.161091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.666245, 31.991304, 29.112930>,  <45.278030, 32.044666, 29.032663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.666245, 31.991304, 29.112930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198557, -0.029093, -0.979658,
		0.136534, 0.990634, -0.001746,
		0.970533, -0.133409, 0.200669,
		45.957405, 31.951283, 29.173132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.523083, 32.233028, 28.472614>,  <45.278030, 32.044666, 29.032663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.523083, 32.233028, 28.472614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.858238, 32.068676, 28.616352>,  <46.059330, 31.970066, 28.702595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.858238, 32.068676, 28.616352>,  <45.523083, 32.233028, 28.472614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.858238, 32.068676, 28.616352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287669, -0.227086, -0.930418,
		0.463889, 0.882957, -0.072076,
		0.837886, -0.410877, 0.359342,
		46.109604, 31.945414, 28.724155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.161591, 32.576656, 28.188417>,  <45.523083, 32.233028, 28.472614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.161591, 32.576656, 28.188417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.272469, 32.207497, 28.295317>,  <46.338993, 31.986000, 28.359455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.272469, 32.207497, 28.295317>,  <46.161591, 32.576656, 28.188417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.272469, 32.207497, 28.295317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253993, -0.197867, -0.946750,
		0.926634, 0.330312, 0.179563,
		0.277193, -0.922899, 0.267247,
		46.355625, 31.930628, 28.375490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.691059, 32.481068, 27.807369>,  <46.161591, 32.576656, 28.188417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.691059, 32.481068, 27.807369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.630718, 32.104778, 27.928881>,  <46.594513, 31.879004, 28.001787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.630718, 32.104778, 27.928881>,  <46.691059, 32.481068, 27.807369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.630718, 32.104778, 27.928881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336466, -0.337805, -0.879021,
		0.929535, -0.030388, 0.367480,
		-0.150849, -0.940725, 0.303777,
		46.585464, 31.822561, 28.020014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.196350, 32.142887, 27.669058>,  <46.691059, 32.481068, 27.807369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.196350, 32.142887, 27.669058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.946011, 31.832691, 27.702333>,  <46.795807, 31.646572, 27.722300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.946011, 31.832691, 27.702333>,  <47.196350, 32.142887, 27.669058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.946011, 31.832691, 27.702333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370475, -0.389446, -0.843256,
		0.686336, -0.496934, 0.531036,
		-0.625852, -0.775492, 0.083189,
		46.758255, 31.600044, 27.727291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.560043, 31.683321, 27.477646>,  <47.196350, 32.142887, 27.669058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.560043, 31.683321, 27.477646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.197399, 31.516361, 27.452908>,  <46.979813, 31.416185, 27.438065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.197399, 31.516361, 27.452908>,  <47.560043, 31.683321, 27.477646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.197399, 31.516361, 27.452908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226913, -0.358701, -0.905452,
		0.355752, -0.834931, 0.419918,
		-0.906615, -0.417401, -0.061848,
		46.925415, 31.391140, 27.434353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.662125, 30.991341, 27.344801>,  <47.560043, 31.683321, 27.477646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.662125, 30.991341, 27.344801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.292484, 31.073458, 27.215874>,  <47.070702, 31.122728, 27.138517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.292484, 31.073458, 27.215874>,  <47.662125, 30.991341, 27.344801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.292484, 31.073458, 27.215874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262161, -0.273098, -0.925575,
		-0.278054, -0.939822, 0.198546,
		-0.924098, 0.205309, -0.322321,
		47.015255, 31.135046, 27.119179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.507984, 30.447010, 26.797951>,  <47.662125, 30.991341, 27.344801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.507984, 30.447010, 26.797951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.265629, 30.760464, 26.743078>,  <47.120216, 30.948536, 26.710154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.265629, 30.760464, 26.743078>,  <47.507984, 30.447010, 26.797951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.265629, 30.760464, 26.743078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143768, -0.061746, -0.987683,
		-0.782451, -0.618148, -0.075250,
		-0.605888, 0.783633, -0.137183,
		47.083862, 30.995554, 26.701923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.965942, 30.270849, 26.374714>,  <47.507984, 30.447010, 26.797951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.965942, 30.270849, 26.374714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.973602, 30.669369, 26.341190>,  <46.978199, 30.908480, 26.321075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.973602, 30.669369, 26.341190>,  <46.965942, 30.270849, 26.374714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.973602, 30.669369, 26.341190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158616, -0.085790, -0.983606,
		-0.987155, 0.005539, -0.159671,
		0.019146, 0.996298, -0.083810,
		46.979347, 30.968258, 26.316048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.527668, 30.486135, 25.745888>,  <46.965942, 30.270849, 26.374714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.527668, 30.486135, 25.745888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.757721, 30.809542, 25.795719>,  <46.895752, 31.003586, 25.825619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.757721, 30.809542, 25.795719>,  <46.527668, 30.486135, 25.745888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.757721, 30.809542, 25.795719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166225, 0.033607, -0.985515,
		-0.800992, 0.587513, -0.115067,
		0.575136, 0.808516, 0.124579,
		46.930264, 31.052097, 25.833094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.394501, 30.906778, 25.258251>,  <46.527668, 30.486135, 25.745888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.394501, 30.906778, 25.258251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.765953, 30.992252, 25.379570>,  <46.988823, 31.043537, 25.452360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.765953, 30.992252, 25.379570>,  <46.394501, 30.906778, 25.258251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.765953, 30.992252, 25.379570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271247, 0.166720, -0.947961,
		-0.253129, 0.962572, 0.096860,
		0.928629, 0.213683, 0.303296,
		47.044540, 31.056356, 25.470558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.797573, 31.334530, 24.685549>,  <46.394501, 30.906778, 25.258251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.797573, 31.334530, 24.685549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.894855, 31.341105, 24.297615>,  <46.953224, 31.345049, 24.064856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.894855, 31.341105, 24.297615>,  <46.797573, 31.334530, 24.685549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.894855, 31.341105, 24.297615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969971, 0.001905, -0.243212,
		-0.002150, 0.999863, 0.016406,
		0.243210, 0.016436, -0.969834,
		46.967819, 31.346035, 24.006664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.312767, 31.821800, 24.418505>,  <46.797573, 31.334530, 24.685549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.312767, 31.821800, 24.418505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.443371, 31.558514, 24.147169>,  <46.521732, 31.400541, 23.984367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.443371, 31.558514, 24.147169>,  <46.312767, 31.821800, 24.418505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.443371, 31.558514, 24.147169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942206, -0.169636, -0.288914,
		0.075098, 0.733466, -0.675565,
		0.326508, -0.658218, -0.678337,
		46.541325, 31.361048, 23.943668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.047325, 32.312370, 24.097027>,  <46.312767, 31.821800, 24.418505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.047325, 32.312370, 24.097027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.660744, 32.404575, 24.051718>,  <45.428795, 32.459900, 24.024532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.660744, 32.404575, 24.051718>,  <46.047325, 32.312370, 24.097027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.660744, 32.404575, 24.051718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000594, 0.439008, 0.898483,
		0.256843, 0.868409, -0.424144,
		-0.966453, 0.230517, -0.113272,
		45.370808, 32.473732, 24.017736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.979630, 32.858826, 24.517525>,  <46.047325, 32.312370, 24.097027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.979630, 32.858826, 24.517525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.583664, 32.818035, 24.478188>,  <45.346085, 32.793560, 24.454586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.583664, 32.818035, 24.478188>,  <45.979630, 32.858826, 24.517525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.583664, 32.818035, 24.478188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138255, 0.543924, 0.827667,
		-0.030909, 0.832915, -0.552536,
		-0.989914, -0.101974, -0.098342,
		45.286690, 32.787441, 24.448685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.761528, 33.507683, 24.802826>,  <45.979630, 32.858826, 24.517525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.761528, 33.507683, 24.802826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.432877, 33.280571, 24.782635>,  <45.235683, 33.144302, 24.770519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.432877, 33.280571, 24.782635>,  <45.761528, 33.507683, 24.802826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.432877, 33.280571, 24.782635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383938, 0.485783, 0.785243,
		-0.421323, 0.664562, -0.617127,
		-0.821632, -0.567779, -0.050479,
		45.186386, 33.110237, 24.767490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.169422, 33.908821, 24.787300>,  <45.761528, 33.507683, 24.802826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.169422, 33.908821, 24.787300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.071331, 33.557396, 24.951248>,  <45.012474, 33.346542, 25.049618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.071331, 33.557396, 24.951248>,  <45.169422, 33.908821, 24.787300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.071331, 33.557396, 24.951248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469924, 0.477515, 0.742396,
		-0.847958, -0.010549, -0.529958,
		-0.245231, -0.878561, 0.409870,
		44.997761, 33.293827, 25.074209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.747646, 34.375462, 24.737585>,  <45.169422, 33.908821, 24.787300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.747646, 34.375462, 24.737585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.793358, 34.770222, 24.692030>,  <45.820786, 35.007076, 24.664698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.793358, 34.770222, 24.692030>,  <45.747646, 34.375462, 24.737585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.793358, 34.770222, 24.692030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016568, 0.112727, 0.993488,
		0.993310, -0.115426, -0.003468,
		0.114283, 0.986899, -0.113886,
		45.827644, 35.066292, 24.657864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.316341, 34.613663, 24.964560>,  <45.747646, 34.375462, 24.737585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.316341, 34.613663, 24.964560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.037472, 34.896626, 25.011086>,  <45.870152, 35.066402, 25.039001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.037472, 34.896626, 25.011086>,  <46.316341, 34.613663, 24.964560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.037472, 34.896626, 25.011086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249306, 0.087109, 0.964499,
		0.672158, 0.701421, -0.237090,
		-0.697173, 0.707404, 0.116317,
		45.828320, 35.108849, 25.045980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.612778, 35.134830, 25.333643>,  <46.316341, 34.613663, 24.964560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.612778, 35.134830, 25.333643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.217690, 35.145138, 25.395290>,  <45.980637, 35.151321, 25.432278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.217690, 35.145138, 25.395290>,  <46.612778, 35.134830, 25.333643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.217690, 35.145138, 25.395290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156188, 0.191868, 0.968913,
		-0.004604, 0.981082, -0.193536,
		-0.987717, 0.025767, 0.154117,
		45.921375, 35.152866, 25.441525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.448032, 35.749840, 25.761820>,  <46.612778, 35.134830, 25.333643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.448032, 35.749840, 25.761820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.157391, 35.481533, 25.821308>,  <45.983006, 35.320549, 25.857000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.157391, 35.481533, 25.821308>,  <46.448032, 35.749840, 25.761820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.157391, 35.481533, 25.821308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015292, 0.200619, 0.979550,
		-0.686882, 0.714023, -0.135514,
		-0.726608, -0.670763, 0.148720,
		45.939407, 35.280304, 25.865925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.054955, 35.990627, 26.381372>,  <46.448032, 35.749840, 25.761820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.054955, 35.990627, 26.381372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.955616, 35.604118, 26.354130>,  <45.896011, 35.372211, 26.337784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.955616, 35.604118, 26.354130>,  <46.054955, 35.990627, 26.381372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.955616, 35.604118, 26.354130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174751, -0.024466, 0.984309,
		-0.952778, 0.256352, -0.162781,
		-0.248347, -0.966274, -0.068108,
		45.881111, 35.314236, 26.333696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.298302, 35.911598, 26.556004>,  <46.054955, 35.990627, 26.381372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.298302, 35.911598, 26.556004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.496902, 35.570492, 26.620844>,  <45.616062, 35.365829, 26.659748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.496902, 35.570492, 26.620844>,  <45.298302, 35.911598, 26.556004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.496902, 35.570492, 26.620844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345868, -0.023074, 0.937999,
		-0.796152, -0.521787, -0.306400,
		0.496506, -0.852764, 0.162098,
		45.645855, 35.314663, 26.669474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.796177, 35.519543, 26.984377>,  <45.298302, 35.911598, 26.556004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.796177, 35.519543, 26.984377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.150665, 35.343288, 27.041597>,  <45.363358, 35.237537, 27.075930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.150665, 35.343288, 27.041597>,  <44.796177, 35.519543, 26.984377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.150665, 35.343288, 27.041597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277901, -0.258577, 0.925153,
		-0.370666, -0.859639, -0.351608,
		0.886216, -0.440635, 0.143049,
		45.416531, 35.211098, 27.084513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.708187, 34.944851, 27.464195>,  <44.796177, 35.519543, 26.984377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.708187, 34.944851, 27.464195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.105259, 34.978500, 27.498878>,  <45.343502, 34.998692, 27.519688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.105259, 34.978500, 27.498878>,  <44.708187, 34.944851, 27.464195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.105259, 34.978500, 27.498878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063151, -0.250509, 0.966052,
		0.102992, -0.964452, -0.243361,
		0.992675, 0.084127, 0.086706,
		45.403061, 35.003738, 27.524891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.942158, 34.357883, 27.845650>,  <44.708187, 34.944851, 27.464195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.942158, 34.357883, 27.845650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.229118, 34.635780, 27.866344>,  <45.401295, 34.802517, 27.878761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.229118, 34.635780, 27.866344>,  <44.942158, 34.357883, 27.845650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.229118, 34.635780, 27.866344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021530, -0.052117, 0.998409,
		0.696330, -0.717371, -0.022431,
		0.717398, 0.694740, 0.051736,
		45.444340, 34.844204, 27.881865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.375862, 34.010857, 28.377380>,  <44.942158, 34.357883, 27.845650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.375862, 34.010857, 28.377380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.471874, 34.397568, 28.342220>,  <45.529480, 34.629593, 28.321125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.471874, 34.397568, 28.342220>,  <45.375862, 34.010857, 28.377380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.471874, 34.397568, 28.342220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156490, 0.050828, 0.986371,
		0.958070, -0.250512, -0.139091,
		0.240028, 0.966778, -0.087899,
		45.543884, 34.687603, 28.315851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.034336, 33.985600, 28.511892>,  <45.375862, 34.010857, 28.377380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.034336, 33.985600, 28.511892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.856380, 34.332329, 28.601955>,  <45.749607, 34.540367, 28.655993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.856380, 34.332329, 28.601955>,  <46.034336, 33.985600, 28.511892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.856380, 34.332329, 28.601955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282972, -0.102472, 0.953638,
		0.849704, 0.487981, -0.199696,
		-0.444894, 0.866818, 0.225156,
		45.722912, 34.592373, 28.669502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.553394, 34.245644, 28.900785>,  <46.034336, 33.985600, 28.511892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.553394, 34.245644, 28.900785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.213974, 34.445118, 28.971531>,  <46.010323, 34.564804, 29.013977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.213974, 34.445118, 28.971531>,  <46.553394, 34.245644, 28.900785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.213974, 34.445118, 28.971531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241125, 0.066919, 0.968184,
		0.470985, 0.864195, -0.177030,
		-0.848547, 0.498687, 0.176861,
		45.959412, 34.594723, 29.024590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.743843, 34.546700, 29.544365>,  <46.553394, 34.245644, 28.900785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.743843, 34.546700, 29.544365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.352909, 34.626339, 29.515594>,  <46.118347, 34.674122, 29.498331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.352909, 34.626339, 29.515594>,  <46.743843, 34.546700, 29.544365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.352909, 34.626339, 29.515594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030527, 0.203669, 0.978564,
		0.209481, 0.958581, -0.192975,
		-0.977336, 0.199100, -0.071927,
		46.059708, 34.686069, 29.494017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.543106, 35.147415, 29.967695>,  <46.743843, 34.546700, 29.544365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.543106, 35.147415, 29.967695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.183247, 34.976894, 29.929941>,  <45.967331, 34.874584, 29.907288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.183247, 34.976894, 29.929941>,  <46.543106, 35.147415, 29.967695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.183247, 34.976894, 29.929941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242525, 0.308141, 0.919908,
		-0.363070, 0.850482, -0.380606,
		-0.899645, -0.426297, -0.094387,
		45.913353, 34.849007, 29.901625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.177662, 35.541561, 30.268698>,  <46.543106, 35.147415, 29.967695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.177662, 35.541561, 30.268698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.971684, 35.198750, 30.275974>,  <45.848099, 34.993061, 30.280340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.971684, 35.198750, 30.275974>,  <46.177662, 35.541561, 30.268698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.971684, 35.198750, 30.275974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187543, 0.133340, 0.973164,
		-0.836457, 0.497712, -0.229393,
		-0.514943, -0.857031, 0.018191,
		45.817200, 34.941639, 30.281431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.511978, 35.705124, 30.469353>,  <46.177662, 35.541561, 30.268698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.511978, 35.705124, 30.469353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.560295, 35.314476, 30.540491>,  <45.589283, 35.080090, 30.583174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.560295, 35.314476, 30.540491>,  <45.511978, 35.705124, 30.469353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.560295, 35.314476, 30.540491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394640, 0.117150, 0.911337,
		-0.910862, -0.180264, -0.371262,
		0.120788, -0.976617, 0.177847,
		45.596531, 35.021492, 30.593845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.174778, 35.608925, 31.151419>,  <45.511978, 35.705124, 30.469353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.174778, 35.608925, 31.151419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.330032, 35.240952, 31.129223>,  <45.423183, 35.020168, 31.115906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.330032, 35.240952, 31.129223>,  <45.174778, 35.608925, 31.151419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.330032, 35.240952, 31.129223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153284, -0.123811, 0.980395,
		-0.908766, -0.372020, -0.189066,
		0.388135, -0.919931, -0.055491,
		45.446472, 34.964973, 31.112576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.712765, 35.092014, 31.519169>,  <45.174778, 35.608925, 31.151419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.712765, 35.092014, 31.519169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.081936, 34.938099, 31.514254>,  <45.303436, 34.845749, 31.511305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.081936, 34.938099, 31.514254>,  <44.712765, 35.092014, 31.519169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.081936, 34.938099, 31.514254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042982, -0.134705, 0.989953,
		-0.382576, -0.913123, -0.140862,
		0.922924, -0.384787, -0.012287,
		45.358814, 34.822662, 31.510567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.717407, 34.384682, 31.807861>,  <44.712765, 35.092014, 31.519169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.717407, 34.384682, 31.807861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.096439, 34.507465, 31.843349>,  <45.323860, 34.581135, 31.864643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.096439, 34.507465, 31.843349>,  <44.717407, 34.384682, 31.807861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.096439, 34.507465, 31.843349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044289, -0.401172, 0.914931,
		0.316436, -0.863041, -0.393737,
		0.947579, 0.306955, 0.088722,
		45.380714, 34.599552, 31.869967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.996391, 33.911182, 32.208961>,  <44.717407, 34.384682, 31.807861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.996391, 33.911182, 32.208961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.281593, 34.189384, 32.244514>,  <45.452713, 34.356304, 32.265846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.281593, 34.189384, 32.244514>,  <44.996391, 33.911182, 32.208961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.281593, 34.189384, 32.244514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101679, -0.227981, 0.968342,
		0.693750, -0.681393, -0.233269,
		0.713002, 0.695506, 0.088878,
		45.495495, 34.398037, 32.271179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.683064, 33.616631, 32.384224>,  <44.996391, 33.911182, 32.208961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.683064, 33.616631, 32.384224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.695652, 33.999344, 32.499866>,  <45.703205, 34.228970, 32.569252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.695652, 33.999344, 32.499866>,  <45.683064, 33.616631, 32.384224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.695652, 33.999344, 32.499866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145423, -0.290552, 0.945744,
		0.988869, 0.012279, -0.148281,
		0.031470, 0.956780, 0.289104,
		45.705093, 34.286377, 32.586597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.337883, 33.720306, 32.719158>,  <45.683064, 33.616631, 32.384224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.337883, 33.720306, 32.719158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.082489, 33.998989, 32.849964>,  <45.929253, 34.166199, 32.928448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.082489, 33.998989, 32.849964>,  <46.337883, 33.720306, 32.719158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.082489, 33.998989, 32.849964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280391, -0.185129, 0.941864,
		0.716744, 0.693056, -0.077149,
		-0.638482, 0.696707, 0.327016,
		45.890945, 34.208000, 32.948071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.801651, 34.099407, 33.228817>,  <46.337883, 33.720306, 32.719158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.801651, 34.099407, 33.228817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.417374, 34.159626, 33.322124>,  <46.186810, 34.195759, 33.378109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.417374, 34.159626, 33.322124>,  <46.801651, 34.099407, 33.228817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.417374, 34.159626, 33.322124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205441, -0.179651, 0.962039,
		0.186738, 0.972143, 0.141660,
		-0.960689, 0.150546, 0.233266,
		46.129166, 34.204788, 33.392105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.687782, 34.512901, 33.798401>,  <46.801651, 34.099407, 33.228817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.687782, 34.512901, 33.798401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.340759, 34.314434, 33.784786>,  <46.132545, 34.195354, 33.776619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.340759, 34.314434, 33.784786>,  <46.687782, 34.512901, 33.798401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.340759, 34.314434, 33.784786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168249, -0.357203, 0.918748,
		-0.468012, 0.791341, 0.393375,
		-0.867558, -0.496170, -0.034033,
		46.080490, 34.165585, 33.774578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.384567, 34.796631, 34.441727>,  <46.687782, 34.512901, 33.798401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.384567, 34.796631, 34.441727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.430668, 35.072803, 34.727390>,  <46.458328, 35.238506, 34.898788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.430668, 35.072803, 34.727390>,  <46.384567, 34.796631, 34.441727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.430668, 35.072803, 34.727390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992431, -0.110713, -0.053131,
		0.042384, 0.714879, -0.697962,
		0.115255, 0.690428, 0.714161,
		46.465244, 35.279930, 34.941639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.820854, 35.358913, 34.375404>,  <46.384567, 34.796631, 34.441727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.820854, 35.358913, 34.375404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.825676, 35.180950, 34.733601>,  <46.828568, 35.074173, 34.948521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.825676, 35.180950, 34.733601>,  <46.820854, 35.358913, 34.375404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.825676, 35.180950, 34.733601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972395, -0.203493, -0.114189,
		0.233031, 0.872149, 0.430178,
		0.012052, -0.444912, 0.895493,
		46.829292, 35.047478, 35.002247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.316444, 35.725777, 34.805153>,  <46.820854, 35.358913, 34.375404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.316444, 35.725777, 34.805153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.278770, 35.339123, 34.900444>,  <47.256168, 35.107132, 34.957619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.278770, 35.339123, 34.900444>,  <47.316444, 35.725777, 34.805153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.278770, 35.339123, 34.900444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966998, -0.145726, -0.208996,
		0.236738, 0.210684, 0.948455,
		-0.094183, -0.966631, 0.238230,
		47.250515, 35.049133, 34.971912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.883305, 35.359276, 35.238003>,  <47.316444, 35.725777, 34.805153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.883305, 35.359276, 35.238003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.710041, 35.103210, 34.984211>,  <47.606083, 34.949570, 34.831936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.710041, 35.103210, 34.984211>,  <47.883305, 35.359276, 35.238003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.710041, 35.103210, 34.984211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893082, -0.399790, -0.206332,
		-0.121572, -0.656015, 0.744893,
		-0.433157, -0.640166, -0.634478,
		47.580093, 34.911160, 34.793869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.864662, 35.056011, 41.774944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.510284, 34.911449, 41.658676>,  <32.297657, 34.824715, 41.588917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.510284, 34.911449, 41.658676>,  <32.864662, 35.056011, 41.774944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510284, 34.911449, 41.658676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248728, 0.158733, -0.955478,
		0.391449, -0.918800, -0.050739,
		-0.885947, -0.361401, -0.290667,
		32.244499, 34.803028, 41.571476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049801, 34.765572, 41.161175>,  <32.864662, 35.056011, 41.774944>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049801, 34.765572, 41.161175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.649937, 34.770996, 41.152351>,  <32.410019, 34.774250, 41.147057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.649937, 34.770996, 41.152351>,  <33.049801, 34.765572, 41.161175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649937, 34.770996, 41.152351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025314, 0.333041, -0.942572,
		-0.005438, -0.942815, -0.333273,
		-0.999665, 0.013562, -0.022055,
		32.350037, 34.775066, 41.145737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.816574, 34.239491, 40.778435>,  <33.049801, 34.765572, 41.161175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.816574, 34.239491, 40.778435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.505013, 34.489113, 40.753559>,  <32.318077, 34.638885, 40.738632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.505013, 34.489113, 40.753559>,  <32.816574, 34.239491, 40.778435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505013, 34.489113, 40.753559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032672, -0.058652, -0.997743,
		-0.626294, -0.779176, 0.025295,
		-0.778902, 0.624055, -0.062191,
		32.271343, 34.676331, 40.734901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441517, 34.046734, 40.233269>,  <32.816574, 34.239491, 40.778435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441517, 34.046734, 40.233269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.309204, 34.423710, 40.252850>,  <32.229816, 34.649895, 40.264599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.309204, 34.423710, 40.252850>,  <32.441517, 34.046734, 40.233269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309204, 34.423710, 40.252850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022672, 0.059789, -0.997954,
		-0.943435, -0.328994, -0.041144,
		-0.330780, 0.942438, 0.048948,
		32.209969, 34.706440, 40.267532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923048, 34.082718, 39.803162>,  <32.441517, 34.046734, 40.233269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923048, 34.082718, 39.803162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.011429, 34.471573, 39.834480>,  <32.064457, 34.704887, 39.853271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.011429, 34.471573, 39.834480>,  <31.923048, 34.082718, 39.803162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011429, 34.471573, 39.834480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081916, 0.098499, -0.991760,
		-0.971839, 0.212715, 0.101397,
		0.220950, 0.972137, 0.078301,
		32.077713, 34.763214, 39.857971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.403099, 34.416771, 39.341728>,  <31.923048, 34.082718, 39.803162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.403099, 34.416771, 39.341728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.712055, 34.662811, 39.405045>,  <31.897429, 34.810436, 39.443035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.712055, 34.662811, 39.405045>,  <31.403099, 34.416771, 39.341728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.712055, 34.662811, 39.405045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003444, 0.253279, -0.967387,
		-0.635136, 0.746657, 0.197750,
		0.772393, 0.615103, 0.158295,
		31.943773, 34.847343, 39.452534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.249975, 34.983124, 38.985748>,  <31.403099, 34.416771, 39.341728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.249975, 34.983124, 38.985748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.643721, 35.016724, 39.047680>,  <31.879969, 35.036884, 39.084839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.643721, 35.016724, 39.047680>,  <31.249975, 34.983124, 38.985748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.643721, 35.016724, 39.047680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119627, 0.326423, -0.937623,
		-0.129297, 0.941484, 0.311271,
		0.984364, 0.083995, 0.154833,
		31.939030, 35.041924, 39.094131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.372217, 35.595139, 38.581413>,  <31.249975, 34.983124, 38.985748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.372217, 35.595139, 38.581413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.712223, 35.394722, 38.646439>,  <31.916227, 35.274471, 38.685455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.712223, 35.394722, 38.646439>,  <31.372217, 35.595139, 38.581413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.712223, 35.394722, 38.646439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139231, -0.083933, -0.986696,
		0.508024, 0.861342, -0.001584,
		0.850016, -0.501045, 0.162565,
		31.967228, 35.244408, 38.695210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875845, 35.946701, 38.086136>,  <31.372217, 35.595139, 38.581413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.875845, 35.946701, 38.086136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.023262, 35.586887, 38.179958>,  <32.111713, 35.370998, 38.236252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.023262, 35.586887, 38.179958>,  <31.875845, 35.946701, 38.086136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023262, 35.586887, 38.179958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227174, -0.157515, -0.961031,
		0.901426, 0.407466, 0.146299,
		0.368543, -0.899534, 0.234554,
		32.133823, 35.317028, 38.250324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597843, 35.922874, 37.772064>,  <31.875845, 35.946701, 38.086136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597843, 35.922874, 37.772064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.530521, 35.533604, 37.834805>,  <32.490128, 35.300041, 37.872448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.530521, 35.533604, 37.834805>,  <32.597843, 35.922874, 37.772064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.530521, 35.533604, 37.834805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567137, -0.225742, -0.792084,
		0.806245, -0.044353, 0.589917,
		-0.168300, -0.973177, 0.156849,
		32.480030, 35.241650, 37.881859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299034, 35.521324, 37.893085>,  <32.597843, 35.922874, 37.772064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299034, 35.521324, 37.893085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.014900, 35.272945, 37.760509>,  <32.844421, 35.123920, 37.680962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.014900, 35.272945, 37.760509>,  <33.299034, 35.521324, 37.893085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014900, 35.272945, 37.760509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509744, -0.129105, -0.850584,
		0.485374, -0.773149, 0.408230,
		-0.710333, -0.620945, -0.331444,
		32.801800, 35.086662, 37.661076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645576, 34.933861, 37.536903>,  <33.299034, 35.521324, 37.893085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645576, 34.933861, 37.536903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.277855, 34.950886, 37.380409>,  <33.057220, 34.961102, 37.286510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.277855, 34.950886, 37.380409>,  <33.645576, 34.933861, 37.536903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277855, 34.950886, 37.380409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393024, 0.048017, -0.918274,
		-0.020300, -0.997939, -0.060871,
		-0.919304, 0.042564, -0.391239,
		33.002064, 34.963654, 37.263039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830917, 34.516300, 37.092621>,  <33.645576, 34.933861, 37.536903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830917, 34.516300, 37.092621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.471066, 34.643269, 36.972683>,  <33.255154, 34.719448, 36.900723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.471066, 34.643269, 36.972683>,  <33.830917, 34.516300, 37.092621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471066, 34.643269, 36.972683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197527, -0.316564, -0.927777,
		-0.389416, -0.893885, 0.222092,
		-0.899632, 0.317422, -0.299841,
		33.201176, 34.738495, 36.882732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549606, 34.089455, 36.622387>,  <33.830917, 34.516300, 37.092621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549606, 34.089455, 36.622387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.338318, 34.414654, 36.524399>,  <33.211544, 34.609776, 36.465607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.338318, 34.414654, 36.524399>,  <33.549606, 34.089455, 36.622387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338318, 34.414654, 36.524399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166936, -0.183434, -0.968754,
		-0.832534, -0.552612, -0.038826,
		-0.528223, 0.813002, -0.244966,
		33.179852, 34.658554, 36.450909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322708, 33.953514, 35.989956>,  <33.549606, 34.089455, 36.622387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322708, 33.953514, 35.989956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.294987, 34.351234, 36.022350>,  <33.278355, 34.589867, 36.041786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.294987, 34.351234, 36.022350>,  <33.322708, 33.953514, 35.989956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294987, 34.351234, 36.022350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377300, 0.101278, -0.920537,
		-0.923494, -0.033244, -0.382169,
		-0.069308, 0.994302, 0.080987,
		33.274193, 34.649525, 36.046646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967743, 34.195843, 35.316555>,  <33.322708, 33.953514, 35.989956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967743, 34.195843, 35.316555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.180328, 34.488907, 35.486614>,  <33.307880, 34.664745, 35.588650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.180328, 34.488907, 35.486614>,  <32.967743, 34.195843, 35.316555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180328, 34.488907, 35.486614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314462, 0.295389, -0.902141,
		-0.786549, 0.613149, -0.073406,
		0.531464, 0.732662, 0.425150,
		33.339767, 34.708706, 35.614159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.917656, 34.530575, 34.750313>,  <32.967743, 34.195843, 35.316555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.917656, 34.530575, 34.750313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.190754, 34.719208, 34.973553>,  <33.354610, 34.832386, 35.107498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.190754, 34.719208, 34.973553>,  <32.917656, 34.530575, 34.750313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190754, 34.719208, 34.973553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318853, 0.494968, -0.808294,
		-0.657417, 0.729808, 0.187571,
		0.682741, 0.471579, 0.558102,
		33.395576, 34.860680, 35.140984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946354, 35.273655, 34.456944>,  <32.917656, 34.530575, 34.750313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946354, 35.273655, 34.456944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.289780, 35.202862, 34.649422>,  <33.495834, 35.160385, 34.764908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.289780, 35.202862, 34.649422>,  <32.946354, 35.273655, 34.456944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289780, 35.202862, 34.649422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486613, 0.576877, -0.656065,
		-0.161477, 0.797428, 0.581407,
		0.858564, -0.176981, 0.481191,
		33.547348, 35.149769, 34.793777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349827, 36.013882, 34.587223>,  <32.946354, 35.273655, 34.456944>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349827, 36.013882, 34.587223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.606915, 35.708187, 34.608574>,  <33.761169, 35.524769, 34.621384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.606915, 35.708187, 34.608574>,  <33.349827, 36.013882, 34.587223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.606915, 35.708187, 34.608574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666276, 0.523226, -0.531330,
		0.378134, 0.377061, 0.845482,
		0.642722, -0.764238, 0.053377,
		33.799732, 35.478916, 34.624588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988422, 36.290894, 34.719265>,  <33.349827, 36.013882, 34.587223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988422, 36.290894, 34.719265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.096741, 35.929459, 34.586475>,  <34.161732, 35.712597, 34.506802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.096741, 35.929459, 34.586475>,  <33.988422, 36.290894, 34.719265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096741, 35.929459, 34.586475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827503, 0.394700, -0.399314,
		0.491842, -0.166573, 0.854602,
		0.270796, -0.903585, -0.331969,
		34.177979, 35.658382, 34.486885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738781, 36.301552, 34.783089>,  <33.988422, 36.290894, 34.719265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738781, 36.301552, 34.783089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.641617, 36.020996, 34.515045>,  <34.583321, 35.852661, 34.354218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.641617, 36.020996, 34.515045>,  <34.738781, 36.301552, 34.783089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641617, 36.020996, 34.515045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758278, 0.293537, -0.582108,
		0.604988, -0.649526, 0.460549,
		-0.242906, -0.701393, -0.670108,
		34.568745, 35.810577, 34.314014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420151, 35.902065, 34.635754>,  <34.738781, 36.301552, 34.783089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420151, 35.902065, 34.635754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.163929, 35.877346, 34.329586>,  <35.010197, 35.862514, 34.145885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.163929, 35.877346, 34.329586>,  <35.420151, 35.902065, 34.635754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163929, 35.877346, 34.329586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716598, 0.310153, -0.624734,
		0.276000, -0.948676, -0.154392,
		-0.640555, -0.061789, -0.765422,
		34.971764, 35.858807, 34.099960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878517, 35.585133, 34.036247>,  <35.420151, 35.902065, 34.635754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878517, 35.585133, 34.036247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.564472, 35.815094, 33.944084>,  <35.376045, 35.953072, 33.888786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.564472, 35.815094, 33.944084>,  <35.878517, 35.585133, 34.036247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564472, 35.815094, 33.944084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587383, 0.573156, -0.571378,
		-0.196429, -0.583931, -0.787680,
		-0.785110, 0.574905, -0.230407,
		35.328938, 35.987564, 33.874962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833412, 35.042461, 34.390900>,  <35.878517, 35.585133, 34.036247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833412, 35.042461, 34.390900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.227009, 34.997200, 34.445961>,  <36.463169, 34.970043, 34.478996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.227009, 34.997200, 34.445961>,  <35.833412, 35.042461, 34.390900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227009, 34.997200, 34.445961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175325, -0.476815, 0.861341,
		-0.031831, -0.871690, -0.489023,
		0.983996, -0.113155, 0.137652,
		36.522209, 34.963253, 34.487255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027645, 34.356823, 34.501419>,  <35.833412, 35.042461, 34.390900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027645, 34.356823, 34.501419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.285751, 34.600334, 34.686035>,  <36.440617, 34.746441, 34.796806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.285751, 34.600334, 34.686035>,  <36.027645, 34.356823, 34.501419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285751, 34.600334, 34.686035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176469, -0.469034, 0.865370,
		0.743298, -0.639841, -0.195221,
		0.645265, 0.608778, 0.461544,
		36.479332, 34.782967, 34.824497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366756, 33.850491, 34.821445>,  <36.027645, 34.356823, 34.501419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366756, 33.850491, 34.821445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.436501, 34.195667, 35.011150>,  <36.478348, 34.402775, 35.124973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.436501, 34.195667, 35.011150>,  <36.366756, 33.850491, 34.821445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436501, 34.195667, 35.011150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009798, -0.480099, 0.877159,
		0.984634, -0.157587, -0.075254,
		0.174359, 0.862943, 0.474266,
		36.488808, 34.454552, 35.153431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920616, 33.812126, 35.465019>,  <36.366756, 33.850491, 34.821445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920616, 33.812126, 35.465019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.698723, 34.136864, 35.537880>,  <36.565586, 34.331707, 35.581596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.698723, 34.136864, 35.537880>,  <36.920616, 33.812126, 35.465019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698723, 34.136864, 35.537880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088020, -0.274957, 0.957419,
		0.827361, 0.515077, 0.223986,
		-0.554731, 0.811846, 0.182152,
		36.532303, 34.380417, 35.592525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995934, 33.834499, 36.171638>,  <36.920616, 33.812126, 35.465019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995934, 33.834499, 36.171638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.728252, 34.125839, 36.112751>,  <36.567642, 34.300644, 36.077419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.728252, 34.125839, 36.112751>,  <36.995934, 33.834499, 36.171638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728252, 34.125839, 36.112751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219056, -0.004058, 0.975704,
		0.710054, 0.685196, 0.162264,
		-0.669207, 0.728348, -0.147215,
		36.527489, 34.344345, 36.068588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125977, 34.342442, 36.722668>,  <36.995934, 33.834499, 36.171638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125977, 34.342442, 36.722668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.742325, 34.360744, 36.610973>,  <36.512135, 34.371727, 36.543957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.742325, 34.360744, 36.610973>,  <37.125977, 34.342442, 36.722668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742325, 34.360744, 36.610973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281725, -0.246583, 0.927269,
		-0.026429, 0.968040, 0.249396,
		-0.959131, 0.045755, -0.279239,
		36.454586, 34.374470, 36.527203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799164, 34.562138, 37.424648>,  <37.125977, 34.342442, 36.722668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799164, 34.562138, 37.424648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.503941, 34.445763, 37.181133>,  <36.326805, 34.375938, 37.035023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.503941, 34.445763, 37.181133>,  <36.799164, 34.562138, 37.424648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503941, 34.445763, 37.181133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571262, -0.210709, 0.793260,
		-0.359064, 0.933252, -0.010684,
		-0.738060, -0.290934, -0.608789,
		36.282524, 34.358482, 36.998497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203293, 34.826241, 37.800018>,  <36.799164, 34.562138, 37.424648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203293, 34.826241, 37.800018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.102901, 34.531002, 37.549511>,  <36.042667, 34.353859, 37.399204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.102901, 34.531002, 37.549511>,  <36.203293, 34.826241, 37.800018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102901, 34.531002, 37.549511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538809, -0.430966, 0.723846,
		-0.804173, 0.519111, -0.289532,
		-0.250978, -0.738100, -0.626273,
		36.027607, 34.309570, 37.361629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473244, 34.701717, 37.935780>,  <36.203293, 34.826241, 37.800018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473244, 34.701717, 37.935780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.555927, 34.359962, 37.745075>,  <35.605537, 34.154911, 37.630653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.555927, 34.359962, 37.745075>,  <35.473244, 34.701717, 37.935780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555927, 34.359962, 37.745075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542552, -0.505597, 0.670828,
		-0.814192, 0.119997, -0.568060,
		0.206712, -0.854384, -0.476758,
		35.617943, 34.103645, 37.602047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885120, 34.435501, 37.700783>,  <35.473244, 34.701717, 37.935780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885120, 34.435501, 37.700783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.155453, 34.143330, 37.740246>,  <35.317650, 33.968029, 37.763924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.155453, 34.143330, 37.740246>,  <34.885120, 34.435501, 37.700783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155453, 34.143330, 37.740246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559319, -0.421070, 0.714046,
		-0.480018, -0.537752, -0.693113,
		0.675829, -0.730426, 0.098654,
		35.358200, 33.924202, 37.769840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467175, 33.782669, 37.922974>,  <34.885120, 34.435501, 37.700783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467175, 33.782669, 37.922974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.850880, 33.697868, 37.997669>,  <35.081104, 33.646988, 38.042484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.850880, 33.697868, 37.997669>,  <34.467175, 33.782669, 37.922974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850880, 33.697868, 37.997669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268261, -0.476212, 0.837412,
		-0.088606, -0.853392, -0.513684,
		0.959263, -0.212001, 0.186736,
		35.138657, 33.634270, 38.053692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599888, 32.953136, 37.929585>,  <34.467175, 33.782669, 37.922974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599888, 32.953136, 37.929585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.871349, 33.142090, 38.154545>,  <35.034225, 33.255463, 38.289520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.871349, 33.142090, 38.154545>,  <34.599888, 32.953136, 37.929585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871349, 33.142090, 38.154545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252404, -0.569090, 0.782578,
		0.689730, -0.673048, -0.266982,
		0.678650, 0.472380, 0.562399,
		35.074944, 33.283802, 38.323265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724579, 32.606583, 38.445610>,  <34.599888, 32.953136, 37.929585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724579, 32.606583, 38.445610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.932571, 32.891228, 38.634598>,  <35.057365, 33.062016, 38.747990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.932571, 32.891228, 38.634598>,  <34.724579, 32.606583, 38.445610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932571, 32.891228, 38.634598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381692, -0.301264, 0.873814,
		0.764156, -0.634703, 0.114966,
		0.519978, 0.711612, 0.472474,
		35.088566, 33.104710, 38.776340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080551, 32.347279, 39.002930>,  <34.724579, 32.606583, 38.445610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080551, 32.347279, 39.002930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.046780, 32.731472, 39.109024>,  <35.026516, 32.961987, 39.172680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.046780, 32.731472, 39.109024>,  <35.080551, 32.347279, 39.002930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046780, 32.731472, 39.109024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218822, -0.277562, 0.935455,
		0.972106, 0.020939, 0.233608,
		-0.084428, 0.960480, 0.265237,
		35.021450, 33.019615, 39.188595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449898, 32.401978, 39.614822>,  <35.080551, 32.347279, 39.002930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449898, 32.401978, 39.614822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.199406, 32.713287, 39.596375>,  <35.049110, 32.900074, 39.585304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.199406, 32.713287, 39.596375>,  <35.449898, 32.401978, 39.614822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199406, 32.713287, 39.596375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103694, -0.024509, 0.994307,
		0.772714, 0.627445, 0.096051,
		-0.626227, 0.778275, -0.046124,
		35.011536, 32.946770, 39.582539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762909, 32.823784, 40.083755>,  <35.449898, 32.401978, 39.614822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762909, 32.823784, 40.083755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.374825, 32.914848, 40.050636>,  <35.141972, 32.969486, 40.030766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.374825, 32.914848, 40.050636>,  <35.762909, 32.823784, 40.083755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374825, 32.914848, 40.050636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057918, 0.113881, 0.991805,
		0.235222, 0.967059, -0.097304,
		-0.970214, 0.227659, -0.082797,
		35.083759, 32.983147, 40.025799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749084, 33.269859, 40.562279>,  <35.762909, 32.823784, 40.083755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749084, 33.269859, 40.562279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.366909, 33.168839, 40.501160>,  <35.137604, 33.108227, 40.464489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.366909, 33.168839, 40.501160>,  <35.749084, 33.269859, 40.562279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366909, 33.168839, 40.501160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189196, 0.126642, 0.973738,
		-0.226570, 0.959259, -0.168782,
		-0.955443, -0.252553, -0.152795,
		35.080276, 33.093071, 40.455322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.384666, 33.835667, 40.877064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.127968, 33.530373, 40.847046>,  <34.973949, 33.347198, 40.829037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.127968, 33.530373, 40.847046>,  <35.384666, 33.835667, 40.877064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127968, 33.530373, 40.847046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199534, 0.071688, 0.977265,
		-0.740501, 0.642135, -0.198297,
		-0.641751, -0.763233, -0.075043,
		34.935444, 33.301403, 40.824532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771069, 34.085197, 41.209785>,  <35.384666, 33.835667, 40.877064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771069, 34.085197, 41.209785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.738251, 33.686546, 41.210400>,  <34.718559, 33.447357, 41.210770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.738251, 33.686546, 41.210400>,  <34.771069, 34.085197, 41.209785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738251, 33.686546, 41.210400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327667, 0.028429, 0.944366,
		-0.941225, 0.076973, -0.328894,
		-0.082041, -0.996628, 0.001536,
		34.713638, 33.387558, 41.210861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110161, 34.019222, 41.431564>,  <34.771069, 34.085197, 41.209785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110161, 34.019222, 41.431564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.258244, 33.651493, 41.484917>,  <34.347092, 33.430855, 41.516926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.258244, 33.651493, 41.484917>,  <34.110161, 34.019222, 41.431564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258244, 33.651493, 41.484917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448001, -0.050908, 0.892583,
		-0.813782, -0.390195, -0.430704,
		0.370208, -0.919324, 0.133379,
		34.369305, 33.375694, 41.524929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530083, 33.602310, 41.602322>,  <34.110161, 34.019222, 41.431564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530083, 33.602310, 41.602322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.854130, 33.428303, 41.759529>,  <34.048557, 33.323898, 41.853851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.854130, 33.428303, 41.759529>,  <33.530083, 33.602310, 41.602322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.854130, 33.428303, 41.759529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533802, -0.270149, 0.801296,
		-0.242393, -0.858947, -0.451061,
		0.810124, -0.435006, 0.393025,
		34.097164, 33.297798, 41.877434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262398, 33.013100, 41.999687>,  <33.530083, 33.602310, 41.602322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262398, 33.013100, 41.999687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.627823, 33.123791, 42.118904>,  <33.847076, 33.190205, 42.190434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.627823, 33.123791, 42.118904>,  <33.262398, 33.013100, 41.999687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627823, 33.123791, 42.118904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258563, -0.170484, 0.950831,
		0.313932, -0.945705, -0.084197,
		0.913560, 0.276727, 0.298044,
		33.901890, 33.206810, 42.208317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136227, 32.922581, 42.700794>,  <33.262398, 33.013100, 41.999687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.136227, 32.922581, 42.700794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.512886, 33.056892, 42.691334>,  <33.738880, 33.137478, 42.685658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.512886, 33.056892, 42.691334>,  <33.136227, 32.922581, 42.700794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512886, 33.056892, 42.691334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039947, -0.041696, 0.998331,
		0.334231, -0.941018, -0.052676,
		0.941645, 0.335777, -0.023655,
		33.795380, 33.157627, 42.684238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530689, 32.511066, 43.309765>,  <33.136227, 32.922581, 42.700794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530689, 32.511066, 43.309765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.729462, 32.839077, 43.196194>,  <33.848724, 33.035885, 43.128052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.729462, 32.839077, 43.196194>,  <33.530689, 32.511066, 43.309765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729462, 32.839077, 43.196194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191575, 0.215443, 0.957540,
		0.846379, -0.530225, -0.050036,
		0.496932, 0.820027, -0.283925,
		33.878540, 33.085087, 43.111015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225700, 32.520485, 43.686481>,  <33.530689, 32.511066, 43.309765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225700, 32.520485, 43.686481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.137905, 32.896854, 43.583340>,  <34.085228, 33.122677, 43.521454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.137905, 32.896854, 43.583340>,  <34.225700, 32.520485, 43.686481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137905, 32.896854, 43.583340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278789, 0.313772, 0.907648,
		0.934934, 0.127332, -0.331188,
		-0.219490, 0.940922, -0.257857,
		34.072060, 33.179131, 43.505981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792145, 32.961227, 43.756119>,  <34.225700, 32.520485, 43.686481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792145, 32.961227, 43.756119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.475422, 33.202347, 43.795471>,  <34.285389, 33.347019, 43.819084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.475422, 33.202347, 43.795471>,  <34.792145, 32.961227, 43.756119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475422, 33.202347, 43.795471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284013, 0.220778, 0.933056,
		0.540722, 0.766742, -0.346015,
		-0.791806, 0.602797, 0.098385,
		34.237881, 33.383186, 43.824986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092617, 33.518589, 44.169353>,  <34.792145, 32.961227, 43.756119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092617, 33.518589, 44.169353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.695072, 33.561466, 44.180344>,  <34.456547, 33.587193, 44.186939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.695072, 33.561466, 44.180344>,  <35.092617, 33.518589, 44.169353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695072, 33.561466, 44.180344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048949, 0.203142, 0.977925,
		0.099247, 0.973264, -0.207141,
		-0.993858, 0.107196, 0.027479,
		34.396915, 33.593624, 44.188587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960258, 34.214508, 44.415821>,  <35.092617, 33.518589, 44.169353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960258, 34.214508, 44.415821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.634628, 33.995617, 44.493607>,  <34.439251, 33.864281, 44.540279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.634628, 33.995617, 44.493607>,  <34.960258, 34.214508, 44.415821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634628, 33.995617, 44.493607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046419, 0.272461, 0.961047,
		-0.578896, 0.791395, -0.196403,
		-0.814079, -0.547229, 0.194463,
		34.390404, 33.831448, 44.551945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562103, 34.620911, 44.886452>,  <34.960258, 34.214508, 44.415821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562103, 34.620911, 44.886452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.390095, 34.261574, 44.922359>,  <34.286888, 34.045971, 44.943905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.390095, 34.261574, 44.922359>,  <34.562103, 34.620911, 44.886452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390095, 34.261574, 44.922359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040394, 0.080183, 0.995961,
		-0.901914, 0.431912, 0.001807,
		-0.430023, -0.898344, 0.089765,
		34.261089, 33.992069, 44.949287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027832, 34.658970, 45.429138>,  <34.562103, 34.620911, 44.886452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027832, 34.658970, 45.429138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.119705, 34.269665, 45.428406>,  <34.174828, 34.036083, 45.427967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.119705, 34.269665, 45.428406>,  <34.027832, 34.658970, 45.429138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119705, 34.269665, 45.428406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137373, -0.034280, 0.989926,
		-0.963522, -0.227118, -0.141574,
		0.229684, -0.973263, -0.001830,
		34.188610, 33.977684, 45.427856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427322, 34.255901, 45.882202>,  <34.027832, 34.658970, 45.429138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427322, 34.255901, 45.882202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.762028, 34.037754, 45.862598>,  <33.962852, 33.906864, 45.850838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.762028, 34.037754, 45.862598>,  <33.427322, 34.255901, 45.882202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762028, 34.037754, 45.862598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150623, -0.315302, 0.936962,
		-0.526444, -0.776632, -0.345978,
		0.836762, -0.545370, -0.049010,
		34.013058, 33.874142, 45.847897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248226, 33.726330, 46.364502>,  <33.427322, 34.255901, 45.882202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.248226, 33.726330, 46.364502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.641792, 33.706760, 46.295792>,  <33.877934, 33.695019, 46.254566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.641792, 33.706760, 46.295792>,  <33.248226, 33.726330, 46.364502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.641792, 33.706760, 46.295792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151084, -0.284991, 0.946548,
		-0.095264, -0.957281, -0.273017,
		0.983920, -0.048923, -0.171779,
		33.936970, 33.692081, 46.244259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391483, 33.224556, 46.706070>,  <33.248226, 33.726330, 46.364502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391483, 33.224556, 46.706070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.750816, 33.391369, 46.650806>,  <33.966415, 33.491455, 46.617649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.750816, 33.391369, 46.650806>,  <33.391483, 33.224556, 46.706070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750816, 33.391369, 46.650806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260828, -0.253224, 0.931583,
		0.353514, -0.872905, -0.336252,
		0.898330, 0.417031, -0.138159,
		34.020317, 33.516479, 46.609360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.974201, 32.607513, 46.810898>,  <33.391483, 33.224556, 46.706070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.974201, 32.607513, 46.810898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.126804, 32.975014, 46.851608>,  <34.218365, 33.195515, 46.876034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.126804, 32.975014, 46.851608>,  <33.974201, 32.607513, 46.810898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126804, 32.975014, 46.851608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261233, -0.212773, 0.941533,
		0.886684, -0.332616, -0.321182,
		0.381508, 0.918746, 0.101772,
		34.241257, 33.250637, 46.882141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621735, 32.459099, 47.105030>,  <33.974201, 32.607513, 46.810898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621735, 32.459099, 47.105030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.521145, 32.836334, 47.192062>,  <34.460793, 33.062675, 47.244282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.521145, 32.836334, 47.192062>,  <34.621735, 32.459099, 47.105030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521145, 32.836334, 47.192062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092876, -0.200257, 0.975331,
		0.963398, 0.265479, -0.037231,
		-0.251474, 0.943090, 0.217584,
		34.445702, 33.119263, 47.257336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071186, 32.705544, 47.734081>,  <34.621735, 32.459099, 47.105030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071186, 32.705544, 47.734081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.791672, 32.991501, 47.724052>,  <34.623962, 33.163074, 47.718033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.791672, 32.991501, 47.724052>,  <35.071186, 32.705544, 47.734081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791672, 32.991501, 47.724052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194352, -0.156005, 0.968447,
		0.688425, 0.681608, 0.247954,
		-0.698784, 0.714893, -0.025074,
		34.582035, 33.205971, 47.716530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195843, 32.954662, 48.337940>,  <35.071186, 32.705544, 47.734081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195843, 32.954662, 48.337940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.824978, 33.063244, 48.234642>,  <34.602459, 33.128391, 48.172661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.824978, 33.063244, 48.234642>,  <35.195843, 32.954662, 48.337940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824978, 33.063244, 48.234642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286930, -0.071191, 0.955303,
		0.240934, 0.959815, 0.143893,
		-0.927158, 0.271452, -0.258248,
		34.546829, 33.144680, 48.157169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994492, 33.506416, 48.805733>,  <35.195843, 32.954662, 48.337940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994492, 33.506416, 48.805733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.646229, 33.386742, 48.649555>,  <34.437271, 33.314938, 48.555847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.646229, 33.386742, 48.649555>,  <34.994492, 33.506416, 48.805733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646229, 33.386742, 48.649555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339642, -0.208512, 0.917151,
		-0.355807, 0.931135, 0.079928,
		-0.870657, -0.299182, -0.390443,
		34.385033, 33.296986, 48.532421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462418, 33.812061, 49.188648>,  <34.994492, 33.506416, 48.805733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462418, 33.812061, 49.188648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.291027, 33.486526, 49.031635>,  <34.188194, 33.291206, 48.937428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.291027, 33.486526, 49.031635>,  <34.462418, 33.812061, 49.188648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291027, 33.486526, 49.031635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416008, -0.207956, 0.885264,
		-0.802088, 0.542610, -0.249458,
		-0.428477, -0.813836, -0.392529,
		34.162483, 33.242374, 48.913876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679447, 33.789165, 49.271652>,  <34.462418, 33.812061, 49.188648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679447, 33.789165, 49.271652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.825386, 33.417473, 49.248245>,  <33.912949, 33.194458, 49.234200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.825386, 33.417473, 49.248245>,  <33.679447, 33.789165, 49.271652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825386, 33.417473, 49.248245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338703, -0.191005, 0.921302,
		-0.867276, -0.316312, -0.384419,
		0.364845, -0.929228, -0.058518,
		33.934841, 33.138706, 49.230690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171761, 33.246902, 49.483337>,  <33.679447, 33.789165, 49.271652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171761, 33.246902, 49.483337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.541462, 33.101974, 49.531464>,  <33.763283, 33.015018, 49.560341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.541462, 33.101974, 49.531464>,  <33.171761, 33.246902, 49.483337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541462, 33.101974, 49.531464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345209, -0.658551, 0.668686,
		-0.163041, -0.659572, -0.733745,
		0.924256, -0.362319, 0.120320,
		33.818737, 32.993279, 49.567558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.499668, 33.544342, 49.498417>,  <33.171761, 33.246902, 49.483337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.499668, 33.544342, 49.498417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.126461, 33.419106, 49.427471>,  <31.902538, 33.343964, 49.384903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.126461, 33.419106, 49.427471>,  <32.499668, 33.544342, 49.498417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.126461, 33.419106, 49.427471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054556, 0.364114, -0.929755,
		0.355663, -0.877157, -0.322646,
		-0.933021, -0.313077, -0.177356,
		31.846556, 33.325176, 49.374264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513081, 33.057262, 48.911499>,  <32.499668, 33.544342, 49.498417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513081, 33.057262, 48.911499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.138077, 33.195225, 48.929935>,  <31.913076, 33.278004, 48.940998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.138077, 33.195225, 48.929935>,  <32.513081, 33.057262, 48.911499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138077, 33.195225, 48.929935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014768, 0.171771, -0.985026,
		-0.347658, -0.922787, -0.166129,
		-0.937505, 0.344905, 0.046090,
		31.856825, 33.298695, 48.943764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949039, 32.673943, 48.551540>,  <32.513081, 33.057262, 48.911499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949039, 32.673943, 48.551540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.825951, 33.054428, 48.560539>,  <31.752098, 33.282719, 48.565941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.825951, 33.054428, 48.560539>,  <31.949039, 32.673943, 48.551540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825951, 33.054428, 48.560539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018530, 0.029633, -0.999389,
		-0.951296, -0.307117, -0.026744,
		-0.307722, 0.951210, 0.022499,
		31.733633, 33.339790, 48.567287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.616205, 32.795357, 47.918953>,  <31.949039, 32.673943, 48.551540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.616205, 32.795357, 47.918953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.510429, 33.166782, 48.023132>,  <31.446964, 33.389637, 48.085640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.510429, 33.166782, 48.023132>,  <31.616205, 32.795357, 47.918953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.510429, 33.166782, 48.023132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208842, 0.208517, -0.955461,
		-0.941518, -0.307056, 0.138783,
		-0.264441, 0.928567, 0.260449,
		31.431097, 33.445354, 48.101269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.828756, 32.979839, 47.730453>,  <31.616205, 32.795357, 47.918953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.828756, 32.979839, 47.730453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.064177, 33.302437, 47.752991>,  <31.205429, 33.495995, 47.766514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.064177, 33.302437, 47.752991>,  <30.828756, 32.979839, 47.730453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.064177, 33.302437, 47.752991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129199, 0.162619, -0.978194,
		-0.798070, 0.568438, 0.199907,
		0.588551, 0.806495, 0.056340,
		31.240742, 33.544384, 47.769894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.480701, 33.402096, 47.268364>,  <30.828756, 32.979839, 47.730453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.480701, 33.402096, 47.268364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.843483, 33.564140, 47.314541>,  <31.061152, 33.661366, 47.342247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.843483, 33.564140, 47.314541>,  <30.480701, 33.402096, 47.268364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843483, 33.564140, 47.314541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028031, 0.215413, -0.976121,
		-0.420301, 0.888530, 0.184014,
		0.906951, 0.405107, 0.115445,
		31.115568, 33.685673, 47.349174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.456606, 34.064358, 46.969357>,  <30.480701, 33.402096, 47.268364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.456606, 34.064358, 46.969357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.842190, 33.957939, 46.968792>,  <31.073540, 33.894089, 46.968452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.842190, 33.957939, 46.968792>,  <30.456606, 34.064358, 46.969357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.842190, 33.957939, 46.968792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050875, 0.189551, -0.980552,
		0.261142, 0.945140, 0.196255,
		0.963959, -0.266047, -0.001416,
		31.131378, 33.878124, 46.968369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.730299, 34.465954, 46.558094>,  <30.456606, 34.064358, 46.969357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.730299, 34.465954, 46.558094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.033272, 34.205452, 46.576691>,  <31.215055, 34.049152, 46.587849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.033272, 34.205452, 46.576691>,  <30.730299, 34.465954, 46.558094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.033272, 34.205452, 46.576691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277667, 0.256848, -0.925705,
		0.590929, 0.714069, 0.375378,
		0.757433, -0.651256, 0.046495,
		31.260502, 34.010075, 46.590641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.306772, 34.713272, 46.225918>,  <30.730299, 34.465954, 46.558094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.306772, 34.713272, 46.225918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.373892, 34.319916, 46.198254>,  <31.414164, 34.083900, 46.181656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.373892, 34.319916, 46.198254>,  <31.306772, 34.713272, 46.225918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.373892, 34.319916, 46.198254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228206, 0.106998, -0.967716,
		0.959044, 0.146601, 0.242371,
		0.167801, -0.983392, -0.069160,
		31.424232, 34.024899, 46.177505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875021, 34.676071, 45.788460>,  <31.306772, 34.713272, 46.225918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.875021, 34.676071, 45.788460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.703793, 34.314884, 45.773464>,  <31.601055, 34.098171, 45.764469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.703793, 34.314884, 45.773464>,  <31.875021, 34.676071, 45.788460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703793, 34.314884, 45.773464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139881, -0.025221, -0.989847,
		0.892855, -0.428967, 0.137105,
		-0.428070, -0.902968, -0.037486,
		31.575371, 34.043995, 45.762218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238884, 34.265087, 45.451706>,  <31.875021, 34.676071, 45.788460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238884, 34.265087, 45.451706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.921337, 34.024586, 45.415356>,  <31.730808, 33.880283, 45.393547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.921337, 34.024586, 45.415356>,  <32.238884, 34.265087, 45.451706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921337, 34.024586, 45.415356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203714, -0.122157, -0.971380,
		0.572949, -0.789662, 0.219461,
		-0.793870, -0.601258, -0.090876,
		31.683176, 33.844208, 45.388092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531136, 33.676250, 44.974239>,  <32.238884, 34.265087, 45.451706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531136, 33.676250, 44.974239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.131653, 33.686325, 44.956543>,  <31.891964, 33.692368, 44.945927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.131653, 33.686325, 44.956543>,  <32.531136, 33.676250, 44.974239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131653, 33.686325, 44.956543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042702, -0.058541, -0.997371,
		-0.027705, -0.997967, 0.057390,
		-0.998704, 0.025181, -0.044237,
		31.832043, 33.693882, 44.943272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.225536, 33.083443, 44.521370>,  <32.531136, 33.676250, 44.974239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.225536, 33.083443, 44.521370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.975323, 33.395435, 44.513988>,  <31.825193, 33.582630, 44.509560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.975323, 33.395435, 44.513988>,  <32.225536, 33.083443, 44.521370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975323, 33.395435, 44.513988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173405, 0.115931, -0.978004,
		-0.760681, -0.614976, -0.207771,
		-0.625536, 0.779977, -0.018453,
		31.787663, 33.629429, 44.508453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.936689, 32.977600, 43.944958>,  <32.225536, 33.083443, 44.521370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.936689, 32.977600, 43.944958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.822014, 33.355789, 44.006790>,  <31.753208, 33.582703, 44.043888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.822014, 33.355789, 44.006790>,  <31.936689, 32.977600, 43.944958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.822014, 33.355789, 44.006790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161237, 0.206669, -0.965034,
		-0.944358, -0.251739, -0.211694,
		-0.286687, 0.945471, 0.154580,
		31.736008, 33.639431, 44.053165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.503220, 33.129093, 43.320045>,  <31.936689, 32.977600, 43.944958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.503220, 33.129093, 43.320045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.620928, 33.477268, 43.477905>,  <31.691553, 33.686172, 43.572620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.620928, 33.477268, 43.477905>,  <31.503220, 33.129093, 43.320045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.620928, 33.477268, 43.477905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059195, 0.395537, -0.916540,
		-0.953887, 0.293071, 0.064869,
		0.294270, 0.870436, 0.394646,
		31.709209, 33.738400, 43.596298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.069725, 33.658234, 43.032070>,  <31.503220, 33.129093, 43.320045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.069725, 33.658234, 43.032070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.414354, 33.823254, 43.150387>,  <31.621132, 33.922268, 43.221378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.414354, 33.823254, 43.150387>,  <31.069725, 33.658234, 43.032070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.414354, 33.823254, 43.150387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050868, 0.509590, -0.858912,
		-0.505080, 0.755061, 0.418063,
		0.861572, 0.412554, 0.295792,
		31.672827, 33.947021, 43.239124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937227, 34.316742, 43.170872>,  <31.069725, 33.658234, 43.032070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937227, 34.316742, 43.170872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.324572, 34.274010, 43.080658>,  <31.556978, 34.248371, 43.026531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.324572, 34.274010, 43.080658>,  <30.937227, 34.316742, 43.170872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.324572, 34.274010, 43.080658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099770, 0.662632, -0.742270,
		0.228744, 0.741286, 0.631008,
		0.968361, -0.106834, -0.225531,
		31.615080, 34.241959, 43.013000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.026321, 34.944275, 42.865425>,  <30.937227, 34.316742, 43.170872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.026321, 34.944275, 42.865425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.369888, 34.754189, 42.789074>,  <31.576029, 34.640137, 42.743263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.369888, 34.754189, 42.789074>,  <31.026321, 34.944275, 42.865425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.369888, 34.754189, 42.789074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146188, 0.584740, -0.797940,
		0.490806, 0.657459, 0.571714,
		0.858917, -0.475212, -0.190881,
		31.627563, 34.611626, 42.731808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600380, 35.359829, 42.634140>,  <31.026321, 34.944275, 42.865425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.600380, 35.359829, 42.634140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.721128, 35.006306, 42.491169>,  <31.793577, 34.794189, 42.405388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.721128, 35.006306, 42.491169>,  <31.600380, 35.359829, 42.634140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.721128, 35.006306, 42.491169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149932, 0.414261, -0.897724,
		0.941485, 0.217408, 0.257565,
		0.301872, -0.883811, -0.357424,
		31.811689, 34.741161, 42.383942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.233696, 35.504589, 42.289227>,  <31.600380, 35.359829, 42.634140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.233696, 35.504589, 42.289227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.087902, 35.161549, 42.144085>,  <32.000423, 34.955723, 42.056999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.087902, 35.161549, 42.144085>,  <32.233696, 35.504589, 42.289227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.087902, 35.161549, 42.144085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178303, 0.318177, -0.931113,
		0.913979, -0.404076, 0.036942,
		-0.364487, -0.857605, -0.362855,
		31.978556, 34.904266, 42.035229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<47.577583, 32.108673, 26.020475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.352360, 31.783993, 25.958378>,  <47.217224, 31.589184, 25.921120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.352360, 31.783993, 25.958378>,  <47.577583, 32.108673, 26.020475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.352360, 31.783993, 25.958378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212426, -0.039384, 0.976383,
		-0.798647, 0.582741, -0.150251,
		-0.563061, -0.811703, -0.155243,
		47.183441, 31.540482, 25.911804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.932903, 32.262604, 26.251713>,  <47.577583, 32.108673, 26.020475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.932903, 32.262604, 26.251713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.938511, 31.862646, 26.249968>,  <46.941875, 31.622671, 26.248920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.938511, 31.862646, 26.249968>,  <46.932903, 32.262604, 26.251713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.938511, 31.862646, 26.249968> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358786, -0.009105, 0.933376,
		-0.933315, -0.011524, -0.358875,
		0.014024, -0.999892, -0.004363,
		46.942719, 31.562679, 26.248659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.249317, 31.974237, 26.517954>,  <46.932903, 32.262604, 26.251713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.249317, 31.974237, 26.517954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.518509, 31.687143, 26.589460>,  <46.680023, 31.514887, 26.632364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.518509, 31.687143, 26.589460>,  <46.249317, 31.974237, 26.517954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.518509, 31.687143, 26.589460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497317, -0.260163, 0.827642,
		-0.547520, -0.645887, -0.532026,
		0.672977, -0.717736, 0.178766,
		46.720402, 31.471823, 26.643089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.824852, 31.430805, 26.675503>,  <46.249317, 31.974237, 26.517954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.824852, 31.430805, 26.675503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.181377, 31.327436, 26.824516>,  <46.395290, 31.265415, 26.913925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.181377, 31.327436, 26.824516>,  <45.824852, 31.430805, 26.675503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.181377, 31.327436, 26.824516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413120, -0.124365, 0.902145,
		-0.186805, -0.957993, -0.217608,
		0.891311, -0.258424, 0.372534,
		46.448772, 31.249910, 26.936277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.654144, 31.048395, 27.252359>,  <45.824852, 31.430805, 26.675503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.654144, 31.048395, 27.252359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.043995, 31.119200, 27.307163>,  <46.277905, 31.161682, 27.340046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.043995, 31.119200, 27.307163>,  <45.654144, 31.048395, 27.252359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.043995, 31.119200, 27.307163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161366, 0.131413, 0.978106,
		0.155144, -0.975394, 0.156644,
		0.974624, 0.177024, 0.137007,
		46.336384, 31.172302, 27.348267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.769741, 30.820776, 27.861906>,  <45.654144, 31.048395, 27.252359>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.769741, 30.820776, 27.861906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.098656, 31.041689, 27.807013>,  <46.296005, 31.174236, 27.774076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.098656, 31.041689, 27.807013>,  <45.769741, 30.820776, 27.861906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.098656, 31.041689, 27.807013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016213, 0.263787, 0.964445,
		0.568845, -0.790824, 0.225862,
		0.822285, 0.552281, -0.137232,
		46.345341, 31.207373, 27.765842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.249321, 30.579927, 28.327248>,  <45.769741, 30.820776, 27.861906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.249321, 30.579927, 28.327248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.356682, 30.956467, 28.245445>,  <46.421101, 31.182390, 28.196363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.356682, 30.956467, 28.245445>,  <46.249321, 30.579927, 28.327248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.356682, 30.956467, 28.245445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034869, 0.202663, 0.978628,
		0.962675, -0.269801, 0.021572,
		0.268406, 0.941348, -0.204506,
		46.437202, 31.238871, 28.184093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.658985, 30.713467, 28.892294>,  <46.249321, 30.579927, 28.327248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.658985, 30.713467, 28.892294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.568993, 31.067390, 28.729078>,  <46.514999, 31.279745, 28.631149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.568993, 31.067390, 28.729078>,  <46.658985, 30.713467, 28.892294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.568993, 31.067390, 28.729078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038179, 0.410449, 0.911084,
		0.973615, 0.220553, -0.058561,
		-0.224979, 0.884809, -0.408040,
		46.501499, 31.332832, 28.606667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.081841, 31.198309, 29.190971>,  <46.658985, 30.713467, 28.892294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.081841, 31.198309, 29.190971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.791840, 31.439089, 29.057085>,  <46.617840, 31.583557, 28.976753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.791840, 31.439089, 29.057085>,  <47.081841, 31.198309, 29.190971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.791840, 31.439089, 29.057085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000365, 0.486310, 0.873786,
		0.688750, 0.633372, -0.352794,
		-0.724999, 0.601949, -0.334715,
		46.574341, 31.619673, 28.956671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.239685, 31.858330, 29.515017>,  <47.081841, 31.198309, 29.190971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.239685, 31.858330, 29.515017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.855946, 31.884916, 29.405310>,  <46.625702, 31.900867, 29.339485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.855946, 31.884916, 29.405310>,  <47.239685, 31.858330, 29.515017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.855946, 31.884916, 29.405310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185344, 0.584487, 0.789951,
		0.212812, 0.808677, -0.548410,
		-0.959353, 0.066467, -0.274268,
		46.568138, 31.904856, 29.323029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.075951, 32.537670, 29.684700>,  <47.239685, 31.858330, 29.515017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.075951, 32.537670, 29.684700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.737946, 32.326794, 29.648851>,  <46.535145, 32.200268, 29.627342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.737946, 32.326794, 29.648851>,  <47.075951, 32.537670, 29.684700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.737946, 32.326794, 29.648851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309922, 0.346229, 0.885480,
		-0.435784, 0.776014, -0.455954,
		-0.845009, -0.527188, -0.089622,
		46.484444, 32.168636, 29.621965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.603531, 33.006470, 29.774336>,  <47.075951, 32.537670, 29.684700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.603531, 33.006470, 29.774336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.398609, 32.667019, 29.827065>,  <46.275658, 32.463348, 29.858702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.398609, 32.667019, 29.827065>,  <46.603531, 33.006470, 29.774336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.398609, 32.667019, 29.827065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443140, 0.392696, 0.805864,
		-0.735645, 0.354429, -0.577240,
		-0.512302, -0.848628, 0.131823,
		46.244919, 32.412430, 29.866611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.835777, 33.232853, 29.892437>,  <46.603531, 33.006470, 29.774336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.835777, 33.232853, 29.892437> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.917732, 32.869640, 30.038584>,  <45.966904, 32.651711, 30.126272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.917732, 32.869640, 30.038584>,  <45.835777, 33.232853, 29.892437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.917732, 32.869640, 30.038584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388277, 0.267257, 0.881938,
		-0.898478, -0.322559, -0.297812,
		0.204884, -0.908036, 0.365367,
		45.979198, 32.597229, 30.148193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.262878, 33.043007, 30.217543>,  <45.835777, 33.232853, 29.892437>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.262878, 33.043007, 30.217543> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.508289, 32.765869, 30.369097>,  <45.655537, 32.599586, 30.460030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.508289, 32.765869, 30.369097>,  <45.262878, 33.043007, 30.217543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.508289, 32.765869, 30.369097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386462, 0.154979, 0.909191,
		-0.688647, -0.704237, -0.172674,
		0.613525, -0.692844, 0.378886,
		45.692348, 32.558018, 30.482763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.830151, 32.480453, 30.464664>,  <45.262878, 33.043007, 30.217543>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.830151, 32.480453, 30.464664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.181145, 32.465172, 30.655893>,  <45.391743, 32.456001, 30.770632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.181145, 32.465172, 30.655893>,  <44.830151, 32.480453, 30.464664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.181145, 32.465172, 30.655893> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470325, 0.126518, 0.873377,
		-0.093855, -0.991228, 0.093048,
		0.877488, -0.038208, 0.478074,
		45.444389, 32.453709, 30.799314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.827671, 31.948664, 30.892061>,  <44.830151, 32.480453, 30.464664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.827671, 31.948664, 30.892061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.111908, 32.170441, 31.065334>,  <45.282452, 32.303509, 31.169298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.111908, 32.170441, 31.065334>,  <44.827671, 31.948664, 30.892061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.111908, 32.170441, 31.065334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518133, -0.004178, 0.855290,
		0.476020, -0.832211, 0.284307,
		0.710593, 0.554444, 0.433185,
		45.325085, 32.336773, 31.195290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.995716, 31.641104, 31.541470>,  <44.827671, 31.948664, 30.892061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.995716, 31.641104, 31.541470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.095108, 32.027672, 31.567661>,  <45.154743, 32.259613, 31.583376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.095108, 32.027672, 31.567661>,  <44.995716, 31.641104, 31.541470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.095108, 32.027672, 31.567661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507577, 0.072334, 0.858565,
		0.824999, -0.246570, 0.508507,
		0.248479, 0.966422, 0.065478,
		45.169651, 32.317596, 31.587305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.152122, 31.750088, 32.284012>,  <44.995716, 31.641104, 31.541470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.152122, 31.750088, 32.284012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.092171, 32.119148, 32.141884>,  <45.056198, 32.340584, 32.056606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.092171, 32.119148, 32.141884>,  <45.152122, 31.750088, 32.284012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.092171, 32.119148, 32.141884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373584, 0.279889, 0.884362,
		0.915408, 0.265289, 0.302738,
		-0.149878, 0.922650, -0.355321,
		45.047207, 32.395943, 32.035286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.496178, 32.267540, 32.794476>,  <45.152122, 31.750088, 32.284012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.496178, 32.267540, 32.794476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.196117, 32.428253, 32.584393>,  <45.016083, 32.524681, 32.458344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.196117, 32.428253, 32.584393>,  <45.496178, 32.267540, 32.794476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.196117, 32.428253, 32.584393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460461, 0.252668, 0.850961,
		0.474607, 0.880186, -0.004532,
		-0.750149, 0.401785, -0.525210,
		44.971073, 32.548790, 32.426830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.206409, 32.758652, 33.247379>,  <45.496178, 32.267540, 32.794476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.206409, 32.758652, 33.247379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.935764, 32.712242, 32.956524>,  <44.773376, 32.684395, 32.782009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.935764, 32.712242, 32.956524>,  <45.206409, 32.758652, 33.247379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.935764, 32.712242, 32.956524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690302, 0.443648, 0.571542,
		0.256282, 0.888659, -0.380269,
		-0.676612, -0.116025, -0.727142,
		44.732780, 32.677433, 32.738380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.802959, 33.456955, 33.064461>,  <45.206409, 32.758652, 33.247379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.802959, 33.456955, 33.064461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.570312, 33.162323, 32.926376>,  <44.430725, 32.985542, 32.843525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.570312, 33.162323, 32.926376>,  <44.802959, 33.456955, 33.064461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.570312, 33.162323, 32.926376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793942, 0.421595, 0.438080,
		-0.177145, 0.528868, -0.830011,
		-0.581615, -0.736584, -0.345207,
		44.395828, 32.941349, 32.822815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.838688, 33.892349, 33.704632>,  <44.802959, 33.456955, 33.064461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.838688, 33.892349, 33.704632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.175320, 34.086105, 33.800220>,  <45.377300, 34.202358, 33.857574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.175320, 34.086105, 33.800220>,  <44.838688, 33.892349, 33.704632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.175320, 34.086105, 33.800220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019265, 0.415235, -0.909510,
		-0.539790, 0.770029, 0.340121,
		0.841579, 0.484392, 0.238974,
		45.427792, 34.231422, 33.871914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.800884, 34.572628, 33.532864>,  <44.838688, 33.892349, 33.704632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.800884, 34.572628, 33.532864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.191875, 34.495358, 33.498886>,  <45.426472, 34.448994, 33.478500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.191875, 34.495358, 33.498886>,  <44.800884, 34.572628, 33.532864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.191875, 34.495358, 33.498886> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018203, 0.323853, -0.945932,
		0.210246, 0.926175, 0.313043,
		0.977479, -0.193180, -0.084948,
		45.485119, 34.437405, 33.473400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.185768, 35.218636, 33.318382>,  <44.800884, 34.572628, 33.532864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.185768, 35.218636, 33.318382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.394505, 34.890682, 33.224174>,  <45.519745, 34.693909, 33.167648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.394505, 34.890682, 33.224174>,  <45.185768, 35.218636, 33.318382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.394505, 34.890682, 33.224174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186060, 0.378842, -0.906565,
		0.832506, 0.429260, 0.350243,
		0.521839, -0.819887, -0.235520,
		45.551056, 34.644714, 33.153519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.800827, 35.529690, 32.933460>,  <45.185768, 35.218636, 33.318382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.800827, 35.529690, 32.933460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.777287, 35.150063, 32.809647>,  <45.763161, 34.922287, 32.735359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.777287, 35.150063, 32.809647>,  <45.800827, 35.529690, 32.933460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.777287, 35.150063, 32.809647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047809, 0.312393, -0.948749,
		0.997121, -0.041038, -0.063759,
		-0.058853, -0.949066, -0.309532,
		45.759632, 34.865341, 32.716785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.394741, 35.359158, 32.447308>,  <45.800827, 35.529690, 32.933460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.394741, 35.359158, 32.447308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.131554, 35.066822, 32.374691>,  <45.973640, 34.891422, 32.331120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.131554, 35.066822, 32.374691>,  <46.394741, 35.359158, 32.447308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.131554, 35.066822, 32.374691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010985, 0.231739, -0.972716,
		0.752968, -0.642008, -0.144448,
		-0.657966, -0.730837, -0.181545,
		45.934162, 34.847572, 32.320229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.608372, 34.951019, 31.964832>,  <46.394741, 35.359158, 32.447308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.608372, 34.951019, 31.964832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.225033, 34.838215, 31.946796>,  <45.995029, 34.770531, 31.935974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.225033, 34.838215, 31.946796>,  <46.608372, 34.951019, 31.964832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.225033, 34.838215, 31.946796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075422, -0.097638, -0.992360,
		0.275452, -0.954431, 0.114842,
		-0.958352, -0.282010, -0.045090,
		45.937527, 34.753613, 31.933270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.573608, 34.398720, 31.497828>,  <46.608372, 34.951019, 31.964832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.573608, 34.398720, 31.497828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.214581, 34.573627, 31.520340>,  <45.999165, 34.678574, 31.533848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.214581, 34.573627, 31.520340>,  <46.573608, 34.398720, 31.497828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.214581, 34.573627, 31.520340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050776, 0.229335, -0.972022,
		-0.437948, -0.869596, -0.228046,
		-0.897565, 0.437274, 0.056282,
		45.945312, 34.704811, 31.537224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.206356, 33.990044, 31.013277>,  <46.573608, 34.398720, 31.497828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.206356, 33.990044, 31.013277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.945148, 34.290855, 31.049103>,  <45.788422, 34.471340, 31.070599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.945148, 34.290855, 31.049103>,  <46.206356, 33.990044, 31.013277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.945148, 34.290855, 31.049103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068935, 0.176793, -0.981831,
		-0.754196, -0.634982, -0.167291,
		-0.653021, 0.752025, 0.089565,
		45.749241, 34.516464, 31.075972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.653938, 33.766075, 30.762962>,  <46.206356, 33.990044, 31.013277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.653938, 33.766075, 30.762962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.642059, 34.163536, 30.719559>,  <45.634933, 34.402012, 30.693518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.642059, 34.163536, 30.719559>,  <45.653938, 33.766075, 30.762962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.642059, 34.163536, 30.719559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074360, -0.106058, -0.991576,
		-0.996789, -0.037516, -0.070739,
		-0.029697, 0.993652, -0.108508,
		45.633148, 34.461632, 30.687006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.039627, 33.901592, 30.315966>,  <45.653938, 33.766075, 30.762962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.039627, 33.901592, 30.315966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.306339, 34.199314, 30.300989>,  <45.466366, 34.377949, 30.292004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.306339, 34.199314, 30.300989>,  <45.039627, 33.901592, 30.315966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.306339, 34.199314, 30.300989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041064, -0.013471, -0.999066,
		-0.744118, 0.667700, 0.021582,
		0.666785, 0.744309, -0.037443,
		45.506374, 34.422607, 30.289757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.912693, 34.087349, 29.611458>,  <45.039627, 33.901592, 30.315966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.912693, 34.087349, 29.611458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.221069, 34.319504, 29.716379>,  <45.406094, 34.458797, 29.779333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.221069, 34.319504, 29.716379>,  <44.912693, 34.087349, 29.611458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.221069, 34.319504, 29.716379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048285, 0.357396, -0.932704,
		-0.635077, 0.731723, 0.247506,
		0.770939, 0.580388, 0.262305,
		45.452351, 34.493622, 29.795071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.735580, 34.727711, 29.409966>,  <44.912693, 34.087349, 29.611458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.735580, 34.727711, 29.409966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.134491, 34.715694, 29.436916>,  <45.373837, 34.708485, 29.453087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.134491, 34.715694, 29.436916>,  <44.735580, 34.727711, 29.409966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.134491, 34.715694, 29.436916> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073739, 0.379795, -0.922127,
		0.002113, 0.924583, 0.380976,
		0.997275, -0.030041, 0.067375,
		45.433674, 34.706680, 29.457129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.948910, 35.347202, 29.110231>,  <44.735580, 34.727711, 29.409966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.948910, 35.347202, 29.110231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.284512, 35.129898, 29.097939>,  <45.485870, 34.999516, 29.090563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.284512, 35.129898, 29.097939>,  <44.948910, 35.347202, 29.110231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.284512, 35.129898, 29.097939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182039, 0.333469, -0.925019,
		0.512776, 0.770497, 0.378675,
		0.839001, -0.543261, -0.030734,
		45.536213, 34.966919, 29.088718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.338478, 35.845448, 28.782488>,  <44.948910, 35.347202, 29.110231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.338478, 35.845448, 28.782488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.467583, 35.467854, 28.755026>,  <45.545044, 35.241295, 28.738548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.467583, 35.467854, 28.755026>,  <45.338478, 35.845448, 28.782488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.467583, 35.467854, 28.755026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083926, 0.100795, -0.991361,
		0.942752, 0.314213, 0.111758,
		0.322763, -0.943987, -0.068654,
		45.564411, 35.184658, 28.734430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.890102, 35.927155, 28.314436>,  <45.338478, 35.845448, 28.782488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.890102, 35.927155, 28.314436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.797264, 35.538082, 28.312172>,  <45.741562, 35.304638, 28.310814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.797264, 35.538082, 28.312172>,  <45.890102, 35.927155, 28.314436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.797264, 35.538082, 28.312172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109060, -0.020240, -0.993829,
		0.966560, -0.231278, 0.110778,
		-0.232093, -0.972677, -0.005660,
		45.727634, 35.246281, 28.310474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.386959, 35.686462, 27.867102>,  <45.890102, 35.927155, 28.314436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.386959, 35.686462, 27.867102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.113098, 35.397518, 27.905960>,  <45.948780, 35.224152, 27.929276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.113098, 35.397518, 27.905960>,  <46.386959, 35.686462, 27.867102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.113098, 35.397518, 27.905960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105324, -0.229939, -0.967489,
		0.721218, -0.652164, 0.233512,
		-0.684655, -0.722364, 0.097147,
		45.907703, 35.180809, 27.935104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.667397, 34.966530, 27.565117>,  <46.386959, 35.686462, 27.867102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.667397, 34.966530, 27.565117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.267723, 34.980000, 27.574028>,  <46.027920, 34.988083, 27.579374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.267723, 34.980000, 27.574028>,  <46.667397, 34.966530, 27.565117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.267723, 34.980000, 27.574028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029830, -0.243718, -0.969387,
		-0.027216, -0.969261, 0.244524,
		-0.999185, 0.033677, 0.022280,
		45.967968, 34.990105, 27.580711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.389500, 34.368580, 27.203878>,  <46.667397, 34.966530, 27.565117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.389500, 34.368580, 27.203878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.094269, 34.634403, 27.157228>,  <45.917130, 34.793900, 27.129238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.094269, 34.634403, 27.157228>,  <46.389500, 34.368580, 27.203878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.094269, 34.634403, 27.157228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019125, -0.193387, -0.980936,
		-0.674448, -0.721774, 0.155444,
		-0.738075, 0.664563, -0.116625,
		45.872845, 34.833771, 27.122240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.941730, 34.037746, 26.704620>,  <46.389500, 34.368580, 27.203878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.941730, 34.037746, 26.704620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.851707, 34.426884, 26.682999>,  <45.797695, 34.660366, 26.670025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.851707, 34.426884, 26.682999>,  <45.941730, 34.037746, 26.704620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.851707, 34.426884, 26.682999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172895, -0.094471, -0.980399,
		-0.958882, -0.211302, 0.189461,
		-0.225059, 0.972844, -0.054054,
		45.784191, 34.718739, 26.666782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.517605, 34.077267, 26.125008>,  <45.941730, 34.037746, 26.704620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.517605, 34.077267, 26.125008> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.577450, 34.461815, 26.217428>,  <45.613358, 34.692543, 26.272881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.577450, 34.461815, 26.217428>,  <45.517605, 34.077267, 26.125008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.577450, 34.461815, 26.217428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124434, 0.250129, -0.960183,
		-0.980883, 0.114905, 0.157050,
		0.149612, 0.961370, 0.231049,
		45.622334, 34.750225, 26.286743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.964203, 34.468487, 26.004158>,  <45.517605, 34.077267, 26.125008>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.964203, 34.468487, 26.004158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.280117, 34.710712, 25.965099>,  <45.469666, 34.856049, 25.941664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.280117, 34.710712, 25.965099>,  <44.964203, 34.468487, 26.004158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.280117, 34.710712, 25.965099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270094, 0.200404, -0.941747,
		-0.550717, 0.770152, 0.321835,
		0.789785, 0.605561, -0.097647,
		45.517052, 34.892380, 25.935804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.323200, 33.284882, 38.459427> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965794, 33.395443, 38.317879>,  <35.751350, 33.461781, 38.232948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965794, 33.395443, 38.317879>,  <36.323200, 33.284882, 38.459427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965794, 33.395443, 38.317879> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419635, 0.233572, -0.877126,
		-0.159783, -0.932227, -0.324689,
		-0.893519, 0.276401, -0.353874,
		35.697739, 33.478363, 38.211716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199928, 32.911053, 37.764500>,  <36.323200, 33.284882, 38.459427>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199928, 32.911053, 37.764500> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945801, 33.219952, 37.765621>,  <35.793324, 33.405289, 37.766296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945801, 33.219952, 37.765621>,  <36.199928, 32.911053, 37.764500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945801, 33.219952, 37.765621> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337573, 0.280983, -0.898383,
		-0.694561, -0.569811, -0.439203,
		-0.635318, 0.772246, 0.002807,
		35.755207, 33.451626, 37.766464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912041, 32.926994, 37.081738>,  <36.199928, 32.911053, 37.764500>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912041, 32.926994, 37.081738> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851902, 33.287258, 37.244812>,  <35.815819, 33.503418, 37.342659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851902, 33.287258, 37.244812>,  <35.912041, 32.926994, 37.081738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851902, 33.287258, 37.244812> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423795, 0.431279, -0.796489,
		-0.893193, 0.053028, -0.446536,
		-0.150345, 0.900659, 0.407689,
		35.806797, 33.557457, 37.367119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692284, 33.288334, 36.575123>,  <35.912041, 32.926994, 37.081738>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692284, 33.288334, 36.575123> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823589, 33.585476, 36.808502>,  <35.902374, 33.763760, 36.948528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823589, 33.585476, 36.808502>,  <35.692284, 33.288334, 36.575123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823589, 33.585476, 36.808502> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308104, 0.499687, -0.809559,
		-0.892923, 0.445515, -0.064844,
		0.328269, 0.742852, 0.583447,
		35.922070, 33.808331, 36.983536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282585, 33.833633, 36.377571>,  <35.692284, 33.288334, 36.575123>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282585, 33.833633, 36.377571> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611027, 33.996620, 36.537449>,  <35.808090, 34.094414, 36.633377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611027, 33.996620, 36.537449>,  <35.282585, 33.833633, 36.377571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611027, 33.996620, 36.537449> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110316, 0.573774, -0.811550,
		-0.560019, 0.710459, 0.426177,
		0.821102, 0.407470, 0.399699,
		35.857357, 34.118862, 36.657360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266102, 34.553551, 36.052902>,  <35.282585, 33.833633, 36.377571>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266102, 34.553551, 36.052902> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626385, 34.477108, 36.208954>,  <35.842556, 34.431240, 36.302586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626385, 34.477108, 36.208954>,  <35.266102, 34.553551, 36.052902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.626385, 34.477108, 36.208954> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433441, 0.455716, -0.777465,
		-0.029208, 0.869368, 0.493301,
		0.900709, -0.191109, 0.390130,
		35.896599, 34.419777, 36.325993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572922, 35.192551, 35.853653>,  <35.266102, 34.553551, 36.052902>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572922, 35.192551, 35.853653> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869923, 34.941837, 35.948174>,  <36.048122, 34.791409, 36.004887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869923, 34.941837, 35.948174>,  <35.572922, 35.192551, 35.853653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869923, 34.941837, 35.948174> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513149, 0.305489, -0.802094,
		0.430548, 0.716814, 0.548457,
		0.742500, -0.626780, 0.236305,
		36.092674, 34.753803, 36.019066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195671, 35.583408, 35.850300>,  <35.572922, 35.192551, 35.853653>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195671, 35.583408, 35.850300> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271534, 35.200161, 35.764481>,  <36.317051, 34.970211, 35.712990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271534, 35.200161, 35.764481>,  <36.195671, 35.583408, 35.850300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271534, 35.200161, 35.764481> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520434, 0.283390, -0.805505,
		0.832573, 0.041115, 0.552388,
		0.189659, -0.958123, -0.214545,
		36.328430, 34.912724, 35.700115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865334, 35.567837, 35.692360>,  <36.195671, 35.583408, 35.850300>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865334, 35.567837, 35.692360> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741955, 35.231312, 35.514801>,  <36.667927, 35.029396, 35.408264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741955, 35.231312, 35.514801>,  <36.865334, 35.567837, 35.692360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741955, 35.231312, 35.514801> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539779, 0.229445, -0.809934,
		0.783260, -0.489433, 0.383352,
		-0.308451, -0.841314, -0.443901,
		36.649418, 34.978916, 35.381630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492428, 35.355694, 35.368156>,  <36.865334, 35.567837, 35.692360>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492428, 35.355694, 35.368156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158058, 35.216110, 35.198704>,  <36.957436, 35.132359, 35.097031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158058, 35.216110, 35.198704>,  <37.492428, 35.355694, 35.368156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158058, 35.216110, 35.198704> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395206, 0.152903, -0.905778,
		0.380856, -0.924579, 0.010097,
		-0.835919, -0.348961, -0.423633,
		36.907284, 35.111423, 35.071613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830147, 35.036949, 34.775089>,  <37.492428, 35.355694, 35.368156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830147, 35.036949, 34.775089> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441067, 35.058834, 34.684872>,  <37.207619, 35.071964, 34.630741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441067, 35.058834, 34.684872>,  <37.830147, 35.036949, 34.775089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441067, 35.058834, 34.684872> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230895, 0.129928, -0.964265,
		-0.023454, -0.990013, -0.139013,
		-0.972696, 0.054713, -0.225541,
		37.149258, 35.075249, 34.617210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407475, 34.572964, 34.789505>,  <37.830147, 35.036949, 34.775089>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407475, 34.572964, 34.789505> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479633, 34.839603, 35.078808>,  <38.522926, 34.999588, 35.252392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479633, 34.839603, 35.078808>,  <38.407475, 34.572964, 34.789505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479633, 34.839603, 35.078808> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765215, -0.557110, 0.322606,
		0.617984, 0.495253, -0.610590,
		0.180394, 0.666598, 0.723260,
		38.533752, 35.039581, 35.295784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149311, 34.830250, 34.670624>,  <38.407475, 34.572964, 34.789505>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149311, 34.830250, 34.670624> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017471, 34.843464, 35.048042>,  <38.938366, 34.851395, 35.274494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017471, 34.843464, 35.048042>,  <39.149311, 34.830250, 34.670624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017471, 34.843464, 35.048042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744376, -0.605650, 0.281233,
		0.580749, 0.795045, 0.175028,
		-0.329598, 0.033039, 0.943543,
		38.918591, 34.853374, 35.331104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026062, 34.124924, 34.557755>,  <39.149311, 34.830250, 34.670624>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026062, 34.124924, 34.557755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689255, 33.909191, 34.562077>,  <38.487171, 33.779751, 34.564671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689255, 33.909191, 34.562077>,  <39.026062, 34.124924, 34.557755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689255, 33.909191, 34.562077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507741, -0.799143, -0.321822,
		0.182206, -0.265494, 0.946739,
		-0.842021, -0.539336, 0.010807,
		38.436649, 33.747391, 34.565319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495872, 34.533176, 34.098488>,  <39.026062, 34.124924, 34.557755>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495872, 34.533176, 34.098488> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828857, 34.323532, 34.170395>,  <40.028648, 34.197746, 34.213539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828857, 34.323532, 34.170395>,  <39.495872, 34.533176, 34.098488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828857, 34.323532, 34.170395> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506492, -0.588255, 0.630414,
		-0.224658, -0.615846, -0.755158,
		0.832463, -0.524108, 0.179765,
		40.078598, 34.166298, 34.224323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442280, 33.825459, 33.863865>,  <39.495872, 34.533176, 34.098488>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442280, 33.825459, 33.863865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708191, 33.848179, 34.161816>,  <39.867737, 33.861809, 34.340588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708191, 33.848179, 34.161816>,  <39.442280, 33.825459, 33.863865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.708191, 33.848179, 34.161816> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604871, -0.544235, 0.581325,
		0.438407, -0.837008, -0.327440,
		0.664778, 0.056798, 0.744879,
		39.907623, 33.865219, 34.385281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482944, 33.205040, 34.050194>,  <39.442280, 33.825459, 33.863865>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482944, 33.205040, 34.050194> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652611, 33.371143, 34.372101>,  <39.754410, 33.470806, 34.565243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652611, 33.371143, 34.372101>,  <39.482944, 33.205040, 34.050194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.652611, 33.371143, 34.372101> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498021, -0.635253, 0.590278,
		0.756346, -0.651165, -0.062646,
		0.424165, 0.415256, 0.804765,
		39.779861, 33.495720, 34.613529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756424, 32.685558, 34.440842>,  <39.482944, 33.205040, 34.050194>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.756424, 32.685558, 34.440842> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736782, 32.987740, 34.702187>,  <39.724998, 33.169048, 34.858994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736782, 32.987740, 34.702187>,  <39.756424, 32.685558, 34.440842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.736782, 32.987740, 34.702187> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536263, -0.571807, 0.620853,
		0.842621, -0.319889, 0.433198,
		-0.049101, 0.755452, 0.653362,
		39.722054, 33.214375, 34.898193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898945, 32.358185, 35.111816>,  <39.756424, 32.685558, 34.440842>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898945, 32.358185, 35.111816> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744831, 32.717445, 35.196564>,  <39.652363, 32.933002, 35.247414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744831, 32.717445, 35.196564>,  <39.898945, 32.358185, 35.111816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.744831, 32.717445, 35.196564> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440760, -0.380820, 0.812839,
		0.810732, 0.219792, 0.542591,
		-0.385285, 0.898147, 0.211868,
		39.629246, 32.986889, 35.260124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149895, 32.524990, 35.789524>,  <39.898945, 32.358185, 35.111816>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.149895, 32.524990, 35.789524> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818001, 32.739532, 35.727741>,  <39.618862, 32.868259, 35.690674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818001, 32.739532, 35.727741>,  <40.149895, 32.524990, 35.789524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818001, 32.739532, 35.727741> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371065, -0.323362, 0.870488,
		0.416948, 0.779589, 0.467329,
		-0.829738, 0.536357, -0.154453,
		39.569080, 32.900440, 35.681404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.980709, 32.677345, 36.352146>,  <40.149895, 32.524990, 35.789524>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.980709, 32.677345, 36.352146> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632751, 32.728027, 36.161472>,  <39.423977, 32.758434, 36.047066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632751, 32.728027, 36.161472>,  <39.980709, 32.677345, 36.352146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632751, 32.728027, 36.161472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492311, -0.163739, 0.854879,
		0.030264, 0.978333, 0.204813,
		-0.869893, 0.126703, -0.476689,
		39.371784, 32.766037, 36.018467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540352, 33.203217, 36.769783>,  <39.980709, 32.677345, 36.352146>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.540352, 33.203217, 36.769783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292686, 33.004459, 36.526558>,  <39.144089, 32.885204, 36.380623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292686, 33.004459, 36.526558>,  <39.540352, 33.203217, 36.769783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.292686, 33.004459, 36.526558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604360, -0.192879, 0.773012,
		-0.501384, 0.846107, -0.180877,
		-0.619163, -0.496891, -0.608059,
		39.106937, 32.855392, 36.344139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753708, 33.473228, 36.776291>,  <39.540352, 33.203217, 36.769783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753708, 33.473228, 36.776291> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780552, 33.091084, 36.661205>,  <38.796658, 32.861797, 36.592155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780552, 33.091084, 36.661205>,  <38.753708, 33.473228, 36.776291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780552, 33.091084, 36.661205> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471721, -0.284484, 0.834594,
		-0.879190, 0.079708, -0.469757,
		0.067115, -0.955361, -0.287715,
		38.800686, 32.804474, 36.574890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999733, 33.114754, 36.921715>,  <38.753708, 33.473228, 36.776291>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999733, 33.114754, 36.921715> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245865, 32.802544, 36.877609>,  <38.393543, 32.615219, 36.851147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245865, 32.802544, 36.877609>,  <37.999733, 33.114754, 36.921715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245865, 32.802544, 36.877609> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496797, -0.492588, 0.714527,
		-0.612018, -0.384890, -0.690864,
		0.615326, -0.780523, -0.110261,
		38.430462, 32.568386, 36.844532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577145, 32.537357, 36.979252>,  <37.999733, 33.114754, 36.921715>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577145, 32.537357, 36.979252> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951794, 32.418667, 37.053761>,  <38.176582, 32.347450, 37.098465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951794, 32.418667, 37.053761>,  <37.577145, 32.537357, 36.979252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951794, 32.418667, 37.053761> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330515, -0.572003, 0.750715,
		-0.116209, -0.764699, -0.633822,
		0.936619, -0.296728, 0.186273,
		38.232780, 32.329647, 37.109642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484322, 31.788574, 37.155033>,  <37.577145, 32.537357, 36.979252>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484322, 31.788574, 37.155033> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855705, 31.851830, 37.289467>,  <38.078537, 31.889782, 37.370129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855705, 31.851830, 37.289467>,  <37.484322, 31.788574, 37.155033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855705, 31.851830, 37.289467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198150, -0.554447, 0.808285,
		0.314162, -0.817056, -0.483447,
		0.928461, 0.158138, 0.336086,
		38.134243, 31.899271, 37.390293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834808, 31.121927, 37.236393>,  <37.484322, 31.788574, 37.155033>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834808, 31.121927, 37.236393> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014004, 31.379341, 37.484638>,  <38.121521, 31.533791, 37.633587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014004, 31.379341, 37.484638>,  <37.834808, 31.121927, 37.236393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014004, 31.379341, 37.484638> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297928, -0.547037, 0.782298,
		0.842937, -0.535361, -0.053340,
		0.447991, 0.643536, 0.620617,
		38.148399, 31.572401, 37.670822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091728, 30.668232, 37.698750>,  <37.834808, 31.121927, 37.236393>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091728, 30.668232, 37.698750> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084217, 31.026318, 37.876846>,  <38.079708, 31.241169, 37.983704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084217, 31.026318, 37.876846>,  <38.091728, 30.668232, 37.698750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084217, 31.026318, 37.876846> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317449, -0.427614, 0.846388,
		0.948089, -0.125446, 0.292216,
		-0.018780, 0.895215, 0.445239,
		38.078583, 31.294882, 38.010418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033680, 29.911631, 37.468876>,  <38.091728, 30.668232, 37.698750>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033680, 29.911631, 37.468876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696545, 29.726059, 37.359776>,  <37.494263, 29.614716, 37.294315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696545, 29.726059, 37.359776>,  <38.033680, 29.911631, 37.468876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696545, 29.726059, 37.359776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222166, 0.161667, -0.961512,
		0.490167, -0.870996, -0.033190,
		-0.842840, -0.463928, -0.272750,
		37.443691, 29.586880, 37.277950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161240, 29.372211, 36.948372>,  <38.033680, 29.911631, 37.468876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161240, 29.372211, 36.948372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784634, 29.496351, 36.895866>,  <37.558670, 29.570835, 36.864365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784634, 29.496351, 36.895866>,  <38.161240, 29.372211, 36.948372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.784634, 29.496351, 36.895866> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193017, 0.177400, -0.965025,
		-0.276209, -0.933923, -0.226927,
		-0.941516, 0.310350, -0.131263,
		37.502178, 29.589457, 36.856487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963551, 28.979540, 36.402916>,  <38.161240, 29.372211, 36.948372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963551, 28.979540, 36.402916> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716087, 29.293625, 36.413528>,  <37.567608, 29.482077, 36.419895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716087, 29.293625, 36.413528>,  <37.963551, 28.979540, 36.402916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716087, 29.293625, 36.413528> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044572, -0.001360, -0.999005,
		-0.784395, -0.619225, 0.035840,
		-0.618658, 0.785213, 0.026534,
		37.530491, 29.529188, 36.421490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497093, 28.987352, 35.789253>,  <37.963551, 28.979540, 36.402916>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497093, 28.987352, 35.789253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399437, 29.357786, 35.904327>,  <37.340843, 29.580048, 35.973370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399437, 29.357786, 35.904327>,  <37.497093, 28.987352, 35.789253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399437, 29.357786, 35.904327> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261039, 0.222947, -0.939230,
		-0.933946, -0.304399, 0.187315,
		-0.244139, 0.926086, 0.287681,
		37.326195, 29.635612, 35.990631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841782, 29.086905, 35.611538>,  <37.497093, 28.987352, 35.789253>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841782, 29.086905, 35.611538> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988209, 29.458290, 35.636669>,  <37.076065, 29.681122, 35.651749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988209, 29.458290, 35.636669>,  <36.841782, 29.086905, 35.611538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988209, 29.458290, 35.636669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133822, 0.119336, -0.983794,
		-0.920917, 0.351724, 0.167934,
		0.366064, 0.928466, 0.062830,
		37.098026, 29.736830, 35.655518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390991, 29.514688, 35.315990>,  <36.841782, 29.086905, 35.611538>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390991, 29.514688, 35.315990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728806, 29.728237, 35.299301>,  <36.931496, 29.856367, 35.289288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728806, 29.728237, 35.299301>,  <36.390991, 29.514688, 35.315990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728806, 29.728237, 35.299301> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148497, 0.158616, -0.976109,
		-0.514498, 0.830555, 0.213236,
		0.844535, 0.533872, -0.041727,
		36.982166, 29.888399, 35.286781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100075, 30.111223, 34.954914>,  <36.390991, 29.514688, 35.315990>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100075, 30.111223, 34.954914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497459, 30.139021, 34.918682>,  <36.735889, 30.155701, 34.896942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497459, 30.139021, 34.918682>,  <36.100075, 30.111223, 34.954914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497459, 30.139021, 34.918682> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105743, 0.261001, -0.959530,
		-0.043043, 0.962834, 0.266643,
		0.993462, 0.069496, -0.090578,
		36.795498, 30.159870, 34.891510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309708, 30.725704, 34.574997>,  <36.100075, 30.111223, 34.954914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309708, 30.725704, 34.574997> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660873, 30.534422, 34.565308>,  <36.871574, 30.419653, 34.559494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660873, 30.534422, 34.565308>,  <36.309708, 30.725704, 34.574997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660873, 30.534422, 34.565308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093050, 0.220018, -0.971048,
		0.469692, 0.850241, 0.237654,
		0.877913, -0.478207, -0.024226,
		36.924248, 30.390961, 34.558041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889904, 31.235682, 34.419991>,  <36.309708, 30.725704, 34.574997>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889904, 31.235682, 34.419991> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003052, 30.876499, 34.285137>,  <37.070942, 30.660990, 34.204227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003052, 30.876499, 34.285137>,  <36.889904, 31.235682, 34.419991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003052, 30.876499, 34.285137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135687, 0.385414, -0.912713,
		0.949512, 0.212437, 0.230864,
		0.282872, -0.897957, -0.337130,
		37.087914, 30.607113, 34.183998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361328, 31.348242, 33.839039>,  <36.889904, 31.235682, 34.419991>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361328, 31.348242, 33.839039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212017, 30.978659, 33.805653>,  <37.122433, 30.756908, 33.785622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212017, 30.978659, 33.805653>,  <37.361328, 31.348242, 33.839039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212017, 30.978659, 33.805653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186983, 0.163048, -0.968738,
		0.908682, -0.346000, -0.233626,
		-0.373276, -0.923958, -0.083462,
		37.100033, 30.701471, 33.780613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721233, 31.120251, 33.357193>,  <37.361328, 31.348242, 33.839039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721233, 31.120251, 33.357193> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398949, 30.883326, 33.357307>,  <37.205578, 30.741171, 33.357376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398949, 30.883326, 33.357307>,  <37.721233, 31.120251, 33.357193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398949, 30.883326, 33.357307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127638, 0.173152, -0.976590,
		0.578397, -0.786882, -0.215111,
		-0.805708, -0.592313, 0.000286,
		37.157238, 30.705631, 33.357391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749626, 30.346987, 33.035717>,  <37.721233, 31.120251, 33.357193>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749626, 30.346987, 33.035717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540848, 30.095427, 33.266216>,  <37.415581, 29.944490, 33.404514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540848, 30.095427, 33.266216>,  <37.749626, 30.346987, 33.035717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540848, 30.095427, 33.266216> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688832, 0.709212, 0.150096,
		-0.503077, -0.318597, -0.803374,
		-0.521943, -0.628899, 0.576248,
		37.384266, 29.906757, 33.439091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.209492, 27.747969, 40.631737> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.863739, 27.941734, 40.577797>,  <36.656288, 28.057993, 40.545433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.863739, 27.941734, 40.577797>,  <37.209492, 27.747969, 40.631737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863739, 27.941734, 40.577797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180007, 0.047703, -0.982508,
		-0.469508, -0.873537, -0.128432,
		-0.864384, 0.484414, -0.134846,
		36.604424, 28.087059, 40.537342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941700, 27.375013, 39.988167>,  <37.209492, 27.747969, 40.631737>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941700, 27.375013, 39.988167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.756489, 27.728077, 40.020466>,  <36.645363, 27.939915, 40.039845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.756489, 27.728077, 40.020466>,  <36.941700, 27.375013, 39.988167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756489, 27.728077, 40.020466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030049, 0.075416, -0.996699,
		-0.885834, -0.463925, -0.008397,
		-0.463028, 0.882658, 0.080746,
		36.617580, 27.992874, 40.044689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519016, 27.412922, 39.381207>,  <36.941700, 27.375013, 39.988167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519016, 27.412922, 39.381207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.540646, 27.790768, 39.510685>,  <36.553623, 28.017475, 39.588371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.540646, 27.790768, 39.510685>,  <36.519016, 27.412922, 39.381207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540646, 27.790768, 39.510685> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067961, 0.326902, -0.942612,
		-0.996221, 0.028971, 0.081874,
		0.054073, 0.944614, 0.323697,
		36.556866, 28.074152, 39.607796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047398, 27.818333, 38.961349>,  <36.519016, 27.412922, 39.381207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047398, 27.818333, 38.961349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.286880, 28.108007, 39.098236>,  <36.430569, 28.281813, 39.180367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.286880, 28.108007, 39.098236>,  <36.047398, 27.818333, 38.961349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286880, 28.108007, 39.098236> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042146, 0.455138, -0.889423,
		-0.799862, 0.518077, 0.303014,
		0.598703, 0.724186, 0.342212,
		36.466492, 28.325264, 39.200901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842350, 28.406584, 38.580505>,  <36.047398, 27.818333, 38.961349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842350, 28.406584, 38.580505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.199017, 28.518082, 38.723186>,  <36.413017, 28.584980, 38.808796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.199017, 28.518082, 38.723186>,  <35.842350, 28.406584, 38.580505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199017, 28.518082, 38.723186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249853, 0.354052, -0.901233,
		-0.377507, 0.892720, 0.246050,
		0.891663, 0.278745, 0.356706,
		36.466515, 28.601706, 38.830196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949142, 29.119539, 38.341503>,  <35.842350, 28.406584, 38.580505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949142, 29.119539, 38.341503> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.311066, 28.997412, 38.460232>,  <36.528221, 28.924135, 38.531467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.311066, 28.997412, 38.460232>,  <35.949142, 29.119539, 38.341503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311066, 28.997412, 38.460232> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408553, 0.425969, -0.807239,
		0.120031, 0.851663, 0.510160,
		0.904808, -0.305321, 0.296821,
		36.582508, 28.905815, 38.549278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280094, 29.689383, 38.445580>,  <35.949142, 29.119539, 38.341503>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280094, 29.689383, 38.445580> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.520588, 29.379807, 38.366051>,  <36.664886, 29.194061, 38.318333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.520588, 29.379807, 38.366051>,  <36.280094, 29.689383, 38.445580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520588, 29.379807, 38.366051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310488, 0.455533, -0.834318,
		0.736281, 0.439893, 0.514183,
		0.601238, -0.773940, -0.198819,
		36.700958, 29.147625, 38.306404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817318, 29.985863, 38.221497>,  <36.280094, 29.689383, 38.445580>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817318, 29.985863, 38.221497> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.906403, 29.612690, 38.108334>,  <36.959854, 29.388786, 38.040436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.906403, 29.612690, 38.108334>,  <36.817318, 29.985863, 38.221497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906403, 29.612690, 38.108334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272404, 0.338188, -0.900791,
		0.936053, 0.123552, 0.329453,
		0.222712, -0.932933, -0.282906,
		36.973217, 29.332809, 38.023460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505756, 29.989449, 38.129257>,  <36.817318, 29.985863, 38.221497>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505756, 29.989449, 38.129257> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.352341, 29.700230, 37.899441>,  <37.260292, 29.526699, 37.761551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.352341, 29.700230, 37.899441>,  <37.505756, 29.989449, 38.129257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352341, 29.700230, 37.899441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331775, 0.472714, -0.816374,
		0.861872, -0.503730, 0.058584,
		-0.383539, -0.723047, -0.574544,
		37.237278, 29.483316, 37.727077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155846, 30.438618, 38.394325>,  <37.505756, 29.989449, 38.129257>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155846, 30.438618, 38.394325> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.061939, 30.825602, 38.432076>,  <38.005596, 31.057793, 38.454723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.061939, 30.825602, 38.432076>,  <38.155846, 30.438618, 38.394325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061939, 30.825602, 38.432076> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237987, -0.151339, 0.959405,
		0.942468, 0.202778, 0.265773,
		-0.234769, 0.967459, 0.094374,
		37.991508, 31.115839, 38.460388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553181, 30.645357, 38.976795>,  <38.155846, 30.438618, 38.394325>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553181, 30.645357, 38.976795> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.249069, 30.902567, 38.939911>,  <38.066605, 31.056892, 38.917778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.249069, 30.902567, 38.939911>,  <38.553181, 30.645357, 38.976795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249069, 30.902567, 38.939911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211057, -0.110261, 0.971235,
		0.614359, 0.757868, 0.219543,
		-0.760275, 0.643023, -0.092214,
		38.020988, 31.095474, 38.912247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577827, 31.082605, 39.560745>,  <38.553181, 30.645357, 38.976795>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577827, 31.082605, 39.560745> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.210968, 31.156754, 39.419624>,  <37.990852, 31.201242, 39.334949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.210968, 31.156754, 39.419624>,  <38.577827, 31.082605, 39.560745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210968, 31.156754, 39.419624> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354311, 0.026073, 0.934764,
		0.182478, 0.982322, 0.041767,
		-0.917151, 0.185372, -0.352805,
		37.935822, 31.212364, 39.313782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407116, 31.708067, 39.768055>,  <38.577827, 31.082605, 39.560745>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407116, 31.708067, 39.768055> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.060776, 31.513044, 39.723183>,  <37.852970, 31.396030, 39.696259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.060776, 31.513044, 39.723183>,  <38.407116, 31.708067, 39.768055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060776, 31.513044, 39.723183> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259206, 0.245402, 0.934125,
		-0.427910, 0.837894, -0.338860,
		-0.865855, -0.487556, -0.112177,
		37.801018, 31.366777, 39.689529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935612, 32.125412, 40.172035>,  <38.407116, 31.708067, 39.768055>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935612, 32.125412, 40.172035> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.756382, 31.770895, 40.125198>,  <37.648842, 31.558184, 40.097095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.756382, 31.770895, 40.125198>,  <37.935612, 32.125412, 40.172035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756382, 31.770895, 40.125198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345725, 0.051007, 0.936949,
		-0.824439, 0.460306, -0.329269,
		-0.448078, -0.886294, -0.117087,
		37.621960, 31.505007, 40.090073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272724, 32.226372, 40.532520>,  <37.935612, 32.125412, 40.172035>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272724, 32.226372, 40.532520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.268501, 31.830456, 40.475670>,  <37.265968, 31.592905, 40.441559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.268501, 31.830456, 40.475670>,  <37.272724, 32.226372, 40.532520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.268501, 31.830456, 40.475670> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204365, -0.137002, 0.969260,
		-0.978838, 0.039278, -0.200832,
		-0.010556, -0.989792, -0.142129,
		37.265335, 31.533518, 40.433029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706406, 32.092312, 40.933361>,  <37.272724, 32.226372, 40.532520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706406, 32.092312, 40.933361> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.891113, 31.740320, 40.888821>,  <37.001938, 31.529125, 40.862095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.891113, 31.740320, 40.888821>,  <36.706406, 32.092312, 40.933361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891113, 31.740320, 40.888821> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361146, -0.301188, 0.882530,
		-0.810148, -0.367314, -0.456882,
		0.461773, -0.879981, -0.111353,
		37.029644, 31.476326, 40.855415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193436, 31.456091, 41.017838>,  <36.706406, 32.092312, 40.933361>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193436, 31.456091, 41.017838> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.551289, 31.308773, 41.119022>,  <36.766003, 31.220383, 41.179733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.551289, 31.308773, 41.119022>,  <36.193436, 31.456091, 41.017838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551289, 31.308773, 41.119022> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342395, -0.201393, 0.917718,
		-0.287048, -0.907634, -0.306275,
		0.894633, -0.368296, 0.252960,
		36.819679, 31.198284, 41.194912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056416, 30.857460, 41.330776>,  <36.193436, 31.456091, 41.017838>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056416, 30.857460, 41.330776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.422565, 30.952061, 41.461102>,  <36.642254, 31.008821, 41.539295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.422565, 30.952061, 41.461102>,  <36.056416, 30.857460, 41.330776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422565, 30.952061, 41.461102> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277929, -0.214298, 0.936393,
		0.291278, -0.947705, -0.130433,
		0.915376, 0.236499, 0.325814,
		36.697178, 31.023010, 41.558846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162827, 30.422478, 41.847942>,  <36.056416, 30.857460, 41.330776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.162827, 30.422478, 41.847942> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.454887, 30.683441, 41.929173>,  <36.630123, 30.840019, 41.977913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.454887, 30.683441, 41.929173>,  <36.162827, 30.422478, 41.847942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454887, 30.683441, 41.929173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083090, -0.210228, 0.974115,
		0.678216, -0.728124, -0.099289,
		0.730150, 0.652410, 0.203080,
		36.673931, 30.879164, 41.990097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639057, 30.094103, 42.311989>,  <36.162827, 30.422478, 41.847942>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639057, 30.094103, 42.311989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.677586, 30.489477, 42.358833>,  <36.700703, 30.726702, 42.386940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.677586, 30.489477, 42.358833>,  <36.639057, 30.094103, 42.311989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677586, 30.489477, 42.358833> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025499, -0.120072, 0.992438,
		0.995024, -0.092604, -0.036769,
		0.096318, 0.988437, 0.117113,
		36.706482, 30.786009, 42.393967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136009, 30.228016, 42.902149>,  <36.639057, 30.094103, 42.311989>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136009, 30.228016, 42.902149> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.947605, 30.577684, 42.854866>,  <36.834560, 30.787485, 42.826496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.947605, 30.577684, 42.854866>,  <37.136009, 30.228016, 42.902149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947605, 30.577684, 42.854866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194919, 0.027550, 0.980432,
		0.860322, 0.484837, 0.157415,
		-0.471013, 0.874171, -0.118206,
		36.806301, 30.839935, 42.819405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419739, 30.634712, 43.437813>,  <37.136009, 30.228016, 42.902149>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419739, 30.634712, 43.437813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.080486, 30.822018, 43.338696>,  <36.876934, 30.934401, 43.279224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.080486, 30.822018, 43.338696>,  <37.419739, 30.634712, 43.437813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080486, 30.822018, 43.338696> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091299, 0.331543, 0.939012,
		0.521862, 0.819028, -0.238440,
		-0.848130, 0.468265, -0.247796,
		36.826046, 30.962498, 43.264359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384293, 31.234446, 43.920433>,  <37.419739, 30.634712, 43.437813>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384293, 31.234446, 43.920433> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.011307, 31.189157, 43.783211>,  <36.787514, 31.161983, 43.700878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.011307, 31.189157, 43.783211>,  <37.384293, 31.234446, 43.920433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011307, 31.189157, 43.783211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353653, 0.092241, 0.930817,
		-0.073744, 0.989279, -0.126052,
		-0.932465, -0.113221, -0.343059,
		36.731567, 31.155191, 43.680294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.324358, 32.447670, 42.598362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.699917, 32.341469, 42.685978>,  <29.925253, 32.277748, 42.738548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.699917, 32.341469, 42.685978>,  <29.324358, 32.447670, 42.598362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.699917, 32.341469, 42.685978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290086, 0.267879, -0.918744,
		0.185258, 0.926146, 0.328531,
		0.938898, -0.265507, 0.219035,
		29.981586, 32.261818, 42.751690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.806211, 32.944965, 42.353737>,  <29.324358, 32.447670, 42.598362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.806211, 32.944965, 42.353737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.033968, 32.616474, 42.368553>,  <30.170622, 32.419380, 42.377441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.033968, 32.616474, 42.368553>,  <29.806211, 32.944965, 42.353737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.033968, 32.616474, 42.368553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323593, 0.182488, -0.928432,
		0.755698, 0.540627, 0.369652,
		0.569392, -0.821231, 0.037037,
		30.204786, 32.370106, 42.379665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.402874, 33.120171, 42.043148>,  <29.806211, 32.944965, 42.353737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.402874, 33.120171, 42.043148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.435612, 32.722061, 42.022228>,  <30.455254, 32.483196, 42.009674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.435612, 32.722061, 42.022228>,  <30.402874, 33.120171, 42.043148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.435612, 32.722061, 42.022228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446564, 0.083537, -0.890843,
		0.891000, 0.049555, 0.451290,
		0.081845, -0.995272, -0.052302,
		30.460165, 32.423481, 42.006538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.079430, 32.978161, 41.876999>,  <30.402874, 33.120171, 42.043148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.079430, 32.978161, 41.876999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.859755, 32.664200, 41.762234>,  <30.727949, 32.475822, 41.693375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.859755, 32.664200, 41.762234>,  <31.079430, 32.978161, 41.876999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.859755, 32.664200, 41.762234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310116, 0.127399, -0.942124,
		0.776029, -0.606379, 0.173445,
		-0.549188, -0.784903, -0.286914,
		30.694998, 32.428730, 41.676159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.515703, 32.697254, 41.392170>,  <31.079430, 32.978161, 41.876999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.515703, 32.697254, 41.392170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.166727, 32.514774, 41.322048>,  <30.957342, 32.405285, 41.279976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.166727, 32.514774, 41.322048>,  <31.515703, 32.697254, 41.392170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.166727, 32.514774, 41.322048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120633, 0.146588, -0.981814,
		0.473601, -0.877721, -0.072856,
		-0.872439, -0.456199, -0.175306,
		30.904995, 32.377914, 41.269455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591232, 32.134926, 40.869850>,  <31.515703, 32.697254, 41.392170>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591232, 32.134926, 40.869850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.203526, 32.228657, 40.839886>,  <30.970901, 32.284897, 40.821907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.203526, 32.228657, 40.839886>,  <31.591232, 32.134926, 40.869850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.203526, 32.228657, 40.839886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066509, -0.043561, -0.996835,
		-0.236854, -0.971180, 0.026637,
		-0.969266, 0.234333, -0.074910,
		30.912746, 32.298958, 40.817413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.289579, 31.738050, 40.371574>,  <31.591232, 32.134926, 40.869850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.289579, 31.738050, 40.371574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.028032, 32.040527, 40.381611>,  <30.871103, 32.222015, 40.387630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.028032, 32.040527, 40.381611>,  <31.289579, 31.738050, 40.371574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.028032, 32.040527, 40.381611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062889, 0.087364, -0.994189,
		-0.753991, -0.648490, -0.104681,
		-0.653867, 0.756193, 0.025089,
		30.831873, 32.267384, 40.389137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.808151, 31.564705, 39.809734>,  <31.289579, 31.738050, 40.371574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.808151, 31.564705, 39.809734> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.718006, 31.949991, 39.868286>,  <30.663919, 32.181164, 39.903416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.718006, 31.949991, 39.868286>,  <30.808151, 31.564705, 39.809734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.718006, 31.949991, 39.868286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064229, 0.164605, -0.984266,
		-0.972156, -0.212413, -0.098962,
		-0.225361, 0.963216, 0.146379,
		30.650398, 32.238956, 39.912201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.281128, 31.714106, 39.337078>,  <30.808151, 31.564705, 39.809734>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.281128, 31.714106, 39.337078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.456442, 32.059460, 39.437057>,  <30.561630, 32.266670, 39.497044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.456442, 32.059460, 39.437057>,  <30.281128, 31.714106, 39.337078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.456442, 32.059460, 39.437057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003111, 0.279534, -0.960131,
		-0.898831, 0.420033, 0.125201,
		0.438285, 0.863385, 0.249947,
		30.587927, 32.318474, 39.512043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.994186, 32.136612, 38.865257>,  <30.281128, 31.714106, 39.337078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.994186, 32.136612, 38.865257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.294155, 32.373821, 38.982521>,  <30.474136, 32.516148, 39.052879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.294155, 32.373821, 38.982521>,  <29.994186, 32.136612, 38.865257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.294155, 32.373821, 38.982521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061853, 0.378356, -0.923591,
		-0.658630, 0.710753, 0.247057,
		0.749920, 0.593024, 0.293159,
		30.519131, 32.551727, 39.070469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.850433, 32.839024, 38.488888>,  <29.994186, 32.136612, 38.865257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.850433, 32.839024, 38.488888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.238863, 32.806877, 38.578831>,  <30.471920, 32.787590, 38.632797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.238863, 32.806877, 38.578831>,  <29.850433, 32.839024, 38.488888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.238863, 32.806877, 38.578831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238581, 0.365707, -0.899632,
		-0.009931, 0.927254, 0.374302,
		0.971072, -0.080367, 0.224857,
		30.530184, 32.782768, 38.646286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.176729, 33.469807, 38.279655>,  <29.850433, 32.839024, 38.488888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.176729, 33.469807, 38.279655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.463652, 33.191818, 38.299599>,  <30.635805, 33.025024, 38.311565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.463652, 33.191818, 38.299599>,  <30.176729, 33.469807, 38.279655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.463652, 33.191818, 38.299599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404844, 0.357480, -0.841611,
		0.567071, 0.623879, 0.537778,
		0.717308, -0.694970, 0.049858,
		30.678844, 32.983326, 38.314556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.748447, 33.835030, 37.965645>,  <30.176729, 33.469807, 38.279655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.748447, 33.835030, 37.965645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.824287, 33.442738, 37.946835>,  <30.869791, 33.207363, 37.935547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.824287, 33.442738, 37.946835>,  <30.748447, 33.835030, 37.965645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.824287, 33.442738, 37.946835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309683, 0.105182, -0.945004,
		0.931745, 0.164610, 0.323659,
		0.189600, -0.980735, -0.047026,
		30.881166, 33.148518, 37.932728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.419209, 33.830978, 37.739857>,  <30.748447, 33.835030, 37.965645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.419209, 33.830978, 37.739857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.258268, 33.473171, 37.661938>,  <31.161703, 33.258488, 37.615185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.258268, 33.473171, 37.661938>,  <31.419209, 33.830978, 37.739857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.258268, 33.473171, 37.661938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131656, 0.154037, -0.979255,
		0.905969, -0.419652, 0.055792,
		-0.402353, -0.894519, -0.194802,
		31.137562, 33.204815, 37.603497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.181499, 33.999863, 37.852268>,  <31.419209, 33.830978, 37.739857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.181499, 33.999863, 37.852268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.269814, 34.389832, 37.863434>,  <32.322803, 34.623814, 37.870132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.269814, 34.389832, 37.863434>,  <32.181499, 33.999863, 37.852268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.269814, 34.389832, 37.863434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194650, 0.016000, 0.980742,
		0.955701, -0.221968, 0.193302,
		0.220787, 0.974923, 0.027915,
		32.336048, 34.682308, 37.871807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730087, 34.218563, 38.447567>,  <32.181499, 33.999863, 37.852268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730087, 34.218563, 38.447567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.559780, 34.578239, 38.407219>,  <32.457596, 34.794044, 38.383011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.559780, 34.578239, 38.407219>,  <32.730087, 34.218563, 38.447567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559780, 34.578239, 38.407219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179952, 0.025108, 0.983355,
		0.886759, 0.436829, 0.151122,
		-0.425764, 0.899194, -0.100873,
		32.432053, 34.848000, 38.376957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127201, 34.695255, 38.862450>,  <32.730087, 34.218563, 38.447567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127201, 34.695255, 38.862450> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.764191, 34.854298, 38.808334>,  <32.546383, 34.949722, 38.775864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.764191, 34.854298, 38.808334>,  <33.127201, 34.695255, 38.862450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764191, 34.854298, 38.808334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082934, 0.146130, 0.985783,
		0.411723, 0.905845, -0.099642,
		-0.907528, 0.397605, -0.135290,
		32.491932, 34.973579, 38.767746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191830, 35.349922, 39.241642>,  <33.127201, 34.695255, 38.862450>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191830, 35.349922, 39.241642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.815151, 35.220310, 39.205383>,  <32.589146, 35.142544, 39.183628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.815151, 35.220310, 39.205383>,  <33.191830, 35.349922, 39.241642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815151, 35.220310, 39.205383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144879, 0.147334, 0.978419,
		-0.303683, 0.934503, -0.185689,
		-0.941693, -0.324032, -0.090647,
		32.532642, 35.123100, 39.178188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.930923, 35.603657, 39.844193>,  <33.191830, 35.349922, 39.241642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.930923, 35.603657, 39.844193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.620975, 35.396404, 39.699352>,  <32.435005, 35.272053, 39.612450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.620975, 35.396404, 39.699352>,  <32.930923, 35.603657, 39.844193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620975, 35.396404, 39.699352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412713, -0.019206, 0.910659,
		-0.478792, 0.855087, -0.198956,
		-0.774871, -0.518128, -0.362102,
		32.388515, 35.240967, 39.590721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406769, 35.938324, 40.117599>,  <32.930923, 35.603657, 39.844193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406769, 35.938324, 40.117599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.289379, 35.571171, 40.010742>,  <32.218945, 35.350880, 39.946629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.289379, 35.571171, 40.010742>,  <32.406769, 35.938324, 40.117599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289379, 35.571171, 40.010742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355943, -0.154433, 0.921659,
		-0.887230, 0.365571, -0.281392,
		-0.293476, -0.917882, -0.267140,
		32.201336, 35.295807, 39.930599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813906, 35.900051, 40.405281>,  <32.406769, 35.938324, 40.117599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813906, 35.900051, 40.405281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.931391, 35.522743, 40.343349>,  <32.001881, 35.296360, 40.306190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.931391, 35.522743, 40.343349>,  <31.813906, 35.900051, 40.405281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931391, 35.522743, 40.343349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179233, -0.213448, 0.960373,
		-0.938940, -0.254322, -0.231757,
		0.293712, -0.943271, -0.154832,
		32.019505, 35.239761, 40.296902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.341286, 35.510586, 40.727802>,  <31.813906, 35.900051, 40.405281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.341286, 35.510586, 40.727802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.642410, 35.247536, 40.739090>,  <31.823086, 35.089706, 40.745861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.642410, 35.247536, 40.739090>,  <31.341286, 35.510586, 40.727802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642410, 35.247536, 40.739090> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224750, -0.216519, 0.950056,
		-0.618676, -0.721556, -0.310801,
		0.752813, -0.657629, 0.028215,
		31.868254, 35.050247, 40.747555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.080509, 34.866432, 41.002831>,  <31.341286, 35.510586, 40.727802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.080509, 34.866432, 41.002831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.473804, 34.798489, 41.029327>,  <31.709782, 34.757721, 41.045227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.473804, 34.798489, 41.029327>,  <31.080509, 34.866432, 41.002831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.473804, 34.798489, 41.029327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132037, -0.412845, 0.901180,
		-0.125727, -0.894822, -0.428353,
		0.983239, -0.169861, 0.066244,
		31.768776, 34.747532, 41.049202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.182701, 34.144741, 41.278873>,  <31.080509, 34.866432, 41.002831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.182701, 34.144741, 41.278873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.508572, 34.366081, 41.348278>,  <31.704094, 34.498886, 41.389919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.508572, 34.366081, 41.348278>,  <31.182701, 34.144741, 41.278873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.508572, 34.366081, 41.348278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003994, -0.304539, 0.952491,
		0.579905, -0.775277, -0.250310,
		0.814674, 0.553355, 0.173507,
		31.752974, 34.532089, 41.400330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.682205, 33.781307, 41.520386>,  <31.182701, 34.144741, 41.278873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.682205, 33.781307, 41.520386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.782145, 34.131073, 41.686749>,  <31.842108, 34.340931, 41.786564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.782145, 34.131073, 41.686749>,  <31.682205, 33.781307, 41.520386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.782145, 34.131073, 41.686749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028128, -0.422790, 0.905791,
		0.967876, -0.238009, -0.081038,
		0.249848, 0.874414, 0.415903,
		31.857100, 34.393398, 41.811520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245178, 33.625340, 41.941654>,  <31.682205, 33.781307, 41.520386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245178, 33.625340, 41.941654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.087807, 33.969055, 42.072392>,  <31.993383, 34.175285, 42.150833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.087807, 33.969055, 42.072392>,  <32.245178, 33.625340, 41.941654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.087807, 33.969055, 42.072392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039810, -0.339257, 0.939851,
		0.918492, 0.382778, 0.099266,
		-0.393431, 0.859293, 0.326843,
		31.969778, 34.226845, 42.170444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760895, 33.981846, 42.380768>,  <32.245178, 33.625340, 41.941654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760895, 33.981846, 42.380768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.406761, 34.132099, 42.490368>,  <32.194279, 34.222252, 42.556126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.406761, 34.132099, 42.490368>,  <32.760895, 33.981846, 42.380768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.406761, 34.132099, 42.490368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238013, -0.140078, 0.961108,
		0.399408, 0.916120, 0.034610,
		-0.885338, 0.375636, 0.273997,
		32.141159, 34.244789, 42.572567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958935, 34.451992, 42.967762>,  <32.760895, 33.981846, 42.380768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958935, 34.451992, 42.967762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.577469, 34.331806, 42.961426>,  <32.348591, 34.259693, 42.957623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.577469, 34.331806, 42.961426>,  <32.958935, 34.451992, 42.967762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577469, 34.331806, 42.961426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004780, -0.067785, 0.997689,
		-0.300845, 0.951381, 0.066080,
		-0.953661, -0.300466, -0.015845,
		32.291370, 34.241665, 42.956673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725788, 34.408596, 43.233040>,  <32.958935, 34.451992, 42.967762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725788, 34.408596, 43.233040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.831051, 34.030933, 43.312363>,  <33.894207, 33.804337, 43.359955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.831051, 34.030933, 43.312363>,  <33.725788, 34.408596, 43.233040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831051, 34.030933, 43.312363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082219, -0.182853, -0.979696,
		0.961244, 0.274115, 0.029509,
		0.263154, -0.944154, 0.198304,
		33.909996, 33.747688, 43.371853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353901, 34.272930, 42.939457>,  <33.725788, 34.408596, 43.233040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353901, 34.272930, 42.939457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.231327, 33.895462, 42.989395>,  <34.157784, 33.668980, 43.019360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.231327, 33.895462, 42.989395>,  <34.353901, 34.272930, 42.939457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231327, 33.895462, 42.989395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125973, -0.170205, -0.977324,
		0.943520, -0.283758, 0.171033,
		-0.306434, -0.943669, 0.124846,
		34.139397, 33.612362, 43.026848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894337, 33.814339, 42.710068>,  <34.353901, 34.272930, 42.939457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894337, 33.814339, 42.710068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.553535, 33.604969, 42.705811>,  <34.349052, 33.479347, 42.703255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.553535, 33.604969, 42.705811>,  <34.894337, 33.814339, 42.710068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553535, 33.604969, 42.705811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122828, -0.180089, -0.975951,
		0.508917, -0.832825, 0.217729,
		-0.852007, -0.523422, -0.010644,
		34.297932, 33.447941, 42.702618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142654, 33.158585, 42.588245>,  <34.894337, 33.814339, 42.710068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142654, 33.158585, 42.588245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.763000, 33.200226, 42.469379>,  <34.535210, 33.225212, 42.398060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.763000, 33.200226, 42.469379>,  <35.142654, 33.158585, 42.588245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763000, 33.200226, 42.469379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214605, -0.476736, -0.852448,
		-0.230413, -0.872860, 0.430145,
		-0.949134, 0.104103, -0.297166,
		34.478260, 33.231457, 42.380230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158340, 32.601944, 42.191635>,  <35.142654, 33.158585, 42.588245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158340, 32.601944, 42.191635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.836479, 32.819496, 42.096363>,  <34.643364, 32.950027, 42.039200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.836479, 32.819496, 42.096363>,  <35.158340, 32.601944, 42.191635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836479, 32.819496, 42.096363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169071, -0.174659, -0.970005,
		-0.569163, -0.820788, 0.048587,
		-0.804654, 0.543877, -0.238181,
		34.595081, 32.982658, 42.024910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936062, 32.213699, 41.631737>,  <35.158340, 32.601944, 42.191635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936062, 32.213699, 41.631737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.745552, 32.563843, 41.598484>,  <34.631245, 32.773930, 41.578533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.745552, 32.563843, 41.598484>,  <34.936062, 32.213699, 41.631737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.745552, 32.563843, 41.598484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035574, -0.075284, -0.996528,
		-0.878575, -0.477582, 0.004716,
		-0.476278, 0.875356, -0.083132,
		34.602669, 32.826450, 41.573544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299622, 32.092903, 41.174793>,  <34.936062, 32.213699, 41.631737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299622, 32.092903, 41.174793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.419624, 32.474468, 41.177742>,  <34.491627, 32.703407, 41.179512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.419624, 32.474468, 41.177742>,  <34.299622, 32.092903, 41.174793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419624, 32.474468, 41.177742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023534, 0.015129, -0.999609,
		-0.953648, 0.299712, 0.026988,
		0.300003, 0.953910, 0.007374,
		34.509624, 32.760643, 41.179955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937210, 32.413048, 40.615738>,  <34.299622, 32.092903, 41.174793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937210, 32.413048, 40.615738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.221836, 32.678585, 40.707809>,  <34.392612, 32.837910, 40.763050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.221836, 32.678585, 40.707809>,  <33.937210, 32.413048, 40.615738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221836, 32.678585, 40.707809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028678, 0.299884, -0.953545,
		-0.702032, 0.685112, 0.194350,
		0.711567, 0.663846, 0.230175,
		34.435307, 32.877739, 40.776863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748226, 33.016563, 40.312176>,  <33.937210, 32.413048, 40.615738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748226, 33.016563, 40.312176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.143940, 33.037327, 40.366753>,  <34.381371, 33.049786, 40.399498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.143940, 33.037327, 40.366753>,  <33.748226, 33.016563, 40.312176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143940, 33.037327, 40.366753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118940, 0.255360, -0.959502,
		-0.084650, 0.965452, 0.246450,
		0.989286, 0.051909, 0.136447,
		34.440727, 33.052898, 40.407688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893311, 33.560509, 40.003445>,  <33.748226, 33.016563, 40.312176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893311, 33.560509, 40.003445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.252930, 33.385418, 40.007637>,  <34.468700, 33.280361, 40.010151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.252930, 33.385418, 40.007637>,  <33.893311, 33.560509, 40.003445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252930, 33.385418, 40.007637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202975, 0.395435, -0.895786,
		0.387969, 0.807479, 0.444363,
		0.899045, -0.437732, 0.010481,
		34.522644, 33.254097, 40.010780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217075, 34.031780, 39.535263>,  <33.893311, 33.560509, 40.003445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217075, 34.031780, 39.535263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.471703, 33.728779, 39.593174>,  <34.624481, 33.546978, 39.627922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.471703, 33.728779, 39.593174>,  <34.217075, 34.031780, 39.535263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471703, 33.728779, 39.593174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424455, 0.187386, -0.885847,
		0.643906, 0.625357, 0.440812,
		0.636572, -0.757506, 0.144777,
		34.662674, 33.501526, 39.636608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915497, 34.270653, 39.516113>,  <34.217075, 34.031780, 39.535263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915497, 34.270653, 39.516113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.951485, 33.884903, 39.416611>,  <34.973076, 33.653454, 39.356907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.951485, 33.884903, 39.416611>,  <34.915497, 34.270653, 39.516113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951485, 33.884903, 39.416611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532779, 0.257632, -0.806085,
		0.841458, -0.060011, 0.536979,
		0.089969, -0.964378, -0.248759,
		34.978474, 33.595589, 39.341984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559479, 34.203041, 39.242565>,  <34.915497, 34.270653, 39.516113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559479, 34.203041, 39.242565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.399136, 33.863194, 39.105473>,  <35.302929, 33.659286, 39.023216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.399136, 33.863194, 39.105473>,  <35.559479, 34.203041, 39.242565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399136, 33.863194, 39.105473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443514, 0.147374, -0.884068,
		0.801629, -0.506391, 0.317741,
		-0.400857, -0.849617, -0.342731,
		35.278877, 33.608307, 39.002655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046482, 33.835072, 38.905842>,  <35.559479, 34.203041, 39.242565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046482, 33.835072, 38.905842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.713135, 33.690762, 38.738350>,  <35.513126, 33.604176, 38.637856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.713135, 33.690762, 38.738350>,  <36.046482, 33.835072, 38.905842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713135, 33.690762, 38.738350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397148, 0.136032, -0.907617,
		0.384404, -0.922680, 0.029915,
		-0.833371, -0.360772, -0.418732,
		35.463123, 33.582531, 38.612732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.355247, 39.371475, 30.576483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.112175, 39.688221, 30.600706>,  <30.966331, 39.878269, 30.615240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.112175, 39.688221, 30.600706>,  <31.355247, 39.371475, 30.576483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.112175, 39.688221, 30.600706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648516, -0.538797, 0.537703,
		0.458420, 0.287478, 0.840956,
		-0.607683, 0.791868, 0.060560,
		30.929871, 39.925781, 30.618874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.078852, 39.252438, 31.246868>,  <31.355247, 39.371475, 30.576483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.078852, 39.252438, 31.246868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.838339, 39.510376, 31.058134>,  <30.694031, 39.665138, 30.944893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.838339, 39.510376, 31.058134>,  <31.078852, 39.252438, 31.246868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.838339, 39.510376, 31.058134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783157, -0.358477, 0.508094,
		0.158500, 0.675031, 0.720563,
		-0.601284, 0.644847, -0.471836,
		30.657953, 39.703831, 30.916584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.619551, 39.438522, 31.706610>,  <31.078852, 39.252438, 31.246868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.619551, 39.438522, 31.706610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.426003, 39.528614, 31.368345>,  <30.309874, 39.582668, 31.165386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.426003, 39.528614, 31.368345>,  <30.619551, 39.438522, 31.706610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.426003, 39.528614, 31.368345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852554, -0.339435, 0.397410,
		-0.197541, 0.913267, 0.356260,
		-0.483868, 0.225226, -0.845662,
		30.280842, 39.596184, 31.114647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.009142, 39.779827, 31.972816>,  <30.619551, 39.438522, 31.706610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.009142, 39.779827, 31.972816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.943174, 39.640499, 31.603714>,  <29.903593, 39.556904, 31.382252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.943174, 39.640499, 31.603714>,  <30.009142, 39.779827, 31.972816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.943174, 39.640499, 31.603714> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849757, -0.424777, 0.312215,
		-0.500714, 0.835608, -0.225929,
		-0.164920, -0.348315, -0.922756,
		29.893698, 39.536003, 31.326887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.277672, 40.045555, 31.580317>,  <30.009142, 39.779827, 31.972816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.277672, 40.045555, 31.580317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.399347, 39.686703, 31.452175>,  <29.472353, 39.471390, 31.375290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.399347, 39.686703, 31.452175>,  <29.277672, 40.045555, 31.580317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.399347, 39.686703, 31.452175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913200, -0.370349, 0.170024,
		-0.271176, 0.240828, -0.931915,
		0.304188, -0.897131, -0.320354,
		29.490604, 39.417564, 31.356068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.804096, 39.871666, 31.153503>,  <29.277672, 40.045555, 31.580317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.804096, 39.871666, 31.153503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.991278, 39.541504, 31.279823>,  <29.103586, 39.343407, 31.355616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.991278, 39.541504, 31.279823>,  <28.804096, 39.871666, 31.153503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.991278, 39.541504, 31.279823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875611, -0.384639, 0.292162,
		-0.119683, -0.413236, -0.902725,
		0.467955, -0.825403, 0.315799,
		29.131664, 39.293884, 31.374563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.362494, 39.305214, 30.946316>,  <28.804096, 39.871666, 31.153503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.362494, 39.305214, 30.946316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.584528, 39.130787, 31.229647>,  <28.717749, 39.026131, 31.399645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.584528, 39.130787, 31.229647>,  <28.362494, 39.305214, 30.946316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.584528, 39.130787, 31.229647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785366, -0.555282, 0.273610,
		0.274010, -0.708173, -0.650699,
		0.555084, -0.436065, 0.708328,
		28.751053, 38.999966, 31.442144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.119875, 38.623688, 30.973354>,  <28.362494, 39.305214, 30.946316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.119875, 38.623688, 30.973354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.323505, 38.642296, 31.317141>,  <28.445683, 38.653461, 31.523413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.323505, 38.642296, 31.317141>,  <28.119875, 38.623688, 30.973354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.323505, 38.642296, 31.317141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690761, -0.573648, 0.440201,
		0.513509, -0.817780, -0.259894,
		0.509075, 0.046523, 0.859464,
		28.476229, 38.656254, 31.574980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.100073, 37.925682, 31.177055>,  <28.119875, 38.623688, 30.973354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.100073, 37.925682, 31.177055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.149090, 38.170258, 31.489754>,  <28.178501, 38.317001, 31.677372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.149090, 38.170258, 31.489754>,  <28.100073, 37.925682, 31.177055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.149090, 38.170258, 31.489754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704777, -0.500972, 0.502311,
		0.698765, -0.612512, 0.369536,
		0.122544, 0.611438, 0.781746,
		28.185854, 38.353687, 31.724277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.986656, 37.406353, 31.656191>,  <28.100073, 37.925682, 31.177055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.986656, 37.406353, 31.656191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.970224, 37.751469, 31.857746>,  <27.960365, 37.958538, 31.978680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.970224, 37.751469, 31.857746>,  <27.986656, 37.406353, 31.656191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.970224, 37.751469, 31.857746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524876, -0.447758, 0.723890,
		0.850187, -0.234743, 0.471252,
		-0.041078, 0.862791, 0.503889,
		27.957901, 38.010307, 32.008911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.212955, 37.305107, 32.388432>,  <27.986656, 37.406353, 31.656191>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.212955, 37.305107, 32.388432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.962656, 37.617115, 32.388557>,  <27.812477, 37.804321, 32.388634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.962656, 37.617115, 32.388557>,  <28.212955, 37.305107, 32.388432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.962656, 37.617115, 32.388557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506556, -0.406677, 0.760273,
		0.593160, 0.475579, 0.649604,
		-0.625749, 0.780024, 0.000317,
		27.774931, 37.851124, 32.388653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.107954, 37.518791, 33.116161>,  <28.212955, 37.305107, 32.388432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.107954, 37.518791, 33.116161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.801964, 37.663361, 32.902924>,  <27.618370, 37.750103, 32.774982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.801964, 37.663361, 32.902924>,  <28.107954, 37.518791, 33.116161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.801964, 37.663361, 32.902924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628088, -0.235430, 0.741673,
		0.142551, 0.902190, 0.407103,
		-0.764974, 0.361422, -0.533094,
		27.572472, 37.771786, 32.742996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.534098, 37.640285, 33.666252>,  <28.107954, 37.518791, 33.116161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.534098, 37.640285, 33.666252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.343761, 37.725567, 33.324932>,  <27.229559, 37.776737, 33.120140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.343761, 37.725567, 33.324932>,  <27.534098, 37.640285, 33.666252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.343761, 37.725567, 33.324932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850802, 0.134360, 0.508019,
		0.222963, 0.967724, 0.117464,
		-0.475840, 0.213208, -0.853299,
		27.201010, 37.789528, 33.068943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.081282, 38.266556, 33.774624>,  <27.534098, 37.640285, 33.666252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.081282, 38.266556, 33.774624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.937452, 38.084114, 33.449005>,  <26.851154, 37.974651, 33.253632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.937452, 38.084114, 33.449005>,  <27.081282, 38.266556, 33.774624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.937452, 38.084114, 33.449005> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821044, -0.259891, 0.508276,
		-0.443389, 0.851134, -0.281029,
		-0.359574, -0.456101, -0.814051,
		26.829580, 37.947285, 33.204788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.261755, 38.432144, 33.627361>,  <27.081282, 38.266556, 33.774624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.261755, 38.432144, 33.627361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.364105, 38.098064, 33.432648>,  <26.425516, 37.897617, 33.315819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.364105, 38.098064, 33.432648>,  <26.261755, 38.432144, 33.627361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.364105, 38.098064, 33.432648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725795, -0.498592, 0.473950,
		-0.638553, 0.232036, -0.733764,
		0.255875, -0.835204, -0.486788,
		26.440868, 37.847504, 33.286610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.694229, 38.184910, 33.466892>,  <26.261755, 38.432144, 33.627361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.694229, 38.184910, 33.466892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.952553, 37.879517, 33.468479>,  <26.107548, 37.696281, 33.469433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.952553, 37.879517, 33.468479>,  <25.694229, 38.184910, 33.466892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.952553, 37.879517, 33.468479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613085, -0.515477, 0.598674,
		-0.455030, -0.389069, -0.800983,
		0.645813, -0.763485, 0.003974,
		26.146296, 37.650471, 33.469669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.252995, 37.547142, 33.460327>,  <25.694229, 38.184910, 33.466892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.252995, 37.547142, 33.460327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.610838, 37.387115, 33.539944>,  <25.825544, 37.291100, 33.587715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.610838, 37.387115, 33.539944>,  <25.252995, 37.547142, 33.460327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.610838, 37.387115, 33.539944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434849, -0.676900, 0.593896,
		-0.102866, -0.617859, -0.779531,
		0.894609, -0.400070, 0.199046,
		25.879221, 37.267094, 33.599659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.301495, 36.775639, 33.241817>,  <25.252995, 37.547142, 33.460327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.301495, 36.775639, 33.241817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.565882, 36.827839, 33.537411>,  <25.724514, 36.859158, 33.714767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.565882, 36.827839, 33.537411>,  <25.301495, 36.775639, 33.241817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.565882, 36.827839, 33.537411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412609, -0.759341, 0.503145,
		0.626796, -0.637473, -0.448056,
		0.660969, 0.130497, 0.738979,
		25.764172, 36.866989, 33.759106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.462078, 36.227222, 33.378231>,  <25.301495, 36.775639, 33.241817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.462078, 36.227222, 33.378231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.578169, 36.399769, 33.719921>,  <25.647823, 36.503296, 33.924934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.578169, 36.399769, 33.719921>,  <25.462078, 36.227222, 33.378231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.578169, 36.399769, 33.719921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588136, -0.623755, 0.514807,
		0.754894, -0.651808, 0.072673,
		0.290225, 0.431366, 0.854221,
		25.665236, 36.529179, 33.976189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.531691, 35.646358, 33.825356>,  <25.462078, 36.227222, 33.378231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.531691, 35.646358, 33.825356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.488987, 35.973007, 34.052242>,  <25.463364, 36.168995, 34.188374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.488987, 35.973007, 34.052242>,  <25.531691, 35.646358, 33.825356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.488987, 35.973007, 34.052242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531345, -0.529046, 0.661652,
		0.840402, -0.230750, 0.490387,
		-0.106761, 0.816618, 0.567218,
		25.456959, 36.217991, 34.222408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.500248, 34.936501, 33.911522>,  <25.531691, 35.646358, 33.825356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.500248, 34.936501, 33.911522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.644234, 34.563377, 33.918335>,  <25.730625, 34.339504, 33.922424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.644234, 34.563377, 33.918335>,  <25.500248, 34.936501, 33.911522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.644234, 34.563377, 33.918335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841313, 0.316656, -0.438089,
		0.403260, 0.172028, 0.898770,
		0.359965, -0.932810, 0.017035,
		25.752224, 34.283535, 33.923447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.163454, 34.950615, 34.163166>,  <25.500248, 34.936501, 33.911522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.163454, 34.950615, 34.163166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.144537, 34.609486, 33.955143>,  <26.133186, 34.404808, 33.830330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.144537, 34.609486, 33.955143>,  <26.163454, 34.950615, 34.163166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.144537, 34.609486, 33.955143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758839, 0.307889, -0.573905,
		0.649559, -0.421778, 0.632595,
		-0.047292, -0.852823, -0.520054,
		26.130350, 34.353638, 33.799126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.856674, 34.823601, 33.958534>,  <26.163454, 34.950615, 34.163166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.856674, 34.823601, 33.958534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.652538, 34.577827, 33.717857>,  <26.530058, 34.430363, 33.573452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.652538, 34.577827, 33.717857>,  <26.856674, 34.823601, 33.958534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.652538, 34.577827, 33.717857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684387, 0.133488, -0.716796,
		0.520740, -0.777596, 0.352384,
		-0.510339, -0.614431, -0.601689,
		26.499437, 34.393497, 33.537350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.326746, 34.460499, 33.603790>,  <26.856674, 34.823601, 33.958534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.326746, 34.460499, 33.603790> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.016636, 34.413139, 33.355618>,  <26.830570, 34.384724, 33.206715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.016636, 34.413139, 33.355618>,  <27.326746, 34.460499, 33.603790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.016636, 34.413139, 33.355618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625828, -0.011221, -0.779880,
		0.085376, -0.992902, 0.082797,
		-0.775274, -0.118399, -0.620428,
		26.784054, 34.377621, 33.169491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.517307, 33.947914, 33.055077>,  <27.326746, 34.460499, 33.603790>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.517307, 33.947914, 33.055077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.242043, 34.211994, 32.934696>,  <27.076883, 34.370441, 32.862469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.242043, 34.211994, 32.934696>,  <27.517307, 33.947914, 33.055077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.242043, 34.211994, 32.934696> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540603, 0.189904, -0.819564,
		-0.483920, -0.726690, -0.487589,
		-0.688164, 0.660196, -0.300952,
		27.035593, 34.410053, 32.844410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.457308, 33.758858, 32.255646>,  <27.517307, 33.947914, 33.055077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.457308, 33.758858, 32.255646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.308035, 34.120171, 32.340324>,  <27.218472, 34.336960, 32.391132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.308035, 34.120171, 32.340324>,  <27.457308, 33.758858, 32.255646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.308035, 34.120171, 32.340324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475726, 0.382204, -0.792215,
		-0.796506, -0.194930, -0.572346,
		-0.373180, 0.903284, 0.211695,
		27.196081, 34.391155, 32.403831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.274746, 34.099026, 31.658525>,  <27.457308, 33.758858, 32.255646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.274746, 34.099026, 31.658525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.319090, 34.402592, 31.915199>,  <27.345697, 34.584732, 32.069202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.319090, 34.402592, 31.915199>,  <27.274746, 34.099026, 31.658525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.319090, 34.402592, 31.915199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490763, 0.519650, -0.699368,
		-0.864211, 0.392449, -0.314837,
		0.110861, 0.758912, 0.641687,
		27.352348, 34.630264, 32.107704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.128601, 34.621708, 31.304203>,  <27.274746, 34.099026, 31.658525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.128601, 34.621708, 31.304203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.332056, 34.796619, 31.600870>,  <27.454128, 34.901566, 31.778872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.332056, 34.796619, 31.600870>,  <27.128601, 34.621708, 31.304203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.332056, 34.796619, 31.600870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445612, 0.603371, -0.661342,
		-0.736693, 0.666881, 0.112040,
		0.508638, 0.437280, 0.741669,
		27.484648, 34.927803, 31.823372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.026899, 35.349339, 31.288454>,  <27.128601, 34.621708, 31.304203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.026899, 35.349339, 31.288454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.354284, 35.338291, 31.518013>,  <27.550714, 35.331661, 31.655748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.354284, 35.338291, 31.518013>,  <27.026899, 35.349339, 31.288454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.354284, 35.338291, 31.518013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452113, 0.647351, -0.613621,
		-0.354565, 0.761691, 0.542319,
		0.818461, -0.027621, 0.573898,
		27.599823, 35.330006, 31.690182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.233084, 36.026688, 31.279585>,  <27.026899, 35.349339, 31.288454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.233084, 36.026688, 31.279585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.566128, 35.821835, 31.363951>,  <27.765953, 35.698925, 31.414570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.566128, 35.821835, 31.363951>,  <27.233084, 36.026688, 31.279585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.566128, 35.821835, 31.363951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539233, 0.662594, -0.519804,
		0.126455, 0.546527, 0.827839,
		0.832609, -0.512130, 0.210917,
		27.815910, 35.668194, 31.427225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.736994, 36.537300, 31.476513>,  <27.233084, 36.026688, 31.279585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.736994, 36.537300, 31.476513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.938385, 36.209045, 31.368393>,  <28.059219, 36.012093, 31.303522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.938385, 36.209045, 31.368393>,  <27.736994, 36.537300, 31.476513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.938385, 36.209045, 31.368393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571793, 0.551008, -0.607818,
		0.647736, 0.151470, 0.746656,
		0.503480, -0.820638, -0.270298,
		28.089430, 35.962852, 31.287304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.331985, 36.859798, 31.336416>,  <27.736994, 36.537300, 31.476513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.331985, 36.859798, 31.336416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.401018, 36.500000, 31.175858>,  <28.442438, 36.284122, 31.079523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.401018, 36.500000, 31.175858>,  <28.331985, 36.859798, 31.336416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.401018, 36.500000, 31.175858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724549, 0.391991, -0.566897,
		0.667266, -0.192995, 0.719381,
		0.172583, -0.899497, -0.401397,
		28.452793, 36.230152, 31.055439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.047375, 36.897068, 31.263517>,  <28.331985, 36.859798, 31.336416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.047375, 36.897068, 31.263517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.930571, 36.595673, 31.027897>,  <28.860489, 36.414833, 30.886524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.930571, 36.595673, 31.027897>,  <29.047375, 36.897068, 31.263517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.930571, 36.595673, 31.027897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778242, 0.170807, -0.604288,
		0.555941, -0.634881, 0.536522,
		-0.292009, -0.753493, -0.589050,
		28.842968, 36.369625, 30.851181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.615532, 36.530384, 31.058964>,  <29.047375, 36.897068, 31.263517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.615532, 36.530384, 31.058964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.325621, 36.493526, 30.785847>,  <29.151674, 36.471413, 30.621977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.325621, 36.493526, 30.785847>,  <29.615532, 36.530384, 31.058964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.325621, 36.493526, 30.785847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646111, 0.253230, -0.720011,
		0.239233, -0.963010, -0.124015,
		-0.724782, -0.092123, -0.682792,
		29.108187, 36.465885, 30.581009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.981264, 36.232819, 30.420160>,  <29.615532, 36.530384, 31.058964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.981264, 36.232819, 30.420160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.639454, 36.377869, 30.271410>,  <29.434368, 36.464897, 30.182159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.639454, 36.377869, 30.271410>,  <29.981264, 36.232819, 30.420160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.639454, 36.377869, 30.271410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508863, 0.440927, -0.739352,
		-0.104134, -0.821029, -0.561308,
		-0.854526, 0.362621, -0.371875,
		29.383097, 36.486656, 30.159847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.911093, 35.989979, 29.717974>,  <29.981264, 36.232819, 30.420160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.911093, 35.989979, 29.717974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.665613, 36.305786, 29.720280>,  <29.518326, 36.495270, 29.721663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.665613, 36.305786, 29.720280>,  <29.911093, 35.989979, 29.717974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.665613, 36.305786, 29.720280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485614, 0.383207, -0.785705,
		-0.622537, -0.479388, -0.618575,
		-0.613699, 0.789519, 0.005763,
		29.481503, 36.542641, 29.722008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.883812, 36.157127, 29.040548>,  <29.911093, 35.989979, 29.717974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.883812, 36.157127, 29.040548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.716055, 36.503635, 29.149124>,  <29.615400, 36.711540, 29.214270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.716055, 36.503635, 29.149124>,  <29.883812, 36.157127, 29.040548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.716055, 36.503635, 29.149124> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458419, 0.460179, -0.760320,
		-0.783556, -0.194441, -0.590112,
		-0.419394, 0.866273, 0.271440,
		29.590237, 36.763515, 29.230556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.514105, 36.480007, 28.406660>,  <29.883812, 36.157127, 29.040548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.514105, 36.480007, 28.406660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.601383, 36.753975, 28.684732>,  <29.653749, 36.918354, 28.851576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.601383, 36.753975, 28.684732>,  <29.514105, 36.480007, 28.406660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.601383, 36.753975, 28.684732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399068, 0.587446, -0.704026,
		-0.890581, 0.431041, -0.145150,
		0.218196, 0.684917, 0.695183,
		29.666842, 36.959450, 28.893288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.228584, 37.119366, 28.180792>,  <29.514105, 36.480007, 28.406660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.228584, 37.119366, 28.180792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.522116, 37.210453, 28.436806>,  <29.698235, 37.265106, 28.590414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.522116, 37.210453, 28.436806>,  <29.228584, 37.119366, 28.180792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.522116, 37.210453, 28.436806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509778, 0.438148, -0.740373,
		-0.449022, 0.869582, 0.205442,
		0.733829, 0.227714, 0.640032,
		29.742264, 37.278767, 28.628815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.355766, 37.795109, 28.043442>,  <29.228584, 37.119366, 28.180792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.355766, 37.795109, 28.043442> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.676840, 37.661339, 28.240969>,  <29.869484, 37.581078, 28.359486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.676840, 37.661339, 28.240969>,  <29.355766, 37.795109, 28.043442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.676840, 37.661339, 28.240969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592097, 0.546161, -0.592562,
		-0.071536, 0.768029, 0.636407,
		0.802685, -0.334426, 0.493818,
		29.917645, 37.561012, 28.389114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.875347, 38.458729, 28.106102>,  <29.355766, 37.795109, 28.043442>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.875347, 38.458729, 28.106102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.078026, 38.115181, 28.136055>,  <30.199633, 37.909054, 28.154026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.078026, 38.115181, 28.136055>,  <29.875347, 38.458729, 28.106102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.078026, 38.115181, 28.136055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748014, 0.394785, -0.533498,
		0.428641, 0.326335, 0.842480,
		0.506698, -0.858866, 0.074882,
		30.230036, 37.857521, 28.158520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.326902, 38.760159, 28.584827>,  <29.875347, 38.458729, 28.106102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.326902, 38.760159, 28.584827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.051304, 38.928673, 28.348930>,  <28.885944, 39.029781, 28.207392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.051304, 38.928673, 28.348930>,  <29.326902, 38.760159, 28.584827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.051304, 38.928673, 28.348930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518200, 0.282531, 0.807245,
		0.506705, 0.861795, 0.023649,
		-0.688999, 0.421290, -0.589742,
		28.844604, 39.055061, 28.172009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.918541, 31.738461, 44.193081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.667622, 31.444853, 44.088997>,  <36.517071, 31.268688, 44.026546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.667622, 31.444853, 44.088997>,  <36.918541, 31.738461, 44.193081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667622, 31.444853, 44.088997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441361, 0.059791, 0.895336,
		-0.641636, 0.676491, -0.361474,
		-0.627299, -0.734020, -0.260212,
		36.479431, 31.224648, 44.010933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435646, 31.860897, 44.587555>,  <36.918541, 31.738461, 44.193081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435646, 31.860897, 44.587555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.305790, 31.505306, 44.458355>,  <36.227875, 31.291952, 44.380833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.305790, 31.505306, 44.458355>,  <36.435646, 31.860897, 44.587555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305790, 31.505306, 44.458355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686669, -0.013335, 0.726848,
		-0.650457, 0.457761, -0.606103,
		-0.324640, -0.888976, -0.323004,
		36.208397, 31.238613, 44.361454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743343, 31.904171, 44.439320>,  <36.435646, 31.860897, 44.587555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743343, 31.904171, 44.439320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.835030, 31.525440, 44.529636>,  <35.890041, 31.298203, 44.583828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.835030, 31.525440, 44.529636>,  <35.743343, 31.904171, 44.439320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835030, 31.525440, 44.529636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751276, -0.024595, 0.659530,
		-0.618907, -0.320806, -0.716965,
		0.229215, -0.946826, 0.225791,
		35.903793, 31.241392, 44.597374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085045, 31.680689, 44.762966>,  <35.743343, 31.904171, 44.439320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085045, 31.680689, 44.762966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.346947, 31.399435, 44.873882>,  <35.504089, 31.230682, 44.940434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.346947, 31.399435, 44.873882>,  <35.085045, 31.680689, 44.762966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346947, 31.399435, 44.873882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588311, -0.243769, 0.771016,
		-0.474535, -0.667963, -0.573273,
		0.654757, -0.703137, 0.277293,
		35.543373, 31.188494, 44.957069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726799, 31.094976, 44.978207>,  <35.085045, 31.680689, 44.762966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726799, 31.094976, 44.978207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.078823, 31.032469, 45.157574>,  <35.290039, 30.994965, 45.265194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.078823, 31.032469, 45.157574>,  <34.726799, 31.094976, 44.978207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078823, 31.032469, 45.157574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471846, -0.181479, 0.862802,
		-0.053448, -0.970900, -0.233446,
		0.880059, -0.156266, 0.448415,
		35.342842, 30.985588, 45.292099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634922, 30.536816, 45.448429>,  <34.726799, 31.094976, 44.978207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634922, 30.536816, 45.448429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.951374, 30.727928, 45.601189>,  <35.141243, 30.842596, 45.692844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.951374, 30.727928, 45.601189>,  <34.634922, 30.536816, 45.448429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951374, 30.727928, 45.601189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353856, -0.151766, 0.922905,
		0.498905, -0.865270, 0.049000,
		0.791125, 0.477781, 0.381898,
		35.188713, 30.871262, 45.715759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846924, 30.132759, 45.922375>,  <34.634922, 30.536816, 45.448429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846924, 30.132759, 45.922375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.986435, 30.495895, 46.015480>,  <35.070141, 30.713778, 46.071342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.986435, 30.495895, 46.015480>,  <34.846924, 30.132759, 45.922375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.986435, 30.495895, 46.015480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332783, -0.112211, 0.936303,
		0.876135, -0.404018, 0.262979,
		0.348774, 0.907843, 0.232762,
		35.091068, 30.768248, 46.085308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233166, 30.067165, 46.519157>,  <34.846924, 30.132759, 45.922375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233166, 30.067165, 46.519157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.144382, 30.457020, 46.507732>,  <35.091114, 30.690933, 46.500877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.144382, 30.457020, 46.507732>,  <35.233166, 30.067165, 46.519157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144382, 30.457020, 46.507732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449907, -0.076383, 0.889803,
		0.865054, 0.210348, 0.455450,
		-0.221957, 0.974638, -0.028562,
		35.077797, 30.749411, 46.499165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655106, 30.323397, 47.101238>,  <35.233166, 30.067165, 46.519157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655106, 30.323397, 47.101238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.363316, 30.582521, 47.013416>,  <35.188240, 30.737995, 46.960724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.363316, 30.582521, 47.013416>,  <35.655106, 30.323397, 47.101238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363316, 30.582521, 47.013416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284779, 0.004194, 0.958584,
		0.621901, 0.761790, 0.181424,
		-0.729479, 0.647810, -0.219550,
		35.144470, 30.776865, 46.947552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645123, 30.754087, 47.705273>,  <35.655106, 30.323397, 47.101238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645123, 30.754087, 47.705273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.295784, 30.802885, 47.516647>,  <35.086182, 30.832163, 47.403473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.295784, 30.802885, 47.516647>,  <35.645123, 30.754087, 47.705273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295784, 30.802885, 47.516647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476926, -0.017415, 0.878771,
		0.098991, 0.992378, 0.073391,
		-0.873351, 0.121992, -0.471567,
		35.033779, 30.839483, 47.375175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360722, 31.290222, 48.027008>,  <35.645123, 30.754087, 47.705273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360722, 31.290222, 48.027008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.064594, 31.086885, 47.851048>,  <34.886917, 30.964884, 47.745472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.064594, 31.086885, 47.851048>,  <35.360722, 31.290222, 48.027008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064594, 31.086885, 47.851048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493869, -0.032686, 0.868922,
		-0.456089, 0.860534, -0.226857,
		-0.740322, -0.508343, -0.439898,
		34.842499, 30.934381, 47.719078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678734, 31.532850, 48.344959>,  <35.360722, 31.290222, 48.027008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678734, 31.532850, 48.344959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.622997, 31.172285, 48.180992>,  <34.589554, 30.955946, 48.082611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.622997, 31.172285, 48.180992>,  <34.678734, 31.532850, 48.344959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622997, 31.172285, 48.180992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438034, -0.315146, 0.841908,
		-0.888093, 0.296874, -0.350936,
		-0.139344, -0.901415, -0.409920,
		34.581196, 30.901861, 48.058018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889786, 31.359049, 48.374474>,  <34.678734, 31.532850, 48.344959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889786, 31.359049, 48.374474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.126213, 31.038172, 48.340702>,  <34.268070, 30.845646, 48.320438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.126213, 31.038172, 48.340702>,  <33.889786, 31.359049, 48.374474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126213, 31.038172, 48.340702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362208, -0.357484, 0.860820,
		-0.720725, -0.478220, -0.501857,
		0.591067, -0.802191, -0.084433,
		34.303532, 30.797514, 48.315372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014156, 31.989050, 48.691730>,  <33.889786, 31.359049, 48.374474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014156, 31.989050, 48.691730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.894337, 32.345028, 48.829288>,  <33.822445, 32.558617, 48.911823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.894337, 32.345028, 48.829288>,  <34.014156, 31.989050, 48.691730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894337, 32.345028, 48.829288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328329, 0.434589, -0.838649,
		-0.895807, -0.138305, -0.422376,
		-0.299549, 0.889946, 0.343898,
		33.804470, 32.612011, 48.932457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673222, 32.289303, 48.201000>,  <34.014156, 31.989050, 48.691730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673222, 32.289303, 48.201000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.784489, 32.599762, 48.427349>,  <33.851250, 32.786037, 48.563160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.784489, 32.599762, 48.427349>,  <33.673222, 32.289303, 48.201000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784489, 32.599762, 48.427349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324845, 0.478398, -0.815850,
		-0.903935, 0.410766, -0.119053,
		0.278168, 0.776149, 0.565876,
		33.867939, 32.832607, 48.597111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276215, 32.932430, 48.013180>,  <33.673222, 32.289303, 48.201000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276215, 32.932430, 48.013180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.626675, 33.028870, 48.180145>,  <33.836948, 33.086735, 48.280327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.626675, 33.028870, 48.180145>,  <33.276215, 32.932430, 48.013180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626675, 33.028870, 48.180145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254191, 0.504678, -0.825038,
		-0.409577, 0.828958, 0.380887,
		0.876147, 0.241098, 0.417418,
		33.889519, 33.101200, 48.305370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376625, 33.605965, 47.833313>,  <33.276215, 32.932430, 48.013180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376625, 33.605965, 47.833313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.731182, 33.441998, 47.919361>,  <33.943916, 33.343616, 47.970989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.731182, 33.441998, 47.919361>,  <33.376625, 33.605965, 47.833313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731182, 33.441998, 47.919361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402108, 0.451502, -0.796526,
		0.229385, 0.792535, 0.565040,
		0.886392, -0.409919, 0.215117,
		33.997101, 33.319023, 47.983894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.746845, 34.138489, 47.657658>,  <33.376625, 33.605965, 47.833313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.746845, 34.138489, 47.657658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.026413, 33.853680, 47.684597>,  <34.194153, 33.682796, 47.700760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.026413, 33.853680, 47.684597>,  <33.746845, 34.138489, 47.657658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.026413, 33.853680, 47.684597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418745, 0.331062, -0.845606,
		0.579794, 0.619212, 0.529542,
		0.698921, -0.712021, 0.067344,
		34.236088, 33.640072, 47.704800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467522, 34.448963, 47.500557>,  <33.746845, 34.138489, 47.657658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467522, 34.448963, 47.500557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.461388, 34.053467, 47.441017>,  <34.457706, 33.816170, 47.405293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.461388, 34.053467, 47.441017>,  <34.467522, 34.448963, 47.500557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461388, 34.053467, 47.441017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233065, 0.141233, -0.962151,
		0.972340, -0.049450, 0.228275,
		-0.015338, -0.988740, -0.148851,
		34.456787, 33.756844, 47.396362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981712, 34.331066, 47.066692>,  <34.467522, 34.448963, 47.500557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981712, 34.331066, 47.066692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.757149, 34.005791, 47.005325>,  <34.622410, 33.810623, 46.968506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.757149, 34.005791, 47.005325>,  <34.981712, 34.331066, 47.066692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757149, 34.005791, 47.005325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014428, 0.175741, -0.984331,
		0.827412, -0.554826, -0.086930,
		-0.561410, -0.813193, -0.153415,
		34.588726, 33.761833, 46.959301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166882, 34.101856, 46.487366>,  <34.981712, 34.331066, 47.066692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166882, 34.101856, 46.487366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.822033, 33.901085, 46.515129>,  <34.615124, 33.780624, 46.531788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.822033, 33.901085, 46.515129>,  <35.166882, 34.101856, 46.487366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822033, 33.901085, 46.515129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089499, 0.016014, -0.995858,
		0.498736, -0.864762, -0.058728,
		-0.862121, -0.501926, 0.069409,
		34.563396, 33.750507, 46.535954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197346, 33.586540, 46.066044>,  <35.166882, 34.101856, 46.487366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197346, 33.586540, 46.066044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.801903, 33.606934, 46.122700>,  <34.564636, 33.619171, 46.156693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.801903, 33.606934, 46.122700>,  <35.197346, 33.586540, 46.066044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801903, 33.606934, 46.122700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148286, -0.167794, -0.974606,
		-0.025920, -0.984503, 0.173442,
		-0.988605, 0.050981, 0.141638,
		34.505322, 33.622231, 46.165192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010590, 33.043983, 45.781536>,  <35.197346, 33.586540, 46.066044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.010590, 33.043983, 45.781536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.685738, 33.276325, 45.803669>,  <34.490826, 33.415730, 45.816948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.685738, 33.276325, 45.803669>,  <35.010590, 33.043983, 45.781536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685738, 33.276325, 45.803669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111135, -0.060889, -0.991938,
		-0.572802, -0.811728, 0.114003,
		-0.812125, 0.580854, 0.055334,
		34.442101, 33.450581, 45.820271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522278, 32.771107, 45.330826>,  <35.010590, 33.043983, 45.781536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522278, 32.771107, 45.330826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.394089, 33.147964, 45.370155>,  <34.317177, 33.374077, 45.393753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.394089, 33.147964, 45.370155>,  <34.522278, 32.771107, 45.330826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394089, 33.147964, 45.370155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166307, 0.046225, -0.984990,
		-0.932544, -0.332015, 0.141871,
		-0.320474, 0.942141, 0.098323,
		34.297947, 33.430607, 45.399651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886414, 32.730377, 44.981438>,  <34.522278, 32.771107, 45.330826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886414, 32.730377, 44.981438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.006508, 33.111870, 44.987888>,  <34.078564, 33.340763, 44.991756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.006508, 33.111870, 44.987888>,  <33.886414, 32.730377, 44.981438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006508, 33.111870, 44.987888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317206, 0.115769, -0.941264,
		-0.899576, 0.277489, 0.337287,
		0.300237, 0.953728, 0.016122,
		34.096581, 33.397987, 44.992725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.335667, 33.072811, 44.656956>,  <33.886414, 32.730377, 44.981438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.335667, 33.072811, 44.656956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.653217, 33.314487, 44.629505>,  <33.843750, 33.459492, 44.613033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.653217, 33.314487, 44.629505>,  <33.335667, 33.072811, 44.656956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653217, 33.314487, 44.629505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258208, 0.232777, -0.937627,
		-0.550529, 0.762083, 0.340804,
		0.793881, 0.604189, -0.068625,
		33.891380, 33.495743, 44.608917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118202, 33.736401, 44.428627>,  <33.335667, 33.072811, 44.656956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118202, 33.736401, 44.428627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.505032, 33.698269, 44.334236>,  <33.737129, 33.675388, 44.277599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.505032, 33.698269, 44.334236>,  <33.118202, 33.736401, 44.428627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505032, 33.698269, 44.334236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218610, 0.163640, -0.961994,
		0.130325, 0.981903, 0.137411,
		0.967070, -0.095332, -0.235980,
		33.795155, 33.669670, 44.263443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265488, 34.225826, 43.926632>,  <33.118202, 33.736401, 44.428627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265488, 34.225826, 43.926632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.558517, 33.954586, 43.902924>,  <33.734337, 33.791843, 43.888699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.558517, 33.954586, 43.902924>,  <33.265488, 34.225826, 43.926632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558517, 33.954586, 43.902924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154462, -0.080797, -0.984689,
		0.662926, 0.730517, -0.163931,
		0.732578, -0.678098, -0.059275,
		33.778290, 33.751156, 43.885139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629230, 34.622517, 43.738884>,  <33.265488, 34.225826, 43.926632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629230, 34.622517, 43.738884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.326321, 34.421722, 43.571766>,  <32.144577, 34.301247, 43.471493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.326321, 34.421722, 43.571766>,  <32.629230, 34.622517, 43.738884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326321, 34.421722, 43.571766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321129, -0.270851, 0.907478,
		-0.568698, 0.821374, 0.043907,
		-0.757271, -0.501981, -0.417799,
		32.099140, 34.271130, 43.446426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.032211, 34.914181, 44.075600>,  <32.629230, 34.622517, 43.738884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.032211, 34.914181, 44.075600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.942513, 34.549694, 43.937386>,  <31.888693, 34.331001, 43.854458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.942513, 34.549694, 43.937386>,  <32.032211, 34.914181, 44.075600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.942513, 34.549694, 43.937386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399996, -0.237262, 0.885274,
		-0.888659, 0.336735, -0.311277,
		-0.224249, -0.911217, -0.345538,
		31.875238, 34.276329, 43.833725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463884, 34.876064, 44.392639>,  <32.032211, 34.914181, 44.075600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463884, 34.876064, 44.392639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.559757, 34.502586, 44.286228>,  <31.617281, 34.278500, 44.222382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.559757, 34.502586, 44.286228>,  <31.463884, 34.876064, 44.392639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.559757, 34.502586, 44.286228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352089, -0.338958, 0.872434,
		-0.904757, -0.115441, -0.409985,
		0.239682, -0.933692, -0.266029,
		31.631662, 34.222477, 44.206421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.808788, 34.478073, 44.378929>,  <31.463884, 34.876064, 44.392639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.808788, 34.478073, 44.378929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.120623, 34.235661, 44.442135>,  <31.307724, 34.090214, 44.480057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.120623, 34.235661, 44.442135>,  <30.808788, 34.478073, 44.378929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.120623, 34.235661, 44.442135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406621, -0.297883, 0.863670,
		-0.476343, -0.737557, -0.478651,
		0.779588, -0.606033, 0.158012,
		31.354500, 34.053852, 44.489540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526489, 33.945683, 44.787678>,  <30.808788, 34.478073, 44.378929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.526489, 33.945683, 44.787678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.918674, 33.880764, 44.832130>,  <31.153986, 33.841812, 44.858803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.918674, 33.880764, 44.832130>,  <30.526489, 33.945683, 44.787678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.918674, 33.880764, 44.832130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153669, -0.279315, 0.947823,
		-0.122785, -0.946385, -0.298798,
		0.980464, -0.162294, 0.111134,
		31.212814, 33.832077, 44.865471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616066, 33.233128, 45.165249>,  <30.526489, 33.945683, 44.787678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616066, 33.233128, 45.165249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.932655, 33.469467, 45.227810>,  <31.122610, 33.611271, 45.265347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.932655, 33.469467, 45.227810>,  <30.616066, 33.233128, 45.165249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.932655, 33.469467, 45.227810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052957, -0.321220, 0.945523,
		0.608903, -0.740075, -0.285527,
		0.791475, 0.590852, 0.156400,
		31.170097, 33.646721, 45.274731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.042160, 32.862160, 45.591049>,  <30.616066, 33.233128, 45.165249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.042160, 32.862160, 45.591049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.192583, 33.227455, 45.653748>,  <31.282837, 33.446632, 45.691368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.192583, 33.227455, 45.653748>,  <31.042160, 32.862160, 45.591049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.192583, 33.227455, 45.653748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181830, -0.238609, 0.953941,
		0.908581, -0.330234, -0.255785,
		0.376056, 0.913242, 0.156749,
		31.305401, 33.501427, 45.700771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377655, 32.194061, 45.665012>,  <31.042160, 32.862160, 45.591049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377655, 32.194061, 45.665012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.021042, 32.013912, 45.684357>,  <30.807074, 31.905823, 45.695965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.021042, 32.013912, 45.684357>,  <31.377655, 32.194061, 45.665012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.021042, 32.013912, 45.684357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185920, 0.266482, -0.945738,
		0.413047, -0.852145, -0.321310,
		-0.891530, -0.450372, 0.048361,
		30.753582, 31.878801, 45.698864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.345757, 31.876135, 45.101700>,  <31.377655, 32.194061, 45.665012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.345757, 31.876135, 45.101700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.954947, 31.880857, 45.186817>,  <30.720461, 31.883690, 45.237888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.954947, 31.880857, 45.186817>,  <31.345757, 31.876135, 45.101700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.954947, 31.880857, 45.186817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206653, 0.191690, -0.959453,
		-0.052118, -0.981384, -0.184847,
		-0.977025, 0.011806, 0.212796,
		30.661839, 31.884399, 45.250656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.096634, 31.406069, 44.633373>,  <31.345757, 31.876135, 45.101700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.096634, 31.406069, 44.633373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.780966, 31.621819, 44.750870>,  <30.591564, 31.751268, 44.821365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.780966, 31.621819, 44.750870>,  <31.096634, 31.406069, 44.633373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.780966, 31.621819, 44.750870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290273, 0.093922, -0.952324,
		-0.541249, -0.836811, 0.082446,
		-0.789171, 0.539376, 0.293739,
		30.544214, 31.783632, 44.838993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.728624, 31.190945, 44.176914>,  <31.096634, 31.406069, 44.633373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.728624, 31.190945, 44.176914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.526049, 31.511700, 44.303719>,  <30.404503, 31.704153, 44.379799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.526049, 31.511700, 44.303719>,  <30.728624, 31.190945, 44.176914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.526049, 31.511700, 44.303719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229853, 0.228793, -0.945950,
		-0.831075, -0.551932, 0.068446,
		-0.506440, 0.801888, 0.317007,
		30.374117, 31.752266, 44.398819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.023388, 31.115862, 44.039383>,  <30.728624, 31.190945, 44.176914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.023388, 31.115862, 44.039383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.096361, 31.508867, 44.054264>,  <30.140144, 31.744671, 44.063194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.096361, 31.508867, 44.054264>,  <30.023388, 31.115862, 44.039383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.096361, 31.508867, 44.054264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336642, 0.097970, -0.936523,
		-0.923792, 0.158328, 0.348628,
		0.182433, 0.982515, 0.037205,
		30.151091, 31.803621, 44.065426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.420498, 31.407545, 43.631317>,  <30.023388, 31.115862, 44.039383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.420498, 31.407545, 43.631317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.716774, 31.674994, 43.605022>,  <29.894539, 31.835463, 43.589245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.716774, 31.674994, 43.605022>,  <29.420498, 31.407545, 43.631317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.716774, 31.674994, 43.605022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264579, 0.200347, -0.943323,
		-0.617556, 0.716104, 0.325298,
		0.740690, 0.668623, -0.065741,
		29.938982, 31.875580, 43.585300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.162899, 31.879156, 43.099773>,  <29.420498, 31.407545, 43.631317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.162899, 31.879156, 43.099773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.548862, 31.979364, 43.131237>,  <29.780441, 32.039490, 43.150116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.548862, 31.979364, 43.131237>,  <29.162899, 31.879156, 43.099773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.548862, 31.979364, 43.131237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047828, 0.126853, -0.990768,
		-0.258188, 0.959764, 0.110420,
		0.964910, 0.250523, 0.078656,
		29.838335, 32.054520, 43.154835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<33.416443, 27.841860, 46.301643> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.691505, 28.100203, 46.434303>,  <33.856544, 28.255209, 46.513901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.691505, 28.100203, 46.434303>,  <33.416443, 27.841860, 46.301643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691505, 28.100203, 46.434303> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343981, 0.112459, -0.932218,
		-0.639377, 0.755130, -0.144829,
		0.687658, 0.645857, 0.331655,
		33.897804, 28.293961, 46.533798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509659, 28.290928, 45.772507>,  <33.416443, 27.841860, 46.301643>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509659, 28.290928, 45.772507> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.817719, 28.413036, 45.996536>,  <34.002556, 28.486301, 46.130955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.817719, 28.413036, 45.996536>,  <33.509659, 28.290928, 45.772507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817719, 28.413036, 45.996536> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523303, 0.199677, -0.828422,
		-0.364728, 0.931095, -0.005970,
		0.770148, 0.305272, 0.560072,
		34.048763, 28.504618, 46.164558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739311, 28.968615, 45.555008>,  <33.509659, 28.290928, 45.772507>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739311, 28.968615, 45.555008> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.056156, 28.823341, 45.751236>,  <34.246262, 28.736177, 45.868973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.056156, 28.823341, 45.751236>,  <33.739311, 28.968615, 45.555008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056156, 28.823341, 45.751236> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581173, 0.203117, -0.788024,
		0.186552, 0.909309, 0.371962,
		0.792109, -0.363182, 0.490574,
		34.293789, 28.714386, 45.898407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278267, 29.428043, 45.440655>,  <33.739311, 28.968615, 45.555008>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278267, 29.428043, 45.440655> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.453117, 29.087549, 45.556805>,  <34.558025, 28.883253, 45.626495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.453117, 29.087549, 45.556805>,  <34.278267, 29.428043, 45.440655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453117, 29.087549, 45.556805> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582009, 0.021572, -0.812896,
		0.685702, 0.524339, 0.504857,
		0.437124, -0.851236, 0.290378,
		34.584255, 28.832178, 45.643917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071499, 29.547153, 45.358860>,  <34.278267, 29.428043, 45.440655>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071499, 29.547153, 45.358860> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.976486, 29.158602, 45.358627>,  <34.919479, 28.925470, 45.358486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.976486, 29.158602, 45.358627>,  <35.071499, 29.547153, 45.358860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976486, 29.158602, 45.358627> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431051, -0.104869, -0.896213,
		0.870501, -0.213132, 0.443624,
		-0.237534, -0.971379, -0.000582,
		34.905228, 28.867188, 45.358452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698204, 29.186106, 45.190853>,  <35.071499, 29.547153, 45.358860>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698204, 29.186106, 45.190853> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.428337, 28.903913, 45.104027>,  <35.266418, 28.734598, 45.051929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.428337, 28.903913, 45.104027>,  <35.698204, 29.186106, 45.190853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428337, 28.903913, 45.104027> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379216, -0.078987, -0.921931,
		0.633259, -0.704314, 0.320820,
		-0.674669, -0.705481, -0.217068,
		35.225937, 28.692268, 45.038906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036522, 28.722757, 44.810642>,  <35.698204, 29.186106, 45.190853>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036522, 28.722757, 44.810642> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.653629, 28.673223, 44.706043>,  <35.423893, 28.643503, 44.643284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.653629, 28.673223, 44.706043>,  <36.036522, 28.722757, 44.810642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653629, 28.673223, 44.706043> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272321, -0.080250, -0.958854,
		0.097753, -0.989053, 0.110540,
		-0.957228, -0.123833, -0.261495,
		35.366463, 28.636074, 44.627594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994240, 28.042072, 44.377632>,  <36.036522, 28.722757, 44.810642>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994240, 28.042072, 44.377632> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.655731, 28.235264, 44.287693>,  <35.452625, 28.351179, 44.233730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.655731, 28.235264, 44.287693>,  <35.994240, 28.042072, 44.377632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655731, 28.235264, 44.287693> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190294, -0.120167, -0.974345,
		-0.497606, -0.867348, 0.009787,
		-0.846273, 0.482977, -0.224847,
		35.401848, 28.380157, 44.220238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641056, 27.650692, 43.922329>,  <35.994240, 28.042072, 44.377632>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641056, 27.650692, 43.922329> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.390133, 27.954918, 43.855358>,  <35.239578, 28.137453, 43.815178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.390133, 27.954918, 43.855358>,  <35.641056, 27.650692, 43.922329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390133, 27.954918, 43.855358> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193369, -0.056133, -0.979519,
		-0.754386, -0.646830, -0.111858,
		-0.627304, 0.760565, -0.167423,
		35.201942, 28.183088, 43.805130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134281, 27.388823, 43.528309>,  <35.641056, 27.650692, 43.922329>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134281, 27.388823, 43.528309> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.131046, 27.783440, 43.462994>,  <35.129105, 28.020210, 43.423805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.131046, 27.783440, 43.462994>,  <35.134281, 27.388823, 43.528309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.131046, 27.783440, 43.462994> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045395, -0.162766, -0.985620,
		-0.998936, -0.015381, -0.043468,
		-0.008085, 0.986545, -0.163291,
		35.128620, 28.079403, 43.414005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726067, 27.489504, 42.928116>,  <35.134281, 27.388823, 43.528309>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726067, 27.489504, 42.928116> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.925560, 27.835524, 42.949871>,  <35.045258, 28.043135, 42.962925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.925560, 27.835524, 42.949871>,  <34.726067, 27.489504, 42.928116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.925560, 27.835524, 42.949871> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088885, 0.011375, -0.995977,
		-0.862186, 0.501561, -0.071217,
		0.498733, 0.865047, 0.054388,
		35.075180, 28.095037, 42.966187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387741, 27.964754, 42.349842>,  <34.726067, 27.489504, 42.928116>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387741, 27.964754, 42.349842> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.759071, 28.086449, 42.435307>,  <34.981869, 28.159466, 42.486588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.759071, 28.086449, 42.435307>,  <34.387741, 27.964754, 42.349842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759071, 28.086449, 42.435307> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226598, -0.007412, -0.973960,
		-0.294728, 0.952568, -0.075819,
		0.928326, 0.304234, 0.213666,
		35.037567, 28.177719, 42.499405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916683, 28.548740, 42.534351>,  <34.387741, 27.964754, 42.349842>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916683, 28.548740, 42.534351> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.684132, 28.864508, 42.455544>,  <33.544601, 29.053968, 42.408260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.684132, 28.864508, 42.455544>,  <33.916683, 28.548740, 42.534351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684132, 28.864508, 42.455544> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439389, -0.100816, 0.892622,
		0.684791, 0.605517, 0.405474,
		-0.581376, 0.789420, -0.197020,
		33.509720, 29.101334, 42.396439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916878, 29.035810, 43.096897>,  <33.916683, 28.548740, 42.534351>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916878, 29.035810, 43.096897> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.579929, 29.150034, 42.914085>,  <33.377762, 29.218567, 42.804398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.579929, 29.150034, 42.914085>,  <33.916878, 29.035810, 43.096897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579929, 29.150034, 42.914085> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496556, -0.081742, 0.864147,
		0.209405, 0.954869, 0.210653,
		-0.842366, 0.285558, -0.457029,
		33.327221, 29.235701, 42.776978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585911, 29.392748, 43.663803>,  <33.916878, 29.035810, 43.096897>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585911, 29.392748, 43.663803> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.297783, 29.327585, 43.394104>,  <33.124908, 29.288488, 43.232285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.297783, 29.327585, 43.394104>,  <33.585911, 29.392748, 43.663803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297783, 29.327585, 43.394104> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652453, -0.170863, 0.738316,
		-0.235480, 0.971734, 0.016787,
		-0.720316, -0.162906, -0.674245,
		33.081688, 29.278713, 43.191830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117741, 29.900513, 43.807785>,  <33.585911, 29.392748, 43.663803>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117741, 29.900513, 43.807785> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.900135, 29.636070, 43.601105>,  <32.769569, 29.477406, 43.477097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.900135, 29.636070, 43.601105>,  <33.117741, 29.900513, 43.807785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900135, 29.636070, 43.601105> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628381, -0.087083, 0.773017,
		-0.556041, 0.745223, -0.368051,
		-0.544019, -0.661105, -0.516705,
		32.736931, 29.437738, 43.446095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.399178, 30.121456, 43.791309>,  <33.117741, 29.900513, 43.807785>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.399178, 30.121456, 43.791309> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.418003, 29.728125, 43.721058>,  <32.429298, 29.492125, 43.678905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.418003, 29.728125, 43.721058>,  <32.399178, 30.121456, 43.791309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418003, 29.728125, 43.721058> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519648, -0.174261, 0.836420,
		-0.853083, 0.051903, -0.519187,
		0.047061, -0.983331, -0.175630,
		32.432121, 29.433125, 43.668369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.741888, 29.967207, 44.076721>,  <32.399178, 30.121456, 43.791309>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.741888, 29.967207, 44.076721> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.947929, 29.624554, 44.065086>,  <32.071552, 29.418961, 44.058105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.947929, 29.624554, 44.065086>,  <31.741888, 29.967207, 44.076721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.947929, 29.624554, 44.065086> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267461, -0.192882, 0.944066,
		-0.814330, -0.478512, -0.328471,
		0.515103, -0.856635, -0.029087,
		32.102459, 29.367563, 44.056362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271292, 29.426657, 44.302814>,  <31.741888, 29.967207, 44.076721>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271292, 29.426657, 44.302814> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.636215, 29.273647, 44.361290>,  <31.855169, 29.181843, 44.396378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.636215, 29.273647, 44.361290>,  <31.271292, 29.426657, 44.302814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.636215, 29.273647, 44.361290> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251405, -0.241377, 0.937301,
		-0.323252, -0.891859, -0.316378,
		0.912307, -0.382523, 0.146192,
		31.909908, 29.158892, 44.405148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130857, 28.731468, 44.636650>,  <31.271292, 29.426657, 44.302814>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130857, 28.731468, 44.636650> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.498821, 28.868544, 44.712891>,  <31.719601, 28.950788, 44.758636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.498821, 28.868544, 44.712891>,  <31.130857, 28.731468, 44.636650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.498821, 28.868544, 44.712891> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097333, -0.271308, 0.957559,
		0.379857, -0.899420, -0.216224,
		0.919910, 0.342689, 0.190601,
		31.774794, 28.971350, 44.770069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.445450, 28.281574, 45.066029>,  <31.130857, 28.731468, 44.636650>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.445450, 28.281574, 45.066029> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.690130, 28.590578, 45.134201>,  <31.836939, 28.775980, 45.175106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.690130, 28.590578, 45.134201>,  <31.445450, 28.281574, 45.066029>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690130, 28.590578, 45.134201> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115924, -0.125580, 0.985287,
		0.782548, -0.622460, 0.012735,
		0.611702, 0.772511, 0.170431,
		31.873642, 28.822330, 45.185329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.030834, 28.031094, 45.507698>,  <31.445450, 28.281574, 45.066029>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.030834, 28.031094, 45.507698> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.037495, 28.428471, 45.552944>,  <32.041489, 28.666897, 45.580093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.037495, 28.428471, 45.552944>,  <32.030834, 28.031094, 45.507698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037495, 28.428471, 45.552944> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093655, -0.114181, 0.989036,
		0.995466, -0.005872, -0.094941,
		0.016648, 0.993443, 0.113114,
		32.042488, 28.726503, 45.586880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.509033, 28.139275, 45.994495>,  <32.030834, 28.031094, 45.507698>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.509033, 28.139275, 45.994495> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.304066, 28.482382, 46.010796>,  <32.181084, 28.688246, 46.020576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.304066, 28.482382, 46.010796>,  <32.509033, 28.139275, 45.994495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304066, 28.482382, 46.010796> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170081, 0.054857, 0.983902,
		0.841722, 0.511105, -0.174000,
		-0.512422, 0.857766, 0.040755,
		32.150337, 28.739712, 46.023022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.861820, 28.684776, 46.403763>,  <32.509033, 28.139275, 45.994495>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.861820, 28.684776, 46.403763> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.483688, 28.814587, 46.416611>,  <32.256809, 28.892473, 46.424320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.483688, 28.814587, 46.416611>,  <32.861820, 28.684776, 46.403763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483688, 28.814587, 46.416611> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142601, 0.322789, 0.935667,
		0.293279, 0.889096, -0.351420,
		-0.945332, 0.324524, 0.032119,
		32.200089, 28.911943, 46.426247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.885658, 29.312752, 46.718704>,  <32.861820, 28.684776, 46.403763>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.885658, 29.312752, 46.718704> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.507195, 29.201677, 46.785255>,  <32.280117, 29.135033, 46.825188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.507195, 29.201677, 46.785255>,  <32.885658, 29.312752, 46.718704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507195, 29.201677, 46.785255> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064487, 0.341976, 0.937493,
		-0.317225, 0.897743, -0.305655,
		-0.946155, -0.277685, 0.166377,
		32.223347, 29.118372, 46.835167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578667, 29.836382, 47.194080>,  <32.885658, 29.312752, 46.718704>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578667, 29.836382, 47.194080> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.352093, 29.506750, 47.196770>,  <32.216148, 29.308971, 47.198383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.352093, 29.506750, 47.196770>,  <32.578667, 29.836382, 47.194080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.352093, 29.506750, 47.196770> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059627, 0.049123, 0.997011,
		-0.821947, 0.564341, -0.076963,
		-0.566435, -0.824079, 0.006727,
		32.182163, 29.259527, 47.198788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910288, 29.980759, 47.603939>,  <32.578667, 29.836382, 47.194080>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910288, 29.980759, 47.603939> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.884823, 30.361042, 47.725330>,  <31.869543, 30.589212, 47.798164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.884823, 30.361042, 47.725330>,  <31.910288, 29.980759, 47.603939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.884823, 30.361042, 47.725330> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699222, 0.174482, -0.693285,
		-0.712064, -0.256336, 0.653649,
		-0.063664, 0.950709, 0.303478,
		31.865723, 30.646255, 47.816376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.155375, 30.261337, 47.288776>,  <31.910288, 29.980759, 47.603939>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.155375, 30.261337, 47.288776> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.326445, 30.584101, 47.451748>,  <31.429087, 30.777760, 47.549530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.326445, 30.584101, 47.451748>,  <31.155375, 30.261337, 47.288776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.326445, 30.584101, 47.451748> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488237, 0.585525, -0.647135,
		-0.760736, 0.077843, 0.644376,
		0.427674, 0.806908, 0.407425,
		31.454746, 30.826174, 47.573975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.626156, 30.762060, 47.436504>,  <31.155375, 30.261337, 47.288776>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.626156, 30.762060, 47.436504> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.960155, 30.979391, 47.401703>,  <31.160555, 31.109791, 47.380821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.960155, 30.979391, 47.401703>,  <30.626156, 30.762060, 47.436504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.960155, 30.979391, 47.401703> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525063, 0.739461, -0.421315,
		-0.164576, 0.397480, 0.902732,
		0.834999, 0.543329, -0.087005,
		31.210655, 31.142389, 47.375603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.443275, 31.443882, 47.633018>,  <30.626156, 30.762060, 47.436504>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.443275, 31.443882, 47.633018> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.769699, 31.468138, 47.403107>,  <30.965553, 31.482691, 47.265160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.769699, 31.468138, 47.403107>,  <30.443275, 31.443882, 47.633018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.769699, 31.468138, 47.403107> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453987, 0.682712, -0.572538,
		0.357690, 0.728167, 0.584663,
		0.816060, 0.060638, -0.574777,
		31.014517, 31.486330, 47.230675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.677893, 32.180805, 47.522369>,  <30.443275, 31.443882, 47.633018>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.677893, 32.180805, 47.522369> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.832237, 31.979727, 47.212944>,  <30.924843, 31.859079, 47.027287>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.832237, 31.979727, 47.212944>,  <30.677893, 32.180805, 47.522369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.832237, 31.979727, 47.212944> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371030, 0.683144, -0.629008,
		0.844659, 0.529726, 0.077082,
		0.385860, -0.502697, -0.773568,
		30.947996, 31.828918, 46.980873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.813759, 32.624847, 46.948170>,  <30.677893, 32.180805, 47.522369>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.813759, 32.624847, 46.948170> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.817621, 32.279583, 46.746235>,  <30.819939, 32.072422, 46.625076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.817621, 32.279583, 46.746235>,  <30.813759, 32.624847, 46.948170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.817621, 32.279583, 46.746235> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350547, 0.469896, -0.810133,
		0.936495, 0.184790, -0.298042,
		0.009655, -0.863163, -0.504833,
		30.820518, 32.020634, 46.594784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.880850, 32.814377, 46.302444>,  <30.813759, 32.624847, 46.948170>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.880850, 32.814377, 46.302444> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.763433, 32.438416, 46.232681>,  <30.692984, 32.212841, 46.190823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.763433, 32.438416, 46.232681>,  <30.880850, 32.814377, 46.302444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.763433, 32.438416, 46.232681> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424895, 0.291719, -0.856951,
		0.856328, -0.177444, -0.484991,
		-0.293542, -0.939901, -0.174412,
		30.675371, 32.156445, 46.180359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.597673, 32.755199, 46.179798>,  <30.880850, 32.814377, 46.302444>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.597673, 32.755199, 46.179798> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.542276, 33.151142, 46.167133>,  <31.509039, 33.388706, 46.159534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.542276, 33.151142, 46.167133>,  <31.597673, 32.755199, 46.179798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.542276, 33.151142, 46.167133> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087120, 0.044020, 0.995225,
		0.986524, 0.135073, -0.092332,
		-0.138492, 0.989857, -0.031659,
		31.500729, 33.448101, 46.157635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.156906, 33.007500, 46.533596>,  <31.597673, 32.755199, 46.179798>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.156906, 33.007500, 46.533596> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.891853, 33.305443, 46.564835>,  <31.732821, 33.484211, 46.583576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.891853, 33.305443, 46.564835>,  <32.156906, 33.007500, 46.533596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.891853, 33.305443, 46.564835> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172413, 0.050238, 0.983743,
		0.728827, 0.665327, -0.161713,
		-0.662635, 0.744859, 0.078096,
		31.693062, 33.528900, 46.588264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395443, 33.491623, 47.028019>,  <32.156906, 33.007500, 46.533596>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395443, 33.491623, 47.028019> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.011673, 33.599052, 46.993687>,  <31.781410, 33.663509, 46.973087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.011673, 33.599052, 46.993687>,  <32.395443, 33.491623, 47.028019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011673, 33.599052, 46.993687> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070601, 0.065872, 0.995327,
		0.272969, 0.961005, -0.044239,
		-0.959429, 0.268570, -0.085829,
		31.723845, 33.679623, 46.967937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363312, 34.087437, 47.473408>,  <32.395443, 33.491623, 47.028019>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363312, 34.087437, 47.473408> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.987751, 33.954910, 47.436127>,  <31.762413, 33.875393, 47.413757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.987751, 33.954910, 47.436127>,  <32.363312, 34.087437, 47.473408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987751, 33.954910, 47.436127> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136491, 0.109853, 0.984532,
		-0.315953, 0.937103, -0.148363,
		-0.938906, -0.331316, -0.093198,
		31.706079, 33.855515, 47.408169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969879, 34.584473, 47.815117>,  <32.363312, 34.087437, 47.473408>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969879, 34.584473, 47.815117> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.738148, 34.258503, 47.808426>,  <31.599110, 34.062920, 47.804413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.738148, 34.258503, 47.808426>,  <31.969879, 34.584473, 47.815117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738148, 34.258503, 47.808426> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147057, 0.084317, 0.985528,
		-0.801719, 0.573404, -0.168687,
		-0.579328, -0.814923, -0.016724,
		31.564350, 34.014027, 47.803410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.252310, 34.688431, 48.287579>,  <31.969879, 34.584473, 47.815117>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.252310, 34.688431, 48.287579> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.338009, 34.301453, 48.233692>,  <31.389429, 34.069267, 48.201363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.338009, 34.301453, 48.233692>,  <31.252310, 34.688431, 48.287579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.338009, 34.301453, 48.233692> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006520, -0.139330, 0.990225,
		-0.976758, -0.211275, -0.036159,
		0.214248, -0.967445, -0.134714,
		31.402283, 34.011219, 48.193279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.922773, 34.353989, 48.852329>,  <31.252310, 34.688431, 48.287579>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.922773, 34.353989, 48.852329> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.172966, 34.068249, 48.726810>,  <31.323082, 33.896805, 48.651497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.172966, 34.068249, 48.726810>,  <30.922773, 34.353989, 48.852329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.172966, 34.068249, 48.726810> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157413, -0.509452, 0.845979,
		-0.764194, -0.479749, -0.431102,
		0.625483, -0.714353, -0.313801,
		31.360611, 33.853943, 48.632671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.651991, 33.737129, 49.012016>,  <30.922773, 34.353989, 48.852329>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.651991, 33.737129, 49.012016> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.026346, 33.596413, 49.004532>,  <31.250959, 33.511982, 49.000042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.026346, 33.596413, 49.004532>,  <30.651991, 33.737129, 49.012016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.026346, 33.596413, 49.004532> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186823, -0.540630, 0.820254,
		-0.298673, -0.764173, -0.571694,
		0.935891, -0.351793, -0.018707,
		31.307114, 33.490875, 48.998920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631039, 32.937210, 49.152641>,  <30.651991, 33.737129, 49.012016>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631039, 32.937210, 49.152641> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.000992, 33.071701, 49.223686>,  <31.222963, 33.152397, 49.266312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.000992, 33.071701, 49.223686>,  <30.631039, 32.937210, 49.152641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.000992, 33.071701, 49.223686> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004465, -0.457446, 0.889226,
		0.380230, -0.823222, -0.421582,
		0.924881, 0.336227, 0.177611,
		31.278456, 33.172569, 49.276970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.155872, 35.434425, 33.184494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431339, 35.566521, 33.442696>,  <34.596619, 35.645779, 33.597614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431339, 35.566521, 33.442696>,  <34.155872, 35.434425, 33.184494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431339, 35.566521, 33.442696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362406, -0.614304, 0.700923,
		0.628009, -0.716638, -0.303371,
		0.688670, 0.330242, 0.645502,
		34.637939, 35.665592, 33.636345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434315, 34.885250, 33.427822>,  <34.155872, 35.434425, 33.184494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434315, 34.885250, 33.427822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484367, 35.166676, 33.707634>,  <34.514400, 35.335529, 33.875523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484367, 35.166676, 33.707634>,  <34.434315, 34.885250, 33.427822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484367, 35.166676, 33.707634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516646, -0.555725, 0.651342,
		0.847006, -0.442915, 0.293952,
		0.125132, 0.703559, 0.699533,
		34.521908, 35.377743, 33.917496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527222, 34.467995, 34.103397>,  <34.434315, 34.885250, 33.427822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.527222, 34.467995, 34.103397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432079, 34.841034, 34.211975>,  <34.374992, 35.064857, 34.277122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432079, 34.841034, 34.211975>,  <34.527222, 34.467995, 34.103397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432079, 34.841034, 34.211975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512247, -0.357886, 0.780718,
		0.825243, 0.046655, 0.562848,
		-0.237860, 0.932599, 0.271444,
		34.360722, 35.120815, 34.293407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619572, 34.485054, 34.808365>,  <34.527222, 34.467995, 34.103397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619572, 34.485054, 34.808365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401211, 34.817890, 34.769123>,  <34.270195, 35.017590, 34.745579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401211, 34.817890, 34.769123>,  <34.619572, 34.485054, 34.808365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401211, 34.817890, 34.769123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528005, -0.250745, 0.811380,
		0.650539, 0.494733, 0.576228,
		-0.545902, 0.832086, -0.098103,
		34.237438, 35.067516, 34.739693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639324, 34.849155, 35.406784>,  <34.619572, 34.485054, 34.808365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639324, 34.849155, 35.406784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302738, 34.973038, 35.229687>,  <34.100788, 35.047367, 35.123428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302738, 34.973038, 35.229687>,  <34.639324, 34.849155, 35.406784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302738, 34.973038, 35.229687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522594, -0.258399, 0.812481,
		0.137224, 0.915049, 0.379282,
		-0.841466, 0.309703, -0.442740,
		34.050297, 35.065948, 35.096863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375237, 35.489029, 35.731583>,  <34.639324, 34.849155, 35.406784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.375237, 35.489029, 35.731583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072243, 35.289867, 35.562679>,  <33.890446, 35.170368, 35.461338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072243, 35.289867, 35.562679>,  <34.375237, 35.489029, 35.731583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072243, 35.289867, 35.562679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344849, -0.244045, 0.906378,
		-0.554342, 0.832185, 0.013158,
		-0.757486, -0.497905, -0.422262,
		33.844997, 35.140495, 35.436001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898144, 35.729092, 36.302467>,  <34.375237, 35.489029, 35.731583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898144, 35.729092, 36.302467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743866, 35.450943, 36.059914>,  <33.651299, 35.284054, 35.914383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743866, 35.450943, 36.059914>,  <33.898144, 35.729092, 36.302467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743866, 35.450943, 36.059914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729898, -0.172051, 0.661550,
		-0.564351, 0.697752, -0.441191,
		-0.385691, -0.695371, -0.606385,
		33.628159, 35.242332, 35.877998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.241627, 35.940075, 36.106621>,  <33.898144, 35.729092, 36.302467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.241627, 35.940075, 36.106621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.245609, 35.540447, 36.089836>,  <33.247997, 35.300671, 36.079765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.245609, 35.540447, 36.089836>,  <33.241627, 35.940075, 36.106621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245609, 35.540447, 36.089836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656607, -0.038182, 0.753266,
		-0.754167, 0.020054, -0.656376,
		0.009956, -0.999069, -0.041963,
		33.248596, 35.240726, 36.077248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584904, 35.807739, 36.175110>,  <33.241627, 35.940075, 36.106621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584904, 35.807739, 36.175110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775085, 35.472424, 36.281853>,  <32.889194, 35.271236, 36.345898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775085, 35.472424, 36.281853>,  <32.584904, 35.807739, 36.175110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775085, 35.472424, 36.281853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590127, -0.078940, 0.803442,
		-0.652449, -0.539484, -0.532229,
		0.475458, -0.838287, 0.266859,
		32.917725, 35.220936, 36.361912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058720, 35.374512, 36.359528>,  <32.584904, 35.807739, 36.175110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058720, 35.374512, 36.359528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.388985, 35.218227, 36.522316>,  <32.587143, 35.124458, 36.619987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.388985, 35.218227, 36.522316>,  <32.058720, 35.374512, 36.359528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388985, 35.218227, 36.522316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479893, -0.107139, 0.870760,
		-0.296613, -0.914257, -0.275960,
		0.825665, -0.390710, 0.406967,
		32.636684, 35.101013, 36.644405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865719, 34.806911, 36.732986>,  <32.058720, 35.374512, 36.359528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865719, 34.806911, 36.732986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218803, 34.903942, 36.893974>,  <32.430653, 34.962162, 36.990566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218803, 34.903942, 36.893974>,  <31.865719, 34.806911, 36.732986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.218803, 34.903942, 36.893974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363496, -0.190317, 0.911949,
		0.297814, -0.951281, -0.079820,
		0.882710, 0.242577, 0.402466,
		32.483616, 34.976715, 37.014713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.951014, 34.253750, 37.174545>,  <31.865719, 34.806911, 36.732986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.951014, 34.253750, 37.174545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203022, 34.523392, 37.328770>,  <32.354225, 34.685177, 37.421303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203022, 34.523392, 37.328770>,  <31.951014, 34.253750, 37.174545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203022, 34.523392, 37.328770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389250, -0.155496, 0.907913,
		0.671981, -0.722084, 0.164429,
		0.630021, 0.674104, 0.385562,
		32.392029, 34.725624, 37.444439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.873207, 33.453445, 37.234829>,  <31.951014, 34.253750, 37.174545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.873207, 33.453445, 37.234829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.512798, 33.281757, 37.209759>,  <31.296553, 33.178745, 37.194717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.512798, 33.281757, 37.209759>,  <31.873207, 33.453445, 37.234829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.512798, 33.281757, 37.209759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135212, -0.140616, -0.980788,
		0.412164, -0.892185, 0.184734,
		-0.901020, -0.429224, -0.062677,
		31.242493, 33.152988, 37.190956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886906, 33.063484, 36.566288>,  <31.873207, 33.453445, 37.234829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.886906, 33.063484, 36.566288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499495, 32.985462, 36.628136>,  <31.267048, 32.938648, 36.665245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499495, 32.985462, 36.628136>,  <31.886906, 33.063484, 36.566288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.499495, 32.985462, 36.628136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163936, 0.032457, -0.985937,
		0.187299, -0.980254, -0.063413,
		-0.968527, -0.195060, 0.154620,
		31.208937, 32.926945, 36.674522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.687803, 32.360382, 36.145149>,  <31.886906, 33.063484, 36.566288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.687803, 32.360382, 36.145149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.380413, 32.603539, 36.225056>,  <31.195978, 32.749432, 36.272999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.380413, 32.603539, 36.225056>,  <31.687803, 32.360382, 36.145149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.380413, 32.603539, 36.225056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180010, 0.094207, -0.979143,
		-0.614034, -0.788410, 0.037031,
		-0.768478, 0.607893, 0.199768,
		31.149870, 32.785908, 36.284985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.147078, 32.097809, 35.742729>,  <31.687803, 32.360382, 36.145149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.147078, 32.097809, 35.742729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.070114, 32.481079, 35.827469>,  <31.023935, 32.711040, 35.878315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.070114, 32.481079, 35.827469>,  <31.147078, 32.097809, 35.742729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.070114, 32.481079, 35.827469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112197, 0.192991, -0.974765,
		-0.974880, -0.211323, 0.070371,
		-0.192409, 0.958174, 0.211853,
		31.012392, 32.768532, 35.891026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.618847, 32.284393, 35.302853>,  <31.147078, 32.097809, 35.742729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.618847, 32.284393, 35.302853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.769527, 32.641228, 35.402683>,  <30.859936, 32.855328, 35.462582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.769527, 32.641228, 35.402683>,  <30.618847, 32.284393, 35.302853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.769527, 32.641228, 35.402683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056589, 0.291077, -0.955025,
		-0.924605, 0.345635, 0.160130,
		0.376700, 0.892083, 0.249572,
		30.882538, 32.908852, 35.477554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.243437, 32.755402, 34.930260>,  <30.618847, 32.284393, 35.302853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.243437, 32.755402, 34.930260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590170, 32.938030, 35.010403>,  <30.798210, 33.047607, 35.058487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590170, 32.938030, 35.010403>,  <30.243437, 32.755402, 34.930260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.590170, 32.938030, 35.010403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078694, 0.271522, -0.959210,
		-0.492351, 0.847240, 0.199434,
		0.866832, 0.456574, 0.200356,
		30.850220, 33.075001, 35.070511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.119915, 33.396374, 34.605438>,  <30.243437, 32.755402, 34.930260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.119915, 33.396374, 34.605438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.509054, 33.324005, 34.663170>,  <30.742538, 33.280582, 34.697807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.509054, 33.324005, 34.663170>,  <30.119915, 33.396374, 34.605438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.509054, 33.324005, 34.663170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156275, 0.053552, -0.986261,
		0.170708, 0.982038, 0.080372,
		0.972850, -0.180922, 0.144326,
		30.800909, 33.269730, 34.706467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.381109, 33.757263, 34.040424>,  <30.119915, 33.396374, 34.605438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.381109, 33.757263, 34.040424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.677336, 33.527313, 34.179607>,  <30.855072, 33.389343, 34.263119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.677336, 33.527313, 34.179607>,  <30.381109, 33.757263, 34.040424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.677336, 33.527313, 34.179607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391111, -0.052321, -0.918855,
		0.546435, 0.816565, 0.186094,
		0.740568, -0.574878, 0.347957,
		30.899506, 33.354851, 34.283993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.929611, 34.078465, 33.705494>,  <30.381109, 33.757263, 34.040424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.929611, 34.078465, 33.705494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011141, 33.699997, 33.806065>,  <31.060059, 33.472916, 33.866409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011141, 33.699997, 33.806065>,  <30.929611, 34.078465, 33.705494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.011141, 33.699997, 33.806065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462218, -0.133392, -0.876676,
		0.863024, 0.294905, 0.410148,
		0.203826, -0.946170, 0.251431,
		31.072289, 33.416145, 33.881493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653185, 33.989174, 33.577293>,  <30.929611, 34.078465, 33.705494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653185, 33.989174, 33.577293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464970, 33.636692, 33.559082>,  <31.352041, 33.425201, 33.548157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464970, 33.636692, 33.559082>,  <31.653185, 33.989174, 33.577293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.464970, 33.636692, 33.559082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205896, -0.059480, -0.976765,
		0.858021, -0.468979, 0.209425,
		-0.470538, -0.881204, -0.045526,
		31.323809, 33.372330, 33.545425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919497, 33.664982, 33.100868>,  <31.653185, 33.989174, 33.577293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919497, 33.664982, 33.100868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.625938, 33.394787, 33.129456>,  <31.449804, 33.232670, 33.146606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.625938, 33.394787, 33.129456>,  <31.919497, 33.664982, 33.100868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.625938, 33.394787, 33.129456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182806, -0.297746, -0.936979,
		0.654201, -0.674580, 0.341998,
		-0.733896, -0.675492, 0.071469,
		31.405769, 33.192139, 33.150898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.163723, 33.108974, 32.850483>,  <31.919497, 33.664982, 33.100868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.163723, 33.108974, 32.850483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.766813, 33.090027, 32.804623>,  <31.528667, 33.078659, 32.777107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.766813, 33.090027, 32.804623>,  <32.163723, 33.108974, 32.850483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.766813, 33.090027, 32.804623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122695, -0.238527, -0.963354,
		0.018290, -0.969980, 0.242497,
		-0.992276, -0.047373, -0.114649,
		31.469130, 33.075813, 32.770229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773411, 33.222290, 33.289154>,  <32.163723, 33.108974, 32.850483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773411, 33.222290, 33.289154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382950, 33.157063, 33.346474>,  <32.148674, 33.117928, 33.380863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382950, 33.157063, 33.346474>,  <32.773411, 33.222290, 33.289154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382950, 33.157063, 33.346474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216187, -0.790103, 0.573586,
		0.019686, 0.590886, 0.806515,
		-0.976153, -0.163066, 0.143296,
		32.090103, 33.108143, 33.389462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432323, 33.501358, 33.336838>,  <32.773411, 33.222290, 33.289154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432323, 33.501358, 33.336838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.581112, 33.134403, 33.393448>,  <33.670383, 32.914230, 33.427414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.581112, 33.134403, 33.393448>,  <33.432323, 33.501358, 33.336838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.581112, 33.134403, 33.393448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353145, -0.280864, -0.892415,
		0.858444, 0.281972, -0.428445,
		0.371971, -0.917391, 0.141529,
		33.692703, 32.859184, 33.435905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031155, 33.242771, 32.872372>,  <33.432323, 33.501358, 33.336838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031155, 33.242771, 32.872372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763180, 32.973919, 32.998505>,  <33.602394, 32.812607, 33.074184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763180, 32.973919, 32.998505>,  <34.031155, 33.242771, 32.872372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763180, 32.973919, 32.998505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379307, -0.055247, -0.923620,
		0.638213, -0.738370, -0.217931,
		-0.669933, -0.672129, 0.315329,
		33.562199, 32.772282, 33.093102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096104, 32.490402, 32.463924>,  <34.031155, 33.242771, 32.872372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096104, 32.490402, 32.463924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738873, 32.597389, 32.608627>,  <33.524532, 32.661583, 32.695450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738873, 32.597389, 32.608627>,  <34.096104, 32.490402, 32.463924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738873, 32.597389, 32.608627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421412, -0.215764, -0.880828,
		-0.157536, -0.939100, 0.305408,
		-0.893082, 0.267465, 0.361757,
		33.470947, 32.677631, 32.717155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571697, 31.837109, 32.409306>,  <34.096104, 32.490402, 32.463924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571697, 31.837109, 32.409306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419743, 32.206997, 32.399754>,  <33.328568, 32.428932, 32.394020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419743, 32.206997, 32.399754>,  <33.571697, 31.837109, 32.409306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419743, 32.206997, 32.399754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570199, -0.254420, -0.781117,
		-0.728393, -0.283122, 0.623928,
		-0.379891, 0.924723, -0.023882,
		33.305775, 32.484413, 32.392590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147495, 31.505692, 32.629852>,  <33.571697, 31.837109, 32.409306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147495, 31.505692, 32.629852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.521057, 31.384384, 32.705597>,  <34.745193, 31.311600, 32.751045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.521057, 31.384384, 32.705597>,  <34.147495, 31.505692, 32.629852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521057, 31.384384, 32.705597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262354, -0.221455, 0.939217,
		-0.242910, -0.926812, -0.286382,
		0.933898, -0.303279, 0.189359,
		34.801228, 31.293404, 32.762405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164993, 30.730215, 32.879314>,  <34.147495, 31.505692, 32.629852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164993, 30.730215, 32.879314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.448696, 30.983879, 33.002468>,  <34.618919, 31.136078, 33.076359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.448696, 30.983879, 33.002468>,  <34.164993, 30.730215, 32.879314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448696, 30.983879, 33.002468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404824, 0.008845, 0.914352,
		0.577123, -0.773151, 0.262997,
		0.709258, 0.634161, 0.307885,
		34.661472, 31.174128, 33.094833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417892, 30.463730, 33.451714>,  <34.164993, 30.730215, 32.879314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417892, 30.463730, 33.451714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564163, 30.831329, 33.510662>,  <34.651924, 31.051889, 33.546032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564163, 30.831329, 33.510662>,  <34.417892, 30.463730, 33.451714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564163, 30.831329, 33.510662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163190, -0.092575, 0.982242,
		0.916323, -0.383233, 0.116119,
		0.365678, 0.919001, 0.147369,
		34.673866, 31.107029, 33.554874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856918, 30.383589, 34.012440>,  <34.417892, 30.463730, 33.451714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856918, 30.383589, 34.012440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.749088, 30.766697, 33.972427>,  <34.684391, 30.996561, 33.948421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.749088, 30.766697, 33.972427>,  <34.856918, 30.383589, 34.012440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749088, 30.766697, 33.972427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233498, 0.035764, 0.971699,
		0.934242, 0.285302, 0.213997,
		-0.269574, 0.957770, -0.100029,
		34.668217, 31.054028, 33.942417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200169, 30.631866, 34.623066>,  <34.856918, 30.383589, 34.012440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200169, 30.631866, 34.623066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941875, 30.921865, 34.527222>,  <34.786900, 31.095865, 34.469715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941875, 30.921865, 34.527222>,  <35.200169, 30.631866, 34.623066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941875, 30.921865, 34.527222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229530, 0.114986, 0.966486,
		0.728251, 0.679085, 0.092159,
		-0.645729, 0.724998, -0.239609,
		34.748158, 31.139364, 34.455338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356628, 31.299450, 35.009087>,  <35.200169, 30.631866, 34.623066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356628, 31.299450, 35.009087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973488, 31.318350, 34.895744>,  <34.743603, 31.329691, 34.827740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973488, 31.318350, 34.895744>,  <35.356628, 31.299450, 35.009087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973488, 31.318350, 34.895744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250665, 0.344363, 0.904755,
		0.140329, 0.937647, -0.318004,
		-0.957849, 0.047251, -0.283359,
		34.686134, 31.332525, 34.810738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177074, 31.867577, 35.363953>,  <35.356628, 31.299450, 35.009087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177074, 31.867577, 35.363953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.820351, 31.715080, 35.266514>,  <34.606316, 31.623583, 35.208050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.820351, 31.715080, 35.266514>,  <35.177074, 31.867577, 35.363953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820351, 31.715080, 35.266514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288345, 0.064060, 0.955381,
		-0.348625, 0.922254, -0.167058,
		-0.891806, -0.381240, -0.243594,
		34.552811, 31.600708, 35.193436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644146, 32.277935, 35.732056>,  <35.177074, 31.867577, 35.363953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644146, 32.277935, 35.732056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409492, 31.963772, 35.653072>,  <34.268700, 31.775272, 35.605682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409492, 31.963772, 35.653072>,  <34.644146, 32.277935, 35.732056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409492, 31.963772, 35.653072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343272, 0.020320, 0.939016,
		-0.733501, 0.618641, -0.281530,
		-0.586635, -0.785411, -0.197458,
		34.233501, 31.728149, 35.593834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977024, 32.461525, 35.981228>,  <34.644146, 32.277935, 35.732056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977024, 32.461525, 35.981228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002457, 32.062355, 35.985157>,  <34.017715, 31.822853, 35.987514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002457, 32.062355, 35.985157>,  <33.977024, 32.461525, 35.981228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002457, 32.062355, 35.985157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356154, -0.013500, 0.934330,
		-0.932261, -0.062906, -0.356275,
		0.063584, -0.997928, 0.009819,
		34.021530, 31.762976, 35.988102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.365314, 32.223930, 36.249443>,  <33.977024, 32.461525, 35.981228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.365314, 32.223930, 36.249443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.631317, 31.929661, 36.300907>,  <33.790920, 31.753099, 36.331783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.631317, 31.929661, 36.300907>,  <33.365314, 32.223930, 36.249443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631317, 31.929661, 36.300907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241917, -0.049210, 0.969048,
		-0.706572, -0.675546, -0.210697,
		0.665006, -0.735673, 0.128656,
		33.830818, 31.708960, 36.339504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054119, 31.725590, 36.704582>,  <33.365314, 32.223930, 36.249443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054119, 31.725590, 36.704582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442360, 31.629345, 36.702015>,  <33.675304, 31.571598, 36.700474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442360, 31.629345, 36.702015>,  <33.054119, 31.725590, 36.704582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442360, 31.629345, 36.702015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041365, -0.193012, 0.980324,
		-0.237123, -0.951236, -0.197291,
		0.970598, -0.240618, -0.006420,
		33.733540, 31.557161, 36.700089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136288, 31.054153, 37.051857>,  <33.054119, 31.725590, 36.704582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.136288, 31.054153, 37.051857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521435, 31.162079, 37.048054>,  <33.752522, 31.226833, 37.045773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521435, 31.162079, 37.048054>,  <33.136288, 31.054153, 37.051857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521435, 31.162079, 37.048054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106179, -0.346063, 0.932184,
		0.248223, -0.898578, -0.361861,
		0.962866, 0.269812, -0.009509,
		33.810295, 31.243023, 37.045200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555546, 30.445213, 37.044876>,  <33.136288, 31.054153, 37.051857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555546, 30.445213, 37.044876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760059, 30.736866, 37.226849>,  <33.882767, 30.911858, 37.336033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760059, 30.736866, 37.226849>,  <33.555546, 30.445213, 37.044876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760059, 30.736866, 37.226849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142856, -0.594085, 0.791615,
		0.847458, -0.339748, -0.407905,
		0.511280, 0.729132, 0.454927,
		33.913445, 30.955606, 37.363327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.099670, 30.108320, 37.356541>,  <33.555546, 30.445213, 37.044876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.099670, 30.108320, 37.356541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112602, 30.461788, 37.543339>,  <34.120361, 30.673868, 37.655418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112602, 30.461788, 37.543339>,  <34.099670, 30.108320, 37.356541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112602, 30.461788, 37.543339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209756, -0.462834, 0.861271,
		0.977219, 0.070109, -0.200319,
		0.032332, 0.883668, 0.466996,
		34.122303, 30.726889, 37.683437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677704, 30.059034, 37.822437>,  <34.099670, 30.108320, 37.356541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677704, 30.059034, 37.822437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.481411, 30.365719, 37.988007>,  <34.363636, 30.549728, 38.087349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.481411, 30.365719, 37.988007>,  <34.677704, 30.059034, 37.822437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481411, 30.365719, 37.988007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175554, -0.378316, 0.908877,
		0.853440, 0.518684, 0.051054,
		-0.490735, 0.766710, 0.413927,
		34.334190, 30.595732, 38.112186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149132, 30.197685, 38.417919>,  <34.677704, 30.059034, 37.822437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149132, 30.197685, 38.417919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801891, 30.377041, 38.503101>,  <34.593548, 30.484653, 38.554211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801891, 30.377041, 38.503101>,  <35.149132, 30.197685, 38.417919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801891, 30.377041, 38.503101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095229, -0.270600, 0.957970,
		0.487169, 0.851894, 0.192208,
		-0.868100, 0.448389, 0.212953,
		34.541462, 30.511559, 38.566986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292774, 30.529984, 38.977863>,  <35.149132, 30.197685, 38.417919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292774, 30.529984, 38.977863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.892788, 30.528593, 38.980640>,  <34.652794, 30.527760, 38.982307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.892788, 30.528593, 38.980640>,  <35.292774, 30.529984, 38.977863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892788, 30.528593, 38.980640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007496, -0.201418, 0.979477,
		-0.002007, 0.979499, 0.201438,
		-0.999970, -0.003476, 0.006938,
		34.592796, 30.527550, 38.982723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043228, 31.011765, 39.567730>,  <35.292774, 30.529984, 38.977863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043228, 31.011765, 39.567730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767120, 30.740929, 39.465687>,  <34.601456, 30.578426, 39.404461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767120, 30.740929, 39.465687>,  <35.043228, 31.011765, 39.567730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767120, 30.740929, 39.465687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106376, -0.253780, 0.961395,
		-0.715693, 0.690756, 0.103150,
		-0.690267, -0.677091, -0.255108,
		34.560040, 30.537802, 39.389153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652718, 31.050138, 40.169788>,  <35.043228, 31.011765, 39.567730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652718, 31.050138, 40.169788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503765, 30.717228, 40.005524>,  <34.414394, 30.517481, 39.906963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503765, 30.717228, 40.005524>,  <34.652718, 31.050138, 40.169788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503765, 30.717228, 40.005524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104954, -0.401886, 0.909655,
		-0.922125, 0.381843, 0.062305,
		-0.372385, -0.832277, -0.410665,
		34.392048, 30.467545, 39.882324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944447, 31.011276, 40.536877>,  <34.652718, 31.050138, 40.169788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944447, 31.011276, 40.536877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073349, 30.662865, 40.388573>,  <34.150688, 30.453817, 40.299591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073349, 30.662865, 40.388573>,  <33.944447, 31.011276, 40.536877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073349, 30.662865, 40.388573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248964, -0.455846, 0.854530,
		-0.913329, -0.183067, -0.363752,
		0.322251, -0.871029, -0.370760,
		34.170025, 30.401556, 40.277344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380745, 30.590723, 40.567093>,  <33.944447, 31.011276, 40.536877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380745, 30.590723, 40.567093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700939, 30.352659, 40.595406>,  <33.893055, 30.209822, 40.612392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700939, 30.352659, 40.595406>,  <33.380745, 30.590723, 40.567093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700939, 30.352659, 40.595406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393175, -0.432304, 0.811497,
		-0.452381, -0.677413, -0.580055,
		0.800478, -0.595168, 0.070776,
		33.941086, 30.174112, 40.616642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076473, 29.945059, 40.587051>,  <33.380745, 30.590723, 40.567093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076473, 29.945059, 40.587051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443878, 29.911098, 40.741520>,  <33.664322, 29.890722, 40.834202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443878, 29.911098, 40.741520>,  <33.076473, 29.945059, 40.587051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443878, 29.911098, 40.741520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387883, -0.382968, 0.838381,
		0.076711, -0.919852, -0.384692,
		0.918511, -0.084903, 0.386172,
		33.719433, 29.885628, 40.857372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143818, 29.262159, 40.797688>,  <33.076473, 29.945059, 40.587051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143818, 29.262159, 40.797688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442123, 29.436098, 40.999577>,  <33.621105, 29.540462, 41.120712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442123, 29.436098, 40.999577>,  <33.143818, 29.262159, 40.797688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442123, 29.436098, 40.999577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295043, -0.463686, 0.835431,
		0.597321, -0.771947, -0.217499,
		0.745759, 0.434849, 0.504727,
		33.665852, 29.566553, 41.150993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425861, 28.704880, 41.219311>,  <33.143818, 29.262159, 40.797688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425861, 28.704880, 41.219311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530388, 29.048502, 41.395370>,  <33.593105, 29.254675, 41.501007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530388, 29.048502, 41.395370>,  <33.425861, 28.704880, 41.219311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530388, 29.048502, 41.395370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220232, -0.390907, 0.893694,
		0.939793, -0.330474, 0.087040,
		0.261318, 0.859057, 0.440153,
		33.608784, 29.306219, 41.527416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789852, 28.477694, 41.796448>,  <33.425861, 28.704880, 41.219311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789852, 28.477694, 41.796448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.696499, 28.858969, 41.873352>,  <33.640488, 29.087734, 41.919495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.696499, 28.858969, 41.873352>,  <33.789852, 28.477694, 41.796448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696499, 28.858969, 41.873352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413231, -0.276199, 0.867730,
		0.880211, 0.123071, 0.458348,
		-0.233387, 0.953188, 0.192257,
		33.626484, 29.144926, 41.931030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584137, 28.531063, 41.867626>,  <33.789852, 28.477694, 41.796448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584137, 28.531063, 41.867626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935280, 28.409502, 42.015682>,  <35.145966, 28.336565, 42.104515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935280, 28.409502, 42.015682>,  <34.584137, 28.531063, 41.867626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935280, 28.409502, 42.015682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420884, 0.120801, -0.899035,
		0.228507, 0.945013, 0.233955,
		0.877861, -0.303904, 0.370137,
		35.198639, 28.318331, 42.126724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108337, 28.954851, 41.545712>,  <34.584137, 28.531063, 41.867626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108337, 28.954851, 41.545712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319763, 28.639400, 41.671371>,  <35.446617, 28.450130, 41.746765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319763, 28.639400, 41.671371>,  <35.108337, 28.954851, 41.545712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319763, 28.639400, 41.671371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569838, 0.055322, -0.819893,
		0.629209, 0.612380, 0.478630,
		0.528565, -0.788626, 0.314148,
		35.478333, 28.402813, 41.765617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892178, 29.110064, 41.572903>,  <35.108337, 28.954851, 41.545712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892178, 29.110064, 41.572903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890224, 28.711224, 41.603287>,  <35.889053, 28.471920, 41.621517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890224, 28.711224, 41.603287>,  <35.892178, 29.110064, 41.572903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890224, 28.711224, 41.603287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651206, -0.060821, -0.756460,
		0.758885, 0.045774, 0.649614,
		-0.004884, -0.997099, 0.075964,
		35.888760, 28.412094, 41.626076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630676, 28.818521, 41.724396>,  <35.892178, 29.110064, 41.572903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630676, 28.818521, 41.724396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383327, 28.584225, 41.514816>,  <36.234921, 28.443647, 41.389069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383327, 28.584225, 41.514816>,  <36.630676, 28.818521, 41.724396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383327, 28.584225, 41.514816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675917, -0.056256, -0.734828,
		0.400943, -0.808544, 0.430699,
		-0.618370, -0.585740, -0.523953,
		36.197815, 28.408503, 41.357632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060780, 28.370720, 41.300533>,  <36.630676, 28.818521, 41.724396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060780, 28.370720, 41.300533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.722218, 28.281157, 41.107262>,  <36.519081, 28.227419, 40.991299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.722218, 28.281157, 41.107262>,  <37.060780, 28.370720, 41.300533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722218, 28.281157, 41.107262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496549, -0.003925, -0.867999,
		0.192454, -0.974603, 0.114503,
		-0.846404, -0.223907, -0.483183,
		36.468296, 28.213985, 40.962307>
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
